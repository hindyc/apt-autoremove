#!/usr/bin/env bash

PURGELIST=`dpkg --list |grep "^rc" | cut -d " " -f 3`
LISTLEN=${#PURGELIST}
RETURN=0

if [ $LISTLEN -gt 0 ]; then
    echo $PURGELIST | xargs dpkg --purge
    RETURN=16
fi

exit $RETURN
