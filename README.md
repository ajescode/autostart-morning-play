# Autostart morning play
Bash script to sleep system and play spotify automatically at specified time.

## Spotify

### How to use it?

1. Get Spotify URI of your morning playlist.
https://support.symdistro.com/hc/en-us/articles/360039036711-How-to-obtain-your-Spotify-URL-URI

2. Replace URI in file spotify-run.sh
```
$SPOTIFY_URI="spotify:show:1410RabA4XOqO6IV8p0gYF"
```

3. Execute file
```
sh spotify-run.sh "8:00"
```

You can specify time of running only 1 day in advance (24h format).

Running with sudo is bugged. Trying to work around this problem.

## Radio
Radio Nowy Świat

1-3. Similar steps as above.
Execute file
```
sh radio.sh "8:00"
```
