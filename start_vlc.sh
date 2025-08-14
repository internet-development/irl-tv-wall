#!/bin/bash

LOG_FILE="/home/intdev/vlc.log"
PID_FILE="/home/intdev/vlc.pid"
MEDIA_DIR="/home/intdev/media"

export DISPLAY=:0

nohup env DISPLAY=:0 cvlc --fullscreen --loop --no-osd --no-audio "$MEDIA_DIR"  > "$LOG_FILE" 2>&1 &
echo $! > "$PID_FILE"
echo "VLC started with PID: $!"
