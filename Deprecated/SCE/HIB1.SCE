;
;                     Hibernated 1 - This Place is Death 
;
;               DAAD v2 (Infinite Imaginations & Aventuras AD)
;
;                            author: Stefan Vogt
;
;             (C)opyright 2018 Stefan Vogt and Pond Software Ltd. 
;
;------------------------------------------------------------------------------
;
;  This code is provided for educational purposes only. You are not allowed
;  to redistribute this game, nor sell it, neither altered nor unmodified,
;  in binary or source code form. The sole purpose is to give you an advanced 
;  example how to create an adventure game with DAAD. This code uses some 
;  of DAADs special features such as conditional compilation. The Hibernated 
;  series is copyright Stefan Vogt and Pond Software Ltd. 
;
;------------------------------------------------------------------------------
#include symbols.sce
;------------------------------------------------------------------------------
/CTL    ;Control Section (null char is an underline)
_       
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
;------------------------------------------------------------------------------
/VOC    ;Vocabulary              
S	    2	NOUN
SOUTH	2	NOUN
TO	    2	PREPOSITION
AND	    2	CONJUGATION
THEN	2	CONJUGATION
IT	    2	PRONOUN
THEM	2	PRONOUN
E	    3	NOUN
EAST	3	NOUN
EASTW	3	NOUN
FROM	3	PREPOSITION
W	    4	NOUN
WEST	4	NOUN
WESTW	4	NOUN
IN	    4	PREPOSITION
N	    5	NOUN
NORTH	5	NOUN
NW	    6	NOUN
SE	    7	NOUN
SW	    8	NOUN
NE	    9	NOUN
DESCE	10	VERB
D	    10	NOUN
DOWN	10	NOUN
ASCEN	11	VERB
U	    11	NOUN
UP	    11	NOUN
AT	    12	PREPOSITION
I	    12	NOUN
INVEN	12	NOUN
EXCEP	13	PREPOSITION
ALL	    13	NOUN
LOT	    13	NOUN
EVERY	13	NOUN
PUT	    14	VERB
DROP	14	VERB
REMOV	15	VERB
WEAR	16	VERB
R	    17	VERB
REDES	17	VERB
QUIT	18	VERB
STOP	18	VERB
SAVE	19	VERB
LOAD	20	VERB
RAMSA	21	VERB
RAMLO	22	VERB
X	    23	VERB
LOOK	23	VERB
EXAMI	23	VERB
INSPE	23	VERB
CHECK	23	VERB
SAY	    24	VERB
ASK	    24	VERB
TALK	24	VERB
SPEAK	24	VERB
CHAT	24	VERB
DISAS	25	VERB
MAP	    26	NOUN
FOBAZ	27	NOUN
XYZZY	28	VERB
DOOR	29	NOUN
CUBE	30	NOUN
COMPU	31	NOUN
PRIES	32	NOUN
POSIT	33	NOUN
CAPSU	35	NOUN
SLAB	36	NOUN
LIB	    37	NOUN
LIBRA	37	NOUN
STARF	38	NOUN
INTER	38	NOUN
SHIP	38	NOUN
INSID	38	NOUN
MONIT	39	NOUN
CONSO	40	NOUN
HUB	    41	NOUN
SLOT	42	NOUN
CUNEI	43	NOUN
DROID	44	NOUN
MOUNT	45	NOUN
BARRI	46	NOUN
NICHE	47	NOUN
LOCKE	48	NOUN
PAD	    49	NOUN
CODEP	49	NOUN
MAINF	50	NOUN
DEAD	51	NOUN
OFFIC	51	NOUN
BODY	51	NOUN
GUARD	51	NOUN
ALIEN	51	NOUN
CORPS	51	NOUN
NAVIG	52	NOUN
DRAAK	52	NOUN
REMAI	52	NOUN
EYE	    53	NOUN
EYES	53	NOUN
POLAR	54	NOUN
PLUGH	54	NOUN
HOLOG	55	NOUN
HELP	56	VERB
GYAN	57	NOUN
HYGIE	58	NOUN
MODUL	58	NOUN
TOILE	58	NOUN
BED	    59	NOUN
TABLE	60	NOUN
DESK	60	NOUN
CABIN	61	NOUN
MEDIC	61	NOUN
USE 	62	VERB
OPERA	62	VERB
SEARC	63	VERB
RESEA	64	VERB
STUDY	64	VERB
GIVE	65	VERB
OPEN	66	VERB
UNLOC	66	VERB
DISIN	67	VERB
SHOOT	67	VERB
KILL	67	VERB
PARAL	68	VERB
EAT 	69	VERB
CONSU	69	VERB
ADMIR	70	VERB
WAIT	71	VERB
INSTA	72	VERB
PRESS	73	VERB
PUSH	73	VERB
FIGHT	74	VERB
FLY	    75	VERB
JOURN	75	VERB
TRAVE	75	VERB
READ	76	VERB
GET	    77	VERB
TAKE	77	VERB
GRAB	77	VERB
FLASH	78	NOUN
TUBE	79	NOUN
SPARE	80	NOUN
IO	    81	NOUN
TOOLB	82	NOUN
TOOLS	82	NOUN
GUN	    83	NOUN
LASER	83	NOUN
RIFLE	83	NOUN
SUIT	84	NOUN
MATER	85	NOUN
ROBOT	86	NOUN
SPIDE	87	NOUN
TERMI	88	NOUN
HAND	89	NOUN
ID	    90	NOUN
CHIP	90	NOUN
KNIFE	91	NOUN
CONNE	92	NOUN
BLOOD	93	NOUN
SAMPL	93	NOUN
VACCI	94	NOUN
CELL	95	NOUN
CRYST	96	NOUN
PARTS	97	NOUN
DAGGE	98	NOUN
IDENT	99	NOUN
DISC	99	NOUN
KEY	    100	NOUN
CARD	100	NOUN
NOTE	101	NOUN
PASS	102	NOUN
BUTTO	103	NOUN
HINT	104	VERB
FUCK	105	VERB
SHIT	105	VERB
CUNT	105	VERB
BITCH	105	VERB
WHORE	105	VERB
BOLLO	105	VERB
NUDE	105	VERB
DICK	105	VERB
FART	105	VERB
ON	    106	VERB
OFF	    107	VERB
OUT	    110	NOUN
OUTSI	110	NOUN
AROUN	111	NOUN
;------------------------------------------------------------------------------
/STX    ;System Message Texts
/0
It's pitch black. You can't see.
/1

You notice:  
/2

What will you do now?

/3

What are your instructions?

/4

What now?

/5

What next?

/6
It's not gonna work that way.

/7
You can't go in that direction.

/8
This is not an option.

/9

You're carrying:

/10

You're wearing:

/11 ;*Spare
/12

Are you sure? 

/13
Try again?

/14 ;*Spare
/15
Done.

#if 16BIT
 /16
 
             Press any key to continue.
#endif
#if 8BIT
 /16
 
        Press any key to continue.
#endif
/17 ;*You have taken
/18 ;*\sturn
/19 ;*s
/20 ;*.[CR]
/21 ;*You have scored
/22 ;*%[CR]
/23
You're not wearing it.

/24
You can't. You're wearing something else.

/25
You already have it.

/26
It's not here.

/27
You can't carry any more.

/28
Drop what?

/29
You're already wearing it.

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
Taken.

/37
You're now wearing it.

/38
You removed it.

/39
Dropped.

/40
You can't wear this.

/41
You can't remove this.

/42
You can't remove this. Your hands are full.

/43
You can't take this with you.

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
You don't have it.

/50
You're not wearing it.

/51
.

/52
There isn't one of those in the 
/53
nothing.

/54 ;Letter for Tape
T
/55 ;Disc
D
/56
Drive not ready - press any key to retry.

/57
I/O Error.

/58
Disk or Directory may be full.

/59
Invalid filename.

/60
Type in name of file:
/61
Start tape.

