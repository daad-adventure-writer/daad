MSX files:

MSXEDI.Z80 --> English interpreter
MSXSDI.Z80 --> Spanish interpreter
DAAD.MDG --> empty graphics database with standard charset
LOADMSX1.COM --> loader, loads PART1.DDB
LOADMSX2.COM --> loader, loads PART2.DDB

Bundling releases:

use DRC to compile PART1.DDB with MSX target
add game DB, graphics, interpreter (as DAAD.Z80) and loader on disk
add MSXDOS.SYS (not provided, we recommend version 1.8), add COMMAND.COM (not provided 1.8 too) *

About the loader:

You can optionally place a loading screen as LOADPIC.SC2 on disk.

for an example release check out Hibernated 1: http://8bitgames.itch.io


* = Since MSXDOS and COMMAND.COM are copyrighted to Microsoft, we cannot distribute them but the internert is surely your friend in finding these.
