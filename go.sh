#!/bin/bash

FROM="/cygdrive/d/BitTorrent\ Sync/Apps/"
TO=/tmp/ronbo
FIRST_HALF=$TO/first
LAST_HALF=$TO/last

#rm -rf ${TO}
#mkdir -p ${TO}

FIND_ONE="find ${FROM} -type f -name '*.epub' -exec cp --verbose {} ${TO} \;"
#echo eval ${FIND_ONE}
#eval ${FIND_ONE}

FIND_TWO="find ${TO} -type f -name '*.epub' | wc -l"
echo eval ${FIND_TWO}

COUNT=$(eval ${FIND_TWO})
echo $COUNT

HALF=$((COUNT/2))
echo $HALF

rm -rf ${FIRST_HALF}
mkdir -p ${FIRST_HALF}

# copy the first half to its folder
find ${TO} -type f -name '*.epub' | sort | head --lines ${HALF} | sed 's/.*/"&"/' | xargs cp --verbose  --target-directory ${FIRST_HALF}


rm -rf ${LAST_HALF}
mkdir -p ${LAST_HALF}

# copy the last half to its folder
find ${TO} -type f -name '*.epub' | sort | tail --lines ${HALF} | sed 's/.*/"&"/' | xargs cp --verbose  --target-directory ${LAST_HALF}
