#!/usr/bin/env bash

# too lazy to figure out how to replace 2020-02-18-assets-02 so just edit it
curl --silent localhost:9200/adp-data/asset/_mapping?pretty=true | jq '."assets7".mappings.asset.properties.references.properties | keys'

