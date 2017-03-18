#!/bin/bash

set -ex

# you must be in the Git project you wish to export
BRANCH_TO_EXPORT=${1:-master}
DESTINATION=${2:-/tmp/bob}

mkdir --parents --verbose ${DESTINATION}
git archive ${BRANCH_TO_EXPORT} | tar --extract --directory ${DESTINATION}

echo Your newly exported project can be found in ${DESTINATION}
