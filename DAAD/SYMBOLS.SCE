; DAAD Version 2 - System wide symbols
;
; General value symbols
;
#define NOTCREATED 252
#define TRUE 1
#define FALSE 0
;
; Attributes for system
;
#define WEARABLE  23            ;Current object is wearable
#define CONTAINER 31            ;Current object is a container
#define LISTED    55            ;Objects - listed by LISTOBJ etc
#define OA_CLIST  54            ; - continous list
#define OO_CLIST  64
#define TIMEOUT   87            ;If Timeout last frame
#define IA_RBUF   85            ;Input - recall buffer
#define IO_RBUF   32
#define IA_PINP   84            ; - reprint in stream
#define IO_PINP   16
#define IA_CSTR   83            ; - clear stream
#define IO_CSTR   8
#define IA_TAKEY  82            ; - timeout on any key
#define IO_TAKEY  4
#define IA_TMORE  81            ; - timeout on More...
#define IO_TMORE  2
#define IA_TSTAR  80            ; - timeout at start of input
#define IO_TSTAR  1
#define GMODE     247           ;Graphics - available
#define GA_MDRW   246           ; - Invisible draw (drawstring)
#define GO_MDRW   64
#define GA_POFF   245           ; - Pictures OFF (drawstring)
#define GO_POFF   32
#define GA_WKEY   244           ; - Wait after drawing (drawstring)
#define GO_WKEY   16
#define GA_CBOR   243           ; - Change BORDER (drawstring)
#define GO_CBOR   8
#define MOUSE     240           ;mouse available (!DRAW only)
;
#define O2      152     ; Offset of second object attributes
;
; System flags 0 - 63
;
#define Dark      0
#define NOCarr    1
#define Work1     2     ; These are system as we consider the stack such
#define Work2     3
#define Stack    24     ; A small stack (always 2 bytes pushed) 10 pushes
#define EMPTY    23     ; Stack can run from here
#define FULL      3     ; to here - There will be an internal one soon
#define O2Num    25     ; 1st free in system 64
#define O2Con    26     ; Object 2 is a container
#define O2Loc    27
#define DarkF    28
#define GFlags   29     ; This is best tested using HASAT GMODE
#define Score    30
#define Turns    31     ; 2 bytes
#define Verb     33
#define Noun1    34
#define Adject1  35
#define Adverb   36
#define MaxCarr  37
#define Player   38
#define O2Att    39     ; Using Flags 39 and 40 to contain attribs for other obj
#define InStream 41
#define Prompt   42
#define Prep     43
#define Noun2    44
#define Adject2  45
#define CPNoun   46
#define CPAdject 47
#define Time     48
#define TIFlags  49
#define DAObjNo  50
#define CONum    51
#define Strength 52
#define OFlags   53
#define COLoc    54
#define COWei    55
#define COCon    56
#define COWR     57
#define COAtt    58
#define Key1     60
#define Key2     61
#define ScMode   62     ; 2=Text, 4=CGA, 13=EGA, 141=VGA
#define CurWin   63     ; Which window is active at the moment
;
;Useful groups
#define Z80 SPE+MSX+CPC+PCW
#define M6502 CBM64
#define M68000 ST+AMIGA
#define I86 PC
#define 16BIT ST+AMIGA+PC
#define 8BIT CBM64+SPE+SP3+S48+CPC+MSX
