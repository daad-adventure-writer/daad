# DAAD Adventure Writer

DAAD is a multi-machine and multi-graphics adventure writer, enabling you to target a broad range of 8-bit and 16-bit systems. It was written by Tim Gilberts in the late 80s as an in-house solution for the legenardy adventure forge Aventuras AD. It allows maintaining a single source file and then compile a database that is runnable through the interpreter of the target machines.

![Chichén Itzá (CPC) by Aventuras AD, created '92 with DAAD](http://f.cl.ly/items/2b3q2X3c2M3m451O2G1b/chichen_itza_cpc.png "Chichén Itzá (CPC) by Aventuras AD, created '92 with DAAD")

## Supported target machines

* C64
* ZX Spectrum
* Amstrad CPC
* MSX
* PCW
* Atari ST
* Amiga
* IBM PC (DOS)

## Supported languages

* English
* Spanish
* German

## Similar systems

Systems similar to DAAD are the adventure game tools which Tim Gilberts published with Gilsoft:

* The Quill & The Illustrator (available for a broad range of 8-bit systems)
* Professional Adventure Writer / PAWs (Spectrum, CP/M)

It is highly recommended that you have at least some experience with these programs, especially with the CondActs logic of Quill and PAWs, because a superset of this is the foundation of DAAD. Perfect would be knowledge about the PAWs CP/M version. It is the Gilsoft system which is the closest to DAAD. If you're new to DAAD, we advise you to grab yourself a copy of Quill and work your way through the tutorial to understand the basic logic.

## Moving ancestor system code to DAAD

Note that the .SCE files from CP/M PAWs are similar to the .SCE files DAAD uses, but they are not the same. However, you may consider our project [ANTUR](https://github.com/daad-adventure-writer/antur), a PAWs to DAAD transcompiler, allowing you to port an exisiting CP/M PAWs adventure to DAAD.

## Target audience & usage notes

DAAD is very sophisticated but please don’t expect it to be the PAWs 2 that never was in store. DAAD was created with the professional adventure developer in mind. Rather than being a single application, it is a set of more than 30 tools that need to be operated from the DOS command shell. DAAD requires programming skills and knowledge in handling source code files and compilers. The sources of your adventures (.SCE files) compile to game databases which need to be mastered and transferred to the target systems where they run in platform-specific interpreters. The tools necessary to achieve this are provided or referenced. There is a section in the 1991 documentation called “a worked example” which explains the necessary steps. In addition, we have a worked example section in the 2019 documentation, with the purpose to complement the original issue with modern knowledge and easier ways of mastering your adventure games.

## System requirements and recommendations

* a modern operating system (Linux, MacOS, Windows)
* Visual Studio Code
* DOSBox

To properly setup Visual Studio Code, you should also install the .SCE Syntax Highlighter that Chris Ainsley created for this project. You may download the extension from the VSCode Marketplace: [SCE Syntax Highlighter (DAAD/PAWs)](https://marketplace.visualstudio.com/items?itemName=ainslec.daad-paws-sce).

## Important expansions and adaptions

DAAD has been extensively expaneded and improved since it had been recovered. The mandatory projects for you to check out are:

* [Maluva](https://github.com/Utodev/MALUVA): an EXTERN which adds pixel graphic support to the 8-bit targets, as an alternative to DAADs own vector graphics editors. It also adds essential, missing features to DAAD, for example loading from and saving to +3 Disc on ZX Spectrum as well as MSX-DOS support.

* [DRC (DAAD Reborn Compiler)](https://github.com/Utodev/DRC): a modern variant of the DAAD compiler which comes with lots of new features as well as an improved syntax. The biggest advantage of DRC is that building your adventures can be automated for most of the target machines. Also has a wonderful tape mastering tool for Spectrum bundled.

* [Triz2DAAD](https://pypi.org/project/triz2DAAD/): command line utility which is priceless for world design and prototyping. It transforms maps created with Trizbort desktop app and Trizbort.io into code which can be compiled straight away with DAAD's DOS compiler as well as DRC.  

* [EAAD](https://github.com/Utodev/EAAD): an advanced editor for DAAD sources, supports both the classic .SCE files as well as DRC's new DSF syntax. Also has an integrated code generator for riddles, which makes it very easy to create complex statments of adventure logic.

## Legal notice

DAAD has been kindly contributed to the public domain by Andres Samudio, the founder of Aventuras AD. You may create as many adventures with the system as you like to, even commercial ones. Please note that some sources of the core system are currently not provided.
