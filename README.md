[![Snap Status](https://build.snapcraft.io/badge/ogra1/strongswan-snap.svg)](https://build.snapcraft.io/user/ogra1/strongswan-snap)

# strongswan Snap Package

This is a strongswan Snap package built from https://github.com/strongswan/strongswan with a few changes to the paths to adapt it to the snap environment.

## Install

To install the snap from the store use:

sudo snap install strongswan-ogra

All configuration lives in /var/snap/strongswan-ogra/current/etc
Follow the quickstart guilde at https://github.com/strongswan/strongswan to set up
an initial VPN network.

The charon service should automatically start after connecting the  network-control interface with:

sudo snap connect strongswan-ogra:network-control

Please send any feedback to the forum thread at:

https://forum.snapcraft.io/t/strongswan-ipsec-vpn-snap-package/1694/1

## Building

Simply clone this tree and call `snapcraft` in the toplevel dir
