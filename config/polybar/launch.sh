#!/usr/bin/env sh

DIR="$HOME/.config/polybar"

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload main -c "$DIR"/config.ini &
  done
else
  polybar --reload main -c "$DIR"/config.ini &
fi

echo "Launched Polybar"
