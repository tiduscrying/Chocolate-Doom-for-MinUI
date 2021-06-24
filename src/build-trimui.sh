#! /bin/sh

SYSROOT=$(${CROSS_COMPILE}gcc --print-sysroot)
autoreconf -vif --include=$SYSROOT/usr/share/aclocal/
CFLAGS=$($SYSROOT/usr/bin/sdl-config --cflags) LDFLAGS=$($SYSROOT/usr/bin/sdl-config --libs) ./configure --host=arm-buildroot-linux-gnueabi
make
