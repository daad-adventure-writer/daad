; GERMTXT.SCE leere Datenbank fuer reine Textadventures mit DAAD V2.
;
; Diese Datenbank bietet die Moeglichkeit, Quill, PAW & DAAD V1 Quelltexte auf 
; DAAD V2 zu adaptieren. Es gibt keine automatische Dekrementierung von Flags,
; wie beispielsweise bei Quill oder PAW.
;
; Deutsches Template, erstellt von Stefan Vogt, Pond Soft [10-9-18].
;
;------------------------------------------------------------------------------
;
; BITTE BEACHTEN: viele der alten 8-bit und 16-bit Heimcomputer unterstuetzen
; von Haus aus keine Sonderzeichen. Daher ist es nicht weiter verwunderlich,
; dass auch DAAD diese nicht herbeizaubern kann. Bitte schreibt eure Texte
; entsprechend in altbewaehrter Art und Weise mit ae, oe, ue und ss. 
;
; Die Kompilierung ueber DC.EXE erfolgt mit flag -l0 (ENGLISCH). 
; Das Spiel ist dann problemlos ueber die englischen Interpreter lauffaehig.
;
;------------------------------------------------------------------------------
;
;
#include symbols.sce
/CTL    ;Kontrollsektion (definiert den "null" char)
_       
/TOK    ;Tokens fuer die Textkompression (kann mit FINDTOK optimiert werden)
_eine_
_der_
_die_
_das_
_ist_
_von_
_ein_
_und
und_
Der_
Die_
Das_
_ung
lein
ert_
_du_
_zu_
_ein
_ver
st_
mit
von
hen
aus
ent
_zu
all
_de
en_
abe
ist
_be
ver
_du
DU_
her
und
ing
Du
ch
ie
no
ic
ab
_b
ei
__
ll
_c
ir
er
ur
un
_d
lo
ro
ar
se
ri
li
ti
om
ss
ck
I_
ed
eh
_f
ha
pe
e_
t_
in
s_
de
,_
er
d_
zu
an
ar
en
au
od
st
._
ho
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
ma
op
sh
me
he
bo
hi
ka
ue
oe
ae
_a
_h
tt
mo
ke
vo
so
e.
d.
t.
vi
mm
sc
_p
em
r_
;------------------------------------------------------------------------------
/VOC    ;Vokabular
;                       Verben und Nomen <14 sind fuer Bewegungen reserviert
N       2       noun
NORD    2       noun
NORDE   2       noun
S       3       noun
SUED    3       noun
SUEDE   3       noun
O       4       noun
OST     4       noun
OSTEN   4       noun
W       5       noun
WEST    5       noun
WESTE   5       noun
NO      6       noun
NW      7       noun
SO      8       noun
SW      9       noun
H       10      noun
HOCH    10      noun
OBEN    10      verb
R       11      noun
RUNTE   11      noun
UNTEN   11      verb
;                       Nomen   <20 koennen auch als Verben eingesetzt
;                               <50 keine Verwendung von Pronomen
I       14      noun
INVEN   14      noun
ALLES   20      noun
ALLE    20      noun
JEDEN   20      noun
JEDES   20      noun
;
FACKE   100     noun
;                       Verbs
NIMM    20      verb
HOLE    20      verb
ABSTE   21      verb
ABLEG   21      verb
LEGE    21      verb
ENTFE   22      verb
TRAGE   23      verb
B       24      verb
BESCH   24      verb
ENDE    25      verb
STOP    25      verb
SPEIC   26      verb
LADE    27      verb
LADEN   27      verb
RAMSP   28      verb
RAMLA   29      verb
SCHAU   30      verb
PRUEF   30      verb
BETRA   30      verb
SAG     31      verb
SAGE    31      verb
FRAG    31      verb
FRAGE   31      verb
SPRIC   31      verb
REDE    31      verb
;                               Adjectives
KLEIN   2       adjective
GROSS   3       adjective
ALTE    4       adjective
ALTEN   4       adjective
ALTES   4       adjective
NEUE    5       adjective
NEUEN   5       adjective
HARTE   6       adjective
WEICH   7       adjective
KURZE   8       adjective
LANGE   9       adjective
;                               Adverbs
SCHNE   2       adverb
LANGS   3       adverb
RUHIG   4       adverb
LAUT    5       adverb
VORSI   6       adverb
SANFT   6       adverb
BEHUT   6       adverb
;                               Praepositionen
ZU      2       preposition
VON     3       preposition
VOM     3       preposition
IN      4       preposition
AUS     5       preposition
DURCH   6       preposition
UEBER   7       preposition
UNTER   8       preposition
MIT     9       preposition
AN      10      preposition
AB      11      preposition
BEI     12      preposition
AUSSE   13      preposition
;                               PRONOMEN
ES      2       pronoun
IHN     2       pronoun
SIE     2       pronoun
;                               Konjugationen
UND     2       conjugation
DANN    2       conjugation
;
;------------------------------------------------------------------------------
/STX    ;Systemnachrichten
/0
Es ist zu dunkel um etwas zu sehen.
/1
Ich erkenne ausserdem: 
/2