/62
Tape or Disc?
;------------------------------------------------------------------------------
/MTX    ;Message Texts
/0
It is what it is. A closer examination does not reveal any new insights.
/1
A far-away robot voice screams "idiot!"
/2
The alarm was triggered and for security reasons this area was sealed. Your
biometric pass is necessary to unlock the door.
/3
You can never have enough spares.
/4
You have a look at the module's status monitor: if this info is correct,
then you have spent 200 years in hypersleep. During this time a distance
of about 800 light-years was covered. Only two thirds of the journey has
been completed? What's going on here?
/5
No arms, no legs, a lot to say and definitely your only companion out here.
Pocket-friendly intelligent Polaris control unit. Convenient, isn't it?
/6
Some things never change. Even in the future.
/7
No problem, just go ahead and admire some things while you die here in this
icy grave.
/8
Very good, show your vulgar superpowers!
/9
This weapon supports two modes: paralyze and disintegrate.
/10
Ready to mess around with some gene pools?
/11
Put something in, get magic out.
/12
You don't need to. It's enough to have the box with you in case you need
tools.
/13
Like you don't have enough problems already.
/14
This technology is far beyond our own, probably thousands of years.
/15

All you have to do now is to open your eyes. Return to reality.
/16
You travel 800 light-years across the galaxy to find disgusting spider creatures?
That's outrageous.
/17
No idea how to operate this.
/18
It seems to control different functions here in the cargo area.
/19
Looks pretty dead.
/20
Yuck, that's loathsome! These are the moments when you wish you had become
a gardener.
/21
You wonder what this is for.
/22
Seems like some kind of laser blade. Nice!
/23
The alien technology is far too advanced to be considered the cause of death.
Something unpredictable had happened.
/24
Unfortunately, it's not that simple.
/25
This is where the concentrated knowledge of humanity is at your disposal
for research.
/26
This could possibly help you understand the cause of death.
/27
Neutralizing, immediate oral vaccine.
/28
Shows a black blank screen. Strange. Either it's broken or it's dark in
the room on the other side.
/29
You see the hangar. From this point of view you can spot a kind of energy
cell underneath the wing of the Starfighter.
/30
The crystal has changed colour.
/31
You're rich!
/32
That grills you in under a second. No doubt about it!
/33
Looks like one of the interfaces used in ancient Russia to launch nuclear
missiles. It even has buttons and no touch screen.
/34
A copy of the lettering depicted under the officers holographic representation.
/35
This computer controls the functions of the alien ship. Like all positronic
systems, he or she must have an own consciousness.
/36
He seems very old. This species may well be classified as humanoid. The
blue skin is probably the biggest difference.
/37
This body, this body holding me, be my reminder here that I am not alone
in... this body, this body holding me, feeling eternal - all this pain is
an illusion.
/38
Grants you access to all areas on the Polaris-7.
/39
You find your biometric pass, the enemy of all locked doors on this ship.
/40
You need tools for this.
/41

Io greets you.
/42
Io: "An unknown object crossed our direct route and captured us with a tractor
beam. Initial analyses confirm that the alien spacecraft is very old and
must have been in this region for thousands of years. No signs of life.
Our target Kepler-62 is still 400 light-years away. From here it is therefore
impossible to fulfill our mission goal and confirm habitable exoplanets
in the target system. The chance that this situation will turn out well
for us is estimated at 0.0017%"
/43
You need to know what's going on here before you go out!
/44
Needless to say, you die in space if you don't wear a spacesuit. Your frozen
body is forever drifting between the stars. 
/45
Disintegrate mode: direct hit!
/46
Paralyze mode: sleep tight!
/47

A droid is trying to hit you!
/48
Rest in peace and pieces.
/49
Io: "These characters are not as strange to us as they appear at first glance.
It is a very complex type of cuneiform writing. The knowledge to process
this data could be added to my libraries."
/50
Io: "I need an update to process this."
/51
The knowledge has been added to Io's libraries.
/52
The chip has been placed in a small slot provided for this purpose. It appears
to have been processed. Nothing else has happened. It is also uncertain
what has now been triggered by this action.
/53
Io: "Purpose of this terminal is authentication."
/54
You cut off a hand. It's extremely unlikely that he still needs it.
/55
You put the mummified hand in the tube.
/56
A few hours pass. You are surprised to discover that the hand has been completely
regenerated. It now looks like freshly chopped off, which makes it even
more nasty.
/57
Io: "Unfortunately, most of the operations available with the device do
not help us. The ship's network appears to be of a positronic nature. We
know this technique from Asimov. It's notably only a theory to us. Anyway,
I was able to release an adapter that allows us to connect to the more complex
interfaces of the ship. That's the good news."
/58
You place the alien hand on the glass slab. The door opens.
/59
Io: "I currently have no knowledge about positronics."
/60
This must be built into Io to help you.
/61
Io: "I'm missing the right adapter hardware."
/62
Io: "I managed to hack the capsule's controller."


The cryosleep capsule opens.
/63
There's no way you're leaving him here.
/64
Io: "That is a useful upgrade!"
/65
Io: "I can reprogram it now. Done!"
/66
You extract a blood sample.
/67
Oh, my God! The death was caused by a virus not unknown to you. The analyses
show that it is a very early form of the influenza virus. How can that be?


The lab computer generated a vaccine based on the data.
/68
You don't need Io for this.
/69
Hopefully that was the right button. A noise was heard from the outside.
/70
The mounting pulsates now. A humming sound was heard from the star gallery.
/71
The droid is now fully functional again.
/72
With help of the assistant robot Io is upgraded with the positronic chipset.
The circuit still needs a conductor to complete the implementation.
/73
This way is blocked by an invisible force field. Are you contaminated?
/74
The Assistant Robot has added the conductive material. Io now works completely
based on positronic logic. He should be able to merge with every system
on the ship.
/75
It's better off in the hands of the assistant robot.
/76
Sure, and then you end up as roast beef?
/77
You let the spider out. It crawls under the barrier and disappears into
the ventilation shaft. A few minutes later you hear a loud hissing sound
between the wall and suddenly the plasma beam disappears. Well done, little
disgusting thing!
/78
You place the disc in the niche. It seems to be a kind of digital dog tag.
A hologram appears, a depiction of how the officer looked during his lifetime.
/79
So that's what he looked like when he was alive.


Io: "I add decrypted data to the holo representation that was included on
the disc. Could be a password."


You create a note from the string.
/80
Entering the password in the terminal opens one of the lockers. A quick
search through the belongings reveals a key card.
/81
You have no access to this area.
/82
No way you're touching that thing! You don't want to be responsible for
vaporizing an innocent planet.
/83
Io: "I unlocked the mainframe. Theoretically, I could now be installed here."
/84
You install Io to the mainframe. Io: "I now have access to all systems of
the ship. The positronic is talking to me. She wants to merge. Her name
is Ysh. I'll let it happen. The door to the Navigator is now open for you."
/85
Sometimes we create monsters that come back for their masters. Let's hope
that's not the case here.
/86
If you survive this, you'll write a book about locked doors.
/87
Navigator: "So that's how our species meet again. And look what you've become.
We visited your world once and observed your first steps, not knowing that
we got infected and became carriers of a terrible plague. We died one by
one. Unable to develop a cure, we decided to stay here to avoid endangering
our home. In the star charts of our people, this sector was registered as
forbidden zone. My burden was to watch over the dead. Now I need your help."


A slot in the wall reveals a crystal.
/88
No, you won't leave it here.
/89

