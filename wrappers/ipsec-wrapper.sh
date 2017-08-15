#! /bin/sh

set -e

export LD_LIBRARY_PATH="$SNAP/usr/lib/ipsec/plugins:$SNAP/usr/lib/ipsec:$LD_LIBRARY_PATH"

if [ "$(id -u)" != "0" ]; then
    echo "$(basename $0) requires sudo"
    exit 1
fi

[ -d $SNAP_DATA/etc ] || cp -a $SNAP/etc $SNAP_DATA/
[ -d $SNAP_DATA/var/run ] || mkdir -p $SNAP_DATA/var/run

$SNAP/usr/sbin/ipsec "$@"
