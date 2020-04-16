#!/bin/bash
ICON=""

while true; do
    REPOS=$(checkupdates | wc -l)
    AURS=$(yay -Quaq | wc -l)
	TOTAL_NUM=$(expr ${AURS} + ${REPOS})
    RESULT="$TOTAL_NUM ${ICON}"
    if [ $TOTAL_NUM -eq 0 ] ; then
        RESULT=${ICON}
    fi
    echo ${RESULT}
    sleep 10
done
