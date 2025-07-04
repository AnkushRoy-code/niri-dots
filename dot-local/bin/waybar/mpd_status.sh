#!/usr/bin/env bash

PLAY_ICON=""
PAUSE_ICON=""

if mpc status 2>/dev/null | grep -q '\[playing\]'; then
    echo "$PAUSE_ICON"
else
    echo "$PLAY_ICON"
fi
