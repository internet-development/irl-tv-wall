#!/bin/bash
MEDIA_DIR="/home/intdev/media"
PLAYLIST_FILE="/home/intdev/media/playlist.m3u"

# find "$MEDIA_DIR" -type f -iregex '.*\.\(m4v\|mov\|mp4\|avi\|mkv\|wmv\|flv\)$' > "$PLAYLIST_FILE"

mpv \
    --fullscreen \
    --shuffle \
    --loop-playlist \
    --input-ipc-server=/tmp/mpvsocket # allows us to query currently playing file with: "echo '{ "command": ["get_property", "filename"] }' | socat - /tmp/mpvsocket"
    "$PLAYLIST_FILE" > 2>&1 &

echo "mpv started"
