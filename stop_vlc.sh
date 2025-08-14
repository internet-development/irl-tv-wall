#!/bin/bash
PID_FILE="/home/intdev/vlc.pid"

if [ -f "$PID_FILE" ]; then
    PID=$(cat "$PID_FILE")
    if kill "$PID" 2>/dev/null; then
        echo "VLC stopped (PID: $PID)"
        rm "$PID_FILE"
    else
        echo "Process $PID not found, removing stale PID file"
        rm "$PID_FILE"
    fi
else
    echo "VLC not running (no PID file found)"
fi
