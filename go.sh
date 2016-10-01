#!/bin/bash

FROM="/cygdrive/d/BitTorrent\ Sync/Apps/"
TO=/tmp/ronbo

rm -rf ${TO}
mkdir -p ${TO}

FIND_ONE="find ${FROM} -type f -name '*.epub' -exec cp --verbose {} ${TO} \;"
echo eval ${FIND_ONE}
eval ${FIND_ONE}
