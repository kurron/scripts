#!/usr/bin/env bash

ID=${1:-INDUSTRIAL}
CMD="http --verify no https://www.orfeo.io/assets/search?q=attributes.WEBDAM.STYLE.keyword:${ID}"
${CMD}
