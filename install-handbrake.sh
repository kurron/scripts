#!/usr/bin/env bash

# https://www.ubuntupit.com/handbrake-a-free-and-open-source-transcoder-for-linux/ 

echo Installing Handbrake

sudo add-apt-repository ppa:stebbins/handbrake-releases

sudo apt-get update

sudo apt-get install handbrake-gtk handbrake-cli

