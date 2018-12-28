#!/usr/bin/env bash

ID=${1:-12015208}
BODY=query.json
#CMD="http https://production-adp-api.orfeo.io/assets/product/${ID}?limit=5&sort_field:image_width&sort_mode:MEDIAN x-api-key:Kiw2vnGfb43iovVYUQFhq7ENA3BDzXbT2XtoPCpJ"
CMD="http POST https://production-adp-api.orfeo.io/assets/search/?limit=5 x-api-key:Kiw2vnGfb43iovVYUQFhq7ENA3BDzXbT2XtoPCpJ @${BODY}"
echo ${CMD}
${CMD}
