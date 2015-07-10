#!/bin/bash

# check the API version
curl --request GET http://localhost:2375/version | python -m json.tool

# send the container creation command 
curl --header 'Content-Type: application/json' --request POST --data @create-container.json http://localhost:2375/containers/create?name=example-data | python -m json.tool

# inspect the container 
curl --request GET --data @create-container.json http://localhost:2375/containers/a820466c169d9d822ca52ccb4ecf8744340d242b0b59bc36a3bdb64d3abc91b7/json | python -m json.tool
