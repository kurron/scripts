#!/usr/bin/env bash

ID=${1:-OFFICE}
CMD="http --verify no https://www.orfeo.io/assets/search?q=(attributes.WEBDAM.ROOM_TYPE:${ID})"
${CMD}
