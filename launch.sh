#!/usr/bin/env sh

# Terminate already running polybar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

for m in $(polybar --list-monitors | cut -d":" -f1); do
    MONITOR=$m polybar --reload custom &
done
# Launch polybar
  # MONITOR=eDP1 polybar -r custom &
  # MONITOR=DP1 polybar -r custom &