Navigator: "You should have already seen the place where you need to use
this. It will allow you to fly our ship. Bring us home and bury us in the
sacred earth of our planet so that we may finally become one with our ancestors.
The scans show that you are immune to the disease. There's no reason to
stay here any longer. Remember my name. I am Draak, son of Xyl."
/90
After placing the crystal on the data hub, it begins to shine blue. As the
glow fades, you notice that it changed color. You put the crystal back in
your pocket.
/91
You place the blue crystal in the slot. That is what Draak wanted.
/92
What is thy name? My name is Legion, for we are many.
/93
Io: "He died the moment you placed the crystal on the hub. The crystal itself
was used as the medium to transfer his consciousness. He is now one with
us and part of the ship's positronic network, as he was meant to be... Would
you like to journey to Gyan now? That is the name of their homeworld. The
planet is 2.5 million light-years away in the Andromeda constellation. The
journey takes only a few days."
/94
Io: "You're in charge. Ready to travel to Gyan when you are."
/95
Use LOAD and SAVE for Tape operations. You may also store in buffer with
the RAMSAVE and RAMLOAD feature. QUIT ends the game.
/96
This could be for organic materials. Just a guess.
/97
It's empty.
/98
Pew! Pew!
/99
Since you released the energy cell from the Starfighter, this monitor is
not relevant for you anymore.
/100
200 years in hypersleep and no craving for a toilet. The wonders of modern
technology!
/101
It's safe to say that you've slept more than enough.
/102
There is a digital progress indicator on it. Time seems the key to solve
this mystery.
/103
This table is the epitome of chaos.
/104
You slide the pass into the reader. A green light indicates authorization.
The door opens.
/105
That's not how you operate the lib. Try to research a specific topic when
the time is right.
/106
You can't take that with you.
/107
It will open the airlock.
/108
You discover the ID chip of a crew member.
/109
As if the Bauhaus style and the thing from another world conceived a child.
/110
There's nothing in there that you could use right now.
/111
You take out one collection tube and place it underneath the cabinet.
/112
It contains various medical supplies.
/113
The last time you did that, the lab was quarantined for four weeks. It's
best to use it only when absolutely necessary, which is currently not the
case.
/114
You find a gold dagger. It might be more interesting because of the material.
As a weapon, it is totally unsuitable.
/115
She is a true beauty and seems almost alive. Her ceremonial dress in honour
of the goddess Inanna is richly decorated.
/116
And what if it kills every single kitten alive? You keep your hands of that.
/117
It's already open.
/118
Life's an open book. Your life is a locked door.
/119
Examine a lot for useful information.
/120
You need something to transport samples with. You also could be contaminated.
/121
Better labs, better possibilities.
/122
Some metals are great conductors.
/123
You need a throne to install your creation.
/124
Talking is the key.
/125
Io knows what to do now.
/126
The guys in Star Trek would be jealous.
/127
You put it in the interface cube.
/128
Either you see ghosts or the hand begins to change.
/129
You put the blood in the specimen cube.
/130
You find something that looks like an identity disc.
/131
Looks pretty basic to be honest.
/132
It just takes simple sequences.
/133
You hope the yellow dots are drive-in restaurants. You're getting hungry.
/134
It's ready to help you fiddle around with alien technology.
/135
Positronic components. Too advanced for the Polaris lab.
/136
Good idea, but Io has to be modified first
/137
In disassembled form, this could be very useful.
/138
You should talk to him first.
/139
Specify a mode.
/140
Io: "I don't have the knowledge to modify the spider."
/141
You don't need it anymore.
/142
For now, you should keep it.
/143
You take the flashlight.
/144
You've picked up all moveable objects.
;------------------------------------------------------------------------------
/OTX    ;Object Texts
/0
flashlight (on)
/1
flashlight (off)
/2
hypersleep tube
/3
security door (locked)
/4
Io
/5
toolbox
/6
laser rifle
/7
space suit
/8
lab computer
/9
specimen cube
/10
interface cube
/11
cube with alien material
/12
cube with mechanical spider
/13

/14
security door (open)
/15
mechanical spider
/16
small terminal
/17
body
/18
mummified hand
/19
regenerated hand
/20
ID chip
/21
vibro knife
/22
empty tube
/23
glass slab
/24
glass slab (powered)
/25
cryosleep capsule
/26
freight terminal
/27
connector
/28
digital library
/29
tube with mummified hand
/30
cryosleep capsule (open)
/31
blood sample
/32
collection tube
/33
vaccine
/34
arrow starfighter
/35
energy cell
/36
surveillance monitor
/37
starfighter console
/38
data hub
/39
slot
/40
slot with white crystal
/41
slot with blue crystal
/42
white crystal
/43
Io (connector)
/44
mechanical spider (hacked)
/45
Io (positronic)
/46
alien corpse
/47
strange technology parts
/48
droid spares
/49
busted droid
/50
aggressive droid
/51
broken assistant robot
/52
assistant robot
/53
sumerian gold dagger
/54
Io (missing conductor)
/55
mounting
/56
mounting with energy cell
/57
plasma barrier
/58
mutilated body
/59
metallic niche
/60
hologram
/61
dead spaceship officers
/62
identity disc
/63
locker
/64
officer key card
/65
niche with identity disc
/66
codepad
/67
quarter terminal
/68
note with sequence
/69
positronic mainframe (locked)
/70
positronic mainframe
/71
the navigator
/72
Io (positronic mainframe)
/73
rushing mechanical spiders
/74
Draak's remains
/75
blue crystal
/76
messy desk
/77
messy desk
/78
biometric pass
/79
button
/80
empty locker
/81
high priestess
/82
robbed high priestess
/83
medicine cabinet
/84
medicine cabinet
/85
massive door (locked)
/86
massive door (open)
/87
small door (locked)
/88
small door (open)
/89
deprived dead officers
;------------------------------------------------------------------------------
/LTX    ;Location Texts
#if 16BIT
 /0
 
 
 
 
 
 
 
 
  "You open up the covers, you lure me in.
 
   This place is death, I know you feel the same..."
 
 
 
 
 
 
 
 
 
#endif
#if 8BIT
 /0
 
 
 
 
 
 
 
 
       "You open up the covers,
 
        you lure me in.
 
        This place is death,
 
        I know you feel the same..."
 
 
 
 
 
 
 
 
 
#endif
/1

HIBERNATED 1 THIS PLACE IS DEATH

A science fiction story by Stefan Vogt. 

Copyright (c) 2018 Pond Soft.

Release 17 Serial number 210818 / 

Interpreter DAAD v2 

Copyright (c) 1988, 1989, 1990, 1991

Infinite Imaginations & Aventuras AD.



You wake up. A feeling of nausea grips you as you slowly regain control
of your senses. You should open your eyes.
/2
HIBERNATION CHAMBER


The room is lit by a gentle blue light. A glance through the porthole reveals
nothing but the endless vastness of the Lyra constellation. Vega seems to
be very close now. There is no planetary orbit in sight. An incident must
have interrupted your journey to Kepler-62. The only exit is to the EAST.
/3
SOUTHERN CORRIDOR


Flashing red warning lights are reflected on the palladium glass walls.
The hibernation chamber is to the WEST, while your private area is to the
EAST. In the NORTH, you get to the Polaris-7 command unit, protected by
a security door. It divides the narrow corridor into two halves. The docking
bay is in the SOUTH.
/4
PRIVATE AREA


This place looks like it was abandoned only a few hours ago. Amazing when
you consider that your journey through the cosmos began centuries before.
You see, among other things, a class 4 hygiene module, a bed and a terribly
messy desk. Go WEST to get back to the corridor.
/5
DOCKING BAY


You stand in a large, desolate hall. According to the Terran Alliance directive
is this the section where raw materials and samples of foreign origin must
be stored. The door in the NORTH leads back to the corridor. An airlock
in the SOUTH allows you to leave the Polaris-7.
/6
LABORATORY


When the ship was built, great importance was attached to equipping this
place with the latest technology. Today much is probably obsolete. Nevertheless
the lab supports a range of focal points such as medicine, biology, chemistry
and technology. A door to the EAST is the sole exit.
/7
STORAGE SPACE


You stare at the most unspectacular location ever integrated into a spaceship.
Naked walls and steel shelves convey unprecedented sterility. The best thing
about this interstellar broom closet is that you can leave it in the WEST.
/8
BRIDGE


The heart of the Polaris-7 is dominated by a huge 180 degree window. A large
object obscures the stars in the field of vision, certainly of extraterrestial
origin, slowly drifting like a dead giant in icy waters. Two cockpit chairs
are located in front of the main console, where countless lights dance.
The exit is located in the SOUTH.
/9
NORTHERN CORRIDOR


