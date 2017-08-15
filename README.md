# strongswan Snap Package

This is an initial (and still rather hackish) attempt to create a strongswan Snap package.
This snap still requires the --devmode option when installing the snap.

## Testing

To install the snap from the store use:

snap install --devmode --edge strongswan-ogra

Configuration lives in /var/snap/strongswan-ogra/current/etc
The charon service should automatically start after install and can e controlled with systemctl as:

`snap.strongswan-ogra.strongswan.service`

Please send any feedback to the forum thread at:

https://forum.snapcraft.io/t/strongswan-ipsec-vpn-snap-package/1694/1

## Building

Simply clone this tree and call `snapcraft` in the toplevel dir
