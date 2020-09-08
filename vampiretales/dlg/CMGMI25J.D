BEGIN CMGMI25J

APPEND CMGMI25J

IF ~AreaCheck("AR5004")
Global("CMgEnteredAR5004","GLOBAL",0)
~ THEN BEGIN forewarning
  SAY @0
  IF ~~ THEN REPLY @1 DO ~SetGlobal("CMgEnteredAR5004","GLOBAL",1)~ GOTO nature
  IF ~~ THEN REPLY @2 DO ~SetGlobal("CMgEnteredAR5004","GLOBAL",1)~ GOTO nature
END

IF ~~ nature
SAY @3
= @4
= @5
 ++ @6 + thepoint
 ++ @7 + thepoint
END

IF ~~ thepoint
SAY @8
  ++ @9 + silence
  ++ @10 + silence
END

IF ~~ silence
SAY @11
IF ~~ THEN EXIT
END

IF ~Dead("finsol02")
Global("MiriamYanCBinDies","GLOBAL",0)
~ THEN BEGIN itends
  SAY @12
  IF ~~ THEN REPLY @13 DO ~SetGlobal("MiriamYanCBinDies","GLOBAL",1)~ GOTO tastedsleep
  IF ~~ THEN REPLY @14 DO ~SetGlobal("MiriamYanCBinDies","GLOBAL",1)~ GOTO tastedwillingly
END

IF ~~ tastedsleep
SAY @15
 ++ @16 + itsours
END

IF ~~ tastedwillingly
SAY @17
  ++ @18 + itsours
END

IF ~~ itsours
SAY @19
 ++ @20 + reveal
 ++ @21 + reveal
END

IF ~~ reveal
SAY @22
= @23
 ++ @24 + theend
 ++ @25 + theend
END

IF ~~ theend
SAY @26
IF ~~ THEN DO ~LeaveParty()
Enemy()~ EXIT
END

END
