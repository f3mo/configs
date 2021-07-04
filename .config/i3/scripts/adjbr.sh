#!/bin/sh



BACKLIGHT="/sys/class/backlight/intel_backlight/brightness"
MAX=976
current=$(cat "$BACKLIGHT")
sub=45
append=$(( $current+$sub ))
if [ "$1" = 'add' ]; then
    if [ "$append" -lt "$MAX" ]; then
        echo "$append" > "$BACKLIGHT"
    fi
else
    append=$(( $current-$sub ))
    echo "$append" > "$BACKLIGHT"
fi
