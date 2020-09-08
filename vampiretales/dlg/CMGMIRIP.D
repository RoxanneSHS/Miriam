BEGIN CMGMIRIP


IF ~Global("KickedOut","LOCALS",1)~ THEN BEGIN rejoinq
SAY @0
++ @1 DO ~SetGlobal ("KickedOut","LOCALS",0) JoinParty()~ EXIT
++ @2 EXIT
END

IF ~Global("KickedOut","LOCALS",0)~ THEN BEGIN kickedout
SAY @3
++ @4 DO ~SetGlobal("kickedout","LOCALS",1)~ + leave
++ @5 DO ~JoinParty()~ EXIT
END


IF ~~ leave
SAY @6
  IF ~~ THEN EXIT
END
