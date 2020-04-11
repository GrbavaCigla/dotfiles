#!/bin/bash
ICON=""

while true; do
    REPOS=$(checkupdates)
    AURS=$(yay -Quaq)
    TOTAL_NUM=$(${AURS}${REPOS} | wc -l)
    RESULT="$TOTAL_NUM ${ICON}"
    if [ $TOTAL_NUM -eq 0 ] ; then
        RESULT=${ICON}
    fi
    echo ${RESULT}
    sleep 10
done