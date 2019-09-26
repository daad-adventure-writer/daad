;The DAAD V2 sound,language and extern demo file
;
#include c:\daad\symbols.sce
#include c:\daad\symbols.asm
;
#if Z80
 ;We have some inline code in Z80
 #include c:\daad\symbols.z80
#endif
#if M6502
 ;Motorola 6502
 #include c:\daad\symbols.652
#endif
;
;All Spectrums get JuanManuel Sound
#define JMS SPE
;
;The other Z80 machines get DINAMIC Sound
#define DSR MSX+CPC
;
#define English 0
#define Spanish 1
; The next line tells the compiler to look up words in the English
; vocabulary as well as the language it is being compiled for, which
; may of course be English anyway!
#lookup English
/CTL    ;Control Section
_       ;Null word character is an underline
;
;Now an example of the new inline data and code commands
#if JMS
 ;
 ;This data is the sound in use at the moment
 ;
 #dbaddr ThisSound
 #defb 0 ; Internal counter
 #defb 0 ; D Duration
 #defb 0 ; C Interrs
 #defb 0 ; I Increment
 #defb 0 ; L tone
 #defb 0 ; T iterations before RET
 ;
 ;The next file is the interrupt routine which acceses the previous
 ;six bytes using IX-n
 ;
 ; Written using an assembler for ease
 #int jmsint.z80
 ;
 ;The actual sound data and their numbers
 ;It may be useful to make this the same as the AY38910 numbers?
 ;
 #dbaddr SoundTable
 #define HIT      0
 #defb   32 1 62 240 4
 #define DOY      1
 #defb   52 1 190 1 5
 #define FUEGO    2
 #defb   12 1 195 243 6
 #define HIPVA    3
 #defb   171 1 253 1 2
 #define HIPVIENE 4
 #defb   58 1 9 1 2
 #define DESPEGUE 5
 #defb   245 1 170 1 27
 #define ATERR    6
 #defb   245 1 86 1 27
 #define ALARMA   7
 #defb   63 1 116 1 7
 #define AUTORED  8
 #defb   255 1 128 45 5
 ;
 ;The external sound dispatcher:- This is called to make sound n
 ;Any command code will do - it is ignored
 ;
 #extern                ; This is empty to generate address only
 ;
 #defb PUSH_BC
 #defb LD_L_A           ; Parameter is multiplied by 5
 #defb LD_H_n 0
 #defb PUSH_HL
 #defb POP_DE
 #defb ADD_HL_HL
 #defb ADD_HL_HL
 #defb ADD_HL_DE
 #defb LD_DE_nn
 #defw  SoundTable
 #defb ADD_HL_DE        ; HL = new sound
 #defb LD_DE_nn         ; DE = current sound
 #defw  ThisSound
 #defb DI               ; Make us atomic
 #defb EX_DE_HL
 #defb LD_M_n 0         ; LD (HL),0 in real Z80 to zero counter
 #defb EX_DE_HL
 #defb INC_DE
 #defb LD_BC_nn
 #defw  5       ; Five bytes
 #defb ED LDIR             ; This is an extended inst
 #defb EI
 #defb POP_BC
 #defb RET
 ;
#endif
#if DSR
 ;
 ; The interrupt routine is not relocatable or machine indipendent
 ; and must be here.
 ;
 #if SPE
  #int dsrspe.z80
 #endif
 #if CPC
  #int dsrcpc.z80
 #endif
 #if MSX
  #int dsrmsx.z80
 #endif
 ;
 ; It expects to be followed by the following table
 ; The sound in use at the moment
 ;
 #dbaddr PREVSON
 #defw 0
 #dbaddr SONIDO
 #defw -1
 #defw -1
 #defw -1
 #defw -1
 #defw -1
 #defw -1
 #defw -1
 #defw -1
 #dbaddr SALIENT
 #defb 255 0
 ;
 ;The external sound dispatcher:- This is called to make sound n
 ;Any command code will do - it is ignored
 ;
 #extern                ; This is empty to generate address only
 ;
 #defb LD_nn_A
 #defw  PREVSON
 #defb LD_A_n 255
 #defb LD_nn_A
 #defw  SALIENT
 #defb LD_HL_nn
 #defw  SONIDO
 #defb LD_BC_nn
 #defw  2
 #dbaddr LOSND
 #defb LD_A_M
 #defb INC_A
 #defb JR_Z 7
 #defb INC_HL
 #defb INC_HL
 #defb INC_C
 #defb INC_C
 #defb JP       ; Easier than calculating a rear offset
 #defw  LOSND
 ;
 #defb LD_D_H
 #defb LD_E_L
 #defb INC_DE
 #defb DEC_HL
 #defb ED LDDR
 #defb RET
 ;
 ; The actual sound file must set 'userptr 1' to two bytes before its
 ; pointer table (i.e. it will have to be compiled and not be a block)
 ;
 #include sonidos.emd
 ;
