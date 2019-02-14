#!/usr/bin/env bash

UPDATE='curl --silent --show-error http://localhost:9200/_scripts/asset_update'
echo ${UPDATE}
${UPDATE} | python -m json.tool

MERGE='curl --silent --show-error http://localhost:9200/_scripts/asset_merge'
echo ${MERGE}
${MERGE} | python -m json.tool
