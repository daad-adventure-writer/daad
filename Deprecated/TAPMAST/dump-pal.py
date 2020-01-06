#!/usr/bin/env python
#
# This is free software under the MIT license:
#
# https://opensource.org/licenses/MIT
#

__version__ = "1.0"

from argparse import ArgumentParser
from PIL import Image

# firmware
CPC_PAL = (
    [0, 0, 0],
    [0, 0, 128],
    [0, 0, 255],
    [128, 0, 0],
    [128, 0, 128],
    [128, 0, 255],
    [255, 0, 0],
    [255, 0, 128],
    [255, 0, 255],
    [0, 128, 0],
    [0, 128, 128],
    [0, 128, 255],
    [128, 128, 0],
    [128, 128, 128],
    [128, 128, 255],
    [255, 128, 0],
    [255, 128, 128],
    [255, 128, 255],
    [0, 255, 0],
    [0, 255, 128],
    [0, 255, 255],
    [128, 255, 0],
    [128, 255, 128],
    [128, 255, 255],
    [255, 255, 0],
    [255, 255, 128],
    [255, 255, 255],
        )

SW_TO_HW = (
        0x54, 0x44, 0x55, 0x5c, 0x58, 0x5d, 0x4c, 0x45, 0x4d, 0x56, 0x46, 0x57,
        0x5e, 0x40, 0x5f, 0x4e, 0x47, 0x4f, 0x52, 0x42, 0x53, 0x5a, 0x59, 0x5b,
        0x4a, 0x43, 0x4b,
        )

def main():

    parser = ArgumentParser(description="PNG to CPC palette",
                            epilog="Copyright (C) 2018 Juan J Martinez <jjm@usebox.net>",
                            )

    parser.add_argument("--version", action="version", version="%(prog)s "  + __version__)
    parser.add_argument("--header", dest="header", action="store_true")
    parser.add_argument("--hardware", dest="hardware", action="store_true")
    parser.add_argument("image", help="image to convert")
    parser.add_argument("pal_dump", help="filename for the palette dump (variable if header flag is set)")

    args = parser.parse_args()

    try:
        image = Image.open(args.image)
    except IOError:
        parser.error("failed to open the image")

    if image.mode != "P":
        parser.error("not an indexed image (no palette)")

    palette = image.getpalette()
    if not palette:
        parser.error("failed to extract the palette (is this an indexed image?)")

    ncols = max(set(image.getdata())) + 1

    rgb = []
    for i in range(0, min(16*3, ncols*3), 3):
        c = palette[i:i + 3]
        if c not in CPC_PAL:
            parser.error("%r not in the CPC palette" % c)
        rgb.append(c)

    out = [CPC_PAL.index(c) for c in rgb]
    if len(out) < 16:
        out.extend([0 for _ in range(16 - len(out))])

    if args.hardware:
        out = [SW_TO_HW[c] for c in out[:]]

    if args.header:
        print("/* %s palette */" % ("hardware" if args.hardware else "firmware"))
        print("#ifdef LOCAL")
        print("const unsigned char %s[] = { %s };\n" % (args.pal_dump, ', '.join([hex(c) for c in out])))
        print("#else")
        print("extern const unsigned char %s[];\n" % (args.pal_dump))
        print("#endif")
    else:
        with open(args.pal_dump, "wb") as fd:
            fd.write(bytearray(out))

if __name__ == "__main__":
    main()

