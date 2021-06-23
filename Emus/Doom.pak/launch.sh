#!/bin/sh
#Doom.pak/launch.sh
EMU_DIR=$(dirname "0")
ROM_DIR=${ROM_DIR/Emus/Roms}
HOME=$(dirname "$0")
doomfile="`cat $1 | cut -d "|" -f 1`"

cd /mnt/SDCARD/Emus/Doom.pak
./chocolate-doom $doomfile