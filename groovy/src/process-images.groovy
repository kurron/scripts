#!/usr/bin/env groovy

@Grab(group = 'com.amazonaws', module = 'aws-java-sdk', version = '1.11.482')
@Grab(group = 'org.codehaus.gpars', module = 'gpars', version = '1.2.0')

import groovy.json.JsonSlurper
import groovyx.gpars.GParsExecutorsPool

import javax.net.ssl.HttpsURLConnection
import javax.net.ssl.SSLContext
import javax.net.ssl.TrustManager
import javax.net.ssl.X509TrustManager
import java.security.SecureRandom

import com.amazonaws.services.sqs.AmazonSQS
import com.amazonaws.services.sqs.AmazonSQSClientBuilder
import com.amazonaws.services.sqs.model.SendMessageBatchRequestEntry
import com.amazonaws.services.sqs.model.SendMessageBatchRequest

pageCount = 1

// allow for TLS over an SSH tunnel
def context = SSLContext.getInstance("SSL")
def trustAll = [getAcceptedIssuers: {}, checkClientTrusted: { a, b -> }, checkServerTrusted: { a, b -> }]
context.init(null, [trustAll as X509TrustManager] as TrustManager[], new SecureRandom())
HttpsURLConnection.defaultSSLSocketFactory = context.socketFactory
def allowLocalhost = { a, b -> true }
HttpsURLConnection.defaultHostnameVerifier = allowLocalhost

String firstBody = '''
{
  "size": 10000,
  "_source": [
    "id"
  ],
  "query": {
    "bool": {
      "must_not": {
        "exists": {
          "field": "references.image_validated_on"
        }
      }
    }
  }
}
'''

def firstPage = new URL('https://localhost:9200/assets7/_search?scroll=2m')
def subsequentPage = new URL('https://localhost:9200/_search/scroll')
def scrollID = fetchData(firstPage, firstBody)
while (scrollID) {
    String subsequentBody = """
{
    "scroll"    : "2m",
    "scroll_id" : "${scrollID}"
}
"""
    scrollID = fetchData(subsequentPage, subsequentBody)
}

String fetchData(URL url, String body) {
    def connection = url.openConnection() as HttpsURLConnection
    connection.doOutput = true
    connection.requestMethod = 'POST'
    connection.setRequestProperty("Content-Type", "application/json")
    connection.outputStream.withWriter { Writer writer -> writer << body }
    connection.inputStream.withCloseable { inStream ->
        def map = new JsonSlurper().parse(inStream as InputStream) as Map<String, String>
        def scrollID = map['_scroll_id']
        def ids = map['hits']['hits'].collect { it -> it.'_id' } as List<String>
        processIDs(ids)
        scrollID
    }
}

void processIDs(List<String> ids) {
    println "Sending ${ids.size()} ids from page ${pageCount++}"
    AmazonSQS sqs = AmazonSQSClientBuilder.standard().withRegion('us-west-2').build()
    def url = 'https://sqs.us-west-2.amazonaws.com/437435100506/image-verifier-development'
    // batching requests seems to be much, much faster
    def sublists = ids.collate(10)
    GParsExecutorsPool.withPool( sublists.size() ) {
        sublists.eachParallel { List<String> bucket ->
            def entries = bucket.collect { new SendMessageBatchRequestEntry(it, it) }
            SendMessageBatchRequest send_batch_request = new SendMessageBatchRequest(url, entries)
            sqs.sendMessageBatch(send_batch_request)
        }
    }
}