#endif
#if CBM64
 ;
 ; As an example of an interrupt routine, this will change the
 ; colour of the top left screen byte
 ;
 #int
 #defb INCA
 #defw  52224
 #defb RTS
 ;
#endif
/TOK    ;Tokens as supplied with PAW under CP/M
_the_
_you_
_are_
ing_
_to_
_and
_is_
You_
and_
The_
n't_
_of_
_you
ing
ed_
_a_
_op
ith
out
ent
_to
_in
all
_th
_it
ter
ave
_be
ver
her
and
ear
You
_on
en_
ose
no
ic
ap
_b
gh
__
ad
is
_c
ir
ay
ur
un
oo
_d
lo
ro
ac
se
ri
li
ti
om
bl
ck
I_
ed
ee
_f
ha
pe
e_
t_
in
s_
th
,_
er
d_
on
to
an
ar
en
ou
or
st
._
ow
le
at
al
re
y_
ch
am
el
_w
as
es
it
_s
ll
do
op
sh
me
he
bo
hi
ca
pl
il
cl
_a
of
_h
tt
mo
ke
ve
so
e.
d.
t.
vi
ly
id
sc
_p
em
r_
;       -       -       -       -       -       -       -       -       -
/VOC    ;Vocabulary
;                       Movements ie verbs and nouns < 14
N       2       noun 
NORTH   2       noun
S       3       noun
SOUTH   3       noun
E       4       noun
EAST    4       noun
W       5       noun
WEST    5       noun
NE      6       noun
NW      7       noun
SE      8       noun
SW      9       noun
U       10      noun
UP      10      noun
ASCEN   10      verb
D       11      noun
DOWN    11      noun
DESCE   11      verb
;                       Nouns   <20 means can be used as verbs
;                               <50 means a proper noun ie not an 'IT'
I       14      noun
INVEN   14      noun
ALL     20      noun E ; An English noun
LOT     20      noun E
EVERY   20      noun E
TODO    20      noun S ; A Spanish noun
;                       Verbs
GET     20      verb E
TAKE    20      verb E
COGER   20      verb S
DROP    21      verb E
PUT     21      verb E
DEJAR   21      verb S
REMOV   22      verb E
QUITAR  22      verb S
WEAR    23      verb E
PONER   23      verb S
;
R       24      verb
REDES   24      verb
QUIT    25      verb
STOP    25      verb
SAVE    26      verb
LOAD    27      verb
RAMSA   28      verb
RAMLO   29      verb
LOOK    30      verb
EXAMI   30      verb
SAY     31      verb
ASK     31      verb
TALK    31      verb
SPEAK   31      verb
;
#if JMS
 HIT     32 verb
 0       32 verb
 DOY     33 verb
 1       33 verb
 FUEGO   34 verb
 2       34 verb
 HIPVA   35 verb
 3       35 verb
 HIPVIENE 36 verb
 4       36 verb
 DESPEGUE 37 verb
 5       37 verb
 ATERR   38 verb
 6       38 verb
 ALARMA  39 verb
 7       39 verb
 AUTORED 40 verb
 8       40 verb
#endif
#if DSR
 0 32 verb
 1 33 verb
 2 34 verb
 3 35 verb
 4 36 verb
 5 37 verb
 6 38 verb
 7 39 verb
 8 40 verb
 9 41 verb
 10 42 verb
 11 43 verb
 12 44 verb
 13 45 verb
 14 46 verb
 15 47 verb
 16 48 verb
 17 49 verb
 18 50 verb
 19 51 verb
 20 52 verb
 21 53 verb
 22 54 verb
 23 55 verb
 24 56 verb
 25 57 verb
 26 58 verb
 27 59 verb
 28 60 verb
 29 61 verb
 30 62 verb
#endif
;
CSET    100     verb
RCALL   101     verb
;
LAMP    50      noun E
QUINQUE 50      noun S  
;                       Adjectives
SMALL   2       adjective
BIG     3       adjective
LARGE   3       adjective
OLD     4       adjective
NEW     5       adjective
HARD    6       adjective
SOFT    7       adjective
SHORT   8       adjective
LONG    9       adjective
;                               Adverbs
QUICK   2       adverb
SLOWL   3       adverb
QUIET   4       adverb
LOUDL   5       adverb
CAREF   6       adverb
SOFTL   6       adverb
GENTL   6       adverb
;                               Prepositions
TO      2       preposition
FROM    3       preposition
IN      4       preposition
OUT     5       preposition
THROU   6       preposition
OVER    7       preposition
UNDER   8       preposition
BY      9       preposition
ON      10      preposition
OFF     11      preposition
AT      12      preposition
EXCEP   13      preposition
;                               Pronouns
IT      2       pronoun
THEM    2       pronoun
;                               Conjugations
AND     2       conjugation
THEN    2       conjugation
;       -       -       -       -       -       -       -       -       -
/STX    ;System Message Texts
/0
It's too dark to see anything.
/1
I can also see: 
/2

