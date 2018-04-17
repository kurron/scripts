#!/usr/bin/env bash

ID=${1:-f2ae455a5b32145496dfa9c317d391ed}
CMD="http --verbose --verify no https://www.orfeo.io/assets/id/${ID}"
${CMD}
