#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bars
polybar -rq bspwm &
polybar -rq music &
polybar -rq bluetooth &
polybar -rq keyboard &
polybar -rq net &
polybar -rq bat &
polybar -rq volume &
polybar -rq weather &
polybar -rq date &
polybar -rq power &
