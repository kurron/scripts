#!/bin/bash

# This script reverts changes in an already pushed branch
# The first hash is the oldest hash and is NOT included in the reversion
# The last has is the newest hash and IS included in the reversion

OLDEST=$1
NEWEST=$2

git revert $OLDEST..$NEWEST 
