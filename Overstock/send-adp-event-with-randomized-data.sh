#!/usr/bin/env bash

R=${RANDOM}
B=$((RANDOM%2))
CMD="http --verify no \
	  --json POST \
          https://nkkmfsfq10.execute-api.us-west-1.amazonaws.com/adpevents/ chnl=${R} \
	                                                                    eid=${R} \
									    aid=${R} \
									    pos=${R} \
									    sid=${R} \
									    etype=${R} \
									    uid=${R} \
									    tid=${R} \
									    chnltype=${R} \
									    viewable=${B} \
									    elmid=${R} \
									    heid=${R} \
									    rid=${R}"
echo ${CMD}
${CMD}

