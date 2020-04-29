#!/bin/bash
#spotify uri of your playlist
$SPOTIFY_URI="spotify:show:1410RabA4XOqO6IV8p0gYF"

#input format computer time "HH:MM"
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


echo "Good morning $USER!"


sleep 10

spotify --uri=$SPOTIFY_URI 1>/dev/null 2>&1 &

sleep 5

dbus-send \
    --print-reply \
    --dest=org.mpris.MediaPlayer2.spotify \
    /org/mpris/MediaPlayer2 \
    org.mpris.MediaPlayer2.Player.PlayPause
