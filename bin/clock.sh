#!/bin/sh

# Define the clock
Clock() {
        DATETIME=$(date "+%A %D %b %H:%M")

        printf "$DATETIME"
}

# Print the clock

while true; do
        echo "%{c} $(Clock) %{F-}%{B-}"
        sleep 60
done
