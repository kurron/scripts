#!/bin/bash

# Environment variables required by the AWS CLI
export AWS_DEFAULT_REGION=${AWS_DEFAULT_REGION:-us-west-2}
export AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID:-CHANGEME}
export AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY:-CHANGEME}

# Environment variables required to identify the correct EC2 instances
PROJECT=${PROJECT:-Weapon-X}
ENVIRONMENT=${ENVIRONMENT:-development}
BASTION_TAG=${BASTION_TAG:-Bastion}
PRIVATE_TAG=${PRIVATE_TAG:-Docker}

# Environment variables needed to contact Hashicorp's Vault
VAULT_ADDR=${VAULT_ADDR:-http://192.168.254.90:8200}
ROLE_ID=${ROLE_ID:-CHANGEME}
SECRET_ID=${SECRET_ID:-CHANGEME}
VAULT_PATH=${VAULT_PATH:-CHANGEME}

function determineBastionAddress() {
  local STATE_FILTER=Name=instance-state-name,Values=running
  local PROJECT_FILTER=Name=tag:Project,Values=${PROJECT}
  local ENVIRONMENT_FILTER=Name=tag:Environment,Values=${ENVIRONMENT}
  local DUTY_FILTER=Name=tag:Duty,Values=${BASTION_TAG}

  local CMD="aws ec2 describe-instances \
                 --filters ${STATE_FILTER} ${PROJECT_FILTER} ${ENVIRONMENT_FILTER} ${DUTY_FILTER} \
                 --query Reservations[0].Instances[*].[PublicIpAddress] \
                 --output text"
  echo ${CMD}
  BASTION=$(${CMD})
  echo "Bastion IP address is ${BASTION}"

}

function sshIntoBastion() {
  local CMD="ssh -A ec2-user@${BASTION}"
  echo $CMD
  $CMD
}

function addSshKey() {

    export VAULT_TOKEN=$(vault write -field=token auth/approle/login role_id=${ROLE_ID} secret_id=${SECRET_ID})
    local KEY_FILE=/tmp/private-key
    rm -f ${KEY_FILE}
    vault read -field=value ${VAULT_PATH} > ${KEY_FILE}
    chmod 0400 ${KEY_FILE}
    eval "$(ssh-agent)"
    ssh-add ${KEY_FILE}
    ssh-add -L
}

determineBastionAddress
addSshKey
sshIntoBastion
