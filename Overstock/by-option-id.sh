#!/usr/bin/env bash

ID=${1:-22891638}
CMD="http --verify no https://www.orfeo.io/assets/optid/${ID}"
${CMD}
