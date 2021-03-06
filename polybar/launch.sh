#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar example1 2>&1 | tee -a /tmp/polybar1.log & disown
polybar example2 2>&1 | tee -a /tmp/polybar2.log & disown

# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

/home/arturo/.config/scriptBash/startWM.sh

echo "Bars launched..."

