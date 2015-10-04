#!/bin/bash

# you must be in the Git project you wish to export
BRANCH_TO_EXPORT=$1
DESTINATION=$2
mkdir -p $DESTINATION
git archive $BRANCH_TO_EXPORT | tar --extract --directory $DESTINATION
