Commodore Plus/4 files:

boot.prg -> loader 
ediplus4.prg -> English interpreter
sdiplus64.prg -> Spanish interpreter
apart1.prg -> standard graphics database with (thick Charset)
altfont.prg -> graphics DB with alternate (thin Charset), rename to apart1.prg when using

Bundling releases:

use DRC to compile "bpart1" with Plus/4 target, be sure to use the 'add header' function, add to disk
add loader, interpreter, and graphics DB on disk (only loader can be renamed!)

About the loader:

The loader supports both English and Spanish interpreters, loading different parts and also showing an (optional) loading screen. It will show no screen when not found on disk. Configure as follows

LOAD "BOOT",8 -> this will load the loader in memory
LIST -> this will show a single line with a REM statement

The REM statement should look like this: REM10E. The first number 1 is the PART to load. So if you want to load a BPART1 database, leave it. Change it to 2 if you want the loader to load a BPART2 database. The second statement defines whether your loading screen is Botticelli HiRes (0) or Botticelli Multicolor (1) format. The naming scheme for your loading screen needs too be LOADERPICPLUS4.PRG. The third entry defines whether it should load the English interpreter (EDIPLUS4.PRG) or the Spanish interpreter (SDIPLUS4.PRG), so if you want to load the Spanish interpreter, change the E to an S. After you made your changes, just hit ENTER. Then save the modified loader like this: 

SAVE "MYLOADER",8

Don't try to overwrite as that won't work. 

Hint on graphcis: if you want to use DAAD's standard vector graphics, use DG (the graphic editor) on C64. The Plus/4 port takes 1:1 the C64 graphics database and automatically reallocates it to the Plus/4 memory model. 

for an example release check out Hibernated 1: http://8bitgames.itch.io
