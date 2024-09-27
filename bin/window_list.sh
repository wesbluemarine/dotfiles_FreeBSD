#!/bin/sh

#input=$(wlrctl toplevel list | awk -F: '{print $2}' | tofi --font ~/.local/share/fonts/OstrichSans-Medium.otf --drun-launch=true)
#wlrctl toplevel activate app_id:"${input}"

input=$(wlrctl toplevel list | awk -F': ' '{print $2}' | tofi --config ~/.config/tofi/switcher --font ~/.local/share/fonts/OstrichSans-Medium.otf --drun-launch=true --ascii-input true)
wlrctl toplevel activate title:"${input}"
