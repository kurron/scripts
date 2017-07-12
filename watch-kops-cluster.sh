#!/bin/bash

export KOPS_STATE_STORE=s3://kops-transparent-education-state-store

watch --interval 10 kops validate cluster
