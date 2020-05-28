#!/usr/bin/env bash

# too lazy to figure out how to replace 2020-02-18-assets-02 so just edit it
curl --silent localhost:9200/adp-assets/asset/_mapping?pretty=true | jq '."2020-02-18-assets-02".mappings.asset.properties.references.properties | keys'