What now?
/3

What next?
/4

What should I do now?
/5

What should I do next?
/6
I was not able to understand any of that.  Please try again.

/7
I can't go in that direction.

/8
I can't do that.

/9
I have with me:

/10
I am wearing:

/11 ;*Spare
/12
Are you sure? 
/13
Would you like another go? 
/14 ;*Goodbye...
/15
OK.

/16
Press any key to continue.

/17 ;*You have taken
/18 ;*turn
/19 ;*s
/20 ;*.[CR]
/21 ;*You have scored
/22 ;*%[CR]
/23
I'm not wearing one of those.

/24
I can't.  I'm wearing the _.

/25
I already have the _.

/26
There isn't one of those here.

/27
I can't carry any more things.

/28
I don't have one of those.

/29
I'm already wearing the _.

/30     ;One upper case character only
Y
/31     ;One upper case character only
N
/32
More...
/33

>
/34 ;*Spare
/35

Time passes...

/36
I now have the _.

/37
I'm now wearing the _.

/38
I've removed the _.

/39
I've dropped the _.

/40
I can't wear the _.

/41
I can't remove the _.

/42
I can't remove the _.  My hands are full.

/43
The _ weighs too much for me.

/44
The _ is in the 
/45
The _ isn't in the 
/46
, 
/47
 and 
/48
.

/49
I don't have the _.

/50
I'm not wearing the _.

/51
.

/52
There isn't one of those in the 
/53
Nothing.

/54 ;Letter for Tape
T
/55 ;Disc
D
/56
Drive not ready - press any key to retry.

/57
I/O Error.

/58
Disc or Directory may be full.

/59
Invalid filename.

/60
Type in name of file:
/61
Start tape.

/62
Tape or Disc?
;       -       -       -       -       -       -       -       -       -
/MTX    ;Message Texts
/0
The character set.
;       -       -       -       -       -       -       -       -       -
/OTX    ;Object Texts
/0
A pocket torch. (lit)
;       -       -       -       -       -       -       -       -       -
/LTX    ;Location Texts
/0
DAAD Version 2 - START file.

/1
I am on a small raft floating in open sea.  The bright yellow sun is starting
to burn my skin and ominous dark fins circle slowly in the clear blue water.
;       -       -       -       -       -       -       -       -       -
/CON    ;Connections
/0
/1
;       -       -       -       -       -       -       -       -       -
/OBJ    ;Object Definitions
;obj  starts  weight    c w  5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0    noun   adjective
;num    at
/0      CARRIED 1       _ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _    LAMP    _
;       -       -       -       -       -       -       -       -       -
/PRO 0       ;Main Location Loop

; A small machine code routine to print the character in Work1

#dbaddr PrintChr
#if Z80
 #defb DDIX LD_A_M Work1         ; LD A,(IX+Work1) - Work1 < 127
 #defb CALL
 #defw  OPCHR
 #defb RET
#endif
#if M6502
 #defb LDAA
 #defw  USER+Work1
 #defb JSR
 #defw  OPCHR
 #defb RTS
#endif

; This one does nothing but test and demonstrate the relative call function

#dbaddr RelCall
#if SPE
 #incbin rcspe.z80
#endif
#if CPC
 #incbin rccpc.z80
#endif
#if MSX
 #incbin rcmsx.z80
#endif
#if M6502
 #defb RTS      ; No routine on 6502 yet
#endif

_       _       AT      0               ; Starting game
                PROCESS 6               ; then we need init sequence

_       _       WINDOW  0               ; Select graphics window
                CLEAR   28              ; Assume light
;                MINUS   2       1       ; Decrement flag 2
                NOTZERO 0
;                MINUS   3       1       ; & Flag 3 if Dark
                ABSENT  0
;                MINUS   4       1       ; & Flag 4 if No Lamp
                SET     28              ; Dark

_       _       PICTURE [38]            ; If there is a picture, Load it
                DISPLAY [28]            ; & Display it if not dark, else CLS

_       _       WINDOW  1
                NOTZERO 28              ; Dark
                SYSMESS 0

_       _       ZERO    28
                DESC    [38]            ; Doesn't exit loop now