The 24th century is known for emergence of crystalline architecture and
what you see here is the perfect example of that era. The lab is situated
WESTWARD, the storage space in the EAST and a massive door in the NORTH
leads to the bridge. You can also go SOUTH to get back to the southern part
of the ship.
/10
AIRLOCK


A constant feeling of anxiety grips you in here. Before entering the eternal
cold of space, you should check your gear. To the NORTH, the safe environment
of the Polaris-7 is waiting for you.
/11
ALIEN SHIP (ENTRY POINT)


You're in outer space. Fragments of stardust shine like a sea of fireflies,
illuminated by a shimmering green light that emanates from an open hatch
in the NORTH. Majestic and awe-inspiring, the alien spaceship is drifting
right in front of you. We always assumed we are not alone, now here is a
proof. Drift UP to return to the Polaris-7. Something seems to be moving
in the EAST.
/12
ALIEN SHIP


Small, spider-like robots scurry over the hull of the alien ship. They seem
to have a maintenance function. You'd better go back WEST. There's nowhere
else to go.
/13
SPHERE ROOM


The green glow that you have already noticed outside comes from a sphere
in the middle of the room. You couldn't even guess the purpose. An obvious
exit is in the EAST. The passage in the WEST seems to lead to a corridor.
The door in the SOUTH is now closed, but it looks like you can use it anytime
to get back to space.
/14
CORRIDOR


It's dark here, but not too dark to see. You can go EAST or WEST.
/15
BASE STATION


The area appears to be a station for service droids. Many of the humanoid
robots are twitching on the ground. It seems this ship has been abandoned
for ages. Without necessary maintenance, malfunctions such as these would
occur over time. There are exits both NORTH and WEST.
/16
QUARTERS


A cold shiver runs down your spine as you approach a crew quarters, very
similar to those you'd expect on a human spacecraft. The dust-covered room
leaves a desolate impression. Whoever was here is long gone. The more you
see, the more you fear that death may be the only thing waiting here for
you, underneath the surface, lurking in the dark. There are exits NORTH
or SOUTH.
/17
CHECKPOINT


It's quite likely that you're in a secure area here. A massive door in the
NORTH suggests that it can only be passed by authorized individuals. Another
exit is in the WEST.
/18
HALL OF THE DEAD


Here they are, the builders and masters who departed millenia ago to travel
the stars. Your heart beats fiercely as you stare at thousands of cryosleep
capsules, all filled with human-like beings. Somehow you already know they're
dead. Exits are in the NORTH and SOUTH.
/19
SICK BAY


This facility far surpasses terran technology. All walls seem to be made
of an unknown red metal. The colour may have had a calming effect on the
alien builders. With such equipment, a good medic might work wonders. Exits:
NORTH, SOUTH.
/20
VIDEO SURVEILLANCE


You feel watched, even though you are the observer here. A variety of monitors
gives you an insight into numerous places, mainly locations where you have
been before. One of the monitors catches your eye. ANY DIRECTION allows
you to leave.
/21
CONTROL ROOM


This must be some kind of hub on the ship's data network. Both technology
and logic are likely to differ markedly from terran standards. At least
some beeping noises and a subliminal humming create a feeling of familiarity.
You can leave this place by going NORTH or EAST.
/22
SMALL QUARTER


The grim reaper doesn't seem to be just a scourge of humanity. The corpse
on the bed maybe is a security guard, as the proximity to the video room
suggests. At first glance, the species looks much like humans, but differences
are difficult to detect as the deceased is already mummified. A door in
the EAST is the only exit.
/23
CARGO BAY


You wonder how busy it must have been here back in the days when the spacecraft
was in full operation. The incredible dimensions of this place take your
breath away. Everywhere you see containers, metal boxes and heavy machinery
to move them. In the SOUTH you can go back to the video room. 
/24
SICK BAY


This seems to be a rest area. The walls are actually displays on which thousands
of statuses are visualized. In the middle of the room there are glass tubes,
obviously intended for patients. The only exit is in the SOUTH.
/25
SHIP HANGAR


This is rather a city of its own with rows of interceptors and larger transport
pods as far as the eye can see. A single spaceship like the one you are
currently on could probably destroy entire worlds. Go EAST to get back to
the checkpoint. You may also go INSIDE a starfighter.
/26
CHECKPOINT 2


Another checkpoint crosses your path. Slowly you seem to be approaching
the inner sanctuary of the ship, as the increasing security precautions
suggest. You should be careful now. Exits are to the WEST, SOUTH and EAST.
/27
DECONTAMINATION


You know places like this one. It is a crew decontamination chamber and
 another indication that you are close to the high-security area. In the
WEST you can go back to the checkpoint, the NORTH leads to an area where
you percieve an intense glow, the EAST leads you deeper into the mysteries
of this vessel.
/28
LIFT (DECK 1)


There it is again, this oppressive feeling in confined spaces. Some sort
of laser constantly scans you. You can't identify the source. The walls
seem to be made of some kind of crystal and emit a slightly pulsating purple
light. The elevator appears to lead exclusively UP. Go WEST to remain on
the current deck.
/29
STAR GALLERY


The sight takes your breath away. You are in the midst of a three-dimensional
projection, a huge holographic simulation of our galaxy, the Milky Way.
The constellation of the stars however, is completely different, probably
seen from the point of view of the foreigners' homeworld. Exits are to the
SOUTH and WEST.
/30
ENERGY STREAM


The majority of the room consists of a basin in which impressive rays of
energy flow, an almost surreal phenomenon. Here apparently is the energy
source of the star gallery. The exit is EASTWARD.
/31
LIFT (DECK 2)


The walls on this level pulsate in rich red, an interesting way to make
the decks distinguishable. The lift has turned during the movement so that
the exit is now to the NORTH. Go DOWN to get back to the first deck.
/32
SPECIMEN EXHIBITION


Cuneiform script all over the vessel already indicated a connection to Sol,
but this is an exciting discovery. You're in a gallery with human exhibits,
obviously Sumerians of different eras. The visitors must have taught us
their writing. Assuming the ship has left us during the archaic era of the
Sumerian empire, it must have stranded here over 30.000 years ago. Exits
are in the SE, SOUTH and WEST.
/33
RESEARCH AREA


You are in an advanced lab for positronics and robotics. It has been devastated
for unknown reasons. Much of the equipment still seems to be functional.
The sole exit is EAST.
/34
HOMEWORLD EXPOSITION


The hall seems to be dedicated to the homeworld of the alien voyagers. Interactive
holograms depict flora and fauna, technological achievements and even colonies
on the three moons surrounding their planet. You can go NORTH or WEST.
/35
CREEPY PASSAGE


This isn't just a tunnel. Places like these are already known from medieval
castles. You corner the enemy to kill them efficiently. Doors are to the
WEST and to the EAST.
/36
CREW DATABASE


You're in some kind of digital place of remembrance. At least that seems
to be it. In the middle is a metal platform where life-size holograms of
crew members are presented. The projection changes every few seconds to
a new individual. Perhaps it is part of the alien culture to honor the dead
in this way. Exits are to the EAST and SOUTH.
/37
LOUNGE


The area is lavishly equipped. Beautiful upholstered seats with strange
patterns create an infinite cosy impression, which is enhanced by the subdued
light. The western wall is a single window and allows a longing look into
the starlit depths of space. There is a group of dead strangers at a table
near the bar. The way they sit there suggests a collective suicide. Exits
are NORTH and EAST.
/38
OFFICERS' QUARTERS


There are a handful of lockers and various rest areas here. Pictures on
the wall show impressions of monumental space battles as well as strange
landscapes on even more strange planets. On the northern wall there's a
tactical map of a star quadrant, whose constellations do not correspond
to any of your known records. There are doors in the WEST and SOUTH.
/39
STARSHIP BRIDGE


You are underneath a huge glass dome which extends outwards to the console
of the ship's positronic mainframe. The sight is truly breathtaking. It's
a feeling of becoming one with the universe, of being absorbed by infinity.
A strange door SE appears to be secured by a code. The NORTHERN passage
leads back to the quarters.
/40
CHAMBER OF THE NAVIGATOR


