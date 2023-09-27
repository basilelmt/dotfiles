#!/bin/bash

DSP=$(xrandr | awk '/2560x1440/ {print $1}' | head -n 1)

# xrandr --output $DSP --primary
