#!/usr/bin/env bash

ID=${1:-0002f37bfea9498d9e390077ffbc0438}
KEY=${2:-rTdrLnz6xr1Jm8o0xXdyt76U2vipYw5F4NdkfZz2}
ENVIRONMENT=${3:-staging}

CMD="http --verbose --follow https://${ENVIRONMENT}-adp-api.orfeo.io/${ENVIRONMENT}/assets/id/${ID}/resized?width=1024&height=768 x-api-key:${KEY}"

# marketing account
#CMD="http --verbose --verify no --follow --print Hh https:///assets/id/${ID}/resized?width=2048&height=768"
echo ${CMD}
${CMD}
