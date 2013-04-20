#!/bin/bash

PLAYLIST_FLAGS="--random --loop"
PLAYLIST_FILE=/radio/playlist.xspf

# Audio parameters
CODEC=s16l
CHANNELS=1
SAMPLERATE=22050
FREQUENCY=100
MUX=wav

# VLC operations
TRANSCODE="#transcode{acodec=$CODEC,channels=$CHANNELS,samplerate=$SAMPLERATE}"
OUTPUT="std{access=file,mux=$MUX,dst=-}"

# Server settings
PROTOCOL=http
BIND="0:8000"

# User
USER=pi

sudo -u $USER cvlc $PLAYLIST_FILE $PLAYLIST_FLAGS --sout "$TRANSCODE:$OUTPUT" -I $PROTOCOL --rc-host $BIND | sudo nice -n -20 pifm - $FREQUENCY $SAMPLERATE
