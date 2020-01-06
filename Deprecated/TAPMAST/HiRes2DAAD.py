#!/usr/bin/env python
# ----------------------------------------------------------------
# C64 Art Studio HiRes to DAAD converter
# Copyright (C) 2019 Stefan Vogt, Puddle Soft.
# http://8bitgames.itch.io
#
# This source code is licensed under the BSD 2-Clause License.
#
# Credits: Thanks to Graham Axten for helping me understand how 
# Art Studio HiRes images could work with the DAAD C64 loaders \m/ 
# ----------------------------------------------------------------

__author__ = "Stefan Vogt"
__version__ = "1.0.0"

import sys

patches = [
	{
		# Art Studio load address is $2000, we patch it to $6000 for DAAD
		'file':     'LOADERPIC',
		'offset': 	0x1,
		'original': b'\x20',
		'patched': 	b'\x60',
	},
]

# general 
def versionInfo():
    print("C64 Art Studio HiRes to DAAD converter", __version__, "| Python 3")
    print("Copyright (C) 2019 Stefan Vogt, Puddle Soft.")
    print("http://8bitgames.itch.io\n")

def helpMe():
    print("C64 Art Studio HiRes to DAAD converter")
    print("--> usage: HiRes2DAAD.py (with LOADERPIC in same directory)")
    print("--> version info: HiRes2DAAD.py --version\n")

def patch_all(patches=None):
    # apply list of patches (currently one, which I hope remains)
    if patches is None:
        return
        
    for patch in patches:
        with open(patch['file'], 'r+b') as f:
            f.seek(patch['offset'])
		    # change it if patch data is longer than one byte
            data = f.read(1)
            # found $2000 at 0x1
            if data == patch['original']:
                print('Found Art Studio load address $2000 at 0x1.')
            # binary data at 0x1 doesn't match
            else:
                print('Wrong file or file already patched.\n')
                return
            # patch 0x1
            f.seek(patch['offset'])
            f.write(patch['patched'])
            print('Changed load address at 0x1 to $6000 for DAAD.\n')

def main():
    if len(sys.argv) >= 2:
        if sys.argv[1] == "--version" or sys.argv[1] == "-v":
            versionInfo()
            exit()
        else: 
            helpMe()
            exit()

    # let's kick some a... err... patch! 
    patch_all(patches=patches)

# main process
if __name__ == '__main__':
	main()
