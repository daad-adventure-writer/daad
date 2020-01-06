; SYMBOLS.ASM
;
; These symbols are for including in any assembler subroutines
; they define useful symbols in relation to database etc
;
#if SPE
 #define VECTORS 25092
 #define DBADDR  33664
#endif
#if CPC
 #define VECTORS 2112
 #define DBADDR  10368
#endif
#if MSX
 #define VECTORS 45056
 #define DBADDR  256
#endif
#if PCW
 #define VECTORS 49152
 #define DBADDR  256
#endif
#if CBM64
 #define VECTORS 2063
 #define DBADDR  14464
 #define USER	 DBADDR-514
#endif
;
;These are compiler/interpreter specific, and fixed
;
#define NUMPTRS 20
#define UPNUM	10
;
;The main interpreter vectors - ONLY VALID from EXTERN, CALL etc AFTER
;the system is loaded and initialised.
;
;The first bytes are machine specific and should be avoided in general
#define DV_STAR VECTORS
#define DV_LEN DV_STAR+3
#define DV_MSP DV_LEN+2
;The three vectors for EXTERN,SFX and interrupts
;Note that any routines for EXTERN and SFX must preserve BC - or increment
;it past any inline parameters.
#define EXTVEC DV_MSP+5
#define SFXVEC EXTVEC+3        ; This defaults to WRTPSG
#define INTVEC SFXVEC+3
;Write the byte in E/A to the PSG/SID chip register A/Y
#define WRTPSG INTVEC+3
;Call the subroutine at address given by inline word (not on 6502 - yet)
#define CALREL WRTPSG+3
;Open window A
#define OPWIND CALREL+3
;Write character in A to current window
#define OPCHR  OPWIND+3
;Ensure wordwrap buffer is flushed
#define FLUSH  OPCHR+3
;Wait for key, returned in A
#define ICHAR  FLUSH+3
;Same but allow timeout
#define ICHART ICHAR+3
;Generate run time error D and restart game
#define RTERR  ICHART
;
;The user pointers in the CTL section
;
#define UPTR1  DBADDR+NUMPTRS+NUMPTRS
#define UPTR2  UPTR1+2
#define UPTR3  UPTR2+2
#define UPTR4  UPTR3+2
#define UPTR5  UPTR4+2
#define UPTR6  UPTR5+2
#define UPTR7  UPTR6+2
#define UPTR8  UPTR7+2
#define UPTR9  UPTR8+2
#define UPTR10 UPTR9+2
;
;The fixed buffer address in the CTL section. This is used to contain
;any non relocatable code, as it will not move unless the compiler
;version changes...
;
#define CTLADDR UPTR1+UPNUM+UPNUM
