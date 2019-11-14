#!/bin/bash
    for S in /host-fs/developer/*
    do
        if [ -d "$S" ]; then
                #DIRSIZE=$(du -sh "$S" 2>/dev/null | cut -f1);
                #echo "Starting a daily scan of "$S" directory.
                #Amount of data to be scanned is "$DIRSIZE".";
                IFS='/ ' eval 'array=($S)';
                LOGFILE="/logs/${array[3]}-$(date +'%Y-%m-%d_%H-%M-%S').log";
                #echo $LOGFILE;
                clamscan -ri "$S" >> "$LOGFILE";
        fi
    done
exit 0
