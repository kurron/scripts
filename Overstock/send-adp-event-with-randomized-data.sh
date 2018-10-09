#!/usr/bin/env bash

R=${RANDOM}
B=$((RANDOM%2))
CMD="http --verify no \
	  --json POST \
          https://staging-adp-events.orfeo.io/staging chnl=${R} \
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

