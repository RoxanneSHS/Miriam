EXTEND_TOP FATESP 6 #4
  IF ~!Dead("cmgmiriam")
!InMyArea("cmgmiriam")
Global("CMgMiriamSummoned","GLOBAL",0)~ THEN
   REPLY @0
    DO ~CreateVisualEffect("SPPORTAL",[1999.1220])
Wait(2)
CreateCreature("CMGMIR25",[1999.1220],0)
SetGlobal("CMgMiriamSummoned","GLOBAL",1)~ GOTO 8
END

BEGIN CMGMI25P
BEGIN CMGMI25

IF ~Global("CMgMiriamSummoned","GLOBAL",1)~ THEN BEGIN summon
SAY @1
++ @2 DO ~SetGlobal("CMgMiriamSummoned","GLOBAL",2)~ + help
++ @3 DO ~SetGlobal("CMgMiriamSummoned","GLOBAL",2)~ + insight
++ @4 DO ~SetGlobal("CMgMiriamSummoned","GLOBAL",2)~ + thief
END

IF ~~ insight
SAY @5
IF ~~ GOTO help
END

IF ~~ thief
SAY @6
IF ~~ GOTO help
END

IF ~~ help
SAY @7
= @8
++ @9 + help2
++ @10 + help2
END

IF ~~ help2
SAY @11
++ @12 DO ~JoinParty()~ EXIT
++ @13 DO ~MoveToPointNoInterrupt([1455.1410])~ EXIT
END

IF ~Global("CMgMiriamSummoned","GLOBAL",2)~ summon2
SAY @14
++ @15 DO ~JoinParty()~ EXIT
++ @16 EXIT
END

APPEND CMGMI25P

IF ~Global("KickedOut","LOCALS",0)~ THEN BEGIN kickout
  SAY @17
  IF ~~ THEN REPLY @18 DO ~JoinParty()~ EXIT

  IF ~!AreaCheck("AR4500")
!AreaCheck("AR4000")
!AreaCheck("AR6200")~ THEN REPLY @19 DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT

  IF ~AreaCheck("AR4500")~ THEN REPLY @19 DO ~SetGlobal("KickedOut","LOCALS",1)
MoveToPointNoInterrupt([1455.1410])
Face(0)~ EXIT

  IF ~!AreaCheck("AR4500")
!AreaCheck("AR4000")
!AreaCheck("AR6200")~ THEN REPLY @20 DO ~SetGlobal("KickedOut","LOCALS",1)
CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[1455.1410],0)~ EXIT
END

IF ~Global("KickedOut","LOCALS",1)~ THEN BEGIN rejoin
SAY @21
++ @22 EXIT
++ @23 DO ~SetGlobal("KickedOut","LOCALS",0) JoinParty()~ EXIT
END

END
