#!/bin/sh

if [ -z "$CMDPATH" ]; then
    echo '$CMDPATH not set' >&2
    exit 1
fi

# Edit if more libraries need to be loaded
. "$CMDPATH"/lib/log.sh
