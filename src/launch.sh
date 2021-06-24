#!/bin/sh
# Doom.pak/launch.sh

EMU_EXE=chocolate-doom
EMU_DIR=$(dirname "$0")
ROM_DIR=${EMU_DIR/.pak/}
ROM_DIR=${ROM_DIR/Emus/Roms}
EMU_NAME=${ROM_DIR/\/mnt\/SDCARD\/Roms\//}
DOOMFILE=$"`cat $1 | cut -d "|" -f l`"


HOME="$EMU_DIR"
cd "$HOME"
./chocolate-doom "$DOOMFILE" &> "/mnt/SDCARD/.minui/logs/$EMU_NAME.txt"
