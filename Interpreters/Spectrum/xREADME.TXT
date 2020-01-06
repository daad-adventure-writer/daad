ZX Spectrum files:

DS48IE.P3F -> English interpreter
DS48IS.P3F -> Spanish interpreter
PART1.SDG -> empty graphics databse with standard charset
DISK -> loader
DAAD_Spectrum.DSK -> original disk as supplied with DAAD

Compile database
use DRC to compile "PART1.DDB" with Spectrum target, add to disk

Bundling tape releases (48k/128k/+2):
use daadmaker with the given synopsis

Bundling disk releases (+3) *not automated*
load TAP2DSK on a Spectrum and give it your previously created tape release

Bundling disk releases (+3) *automated*:
add loader, interpreter, and graphics DB on disk

About the loader:

You should leave the name as DISK (no suffix). The loader asks which part you want to load, 1 or 2, and then launches the game. It also shows a loading screen (SCREEN.SCR). If you don't like this behaviour you can easily edit the loader from +3 Basic 

for an example release check out Hibernated 1: http://8bitgames.itch.io
