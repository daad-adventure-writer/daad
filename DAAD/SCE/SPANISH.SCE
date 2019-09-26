; BLANK.SCE base de datos vac¡a para DAAD V2
;
; En esta base de datos se muestra una forma de adaptar el sistema del PAW y
; del DAAD V1 al del DAAD V2. Notese que las banderas que se decrementaban
; autom ticamente ya no lo hacen.
;
;
#include c:\daad\symbols.sce
/CTL    ;Secci¢n de control
_
/TOK
_____
_que_
a_de_
o_de_
_una_
_del_
s_de_
_de_l
_con_
ente_
_por_
_est 
tiene
s_un_
ante_
_para
_las_
entra
n_el_
e_de_
a_la_
erior
ci¢n_
ando_
iente
_el_
_la_
_de_
_con
_en_
los_
ado_
_se_
esta
_un_
las_
enta
_des
_al_
ada_
as_
es_
os_
_y_
ado
te_
ada
la_
ent
res
que
an_
o_p
rec
ido
s,_
ant
ina
ida
lar
ero
mpl
a_
o_
er
es
or
ar
al
en
as
os
e_
an
el
on
in
ci
un
._
co
re
di
,_
ur
tr
de
su
ab
ol
am
st
cu
s_
ac
il
gr
ad
te
y_
im
to
ue
pi
gu
ch
ca
la
n_
ro
ri
lo
mi
l_
ti
ob
me
si
pe
_n
tu
at
fi
do
em
ay
".
ll
;------------------------------------------------------------------------------
/VOC    ;Vocabulario
;                       Movimiento: verbos y nombres < 14
N       2       noun
NORTE   2       noun
S       3       noun
SUR     3       noun
E       4       noun
ESTE    4       noun
O       5       noun
OESTE   5       noun
NE      6       noun
NO      7       noun
SE      8       noun
SO      9       noun
AR      10      noun
ARRIBA  10      noun
SUBIR   10      verb
AB      11      noun
ABAJO   11      noun
BAJAR   11      verb
;                       Nombres <20 indica que se pueden usar como verbos
;                               <50 indica nombre propio (no admite lo, la...)
I       14      noun
INVEN   14      noun
TODO    20      noun
TODOS   20      noun
TODAS   20      noun
;
LINTER  100     noun
;                       Verbs
COGER   20      verb
DEJAR   21      verb
SOLTAR  21      verb
QUITAR  22      verb
PONER   23      verb
R       24      verb
REDES   24      verb
F       25      verb
FIN     25      verb
SAVE    26      verb
LOAD    27      verb
RAMSA   28      verb
RAMLO   29      verb
MIRAR   30      verb
EX      30      verb
EXAMI   30      verb
DECIR   31      verb
PREGUNT 31      verb
HABLAR  31      verb
;
PEQUE   2       adjective
GRANDE  3       adjective
VIEJO   4       adjective
VIEJA   4       adjective
NUEVO   5       adjective
NUEVA   5       adjective
DURO    6       adjective
DURA    6       adjective
BLANDO  7       adjective
CORTO   8       adjective
CORTA   8       adjective
LARGO   9       adjective
LARGA   9       adjective
;                               Adverbios
RAPID   2       adverb
R PID   2       adverb
DESPA   3       adverb
LENTA   3       adverb
CUIDAd  5       adverb
;                               Prepositions
A       2       preposition
DE      3       preposition
EN      4       preposition
POR     5       preposition
TRAVES  5       preposition
BAJO    7       preposition
JUNTO   8       preposition
MENOS   13      preposition
;                               Pronouns
;                               Conjugations
Y       2       conjugation
ENTONCE 2       conjugation
LUEGO   2       conjugation
;
;------------------------------------------------------------------------------
/STX    ;Mensajes del sistema
/0
Est  demasiado oscuro para ver nada.
/1
Tambien puedo ver:
/2

¨Qu‚ hago ahora?
/3

¨Qu‚ quieres que haga?
/4

¨Qu‚ quieres que haga ahora?
/5

