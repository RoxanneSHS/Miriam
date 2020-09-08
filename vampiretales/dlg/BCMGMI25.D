BEGIN BCMGMI25


CHAIN IF
~InParty("Sarevok")
See("Sarevok")
!StateCheck("Sarevok",STATE_SLEEPING)
Global("Miriam25Sarevok","LOCALS",0)~
THEN BCMGMI25 MirSar1
@0 DO ~SetGlobal("Miriam25Sarevok","LOCALS",1)~
== BSAREV25 @1
== BCMGMI25 @2
== BSAREV25 @3
== BCMGMI25 @4
== BSAREV25 @5
EXIT
