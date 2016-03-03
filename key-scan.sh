#!/bin/bash

# From https://github.com/awslabs/git-secrets

git secrets --install
git secrets --register-aws
git secrets --list
git secrets --scan --recursive
