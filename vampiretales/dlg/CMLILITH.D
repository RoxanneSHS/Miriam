BEGIN ~CMLILITH~

IF ~~ THEN BEGIN 0 
  SAY @1 
END

IF ~NumberOfTimesTalkedTo(0)
!InParty("cmgmiriam")
!Dead("cmgblood")
!Dead("cmmarial")
~ THEN BEGIN 1 
  SAY @2 
  IF ~~ THEN EXTERN ~CMGBLOOD~ 1
END

IF ~~ THEN BEGIN 2 
  SAY @3 
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 3 
  SAY @5 
  IF ~~ THEN EXTERN ~CMGBLOOD~ 2
END

IF ~~ THEN BEGIN 4 
  SAY @6 
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @9 GOTO 9
END

IF ~~ THEN BEGIN 5 
  SAY @10 
  IF ~~ THEN DO ~Kill(Player1)
~ EXIT
END

IF ~~ THEN BEGIN 6 
  SAY @11 
  IF ~~ THEN EXTERN ~CMMARIAL~ 2
END

IF ~~ THEN BEGIN 7 
  SAY @12 
  IF ~~ THEN EXTERN ~CMMARIAL~ 3
END

IF ~~ THEN BEGIN 8 
  SAY @13 
  IF ~~ THEN DO ~SetGlobal("CmgKaliHostile","GLOBAL",1)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 9 
  SAY @14 
  IF ~~ THEN DO ~SetGlobal("CmgKaliHostile","GLOBAL",1)
Enemy()
~ EXIT
END
