#!/bin/bash

# Copyright (C) 2020 by sandy1709


FILE=/app/.git

if [ -d "$FILE" ] ; then
    echo "$FILE directory exists already."
else
    rm -rf userbot
    rm -rf .github
    rm -rf sample_config.py
    git clone https://github.com/NotShroudX97/HyperUserBot-X HUB
    mv HUB/userbot .
    mv HUB/.github . 
    mv HUB/.git .
    mv HUB/sample_config.py .
    python ./.github/update.py
    rm -rf requirements.txt
    mv HUB/requirements.txt .
    rm -rf HUB
fi

FILE=/app/bin/
if [ -d "$FILE" ] ; then
    echo "$FILE directory exists already."
else
    bash ./.github/bins.sh
fi

python -m userbot
