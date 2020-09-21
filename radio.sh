#!/bin/bash
# URI OF RADIO YOU WANT TO PLAY
RADIO_URI="https://stream.nowyswiat.online/mp3"

# input format computer time "HH:MM"
if [ $# -lt 1 ]; then
    echo "Usage: add parameter HH:MM"
    exit
fi

DESIRED=$(date "+%s" -d "$1")
NOW=$(date +"%s")
if [ $DESIRED -lt $NOW ]; then
    DESIRED=$((`date +%s -d "$1"` + 24*60*60))
fi

# feedback
echo "Suspending..."
echo "See you at $1!"


sudo rtcwake -m mem -t $DESIRED &

sleep 10

echo "Good morning $USER!"

mplayer $RADIO_URI


