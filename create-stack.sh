#!/bin/bash

# creates a stack in AWS via CloudFromation

STACKNAME=${1:-weapon-x}
PROJECTNAME=${2:-Weapon-X}
ENVIRONMENT=${3:-development}
TEMPLATELOCATION=${4:-file:///home/vagrant/GitHub/cloud-formation-vpc/vpc.yml}
CREATOR=${5:-CloudFormation}

VALIDATE="aws cloudformation validate-template --template-body $TEMPLATELOCATION"
echo $VALIDATE
$VALIDATE

CREATE="aws cloudformation create-stack --stack-name $STACKNAME --template-body $TEMPLATELOCATION --tags Key=Project,Value=$PROJECTNAME Key=Environment,Value=$ENVIRONMENT Key=Creator,Value=$CREATOR"
echo $CREATE
$CREATE