_       _       PROCESS 3
; Now we use Process 1 as the main code loop, a return from it is the end
; of the game

_       _       PROCESS 1

;       -       -       -       -       -       -       -       -       -
/PRO 1
_       _       PROCESS 4               ; Do process 2 stuff here

;_       _       MINUS   5       1       ; Update auto flags
;                MINUS   6       1
;                MINUS   7       1
;                MINUS   8       1
;                NOTZERO 0
;                MINUS   9       1
;                ABSENT  0
;                MINUS   10      1

_       _       PARSE   0               ; Get next LS from current buffer
                PROCESS 2               ; Failed cos of invalid or timeout
                REDO

_       _       EQ      31      255     ; Max for one byte
                PLUS    32      1
                CLEAR   31
                SKIP    1

_       _       PLUS    31      1

_       _       PROCESS 5               ; Do any commands
                ISDONE                  ; Done something
                REDO

_       _       MOVE    38              ; No so try to move player
                RESTART                 ; Absolute jump to start process 0

_       _       NEWTEXT
                LT      33      14
                SYSMESS 7
                REDO

_       _       SYSMESS 8
                REDO

;       -       -       -       -       -       -       -       -       -

/PRO 2
_       _       HASAT TIMEOUT
                SYSMESS 35
                DONE

_       _       SYSMESS 6               ; I didn't understand

/PRO 3 ; Old process 1
; Old process one processing is here, this is better carried out thus

_       _       NEWLINE
                ZERO    28              ; Isn't dark
                LISTOBJ

;than
;_       _       NEWLINE
;                ZERO    0               ;If it is light...
;                ABSENT  0               ;and the light source is absent...
;                LISTOBJ                 ;List the objects

;_       _       PRESENT 0               ;If the light source is present...
;                LISTOBJ                 ;List the objects

/PRO 4 ; Old process 2

/PRO 5 ; Command decoder

#if Z80
 _       _       GT      Verb 31
 #if JMS
                  LT      Verb 41
 #endif
 #if DSR
                  LT     Verb 63
 #endif
                 COPYFF  Verb Work1
                 MINUS   Work1 32
                 EXTERN  [Work1] 0       ; Call sound dispatcher
                 DONE
#endif

CSET    _       PROCESS 7
                NEWLINE
                OK

RCALL   _       CALL    RelCall
                DONE

I       _       SYSMESS 9
                LISTAT  CARRIED
                SYSMESS 10
                LISTAT  WORN
                DONE

GET     ALL     DOALL   HERE
GET     _       AUTOG
                DONE

DROP    ALL     DOALL   CARRIED
DROP    _       AUTOD
                DONE

REMOVE  ALL     DOALL   WORN
REMOVE  _       AUTOR
                DONE

WEAR    ALL     DOALL   CARRIED
WEAR    _       AUTOW
                DONE

R       _       RESTART

QUIT    _       QUIT
                END

QUIT    _       DONE                    ;Not like QUIT on PAW

SAVE    _       SAVE    0               ;ditto
                RESTART

LOAD    _       LOAD    0
                RESTART

RAMSA   _       RAMSAVE
                RESTART

RAMLO   _       RAMLOAD 255             ;Reload all flags
                RESTART

LOOK    _       RESTART

/PRO 6 ; Initialise the DAAD system

#if CBM64
 #dbaddr Repeat
 #defb LDAI 128          ; LDA #128
 #defb STAA              ; STA 028Ah
 #defw  650              ; Which is the repeat flag, 128 = repeat all keys
 #defb RTS
#endif
_       _       WINDOW  1               ; Windows are random
                WINAT   0       0
                WINSIZE 25      127     ; Maximum window
                CLS
                DESC    0               ; Introduction
                ANYKEY
                CLS
                CLEAR   255             ; Clear all flags

_       _       NOTEQ   255     GFlags
                CLEAR   [255]

_       _       PLUS    255     1
                LT      255     255     ; Will be set at end to indicate init
                SKIP    -2              ; has been done once

_       _       RESET                   ; Set objects to start location & Flag 1
                LET     Strength 10
                LET     MaxCarr  4
                SET     CPNoun
                SET     CPAdject
#if CBM64
                 CALL    Repeat          ; Ensure keys repeat
#endif
                GOTO    1               ; Main game

/PRO 7 ; Print the character set

_       _       MESSAGE 0
                LET     Work1 16        ; less than 16 are control codes

$loop
_       _       GT      Work1 127
                LT      Work1 144       ; More control codes
                PLUS    Work1 1
                SKIP    $loop

_       _       CALL    PrintChr
                PLUS    Work1 1
                NOTEQ   Work1 255
                SKIP    $loop

