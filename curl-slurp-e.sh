#!/bin/bash

# development AGW
#curl --silent --header "x-api-key:CHs9qbXE9naZIeQynhJPA1ejzbshJpGr8LLwJfcz" https://government.transparent.engineering/development/slurp-e-api

# test AGW

#curl --silent --header "x-api-key:P1oSNp226J4sIgKGYrhvV4VjpxarreUJj0miDmjf" https://government.transparent.engineering/test/slurp-e-api
#curl --silent --header "x-api-key:P1oSNp226J4sIgKGYrhvV4VjpxarreUJj0miDmjf" https://government.transparent.engineering/test/slurp-e-journaler/operations/health
#curl --silent --header "x-api-key:P1oSNp226J4sIgKGYrhvV4VjpxarreUJj0miDmjf" https://government.transparent.engineering/test/slurp-e-processor/operations/health

# development ALB
#curl --silent  http://alb-20171024152039476400000002-1770168985.us-east-1.elb.amazonaws.com:2070/operations/health
#curl --silent  http://alb-20171024152039476400000002-1770168985.us-east-1.elb.amazonaws.com:2080/operations/health
#curl --silent  http://alb-20171024152039476400000002-1770168985.us-east-1.elb.amazonaws.com:2090/development/slurp-e-api/operations/health

curl --header "x-api-key:9k2SjhNE6Z7FCccX9b9sr8n2KK08YfHq8GmBukHO" https://debug.transparent.engineering/alpha/api/anything
#curl --verbose --header "x-api-key:9k2SjhNE6Z7FCccX9b9sr8n2KK08YfHq8GmBukHO" https://86b6zepim4.execute-api.us-west-2.amazonaws.com/released/api/anything
