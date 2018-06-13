#!/usr/bin/env bash

# will invoke the resize endpoint in cloud front, following the redirect and triggering the lambda
WIDTH=$((RANDOM%1000))
HEIGHT=$((RANDOM%1000))

CMD="curl --verbose --location --out /tmp/foo.jpg https://dyhz9cttlt4hw.cloudfront.net/${WIDTH}x${HEIGHT}/REMOTEaHR0cHM6Ly9hazEub3N0a2Nkbi5jb20vaW1hZ2VzL3Byb2R1Y3RzLzkyNzM0MTcvQmVja3ktQ2FtZXJvbi1MdXh1cnktVWx0cmEtU29mdC00LXBpZWNlLUJlZC1TaGVldC1TZXQtMDkzMWJmMWMtZTFlNi00MmVjLWExYmItMzIwYjBjMWRmM2I5LmpwZw.jpeg"
echo "${CMD}"
${CMD}