Was nun?
/3

Was jetzt?
/4

Was soll ich nun tun?
/5

Was ist der naechste Schritt?
/6
Das konnte ich nicht verstehen. Versuche etwas anderes.

/7
In diese Richtung kann ich leider nicht gehen.

/8
Das ist mir leider nicht moeglich.

/9
Ich habe dabei:

/10
Ich habe angezogen:

/11 ;*Spare
/12
Bist Du sicher? 
/13
Moechtest Du es nochmal versuchen? 
/14 ;*Spare
/15
OK.

/16
Druecke eine Taste um fortzufahren.

/17 ;*You have taken
/18 ;*\sturn
/19 ;*s
/20 ;*.[CR]
/21 ;*You have scored
/22 ;*%[CR]
/23
So etwas trage ich nicht.

/24
Ich kann nicht. Ich habe bereits etwas Anderes angezogen.

/25
Diesen Gegenstand habe ich bereits.

/26
Kann ich hier nicht sehen.

/27
Ich kann nicht noch mehr Gegenstaende tragen.

/28
So etwas habe ich nicht.

/29
Das trage ich bereits. 

/30     ;One upper case character only
J
/31     ;One upper case character only
N
/32
Weiter...
/33

>
/34 ;*Spare
/35

Die Zeit vergeht...

/36
Genommen.

/37
Angezogen.

/38
Ausgezogen.

/39
Wurde auf den Boden gelegt.

/40
Das kann ich nicht anziehen.

/41
Das kann ich nicht ausziehen.

/42
Das kann ich nicht ausziehen, meine Haende sind voll.

/43
Das wiegt leider mehr als ich tragen kann.

/44
Das befindet sich in 
/45
Das ist leider nicht in
/46
, 
/47
 und 
/48
.

/49
Hab ich nicht.

/50
Trage ich nicht.

/51
.

/52
Davon kann ich nichts sehen in  
/53
nichts.

/54 ;Letter for Tape
T
/55 ;Disc
D
/56
Laufwerk nicht bereit. Bitte Taste druecken.

/57
I/O Fehler.

/58
Diskette oder Verzeichnis koennten voll sein.

/59
Ungueltiger Dateiname.

/60
Bitte Dateiname eingeben:
/61
Band starten.

/62
Tape or Diskette?
;------------------------------------------------------------------------------
/MTX    ;Message Texts
/0
;------------------------------------------------------------------------------
/OTX    ;Object Texts
/0
eine Fackel (brennend)
;------------------------------------------------------------------------------
/LTX    ;Location Texts
/0
LEERE DATENBANK - DAAD V2.

/1
Ich befinde mich auf einer Lichtung. Eine Strasse fuehrt nach Norden.
/2
Ich befinde mich an einem Flusslauf. Ein Trampelpfad fuehrt nach Sueden.
;------------------------------------------------------------------------------
/CON    ;Connections
/0
/1
N 2
/2
S 1
;------------------------------------------------------------------------------
/OBJ    ;Object Definitions
;obj  starts  weight    c w  5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0    noun   adjective
;num    at
/0      CARRIED 1       _ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _    FACKE  _
;------------------------------------------------------------------------------
/PRO 0       ;Main Location Loop

_       _       AT      0               ; Starting game
                PROCESS 6               ; then we need init sequence

_       _       WINDOW  0               ; Select graphics window
                CLEAR   DarkF           ; Assume light
;                MINUS   2       1       ; Decrement flag 2    (See notes)
                NOTZERO 0
