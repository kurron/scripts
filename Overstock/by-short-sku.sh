#!/usr/bin/env bash

ID=${1:-15767636}
CMD="http --verify no https://www.orfeo.io/assets/sku/${ID}"
${CMD}
