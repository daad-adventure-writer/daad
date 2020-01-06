# DAAD Adventure Writer

DAAD is a multi-machine and multi-graphics adventure writer, enabling you to target a broad range of 8-bit and 16-bit systems. It was written by Tim Gilberts in the late 80s as an in-house solution for the legendary adventure forge Aventuras AD. It allows maintaining a single source file and then compile a database that is runnable through the interpreter of the target machines.

![Chichén Itzá (CPC) by Aventuras AD, created '92 with DAAD](http://f.cl.ly/items/2b3q2X3c2M3m451O2G1b/chichen_itza_cpc.png "Chichén Itzá (CPC) by Aventuras AD, created '92 with DAAD")

## Supported target machines

* Commodore 64
* Commodore Plus/4 (and C16 with 64k)
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

## Target audience & usage notes

DAAD was created with the professional adventure developer in mind. It requires programming skills and knowledge in handling source code files and compilers. The sources of your adventures compile to game databases which need to be transferred to the target systems where they run in platform-specific interpreters. We recommend creating build-scripts for that purpose.

## The compiler: DRC

DAAD's compiler [DRC](https://github.com/daad-adventure-writer/DRC) is available in a separate repository. Please also refer to the [DRC Wiki](https://github.com/daad-adventure-writer/DRC/wiki)for learning how to use it.

## Pixel image support and additional content: Maluva

We created [Maluva](https://github.com/daad-adventure-writer/MALUVA), a DAAD extension that adds many useful features such as pixel image support and loading additional game content from disk. A detailed documentation is available at the [Maluva Wiki](https://github.com/daad-adventure-writer/MALUVA/wiki).

## Similar systems

Systems similar to DAAD are the adventure game tools which Tim Gilberts published with Gilsoft:

* The Quill & The Illustrator (available for a broad range of 8-bit systems)
* Professional Adventure Writer / PAWs (Spectrum, CP/M)

It is highly recommended that you have at least some experience with these programs, especially with the CondActs logic of Quill and PAWs, because a superset of this is the foundation of DAAD. Perfect would be knowledge about the PAWs CP/M version. We advise you to grab yourself a copy of Quill and work your way through the tutorial to understand the basic logic in case you are new to these systems.

## Moving ancestor system code to DAAD

You can use this specific version of [unPAWs](https://github.com/Utodev/unPAWs/tree/DSF), which disassembles a Spectrum PAWs game and converts it to DAAD's .DSF syntax. You still have to properly adapt the contents then to the DAAD standard .DSF template but it should work with very little efforts. 

## System requirements and recommendations

* a modern operating system (Linux, MacOS, Windows)
* Visual Studio Code

To properly setup Visual Studio Code, you should also install the .SCE Syntax Highlighter that Chris Ainsley created for this project. You may download the extension from the VSCode Marketplace: [SCE Syntax Highlighter (DAAD/PAWs)](https://marketplace.visualstudio.com/items?itemName=ainslec.daad-paws-sce).

## Other useful tools

* [Triz2DAAD](https://pypi.org/project/triz2DAAD/): command line utility which is priceless for world design and prototyping. It transforms maps created with Trizbort desktop app and Trizbort.io into code which can be compiled straight away with DAAD's DOS compiler as well as DRC.  

* [EAAD](https://github.com/Utodev/EAAD): an advanced editor for DAAD sources, supports both the classic .SCE files as well as DRC's new DSF syntax. Also has an integrated code generator for riddles, which makes it very easy to create complex statments of adventure logic.

## Legal notice

DAAD has been kindly contributed to the public domain by Andres Samudio, the founder of Aventuras AD. You may create as many adventures with the system as you like to, even commercial ones. Please note that the sources of the interpreters are currently not provided.
