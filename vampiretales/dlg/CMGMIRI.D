BEGIN CMGMIRI

IF ~NumTimesTalkedTo(0)
Class(Player1,PALADIN_ALL)~ THEN BEGIN paladingreeting
  SAY @0
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~NumTimesTalkedTo(0)
!Class(Player1,PALADIN_ALL)~ THEN BEGIN Greeting
SAY @1 
 ++ @2 + greeting2
 ++ @3 + noproblem
 ++ @4 + greeting3
END

IF ~~ greeting2
SAY @5
 ++ @6 + fight
 ++ @7 + join
END

IF ~~ noproblem
SAY @8
  IF ~~ THEN EXIT
END

IF ~~ greeting3
SAY @9
 ++ @6 + fight
 ++ @7 + join
END

IF ~~ fight
SAY @10 
   IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ join
  SAY @11
  IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~NumTimesTalkedTo(0)
!Class(Player1,PALADIN_ALL)~ THEN BEGIN Greeting
SAY @12 
 ++ @13 + join
 ++ @14 + noproblem
END 

/* No Keldorn for you */

IF ~InParty("Keldorn")~ THEN BEGIN bad3
  SAY @15 IF ~~ THEN DO ~SetLeavePartyDialogFile() LeaveParty()~ EXIT
END

IF ~!InParty(Myself)~ THEN BEGIN byebye
  SAY @16
  IF ~~ THEN REPLY @17 DO ~JoinParty()~ EXIT
  IF ~~ THEN REPLY @18 DO ~SetLeavePartyDialogFile()~ EXIT
END
