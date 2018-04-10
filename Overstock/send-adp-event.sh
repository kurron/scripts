#!/usr/bin/env bash

BODY=${1:-./adp-event.json}
#CMD="http --verify no --json POST https://nkkmfsfq10.execute-api.us-west-1.amazonaws.com/adpevents/ @${BODY}"
#CMD="http --verify no --json POST https://nkkmfsfq10.execute-api.us-west-1.amazonaws.com/adpevents/ chnl=some-chnl eid=some-eid aid=some-aid pos=some-pos sid=some-sid etype=some-etype uid=some-uid tid=some-tid edate=some-edate chnltype=some-chnltype viewable=some-viewable elm_id=some-elm_id etime=some-etime heid=some-heid"
CMD="http --verify no --json POST https://nkkmfsfq10.execute-api.us-west-1.amazonaws.com/adpevents/ \
     eid=some-eid \
     chnl=some-chnl \
     chnltype=some-chnltype \
     etype=some-etype \
     aid=some-aid \
     uid=some-uid \
     heid=some-heid \
     sid=some-sid \
     pos=1234 \
     viewable=true \
     elmid=5678 \
     tid=some-tid \
     ronbo=Logan"
echo ${CMD}
${CMD}
