#!/bin/bash

ansible --inventory "192.168.1.86," --user vagrant --ask-pass all -m setup
