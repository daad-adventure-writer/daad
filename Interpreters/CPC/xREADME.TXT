Amstrad CPC files:

DCPCIE.Z80 -> English interpreter
DCPCIS.Z80 -> Spanish interpreter
GFX.BIN -> empty graphics DB with standard charset
M0LOAD -> loader, mode 0 loading screen (LOADING.SCR)
M1LOAD -> loader, mode 1 loading screen (LOADING.SCR)
DAAD.FNT -> DAAD's standard CPC font (used by the loader only)
DAAD_CPC.DSK -> CPC disk as originally supplied with DAAD

Bundling releases:

use DRC to compile PART1.DDB with CPC target
use MCRF to compile PART1.DDB, interpreter and grapics DB to game binary (MYGAME.BIN) 
add game binary, DAAD.FNT and the desired loader (renamed as DISC - no suffix) to disc image

About the loader:

The loader also fixes a bug in the interpreter that prevents it from running on French AZERTY CPCs. Not suitable for Spanish games as it is unlikely you want to play a Spanish game on a French keyboard. The loader asks which PART you want to play (PART1 or PART2) which refers to files PART1.BIN and PART2.BIN on disc. The loading screen needs to be named LOADING.SCR. If you just have a one part game, use BASIC to edit the loader for your own needs.

for an example release check out Hibernated 1: http://8bitgames.itch.io
