#!/usr/bin/env bash

PURGELIST=`dpkg --list |grep "^rc" | cut -d " " -f 3`
LISTLEN=${#PURGELIST}

if [ $LISTLEN -gt 0 ]; then
    echo $PURGELIST | xargs dpkg --purge
fi

exit 0
