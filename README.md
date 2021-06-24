# Chocolate Doom for MinUI _(Now in a way that makes more sense?)_

## Instructions
1. Download the repo above by hitting the "Code" button and selecting "Download ZIP". Inside should be three folders, "Emus", "Roms" and "Tools". Ignore the github stuff
2. Extract these three folders to the root of your SD card with MinUI installed
3. Place your IWADS under `/Emus/Doom.pak`
    * By default this repo will not contain any commercial IWAD files. These need to be provided from legally owned retail copies of Doom and Doom 2. Alternatively, [FreeDoom Phase 1 & 2](https://github.com/freedoom/freedoom/releases/download/v0.12.1/freedoom-0.12.1.zip) also work in place of Doom 1 & 2 for some mods.
4. Place your mods under `/Emus/Doom.pak/mods` either in the root of the directory or in their own sub-directories. It doesn't matter so long as the location is mapped properly in your `Game.doom` file under `/Roms/Doom`
5. Place your `*.doom` files under `/Roms/Doom`. These files are nothing but text files that act as your "roms", telling Chocolate-Doom what WADs and mods to launch from where.
    * Keep reading for a detailed breakdown of these files and how to create them. For this repo I've created files for Freedoom 1 & 2, ChexQuest, Doom 1 & 2 and the Final Doom episodes TNT and Plutonia.
6. After booting MinUI, feel free to configure your controls and video settings using the new "Doom Setup" option under "Tools"
7. Once your settings are all taken care of, navigate back to the Doom folder added to your systems. 

## Making a `*.doom` File
The `*.doom` file is just the rest of the command, essentially, being fed to our `launch.sh` script under `/Emus/Doom.pak`. You will always need to specify your `-iwad` argument since this is the file that needs to be loaded first. If this file isn't mapped to properly or doesn't exist, Chocolate Doom will default to launching Doom 2 (or FreeDoom 2) for some reason.

Keep in mind that `*.doom` files are CASE SENSITIVE meaning `doom2.wad` is not the same as `DOOM2.WAD`. When creating your files, make sure you are pointing to the right places and have everything spelled properly. It's also worth noting that (currently) I haven't figured out a way to have spaces in the `*.doom` files, so you will have to use dashes or hyphens in the filenames. (Eg. `Plutonia_2.doom` vs `Plutonia 2.doom`)

### Understanding Arguments:
The main arguments we will be using are `-iwad`, `-merge`, `-deh` and `-file`
* `-iwad` Points to your main `*.wad`, basegame file. These will often be `doom2.wad` since Doom 2 is the base many mods are created around.
* `-merge` Adds your main mod (PWAD) file and merges it with the base (IWAD) file. Multiple files can be specified at once.
*  `-deh` Adds a DeHACKED patch. Required for most mods using mechanics. Multiple files can be specified at once.
*  `-file` Adds additional `*.wad` files that add things like music and textures. Multiple files can be specified at once.
### Examples:
**Simple `-iwad` only:** `UltimateDoom.doom`
~~~
-iwad doom.wad
~~~
**More complicated `-iwad` and `-deh` arguments:** `ChexQuest.doom`
~~~
-iwad chex.wad -deh mods/chex.deh
~~~
**Advanced `-iwad`, `-merge` and `-deh` arguments:** `Doom64.doom`
~~~
-iwad doom2.wad -merge mods/doom64.wad -deh mods/doom64.deh
~~~
**Complex milti `-merge`/`-file` arguments:** `AliensTC.doom`
~~~
-iwad Doom2.wad -deh mods/atcud19.deh -merge mods/alitcsf.wad -file mods/alitcsnd.wad mods/alitcwad.wad
~~~

## How can I find some pre-made `*.doom` files?
scooterpsu has done a fantastic job compiling some great vanilla compatible Doom mods for use on MiyooCFW [here](https://github.com/scooterpsu/chocolate-doom-modlauncher). You can download any of their packs and play those mods on MinUI so long as the files are placed in the right locations. 

Place the `*.doom` files under `/Roms/Doom` and the mod folders under `/Emus/Doom/mods`

## Special Thanks
* [shauninman](https://github.com/shauninman) for creating the awesome [MinUI](https://github.com/shauninman/MinUI) that this is all done for
* neonloop who [ported and uploaded the source](https://git.crowdedwood.com/chocolate-doom/) for Chocolate Doom on the Trimui
* [scooterpsu](https://github.com/scooterpsu) for creating the [chocolate-doom-modlauncher](https://github.com/scooterpsu/chocolate-doom-modlauncher) repo that this is based on

