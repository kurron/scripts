#!/bin/bash

ansible --inventory servers --user rkurr --ask-pass atlantis -m setup