You are in a surprisingly small room that is bathed in a faint red light.
On the wall in the south, an interactive side view of the alien spaceship
is displayed, over which a series of status messages run. In a transparent
tube in front of you swims one of the aliens, surrounded by a kind of nutrient
solution. The only way out is the door to the NORTH.
/41
STARFIGHTER (INSIDE)


The pilot's seat is extremely comfortable. If not for the unusual symbols
on the instruments, the starfighter could be considered a far human achievement.
You feel like you're looking into the distant future with a crystal ball.
Astonishing and at the same time terrifying how similar the strangers are
to us. A theory says that life always evolves similarly. Maybe there is
something about it, maybe it is just coincidence. GO OUT to leave.
/42

/43
Io confirms the target coordinates as the spacecraft starts moving slowly.
You feel a slight tremor as the thrusters begin to operate. From here under
the glass dome you have an impressive view of the surrounding area.


While the ship continues to turn you recognize a green planet to the left,
behind which an unknown sun is rising. The million bright ambassadors of
morning spread a pleasant warmth as you drift in the beauty of the moment.





/44
As the hyperspace engines launch, the stars blur into a sea of stripes.
Spellbound, you continue to gaze in flight direction and let the myriads
of colours pass you by.


So what is waiting for us in Andromeda, 2.5 million light- years away from
Sol? It has always been the uncertainty that drove us forward and ultimately
led us to reach for the stars.


So here we are, the apprentices of the universe...





/45










              -----  THE END  -----











;------------------------------------------------------------------------------
/CON    ;Connections
/0
/1
/2
	E	3
/3
	W	2
	E	4
	S	5
/4
	W	3
/5
	N	3
	S	10
/6
	E	9
/7
	W	9
/8
	S	9
/9
	N	8
	W	6
	E	7
	S	3
/10
	N	5
/11
	ASCEN	10
	E	12
	N	13
/12
	W	11
/13
	W	21
	E	14
/14
	W	13
	E	15
/15
	N	16
	W	14
/16
	S	15
	N	19
/17
	W	20
/18
	S	17
	N	26
/19
	N	24
	S	16
/20
	N	23
	S	21
	W	22
	E	17
/21
	N	20
	E	13
/22
	E	20
/23
	S	20
/24
	S	19
/25
/26
	E	27
	S	18
/27
	W	26
	N	29
/28
	ASCEN	31
	W	27
/29
	W	30
	S	27
/30
	E	29
/31
	DESCE	28
	N	32
/32
	SE	31
	S	34
	W	33
/33
	E	32
/34
	N	32
	W	35
/35
	E	34
/36
	E	35
	S	37
/37
	E	38
	N	36
/38
	W	37
/39
	N	38
/40
	N	39
/41
/42
/43
/44
/45
;------------------------------------------------------------------------------
/OBJ    ;Object Definitions
;obj  starts  weight    c w  5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0    noun   adjective
;num    at
/0	    252	    1	    _ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	FLASH   _	
/1	    7	    1	    _ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	FLASH	_	
/2	    2	    20	    _ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	TUBE	_	
/3	    3	    20	    _ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	DOOR	_	
/4  	8	    1	    _ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	IO	    _	
/5	    7	    1	    _ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	TOOLB	_	
/6	    5	    1	    _ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	GUN	    _	
/7	    5	    1	    _ Y	 _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _    SUIT	_	
/8	    6	    20	    _ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	COMPU	_	
/9	    6	    20  	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	CUBE	_	
/10	    6	    20	    _ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	CUBE	_	
/11	    252	    20	    _ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	CUBE	_	
/12	    252	    20	    _ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	CUBE	_	
/13	    252	    1	    _ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	_       _	
/14	    252	    20  	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	DOOR	_	
/15	    252	    1	    _ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	SPIDE	_	
/16	    21	    20	    _ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	TERMI	_	
/17	    22	    20  	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	DEAD	_	
/18	    252	    1	    _ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	HAND	_	
/19	    252	    1	    _ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	HAND	_	
/20 	252	    1	    _ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	ID  	_	
/21	    19	    1	    _ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	KNIFE	_	
/22	    24	    20	    _ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	TUBE	_	
/23	    17	    20  	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	SLAB	_	
/24	    252 	20	    _ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	SLAB	_	
/25	    18	    20  	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	CAPSU	_	
/26	    23	    20  	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	TERMI	_	
/27 	252	    1	    _ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	CONNE	_	
/28	    4	    20	    _ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	LIB	    _	
/29	    252	    20  	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	TUBE	_	
/30 	252	    20  	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	CAPSU	_	
/31	    252 	1	    _ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	BLOOD	_	
/32	    252	    1   	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	TUBE	_	
/33	    252 	1   	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	VACCI	_	
/34	    25	    20  	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	STARF	_	
/35 	252	    1   	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	CELL	_	
/36 	20  	20  	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	MONIT	_	
/37	    41  	20  	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	CONSO	_	
/38 	252	    20  	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	HUB	    _	
/39 	252	    20  	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	SLOT	_	
/40 	252	    20  	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	SLOT	_	
/41     252	    20  	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	SLOT	_	
/42 	252 	1   	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	CRYST	_	
/43	    252 	1   	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	IO	    _	
/44	    252	    1   	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	SPIDE	_	
/45 	252	    1   	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	IO	    _	
/46	    252	    20  	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	DEAD	_	
/47 	252 	1   	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	PARTS	_	
/48 	252	    1   	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	SPARE	_	
/49 	252	    20  	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	DROID	_	
/50 	15  	20  	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	DROID	_	
/51	    33	    20  	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	ROBOT	_	
/52	    252 	20  	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	ROBOT	_	
/53 	252	    1   	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	DAGGE	_	
/54	    252 	1   	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	IO	    _	
/55	    30  	20  	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	MOUNT	_	
/56	    252 	20  	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	MOUNT	_	
/57 	35  	20  	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	BARRI	_	
/58	    252 	20  	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	DEAD	_	
/59 	36	    20  	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	NICHE	_	
/60 	252	    20  	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	HOLOG	_	
/61	    37  	20  	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	DEAD	_	
/62	    252	    1   	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	IDENT	_	
/63	    16	    20  	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	LOCKE	_	
/64	    252	    1   	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	KEY	    _	
/65	    252 	20  	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	NICHE	_	
/66	    39  	20  	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	PAD 	_	
/67	    38  	20	    _ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	TERMI	_	
/68	    252	    1   	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	NOTE	_	
/69 	39  	20  	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	MAINF	_	
/70 	252	    20  	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	MAINF	_	
/71	    40  	20  	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	NAVIG	_	
/72	    252	    20  	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	IO	    _	
/73	    12	    20  	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	SPIDE	_	
/74 	252	    20  	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	NAVIG	_	
/75	    252	    1   	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	CRYST	_	
/76	    4	    20	    _ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	TABLE	_	
/77 	252	    20  	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	TABLE	_	
/78	    252	    1   	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	PASS	_	
/79	    10  	20  	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	BUTTO	_	
/80 	252	    20  	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	LOCKE	_	
/81	    32  	20  	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	PRIES	_	
/82	    252	    20  	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	PRIES	_	
/83	    6	    20  	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	CABIN	_	
/84	    252	    20  	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	CABIN	_	
/85	    17  	20  	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	DOOR	_	
/86	    252	    20  	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	DOOR	_	
/87	    39  	20  	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	DOOR	_	
/88	    252 	20  	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	DOOR	_	
/89	    252	    20  	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 	DEAD	_ 
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
				CLS						; clears the screen in new locations
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

_	    _	    AT 1                     ;straight to 42 (too dark to see)
		        GOTO 42                  ;where Olivia wakes up

_	    _	    AT 43 
		        ANYKEY 
		        GOTO 44 
		        RESTART

_	    _	    AT 44 
		        ANYKEY 
		        GOTO 45 
		        RESTART

_	    _	    AT 45 
		        ANYKEY 
		        CLS 
		        END

;------------------------------------------------------------------------------
/PRO 4 ; Old process 2

_	    _	    AT 42 
		        EQ 60 1 
		        MESSAGE 15 
		        DONE

