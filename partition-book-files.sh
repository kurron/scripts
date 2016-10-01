#!/bin/bash

FROM="/cygdrive/d/BitTorrent\ Sync/Apps/"
TO=/tmp/ronbo
SEPARATED=/tmp/separated
FIRST_THIRD=$SEPARATED/first
MIDDLE_THIRD=$SEPARATED/middle
LAST_THIRD=$SEPARATED/last

echo Creating temporary directories
rm -rf ${TO}
mkdir -p ${TO}

rm -rf ${SEPARATED}
mkdir -p ${SEPARATED}

# copy the mobi files into a folder
echo Copying files from Torrent folder into temporary workspace
FIND_ONE="find ${FROM} -type f -name '*.mobi' -exec cp {} ${TO} \;"
#echo eval ${FIND_ONE}
eval ${FIND_ONE}

# figure out how many files we are dealing with
FIND_TWO="find ${TO} -type f -name '*.mobi' | wc -l"
echo eval ${FIND_TWO}

COUNT=$(eval ${FIND_TWO})
echo Total file = $COUNT

THIRD=$((COUNT/3))
echo One-Third of the files = $THIRD

TWO_THIRDS=$((THIRD*2))
echo Two-Thirds of the files = $TWO_THIRDS

# copy the first third to its folder
echo Copying first third of files to ${FIRST_THIRD}
rm -rf ${FIRST_THIRD}
mkdir -p ${FIRST_THIRD}

find ${TO} -type f -name '*.mobi' | sort | head --lines ${THIRD} | sed 's/.*/"&"/' | xargs cp --target-directory ${FIRST_THIRD}


# copy the middle third to its folder
echo Copying middle third of files to ${MIDDLE_THIRD}
rm -rf ${MIDDLE_THIRD}
mkdir -p ${MIDDLE_THIRD}


find ${TO} -type f -name '*.mobi' | sort | head --lines ${TWO_THIRDS} | tail --lines ${THIRD} | sed 's/.*/"&"/' | xargs cp --target-directory ${MIDDLE_THIRD}


# copy the last third to its folder    
echo Copying last third of files to ${LAST_THIRD}
rm -rf ${LAST_THIRD}
mkdir -p ${LAST_THIRD}

find ${TO} -type f -name '*.mobi' | sort | tail --lines ${THIRD} | sed 's/.*/"&"/' | xargs cp --target-directory ${LAST_THIRD}
