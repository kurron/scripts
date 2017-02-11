#!/bin/bash

docker run \
       --interactive \
       --tty \
       --rm \
       --net host \
       amazonlinux:latest \
       bash
