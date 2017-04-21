#!/bin/bash

#set -ex

# sudo pip3 install asciinema

# git clone https://github.com/asciinema/asciinema.git
# cd asciinema
# python3 -m asciinema --version

# you must save the ID handed back after the publish -- you won't ever see it again

# you must be in the Git project you wish to export
FILE_NAME=${1:-demo.json}
TITLE=${2:-Demo Capture}
MAX_WAIT_SECONDS=${3:-5}

cd ~/GitHub/asciinema
python3 -m asciinema --version 
python3 -m asciinema rec --title="${TITLE}" --max-wait=${MAX_WAIT_SECONDS} ${FILE_NAME}
python3 -m asciinema play ${FILE_NAME} 
URL=$(python3 -m asciinema upload ${FILE_NAME})

echo Save the URL, you will NOT ever see it again!
echo HTML: "<a href=\"${URL}\"><img src=\"${URL}\" width=\"1024\"/></a>"
echo Markdown: "[![asciicast](${URL})](${URL})"
