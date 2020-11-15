#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Launch "main" bar
echo "---" | tee /tmp/polybar.log

polybar -c ~/.config/polybar/config.ini main >> /tmp/polybar.log 2>&1 & disown

echo "Bar launched..."
