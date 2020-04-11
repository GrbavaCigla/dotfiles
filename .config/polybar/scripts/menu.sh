#!/bin/bash

BACKGROUND="#282A36"
CURRENT_LINE="#44475A"
FOREGROUND="#F8F8F2"
COMMENT="#6272A4"
CYAN="#8BE9FD"
GREEN="#50FA7B"
ORANGE="#FFB86C"
PINK="#FF79C6"
PURPLE="#BD93F9"
RED="#FF5555"
YELLOW="#F1FA8C"

rofi -show drun \
-no-lazy-grab \
-display-drun "Applications" -drun-display-format "{name} {comment}" \
-hide-scrollbar true \
-bw 0 \
-xoffset 0 -yoffset 36 \
-lines 10 \
-line-padding 10 \
-padding 12 \
-width 40 \
-columns 2 \
-location 1 \
-show-icons -icon-theme "Numix-Circle" \
-color-enabled true \
-color-window "$BACKGROUND,$PURPLE,$PURPLE" \
-color-normal "$CURRENT_LINE,$FOREGROUND,$CURRENT_LINE,$PINK,$FOREGROUND" \
-color-active "$BACKGROUND,$YELLOW,$CURRENT_LINE,$YELLOW,$FOREGROUND" \
-color-urgent "$BACKGROUND,$RED,$CURRENT_LINE,$RED,$FOREGROUND"
# -no-lazy-grab -hide-scrollbar true -bw 0 -xoffset 0 -yoffset 32 -line-padding 10 -padding 12 -location 3 -color-enabled true -color-window "$BACKGROUND,$PURPLE,$PURPLE" -color-normal "$CURRENT_LINE,$FOREGROUND,$CURRENT_LINE,$PINK,$FOREGROUND" -color-active "$BACKGROUND,$YELLOW,$CURRENT_LINE,$YELLOW,$FOREGROUND" -color-urgent "$BACKGROUND,$RED,$CURRENT_LINE,$RED,$FOREGROUND"
