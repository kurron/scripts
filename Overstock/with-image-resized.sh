#!/usr/bin/env bash

HEIGHT=${1:-300}
WIDTH=${2:-300}
#CMD="http --verify no https://www.orfeo.io/assets/search/resized?q=source:ADP_FEED"
CMD="http --verify no https://www.orfeo.io/assets/search/resized?q=source:ADP_FEED&width=${WIDTH}&height=${WIDTH}"
${CMD}
