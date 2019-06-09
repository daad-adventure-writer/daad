;--------------------------------------------- CHARACTER

; This file must be the last supplied to the linker, as it must generate
; the last bytes of the data segment for the memory allocate

; e.g
; LINK INTSDM+EXTERN+CHARS;
; will generate a Developer multi graphic Spanish interpreter

; There is no default character set, it is always loaded at load time
; but it is a seperate module to allow DAAD to calculate total program
; size, and you to set the number of parts/filename etc

        DATA    SEGMENT PUBLIC 'DATA'

NOFPARTS        DB      3               ; No of parts counter
;
;The part map describes which disc contains which file in the order
;CHR,DDB,DAT,unused
;with an entry for each part. make sure you put enough entries in!
PART_MAP        DB      0,0,0,0         ; Part 0 used for developer only
;
; An obvious three part map
                DB      1,1,1,0         ; All files for part one on disc 1
                DB      2,2,2,0         ; etc
                DB      3,3,3,0
; The same for a 3.5 system?
;                DB      1,1,1,0         ; All chr/db files on disc 1 with DAT 1
;                DB      1,1,2,0         ; DAT 2 and 3 on disc 2
;                DB      1,1,2,0
CDATA           DW      ?

; Don't waste space in the interpreter with rubbish

CHRSET          EQU     CDATA+128       ; Skip amstrad header
ENDDSEG         EQU     CHRSET+2048

        DATA    ENDS

        PUBLIC  NOFPARTS
        PUBLIC  PART_MAP
        PUBLIC  CDATA
        PUBLIC  CHRSET
        PUBLIC  ENDDSEG

        END
