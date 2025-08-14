#!/bin/bash

MEDIA_DIR="/home/intdev/media"

# Set up environment for Wayland
export DISPLAY=:0
export WAYLAND_DISPLAY=wayland-0

cvlc --fullscreen --loop --no-osd --no-audio --intf dummy "$MEDIA_DIR"
