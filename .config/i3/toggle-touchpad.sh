#!/bin/bash

export STATE=$(xinput --list-props 11 | awk '$1=$1' | grep "Device Enabled" | cut -d " " -f4)
if [ $STATE -eq 1 ] ; then
	xinput disable 11    
else
    xinput enable 11
fi