;                MINUS   3       1       ; & Flag 3 if Dark    (See notes)
                ABSENT  0
;                MINUS   4       1       ; & Flag 4 if No Lamp (See notes)
                SET     DarkF           ; Dark

; This needs to be commented for text-only adventures
; _       _       PICTURE [Player]        ; If there is a picture, Load it
;                 DISPLAY [DarkF]         ; & Display it if not dark, else CLS

_       _       WINDOW  1
                NOTZERO DarkF           ; Dark
                SYSMESS 0

_       _       ZERO    DarkF
                DESC    [Player]        ; Doesn't exit loop now

_       _       PROCESS 3

; Now we use Process 1 as the main code loop, a return from it is the end
; of the game

_       _       PROCESS 1

;------------------------------------------------------------------------------
/PRO 1
_       _       PROCESS 4               ; Do process 2 stuff here

;_       _       MINUS   5       1       ; Update auto flags
;                MINUS   6       1       ; These are not supported anymore
;                MINUS   7       1       ; as we use the low section as
;                MINUS   8       1       ; a small stack
;                NOTZERO 0               ; But should you need them
;                MINUS   9       1       ; this is the Version 1 DAAD code!
;                ABSENT  0
;                MINUS   10      1

_       _       PARSE   0               ; Get next LS from current buffer
                PROCESS 2               ; Failed cos of invalid or timeout
                REDO

_       _       EQ      Turns   255     ; Max for one byte
                PLUS    Turns+1 1
                CLEAR   Turns
                SKIP    1

_       _       PLUS    Turns   1

_       _       PROCESS 5               ; Do any commands
                ISDONE                  ; Done something
                REDO

_       _       MOVE    Player          ; No so try to move player
                RESTART                 ; Absolute jump to start process 0

_       _       NEWTEXT
                LT      Verb    14
                SYSMESS 7
                REDO

_       _       SYSMESS 8
                REDO


;------------------------------------------------------------------------------
/PRO 2
_       _       HASAT TIMEOUT
                SYSMESS 35
                DONE

_       _       SYSMESS 6               ; I didn't understand

;------------------------------------------------------------------------------
/PRO 3 ; Old process 1. Note that both the response table and the old PAW 
; process tables 1 and 2 can now be anywhere or completely absent. Everything
; is implemented in the DAAD language itself.

;This is better carried out thus
_       _       NEWLINE
                ZERO    DarkF            ; Isn't dark
                LISTOBJ

;than the old system needed in Version 1, without accesss to DarkF
;_       _       NEWLINE
;                ZERO    0               ;If it is light...
;                ABSENT  0               ;and the light source is absent...
;                LISTOBJ                 ;List the objects

;_       _       PRESENT 0               ;If the light source is present...
;                LISTOBJ                 ;List the objects

;------------------------------------------------------------------------------
/PRO 4 ; Old process 2
;------------------------------------------------------------------------------
/PRO 5 ; Command decoder

I       _       SYSMESS 9
                LISTAT  CARRIED
                SYSMESS 10
                LISTAT  WORN
                DONE

NIMM    ALLES   DOALL   HERE
NIMM    _       AUTOG
                DONE

LEGE    ALLES   DOALL   CARRIED
LEGE    _       AUTOD
                DONE

ENTFE   ALLES   DOALL   WORN
ENTFE   _       AUTOR
                DONE

TRAGE   ALLES   DOALL   CARRIED
TRAGE   _       AUTOW
                DONE

B       _       RESTART

ENDE    _       QUIT
                END

ENDE    _       DONE                    ;Not like QUIT on PAW

SPEIC   _       SAVE    0               ;ditto
                RESTART

LADE    _       LOAD    0
                RESTART

RAMSP   _       RAMSAVE
                RESTART

RAMLA   _       RAMLOAD 255             ;Reload all flags
                RESTART

SCHAU   _       RESTART
;------------------------------------------------------------------------------
/PRO 6 ; Initialise the DAAD system

_       _       WINDOW  1               ; Windows are random
_       _       WINAT   0       0       ; set 14 0 for split screen with GFX 
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
                SKIP    -2              ; BUGFIX: SKIP -1 was the original value

_       _       RESET                   ; Set objects to start location & Flag 1
                LET     Strength 10
                LET     MaxCarr  4
                SET     CPNoun
                SET     CPAdject
                GOTO    1               ; Main game