¨Qu‚ hago?
/6
No he entendido nada.

/7
No puedo ir en esa direcci¢n.

/8
No puedo hacer eso.

/9
Llevo:

/10
Llevo puesto:

/11 ;*Libre
/12
¨Seguro?
/13
¨Quieres intentarlo de nuevo?
/14 ;*Libre
/15
Vale.

/16
Pulsa una tecla para continuar.

/17 ;*Has jugado
/18 ;*\sturno
/19 ;*s
/20 ;*.[CR]
/21 ;*Ha resuelto un
/22 ;*%[CR]
/23
No llevo eso puesto.

/24
No puedo. Tengo puesto _.

/25
Ya tengo _.

/26
Aqu¡ no hay nada de eso.

/27
No puedo llevar nada m s.

/28
No tengo eso.

/29
Ya llevo puesto _.

/30     ;Un solo caracter en may£sculas. Inicial de S¡
S
/31     ;Un solo caracter en may£sculas. Inicial de No
N
/32
Hay m s...
/33

>
/34 ;*Libre
/35

El timpo pasa...

/36
He cogido _.

/37
Me he puesto _.

/38
Me he quitado _.

/39
He dejado _.

/40
No puedo ponerme _.

/41
No puedo quitarme _.

/42
No puedo quitarme _.  No puedo llevar nada m s en las manos.

/43
@ pesa demasiado para m¡.

/44
@ est  en
/45
@ no est  en
/46
, 
/47
 y
/48
.

/49
No tengo _.

/50
No llevo puesto _.

/51
.

/52
No hay nada de eso en
/53
Nada.

/54 ;Inicial de Cinta
C
/55 ;Disco
D
/56
Unidad no preparada. Pulsa una tecla para volver a intentarlo.

/57
Error de entrada/salida.

/58
El disco o el directorio puede estar lleno.

/59
Nombre de fichero no v lido.

/60
Nombre del fichero:
/61
Pon en marcha la cinta.

/62
¨Cinta o disco?
;------------------------------------------------------------------------------
/MTX    ;Mensajes
/0
;       -       -       -       -       -       -       -       -       -
/OTX    ;Object Texts
/0
Una linterna.(encendida)
;       -       -       -       -       -       -       -       -       -
/LTX    ;Location Texts
/0
BASE DE DATOS VACIA - DAAD V2.
/1
Estoy en la localidad n£mero uno. Un camino lleva al norte.
/2
Estoy en la localidad n£mero dos. Un camino lleva al sur.
;------------------------------------------------------------------------------
/CON    ;Conexiones
/0
/1
N 2
/2
S 1
;------------------------------------------------------------------------------
/OBJ    ;Objetos
;obj  starts  weight    c w  5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0    noun   adjective
;num    at
/0      CARRIED 1       _ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _    LINTER  _
;------------------------------------------------------------------------------
/PRO 0       ;Main Location Loop

_       _       AT      0               ; Empezamos una partida
                PROCESS 6               ; El proceso de inicializaci¢n

_       _       WINDOW  0               ; Ventana de gr ficos
                CLEAR   DarkF           ; Asume que hay luz
;                MINUS   2       1       ; Decrementa flag 2 (Ver notas arriba)
                NOTZERO 0
;                MINUS   3       1       ; y Flag 3 si oscuro (Ver notas)
                ABSENT  0
;                MINUS   4       1       ; y Flag 4 si no hay lampara(Ver notas)
                SET     DarkF           ; Oscuro

_       _       PICTURE [Player]        ; Si hay gr fico, c rgalo
                DISPLAY [DarkF]         ; Muestralo si no oscuro; si oscuro
                                        ; hace un CLS
_       _       WINDOW  1
                NOTZERO DarkF           ; Oscuro
                SYSMESS 0

_       _       ZERO    DarkF
                DESC    [Player]        ; DESC No sale del bucle ahora

_       _       PROCESS 3

; Ahora usamos el proceso 1 como el bucle principal del juego. Un retorno desde
; ‚l significa el fin del juego

_       _       PROCESS 1

;------------------------------------------------------------------------------
/PRO 1

