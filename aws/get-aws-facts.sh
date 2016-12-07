#!/bin/bash

ansible --inventory aws-inventory --user ec2-user all -m setup