_	    _	    AT 42 
		        EQ 60 0 
		        LET 60 1 
		        DONE

_	    _	    AT 11 
		        NOTWORN 7 
		        CLS 
		        MESSAGE 44 
		        PAUSE 100 
		        END

_	    _	    AT 12 
		        NOTWORN 7 
		        CLS 
		        MESSAGE 44 
		        PAUSE 100 
		        END

_	    _	    EQ 11 0 
		        AT 8 
	        	MESSAGE 41 
		        PLUS 11 1

_	    _	    AT 15 
	        	PRESENT 50 
		        MESSAGE 47
;------------------------------------------------------------------------------
/PRO 5 ; Command decoder

I       _       SYSMESS 9
                LISTAT  CARRIED
                SYSMESS 10
                LISTAT  WORN
                DONE

; GET overrides come first in chain
GET		FLASH	AT 25 
				PRESENT 0 
				GET 0 
				LET 17 0 
				DONE

GET		IO		EQ 11 2 
				ABSENT 5 
				MESSAGE 40 
				DONE

GET		IO		EQ 11 2 
				PRESENT 5 
				PRESENT 4 
				GET 4 
				LET 11 3 
				DONE

GET		SPIDE	PRESENT 15 
				GET 15 
				DONE

GET		SPIDE	PRESENT 44 
				GET 44 
				DONE

GET		CRYST	PRESENT 42 
				GET 42 
				MESSAGE 89 
				DONE

GET		IDENT	PRESENT 65 
				MESSAGE 141 
				DONE

GET		IO		LT 11 2 
				MESSAGE 138 
				DONE

GET     ALL     DOALL   HERE
GET     _       AUTOG
                DONE

; DROP overrides come first in chain
PUT		FLASH	AT 25 
				PRESENT 0 
				DROP 0 
				LET 17 1 
				DONE

PUT		IO		PRESENT 4 
				MESSAGE 63 
				DONE

PUT		IO		PRESENT 43 
				MESSAGE 63 
				DONE

PUT		IO		PRESENT 45 
				MESSAGE 63 
				DONE

PUT		IO		PRESENT 54 
				MESSAGE 63 
				DONE

PUT		CRYST	PRESENT 42 
				MESSAGE 88 
				DONE

PUT		CRYST	PRESENT 75 
				MESSAGE 88 
				DONE

PUT		KEY		PRESENT 64 
				MESSAGE 142 
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

S	_	AT 13 
		NOTWORN 7 
		GOTO 11

S	_	AT 13 
		WORN 7 
		GOTO 11 
		RESTART

S	_	AT 38 
		NOTCARR 64 
		MESSAGE 81

S	_	AT 38 
		CARRIED 64 
		GOTO 39 
		RESTART

E	_	AT 25 
		GOTO 26 
		LET 0 0 
		RESTART

E	_	AT 27 
		LT 11 5 
		MESSAGE 73

E	_	AT 27 
		GT 11 4 
		GOTO 28 
		RESTART

W	_	AT 26 
		GOTO 25 
		LET 0 1 
		RESTART

W	_	AT 35 
		PRESENT 57 
		MESSAGE 76

W	_	AT 35 
		ABSENT 57 
		GOTO 36 
		RESTART

N	_	AT 3 
		PRESENT 14 
		GOTO 9 
		RESTART

N	_	AT 17 
		EQ 16 1 
		GOTO 18 
		RESTART

SE	_	AT 39 
		ABSENT 72 
		MESSAGE 86

SE	_	AT 39 
		PRESENT 72 
		GOTO 40 
		RESTART

X	MAP	AT 38 
		MESSAGE 133 
		DONE

X	DOOR	AT 3 
		PRESENT 14 
		MESSAGE 0 
		DONE

X	DOOR	AT 3 
		PRESENT 3 
		MESSAGE 2 
		DONE

X	DOOR	PRESENT 85 
		MESSAGE 118 
		DONE

X	DOOR	PRESENT 86 
		MESSAGE 0 
		DONE

X	DOOR	PRESENT 87 
		MESSAGE 86 
		DONE

X	DOOR	PRESENT 88 
		MESSAGE 0 
		DONE

X	CUBE	AT 6 
		MESSAGE 11 
		DONE

X	COMPU	PRESENT 8 
		MESSAGE 10 
		DONE

X	PRIES	AT 32 
		MESSAGE 115 
		DONE

X	CAPSU	AT 18 
		MESSAGE 23 
		DONE

X	SLAB	AT 17 
		MESSAGE 0 
		DONE

X	LIB	AT 4 
		MESSAGE 25 
		DONE

X	STARF	AT 25 
		MESSAGE 98 
		DONE

X	STARF	AT 41 
		MESSAGE 98 
		DONE

X	MONIT	AT 20 
		EQ 17 0 
		MESSAGE 28 
		DONE

X	MONIT	AT 20 
		EQ 17 1 
		LT 18 2 
		LET 18 1 
		MESSAGE 29 
		DONE

X	MONIT	AT 20 
		EQ 17 1 
		EQ 18 3 
		MESSAGE 99 
		DONE

X	CONSO	AT 41 
		MESSAGE 14 
		DONE

X	HUB	AT 29 
		MESSAGE 21 
		DONE

X	SLOT	AT 40 
		MESSAGE 11 
		DONE

X	DROID	PRESENT 50 
		MESSAGE 13 
		DONE

X	DROID	PRESENT 49 
		MESSAGE 137 
		DONE

X	MOUNT	AT 30 
		MESSAGE 0 
		DONE

X	BARRI	AT 35 
		MESSAGE 32 
		DONE

X	NICHE	AT 36 
		MESSAGE 0 
		DONE

X	LOCKE	AT 16 
		MESSAGE 109 
		DONE

X	PAD	AT 39 
		MESSAGE 33 
		DONE

X	MAINF	AT 39 
		MESSAGE 35 
		DONE

X	DEAD	AT 22 
		MESSAGE 19 
		DONE

X	DEAD	AT 37 
		MESSAGE 19 
		DONE

X	DEAD	PRESENT 46 
		MESSAGE 19 
		DONE

X	NAVIG	PRESENT 71 
		MESSAGE 36 
		DONE

X	NAVIG	PRESENT 74 
		MESSAGE 37 
		DONE

X	HOLOG	PRESENT 60 
		PRESENT 45 
		DESTROY 60 
		CREATE 68 
		MESSAGE 79 
		DONE

X	HYGIE	AT 4 
		MESSAGE 100 
		DONE

X	BED	AT 4 
		MESSAGE 101 
		DONE

X	TABLE	AT 4 
		MESSAGE 103 
		DONE

X	CABIN	AT 6 
		MESSAGE 112 
		DONE

X	FLASH	PRESENT 0 
		MESSAGE 0 
		DONE

X	FLASH	PRESENT 1 
		MESSAGE 0 
		DONE

X	TUBE	PRESENT 2 
		MESSAGE 4 
		DONE

X	TUBE	AT 24 
		PRESENT 22 
		MESSAGE 96 
		DONE

X	TUBE	NOTAT 24 
		PRESENT 32 
		MESSAGE 97 
		DONE

X	TUBE	AT 24 
		PRESENT 29 
		MESSAGE 102 
		DONE

X	SPARE	PRESENT 48 
		MESSAGE 3 
		DONE

X	IO	PRESENT 4 
		MESSAGE 5 
		DONE

X	IO	PRESENT 43 
		MESSAGE 5 
		DONE

X	IO	PRESENT 45 
		MESSAGE 5 
		DONE

X	IO	PRESENT 54 
		MESSAGE 5 
		DONE

X	IO	AT 39 
		PRESENT 72 
		LT 11 9 
		MESSAGE 85 
		DONE

X	IO	AT 39 
		PRESENT 72 
		GT 11 8 
		MESSAGE 92 
		DONE

X	TOOLB	PRESENT 5 
		MESSAGE 6 
		DONE

X	GUN	PRESENT 6 
		MESSAGE 9 
		DONE

X	SUIT	PRESENT 7 
		MESSAGE 126 
		DONE

