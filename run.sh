#!/bin/bash

 vlc --sout "#transcode{acodec=s16l,channels=1,samplerate=22050}:std{access=file,mux=wav,dst=-}" -I http --rc-host 10.10.99.45:8080 | sudo ./pifm - 100

