#!/usr/bin/env bash

STYLE=${1:-INDUSTRIAL}
ROOM=${2:-BEDROOM}
#CMD="http --verify no https://www.orfeo.io/assets/search?q=references.style:${STYLE}%20%20AND%20attributes.WEBDAM.ROOM_TYPE:${ROOM}"
CMD="http --verify no https://www.orfeo.io/assets/search?q=references.style:${STYLE}+AND+attributes.WEBDAM.ROOM_TYPE:${ROOM}"
${CMD}
