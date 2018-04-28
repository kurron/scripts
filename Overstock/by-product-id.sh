#!/usr/bin/env bash

ID=${1:-13807640}
CMD="http --verify no https://www.orfeo.io/assets/product/${ID}"
${CMD}
