#!/bin/sh

title=/home/makaba/Roms/calendar.rom
executable="/home/makaba/.local/bin/uxnemu /home/makaba/Roms/calendar.rom"

if pgrep -f 'calendar.sh'; then
  pkill -f calendar.rom; else
  if ! wlrctl toplevel activate title:"$title"; then
	$executable
  fi
fi