X	MATER	PRESENT 11 
		MESSAGE 26 
		DONE

X	ROBOT	PRESENT 51 
		MESSAGE 13 
		DONE

X	ROBOT	PRESENT 52 
		MESSAGE 134 
		DONE

X	ROBOT	PRESENT 73 
		MESSAGE 16 
		DONE

X	SPIDE	AT 12 
		MESSAGE 16 
		DONE

X	SPIDE	PRESENT 15 
		MESSAGE 14 
		DONE

X	SPIDE	PRESENT 44 
		MESSAGE 14 
		DONE

X	SPIDE	PRESENT 12 
		MESSAGE 16 
		DONE

X	TERMI	AT 21 
		MESSAGE 17 
		DONE

X	TERMI	AT 23 
		MESSAGE 18 
		DONE

X	TERMI	AT 38 
		MESSAGE 131 
		DONE

X	HAND	PRESENT 18 
		MESSAGE 20 
		DONE

X	HAND	PRESENT 19 
		MESSAGE 20 
		DONE

X	HAND	PRESENT 29 
		MESSAGE 128 
		DONE

X	ID	PRESENT 20 
		MESSAGE 21 
		DONE

X	KNIFE	PRESENT 21 
		MESSAGE 22 
		DONE

X	CONNE	PRESENT 27 
		MESSAGE 3 
		DONE

X	BLOOD	PRESENT 31 
		MESSAGE 26 
		DONE

X	VACCI	PRESENT 33 
		MESSAGE 27 
		DONE

X	CELL	PRESENT 35 
		MESSAGE 3 
		DONE

X	CRYST	PRESENT 75 
		MESSAGE 30 
		DONE

X	CRYST	PRESENT 42 
		MESSAGE 21 
		DONE

X	PARTS	PRESENT 47 
		MESSAGE 135 
		DONE

X	DAGGE	PRESENT 53 
		MESSAGE 31 
		DONE

X	IDENT	PRESENT 62 
		MESSAGE 21 
		DONE

X	KEY	PRESENT 64 
		MESSAGE 0 
		DONE

X	NOTE	PRESENT 68 
		MESSAGE 34 
		DONE

X	PASS	PRESENT 78 
		MESSAGE 38 
		DONE

X	BUTTO	PRESENT 79 
		MESSAGE 107 
		DONE

X	AROUN	RESTART

SAY	NAVIG	AT 40 
		LT 11 8 
		CREATE 42 
		CREATE 39 
		LET 11 8 
		MESSAGE 87 
		DONE

SAY	IO	AT 8 
		LT 11 3 
		MESSAGE 42 
		LET 11 2 
		DONE

SAY	IO	AT 39 
		EQ 11 9 
		LET 11 10 
		MESSAGE 93 
		DONE

SAY	IO	AT 39 
		EQ 11 10 
		MESSAGE 94 
		DONE

DISAS	DROID	PRESENT 49 
		ABSENT 5 
		MESSAGE 40 
		DONE

DISAS	DROID	PRESENT 49 
		PRESENT 5 
		SWAP 49 48 
		MESSAGE 48 
		DONE

XYZZY	_	MESSAGE 1 
		DONE

HELP	_	MESSAGE 95 
		DONE

USE	COMPU	AT 6 
		PRESENT 11 
		SWAP 11 9 
		CREATE 33 
		MESSAGE 67 
		DONE

USE	COMPU	AT 6 
		ABSENT 11 
		MESSAGE 113 
		DONE

USE	LIB	AT 4 
		MESSAGE 105 
		DONE

USE	CONSO	AT 41 
		EQ 18 1 
		CREATE 35 
		PLACE 35 25 
		LET 18 3 
		MESSAGE 69 
		DONE

USE	HUB	AT 29 
		MESSAGE 24 
		DONE

USE	PAD	AT 39 
		MESSAGE 116 
		DONE

USE	MAINF	AT 39 
		MESSAGE 82 
		DONE

USE	HYGIE	AT 4 
		MESSAGE 100 
		DONE

USE	BED	AT 4 
		MESSAGE 101 
		DONE

USE	TUBE	AT 18 
		PRESENT 32 
		PLACE 32 42 
		CREATE 31 
		MESSAGE 66 
		DONE

USE	SPARE	AT 33 
		PRESENT 48 
		PRESENT 5 
		PLACE 48 42 
		SWAP 51 52 
		MESSAGE 71 
		DONE

USE	IO	AT 21 
		LT 14 2 
		MESSAGE 49 
		LET 14 1 
		DONE

USE	IO	AT 23 
		EQ 14 1 
		MESSAGE 50 
		DONE

USE	IO	AT 21 
		EQ 14 2 
		MESSAGE 53 
		DONE

USE	IO	AT 23 
		EQ 14 2 
		EQ 15 0 
		CREATE 27 
		LET 15 1 
		MESSAGE 57 
		DONE

USE	IO	AT 18 
		EQ 15 1 
		MESSAGE 59 
		DONE

USE	IO	AT 18 
		EQ 15 2 
		ABSENT 43 
		MESSAGE 61 
		DONE

USE	IO	AT 18 
		EQ 15 2 
		LT 11 4 
		PRESENT 43 
		SWAP 25 30 
		CREATE 46 
		LET 11 4 
		MESSAGE 62 
		DONE

USE	IO	AT 6 
		EQ 15 2 
		PRESENT 12 
		SWAP 12 10 
		CREATE 44 
		MESSAGE 65 
		DONE

USE	IO	AT 41 
		EQ 18 1 
		MESSAGE 68 
		DONE

USE	IO	AT 39 
		PRESENT 69 
		SWAP 69 70 
		MESSAGE 83 
		DONE

USE	IO	AT 6 
		LT 15 2 
		PRESENT 12 
		MESSAGE 140 
		DONE

USE	TOOLB	AT 15 
		PRESENT 49 
		SWAP 49 48 
		MESSAGE 48 
		DONE

USE	GUN	PRESENT 6 
		MESSAGE 139 
		DONE

USE	SPIDE	AT 6 
		PRESENT 15 
		PLACE 15 42 
		SWAP 10 12 
		MESSAGE 127 
		DONE

USE	SPIDE	AT 35 
		PRESENT 44 
		DESTROY 57 
		PLACE 44 42 
		MESSAGE 77 
		DONE

USE	TERMI	AT 21 
		MESSAGE 17 
		DONE

USE	TERMI	AT 23 
		MESSAGE 17 
		DONE

USE	TERMI	AT 38 
		MESSAGE 132 
		DONE

USE	HAND	AT 24 
		PRESENT 18 
		SWAP 22 29 
		PLACE 18 42 
		MESSAGE 55 
		DONE

USE	HAND	PRESENT 19 
		PRESENT 24 
		PLACE 19 42 
		LET 16 1 
		SWAP 85 86 
		MESSAGE 58 
		DONE

USE	ID	AT 21 
		EQ 14 2 
		PRESENT 20 
		SWAP 23 24 
		PLACE 20 42 
		MESSAGE 52 
		DONE

USE	KNIFE	PRESENT 17 
		SWAP 17 58 
		CREATE 18 
		MESSAGE 54 
		DONE

USE	CONNE	NOTAT 6 
		PRESENT 27 
		MESSAGE 60 
		DONE

USE	CONNE	AT 6 
		PRESENT 4 
		PRESENT 5 
		PRESENT 27 
		PLACE 27 42 
		SWAP 4 43 
		MESSAGE 64 
		DONE

USE	BLOOD	AT 6 
		PRESENT 31 
		PLACE 31 42 
		SWAP 9 11 
		MESSAGE 129 
		DONE

USE	CELL	AT 30 
		PRESENT 35 
		SWAP 55 56 
		DESTROY 35 
		CREATE 38 
		PLACE 38 29 
		MESSAGE 70 
		DONE

USE	CRYST	AT 29 
		PRESENT 38 
		PRESENT 42 
		SWAP 42 75 
		SWAP 71 74 
		MESSAGE 90 
		DONE

