#!/usr/bin/env python
"""
png2scr.py
Copyright (C) 2014-2016 by Juan J. Martinez - usebox.net

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

"""
__version__ = "1.0.3"

from argparse import ArgumentParser
from PIL import Image

COLORS = ( (0, 0, 0),
           (0, 0, 205), (0, 0, 255),
           (205, 0, 0), (255, 0, 0),
           (205, 0, 205), (255, 0, 255),
           (0, 205, 0), (0, 255, 0),
           (0, 205, 205), (0, 255, 255),
           (205, 205, 0), (255, 255, 0),
           (205, 205, 205), (255, 255, 255),
           )

ATTR_I = ( 0x00, 0x01, 0x01 | 0x40, 0x02, 0x02 | 0x40,
           0x03, 0x03 | 0x40, 0x04, 0x04 | 0x40, 0x05, 0x05 | 0x40,
           0x06, 0x06 | 0x40, 0x07, 0x07 | 0x40,)

ATTR_P = ( 0x00, 0x08, 0x08 | 0x40, 0x10, 0x10 | 0x40,
           0x18, 0x18 | 0x40, 0x20, 0x20 | 0x40, 0x28, 0x28 | 0x40,
           0x30, 0x30 | 0x40, 0x38, 0x38 | 0x40,)

C2I = dict(zip(COLORS, ATTR_I))
C2P = dict(zip(COLORS, ATTR_P))

BASE = 128

def main():

    parser = ArgumentParser(description="PNG to Spectrum SCR converter",
                            epilog="Copyright (C) 2014-2016 Juan J Martinez <jjm@usebox.net>",
                            )

    parser.add_argument("--version", action="version", version="%(prog)s "  + __version__)
    parser.add_argument("image", help="image to convert")

    args = parser.parse_args()

    try:
        image = Image.open(args.image)
    except IOError:
        parser.error("failed to open the image")

    (w, h) = image.size

    if w != 256 or h !=  192:
        parser.error("image size must be 256x192")

    if not isinstance(image.getpixel((0, 0)), tuple):
        parse.error("only RGB(A) images are supported")

    # so we support both RGB and RGBA images
    data = list(zip(list(image.getdata(0)), list(image.getdata(1)), list(image.getdata(2))))

    for c in data:
        if c not in COLORS:
            parser.error("invalid color %r in image" % (c,))

    pixels = []
    attrib = []
    for y in range(0, h, 8):
        for x in range(0, w, 8):
            byte = []
            attr = []
            for j in range(8):
                row = 0
                for i in range(8):
                    if not attr:
                        attr.append(data[x + i + (j + y) * w])
                    if data[x + i + (j + y) * w] != attr[0]:
                        row |= 1 << (7 - i)
                    if data[x + i + (j + y) * w] not in attr:
                        attr.append(data[x + i + (j + y) * w])
                byte.append(row)

            if len(attr) > 2:
                parser.error("more than 2 colors in an attribute block in (%d, %d)" % (x, y))
            elif len(attr) != 2:
                # if only one colour, try to find a match in an adjacent cell
                if attrib:
                    prev_attr = attrib[-1]
                    if prev_attr[0] == attr[0]:
                        attr.append(prev_attr[1])
                if len(attr) != 2:
                    attr.append(COLORS[0])

            # improve compression ratio
            if C2P[attr[0]] > C2I[attr[1]]:
                attr[0], attr[1] = attr[1], attr[0]
                byte = [~b & 0xff for b in byte]

            pixels.extend(byte)
            attrib.append(attr)

    attrib = [(C2P[attr[0]] | C2I[attr[1]]) for attr in attrib]

    interlaced = []
    for block in range(3):
        for col in range(8):
            for row in range(8):
                for line in range(32):
                    interlaced.append(pixels[block * 8 * 8 * 32 \
                            + row * 32 * 8 \
                            + line * 8 \
                            + col])

    output = args.image + ".scr"

    with open(output, "wb") as fh:
        fh.write(bytearray(interlaced))
        fh.write(bytearray(attrib))

    print("%r created" % output)

if __name__ == "__main__":
    main()

