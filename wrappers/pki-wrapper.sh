#! /bin/sh

set -e

export LD_LIBRARY_PATH="$SNAP/usr/lib/ipsec/plugins:$SNAP/usr/lib/ipsec:$LD_LIBRARY_PATH"

if [ "$(id -u)" != "0" ]; then
    echo "$(basename $0) requires sudo"
    exit 1
fi

[ -d /var/snap/strongswan-ogra/current/etc ] || cp -a $SNAP/var/snap/strongswan-ogra/current/etc $SNAP_DATA

$SNAP/usr/bin/pki "$@"
