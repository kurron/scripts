#!/bin/bash

FROM="/cygdrive/d/BitTorrent\ Sync/Apps/"
TO=/tmp/ronbo
SEPARATED=/tmp/separated
FIRST_HALF=$SEPARATED/first
#MIDDLE_THIRD=$SEPARATED/middle
LAST_HALF=$SEPARATED/last

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

HALF=$((COUNT/2))
echo One-Half of the files = $HALF

THIRD=$((COUNT/3))
echo One-Third of the files = $THIRD

TWO_THIRDS=$((THIRD*2))
echo Two-Thirds of the files = $TWO_THIRDS

# copy the first half to its folder
echo Copying first half of files to ${FIRST_HALF}
rm -rf ${FIRST_HALF}
mkdir -p ${FIRST_HALF}

find ${TO} -type f -name '*.mobi' | sort | head --lines ${HALF} | sed 's/.*/"&"/' | xargs cp --target-directory ${FIRST_HALF}


# copy the middle third to its folder
#echo Copying middle third of files to ${MIDDLE_THIRD}
#rm -rf ${MIDDLE_THIRD}
#mkdir -p ${MIDDLE_THIRD}


#find ${TO} -type f -name '*.mobi' | sort | head --lines ${TWO_THIRDS} | tail --lines ${THIRD} | sed 's/.*/"&"/' | xargs cp --target-directory ${MIDDLE_THIRD}


# copy the last half to its folder    
echo Copying last half of files to ${LAST_HALF}
rm -rf ${LAST_HALF}
mkdir -p ${LAST_HALF}

find ${TO} -type f -name '*.mobi' | sort | tail --lines ${HALF} | sed 's/.*/"&"/' | xargs cp --target-directory ${LAST_HALF}
