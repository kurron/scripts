#!/usr/bin/env bash

curl -k -X PUT "localhost:9200/assets7/_mapping/asset" -H 'Content-Type: application/json' -d'
{
  "properties": {
     "created_date": {
       "type": "date"
     },
     "modified_date": {
       "type": "date"
     },
     "ingestion_date": {
       "type": "date"
     }
  }
}
'

