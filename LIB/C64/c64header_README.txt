AUTOMATING C64 builds
---------------------->

In case you want to automate disk mastering for the C64, we provide a binary version of the Commodore 64 header. So copying a freshly compiled database onto the disk template can be as simple as seen below, provided you have VICE installed. c1541 is a tool shipped with VICE emulator.

===============
For Windows
===============
copy /b c64header.BIN + DAAD.DDB >> DAAD.BIN
c1541 -attach DAAD.D64 -write DAAD.BIN bpart1

===============
For Linux/OS X
===============
cat c64header.bin DAAD.DDB > DAAD.BIN
c1541 -attach DAAD.D64 -write DAAD.BIN bpart1
