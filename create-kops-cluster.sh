#!/bin/bash

export NAME=kops.transparent.education
export DNS_ZONE=transparent.education
export KOPS_STATE_STORE=s3://kops-transparent-education-state-store
export REGION=us-west-2
export ZONES=us-west-2a,us-west-2b,us-west-2c
export NODE_SIZE=m4.large
export MASTER_SIZE=m3.large
export SSH_KEY=/home/vagrant/.ssh/kops.pub
export CIDR=10.100.0.0/16

# if you need to know what AZ are available
#aws ec2 describe-availability-zones --region ${REGION} 

CMD="kops create cluster \
    --bastion="true" \
    --cloud=aws \
    --cloud-labels="Project=KOPS,Purpose=Experimentation,Creator=rkurr@transparent.com,Environment=development,Freetext=None" \
    --dns-zone=${DNS_ZONE} \
    --master-size=${MASTER_SIZE} \
    --master-zones=${ZONES} \
    --network-cidr=${CIDR} \
    --networking=weave \
    --node-count=3 \
    --node-size=${NODE_SIZE} \
    --ssh-public-key=${SSH_KEY} \
    --target=direct \
    --topology=private \
    --zones=${ZONES} \
    ${NAME}"

echo ${CMD}
${CMD}

# review changes
kops edit cluster ${NAME}

# build the cluster
kops update cluster ${NAME} --yes
