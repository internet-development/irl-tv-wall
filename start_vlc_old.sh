!/bin/bash

LOG_FILE="/home/intdev/vlc.log"
PID_FILE="/home/intdev/vlc.pid"
MEDIA_DIR="/home/intdev/media"

export DISPLAY=:0

# Create/update the m3u playlist file with all video files in the directory
find "$MEDIA_DIR" -type f -iregex '.*\.\(m4v\|mov\|mp4\|avi\|mkv\|wmv\|flv\)$' > "$PLAYLIST_FILE"

nohup env DISPLAY=:0 cvlc --fullscreen --loop --no-osd --no-audio "$MEDIA_DIR/playlist.m3u"  > "$LOG_FILE" 2>&1 &
echo $! > "$PID_FILE"
echo "VLC started with PID: $!"