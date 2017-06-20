#!/bin/bash

IP=${1:-54.190.23.229}

echo Probing ${IP}

curl --silent ${IP}:8080/operations/health | python -m json.tool
curl --silent ${IP}:8080/operations/info | python -m json.tool
curl --silent ${IP}:8080/ | python -m json.tool
