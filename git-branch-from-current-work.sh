#!/bin/bash

# This script will create a branch from currently committed, but unpushed, work and point it to the origin server

BRANCH_NAME=$1

git checkout -b $BRANCH_NAME
git push --set-upstream origin $BRANCH_NAME
 
