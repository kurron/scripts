#!/bin/bash

# development AGW
3curl --silent --header "x-api-key:CHs9qbXE9naZIeQynhJPA1ejzbshJpGr8LLwJfcz" https://government.transparent.engineering/development/slurp-e-api

# test AGW

#curl --silent --header "x-api-key:P1oSNp226J4sIgKGYrhvV4VjpxarreUJj0miDmjf" https://government.transparent.engineering/test/slurp-e-api
#curl --silent --header "x-api-key:P1oSNp226J4sIgKGYrhvV4VjpxarreUJj0miDmjf" https://government.transparent.engineering/test/slurp-e-journaler/operations/health
#curl --silent --header "x-api-key:P1oSNp226J4sIgKGYrhvV4VjpxarreUJj0miDmjf" https://government.transparent.engineering/test/slurp-e-processor/operations/health

# development ALB
#curl --silent  http://alb-20171024152039476400000002-1770168985.us-east-1.elb.amazonaws.com:2070/operations/health
#curl --silent  http://alb-20171024152039476400000002-1770168985.us-east-1.elb.amazonaws.com:2080/operations/health
curl --silent  http://alb-20171024152039476400000002-1770168985.us-east-1.elb.amazonaws.com:2090/development/slurp-e-api/operations/health
