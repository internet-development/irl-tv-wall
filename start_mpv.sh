#!/bin/bash
MEDIA_DIR="/home/intdev/media"
PLAYLIST_FILE="/home/intdev/media/playlist.m3u"
SOCKET_FILE="/tmp/mpvsocket"

# Clean up existing socket if present
if [ -S "$SOCKET_FILE" ]; then
    rm -f "$SOCKET_FILE"
fi

# Start mpv with the playlist
mpv \
    --fullscreen \
    --shuffle \
    --loop-playlist \
    --input-ipc-server="$SOCKET_FILE" \
    "$PLAYLIST_FILE" > /dev/null 2>&1 &

echo "mpv started"
