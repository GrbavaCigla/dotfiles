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

MENU="$(rofi -no-lazy-grab -sep "|" -dmenu -i -p '' \
-no-lazy-grab \
-hide-scrollbar true \
-bw 0 \
-xoffset -0 -yoffset 36 \
-line-padding 10 \
-padding 12 \
-width 10 \
-columns 2 \
-lines 4 \
-location 3 \
-show-icons -icon-theme "Numix-Circle" \
-color-enabled true \
-color-window "$BACKGROUND,$PURPLE,$PURPLE" \
-color-normal "$CURRENT_LINE,$FOREGROUND,$CURRENT_LINE,$PINK,$FOREGROUND" \
-color-active "$BACKGROUND,$YELLOW,$CURRENT_LINE,$YELLOW,$FOREGROUND" \
-color-urgent "$BACKGROUND,$RED,$CURRENT_LINE,$RED,$FOREGROUND" \
<<< "  Lock|  Logout|  Reboot|  Shutdown")"
case "$MENU" in
  *Lock) i3lock ;;
  *Logout) i3-msg exit;;
  *Reboot) systemctl reboot ;;
  *Shutdown) systemctl -i poweroff
esac