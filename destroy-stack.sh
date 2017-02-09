#!/bin/bash

# destroys a stack in AWS via CloudFromation

STACKNAME=${1:-weapon-x}

DESTROY="aws cloudformation delete-stack --stack-name $STACKNAME"
echo $DESTROY
$DESTROY