USE	CRYST	AT 40 
		PRESENT 75 
		SWAP 39 41 
		PLACE 75 42 
		LET 11 9 
		MESSAGE 91 
		DONE

USE	PARTS	AT 33 
		PRESENT 47 
		PRESENT 52 
		PRESENT 43 
		PLACE 47 42 
		SWAP 43 54 
		LET 11 6 
		MESSAGE 72 
		DONE

USE	DAGGE	AT 33 
		PRESENT 53 
		MESSAGE 75 
		DONE

USE	IDENT	AT 36 
		PRESENT 62 
		PLACE 62 42 
		SWAP 59 65 
		CREATE 60 
		MESSAGE 78 
		DONE

USE	NOTE	AT 38 
		PRESENT 68 
		PLACE 68 42 
		CREATE 64 
		MESSAGE 80 
		DONE

USE	PASS	PRESENT 3 
		PRESENT 78 
		SWAP 3 14 
		MESSAGE 104 
		PLACE 78 42 
		DONE

SEARC	PRIES	PRESENT 81 
		CREATE 53 
		SWAP 81 82 
		MESSAGE 114 
		DONE

SEARC	LOCKE	PRESENT 63 
		SWAP 63 80 
		CREATE 20 
		MESSAGE 108 
		DONE

SEARC	LOCKE	PRESENT 80 
		MESSAGE 97 
		DONE

SEARC	DEAD	AT 37 
		PRESENT 61 
		CREATE 62 
		SWAP 61 89 
		MESSAGE 130 
		DONE

SEARC	TABLE	PRESENT 76 
		SWAP 76 77 
		CREATE 78 
		MESSAGE 39 
		DONE

SEARC	CABIN	PRESENT 83 
		LT 11 4 
		MESSAGE 110 
		DONE

SEARC	CABIN	PRESENT 83 
		GT 11 3 
		SWAP 83 84 
		CREATE 32 
		MESSAGE 111 
		DONE

SEARC	CABIN	PRESENT 84 
		MESSAGE 110 
		DONE

RESEA	POSIT	AT 4 
		EQ 15 1 
		LET 15 2 
		MESSAGE 51 
		DONE

RESEA	CUNEI	AT 4 
		EQ 14 1 
		MESSAGE 51 
		LET 14 2 
		DONE

GIVE	DAGGE	AT 33 
		PRESENT 53 
		PRESENT 54 
		SWAP 54 45 
		PLACE 53 42 
		LET 11 7 
		MESSAGE 74 
		DONE

GIVE	DAGGE	AT 33 
		PRESENT 53 
		PRESENT 52 
		ABSENT 54 
		MESSAGE 136 
		DONE

OPEN	DOOR	PRESENT 3 
		ABSENT 78 
		MESSAGE 2 
		DONE

OPEN	DOOR	PRESENT 3 
		PRESENT 78 
		SWAP 3 14 
		MESSAGE 104 
		PLACE 78 42 
		DONE

OPEN	DOOR	PRESENT 85 
		MESSAGE 118 
		DONE

OPEN	DOOR	PRESENT 86 
		MESSAGE 117 
		DONE

OPEN	DOOR	PRESENT 87 
		MESSAGE 86 
		DONE

OPEN	DOOR	PRESENT 88 
		MESSAGE 117 
		DONE

OPEN	DOOR	PRESENT 14 
		MESSAGE 117 
		DONE

OPEN	CAPSU	AT 18 
		MESSAGE 24 
		DONE

OPEN	LIB	AT 4 
		MESSAGE 105 
		DONE

OPEN	LOCKE	PRESENT 63 
		SWAP 63 80 
		CREATE 20 
		MESSAGE 108 
		DONE

OPEN	LOCKE	PRESENT 80 
		MESSAGE 97 
		DONE

OPEN	EYE	AT 42 
		GOTO 2 
		RESTART
		DONE

OPEN	CABIN	PRESENT 83 
		LT 11 4 
		MESSAGE 110 
		DONE

OPEN	CABIN	PRESENT 83 
		GT 11 3 
		SWAP 83 84 
		CREATE 32 
		MESSAGE 111 
		DONE

OPEN	CABIN	PRESENT 84 
		MESSAGE 110 
		DONE

OPEN	TOOLB	PRESENT 5 
		MESSAGE 12 
		DONE

DISIN	DROID	PRESENT 50 
		CARRIED 6 
		SWAP 50 49 
		MESSAGE 45 
		DONE

DISIN	SPIDE	AT 12 
		CARRIED 6 
		EQ 13 0 
		CREATE 47 
		MESSAGE 45 
		LET 13 1 
		DONE

PARAL	SPIDE	AT 12 
		CARRIED 6 
		EQ 12 0 
		CREATE 15 
		MESSAGE 46 
		LET 12 1 
		DONE

EAT	VACCI	PRESENT 33 
		PLACE 33 42 
		LET 11 5 
		OK

ADMIR	_	MESSAGE 7 
		DONE

WAIT	_	AT 24 
		PRESENT 29 
		SWAP 29 22 
		CREATE 19 
		MESSAGE 56 
		DONE

INSTA	IO	AT 39 
		PRESENT 70 
		DESTROY 45 
		SWAP 70 72 
		SWAP 87 88 
		MESSAGE 84 
		DONE

PRESS	BUTTO	AT 10 
		GT 11 1 
		NOTWORN 7 
		GOTO 11 
		DONE

PRESS	BUTTO	AT 10 
		LT 11 3 
		MESSAGE 43 
		DONE

PRESS	BUTTO	AT 10 
		GT 11 1 
		GOTO 11 
		RESTART

FLY	GYAN	AT 39 
		GT 11 8 
		GOTO 43 
		RESTART

READ	MAP	AT 38 
		MESSAGE 133 
		DONE

READ	LIB	AT 4 
		MESSAGE 105 
		DONE

HINT	_	LT 11 4 
		MESSAGE 119 
		DONE

HINT	_	EQ 11 4 
		MESSAGE 120 
		DONE

HINT	_	EQ 11 5 
		MESSAGE 121 
		DONE

HINT	_	EQ 11 6 
		MESSAGE 122 
		DONE

HINT	_	EQ 11 7 
		MESSAGE 123 
		DONE

HINT	_	EQ 11 8 
		MESSAGE 124 
		DONE

HINT	_	GT 11 8 
		MESSAGE 125 
		DONE

FUCK	_	MESSAGE 8 
		DONE

ON	LIB	AT 4 
		MESSAGE 105 
		DONE

ON	FLASH	AT 25 
		PRESENT 1 
		NOTCARR 1 
		SWAP 1 0 
		LET 17 1 
		OK 
		DONE

ON	FLASH	PRESENT 1 
		SWAP 1 0 
		OK

OFF	FLASH	AT 25 
		PRESENT 0 
		NOTCARR 0 
		SWAP 0 1 
		LET 17 0 
		OK 
		DONE

OFF	FLASH	PRESENT 0 
		SWAP 0 1 
		OK 
		DONE

_	STARF	AT 25 
		LET 0 0 
		GOTO 41 
		RESTART

_	POLAR	NOTAT 42 
		WORN 7 
		LET 0 0 
		GOTO 3 
		RESTART

_	OUT	AT 41 
		LET 0 1 
		GOTO 25 
		RESTART
;------------------------------------------------------------------------------
/PRO 6 ; Initialise the DAAD system

_       _       WINDOW  1               ; Windows are random
_       _       WINAT   0       0       ; set 14 0 for split screen with GFX 
                WINSIZE 25      127     ; Maximum window
                CLS
                DESC    0               ; Intro
                ANYKEY
                CLS
                CLEAR   255             ; Clear all flags

_       _       NOTEQ   255     GFlags
                CLEAR   [255]

_       _       PLUS    255     1
                LT      255     255     ; Will be set at end to indicate init
                SKIP    -2              ; BUGFIX: SKIP -1 was the original value

_       _       RESET                   ; Set objects to start location & Flag 1
                LET     Strength 12
                LET     MaxCarr  12
                SET     CPNoun
                SET     CPAdject
                GOTO    1               ; Main game
                RESTART


