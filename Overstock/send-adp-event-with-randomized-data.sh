#!/usr/bin/env bash

R=${RANDOM}
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
									    viewable=true \
									    elmid=${R} \
									    heid=${R} \
									    rid=${R}"
echo ${CMD}
${CMD}