_       _       PROCESS 4               ; Lo que en el PAW era el proceso 2

;_       _       MINUS   5       1       ; Actualiza m s banderas 'autom ticas'
;                MINUS   6       1       ; Ya no se usan. Los primeros flags
;                MINUS   7       1       ; est n reservados para implementar
;                MINUS   8       1       ; una peque¤a pila si hace falta.
;                NOTZERO 0               ; (Ver SYMBOLS.SCE)
;                MINUS   9       1       ; De todas formas aqu¡ est  el c¢digo
;                ABSENT  0               ; que emula al PAW por si hace falta
;                MINUS   10      1

_       _       PARSE   0               ; Toma sentencia l¢gica del buffer
                PROCESS 2               ; Sentencia no v lida o timeout
                REDO

_       _       EQ      Turns   255     ; El valo m ximo de un byte
                PLUS    Turns+1 1
                CLEAR   Turns
                SKIP    1

_       _       PLUS    Turns   1

_       _       PROCESS 5               ; La antigua tabla de respuestas
                ISDONE                  ; Ha hecho algo?
                REDO                    ; S¡: pedimos otra orden del jugador

_       _       MOVE    Player          ; No: intentamos mover al jugador
                RESTART                 ;Lo movimos: salta al principio de PRO 0

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
/PRO 3 ; Antiguo proceso 1. (N¢tese que tanto la tabla de respuestas como los
; antiguos procesos 1 y 2 del PAW ahora pueden estar en cualquer parte; o no
; existir en absoluto, ya que ya no hay nada autom tico al haberse implementado
; todo en el propio lenguaje del DAAD)

;Esto se hace mejor as¡
_       _       NEWLINE
                ZERO    DarkF            ; No est  oscuro
                LISTOBJ

;que con el antiguo sistema que no acced¡a a DarkF:
;_       _       NEWLINE
;                ZERO    0               ;If it is light...
;                ABSENT  0               ;and the light source is absent...
;                LISTOBJ                 ;List the objects

;_       _       PRESENT 0               ;If the light source is present...
;                LISTOBJ                 ;List the objects

;------------------------------------------------------------------------------
/PRO 4 ; Antiguo proceso 2

/PRO 5 ; Interpretamos los comando como en la antigua tabla de respuestas

I       _       SYSMESS 9
                LISTAT  CARRIED
                SYSMESS 10
                LISTAT  WORN
                DONE

COGER   TODO    DOALL   HERE
COGER   _       AUTOG
                DONE

DEJAR   TODO    DOALL   CARRIED
DEJAR   _       AUTOD
                DONE

QUITAR  TODO    DOALL   WORN
QUITAR  _       AUTOR
                DONE

PONER   TODO    DOALL   CARRIED
PONER   _       AUTOW
                DONE

R       _       RESTART

FIN     _       QUIT
                END

FIN     _       DONE                    ;Not like QUIT on PAW

SAVE    _       SAVE    0               ;ditto
                RESTART

LOAD    _       LOAD    0
                RESTART

RAMSA   _       RAMSAVE
                RESTART

RAMLO   _       RAMLOAD 255             ;Reload all flags
                RESTART

MIRAR   _       RESTART

/PRO 6 ; Inicializaci¢n

_       _       WINDOW  1               ; Inicializamos las ventanas
                WINAT   14       0
                WINSIZE 25      127     ; Tama¤o m ximo
                CLS
                DESC    0               ; Introducci¢n
                ANYKEY
                CLS
                CLEAR   255             ; Pone a cero todas las banderas

_       _       NOTEQ   255     GFlags  ; menos GFlags!!!
                CLEAR   [255]

_       _       PLUS    255     1
                LT      255     255     ; Al final lo dejamos con valor 255
                SKIP    -2              ; para indicer que hemos inicializado

_       _       RESET                   ; Objetos a su loc. inicial / Flag 1
                LET     Strength 10
                LET     MaxCarr  4
                SET     CPNoun
                SET     CPAdject
                GOTO    1               ; Primera localidad del juego

