#!/usr/bin/env bash

URL=${1-https://development-adp-events.orfeo.io}

R=${RANDOM}
B=$((RANDOM%2))
CMD="http --verify no \
	  --json POST \
          ${URL} chnl=${R} \
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

