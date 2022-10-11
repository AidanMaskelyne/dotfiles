#!/usr/bin/env bash

# Terminate already running bars
# If all bars are IPC enabled:
polybar-msg cmd quit
# Else:
# killall -q polybar

# Launch main bar
echo "---" | tee -a /tmp/polybar_top.log /tmp/polybar_bottom.log
polybar top 2>&1 | tee -a /tmp/polybar_top.log & disown
polybar bottom 2>&1 | tee -a /tmp/polybar_bottom.log & disown

echo "Bars launched..."
