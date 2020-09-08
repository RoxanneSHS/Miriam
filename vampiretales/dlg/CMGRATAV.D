BEGIN ~CMGRATAV~

IF ~True()
~ THEN BEGIN 0 
  SAY @1 
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
END

IF ~~ THEN BEGIN 1 
  SAY @6 
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 
  SAY @7 
  IF ~~ THEN DO ~StartStore("cmgstr01",LastTalkedToBy(Myself))
~ EXIT
END

IF ~~ THEN BEGIN 3 
  SAY @8 
  IF ~~ THEN DO ~StartStore("cmgstr02",LastTalkedToBy(Myself))
~ EXIT
END

IF ~~ THEN BEGIN 4 
  SAY @9 
  IF ~~ THEN REPLY @10 GOTO 5
  IF ~~ THEN REPLY @11 GOTO 1
END

IF ~~ THEN BEGIN 5 
  SAY @12 
  IF ~PartyHasItem("sw1h31")
~ THEN REPLY @13 GOTO 6
  IF ~PartyHasItem("clck15")
~ THEN REPLY @14 GOTO 7
  IF ~PartyHasItem("amul16")
~ THEN REPLY @15 GOTO 8
  IF ~PartyHasItem("wa2s1h")
~ THEN REPLY @16 GOTO 9
  IF ~PartyHasItem("helm07")
~ THEN REPLY @17 GOTO 10
  IF ~PartyHasItem("wa2plat")
~ THEN REPLY @18 GOTO 11
  IF ~PartyHasItem("wa2shiel")
~ THEN REPLY @19 GOTO 12
  IF ~PartyHasItem("clck05")
~ THEN REPLY @20 GOTO 13
  IF ~PartyHasItem("sw1h40")
~ THEN REPLY @21 GOTO 14
  IF ~~ THEN REPLY @11 GOTO 1
END

IF ~~ THEN BEGIN 6 
  SAY @22 
  IF ~~ THEN REPLY @23 GOTO 1
  IF ~PartyHasItem("cmgforg1")
PartyHasItem("sw1h31")
PartyGoldGT(8999)
~ THEN REPLY @24 DO ~TakePartyGold(9000)
DestroyGold(9000)
TakePartyItemNum("cmgforg1",1)
DestroyItem("cmgforg1")
TakePartyItemNum("sw1h31",1)
DestroyItem("sw1h31")
GiveItemCreate("cmgforg2",Player1,1,1,1)
CreateVisualEffect("spcallli",[1533.745])
~ EXIT
END

IF ~~ THEN BEGIN 7 
  SAY @25 
  IF ~~ THEN REPLY @23 GOTO 1
  IF ~PartyHasItem("clck02")
PartyHasItem("clck15")
PartyGoldGT(9999)
~ THEN REPLY @24 DO ~TakePartyGold(10000)
DestroyGold(10000)
TakePartyItemNum("clck02",1)
DestroyItem("clck02")
TakePartyItemNum("clck15",1)
DestroyItem("clck15")
GiveItemCreate("cmgforg3",Player1,1,1,1)
CreateVisualEffect("spcrtwpn",[1533.745])
~ EXIT
END

IF ~~ THEN BEGIN 8 
  SAY @26 
  IF ~~ THEN REPLY @23 GOTO 1
  IF ~PartyHasItem("amul16")
PartyHasItem("miscbv")
PartyGoldGT(9999)
~ THEN REPLY @24 DO ~TakePartyGold(10000)
DestroyGold(10000)
TakePartyItemNum("amul16",1)
DestroyItem("amul16")
TakePartyItemNum("miscbv",1)
DestroyItem("miscbv")
GiveItemCreate("cmgforg4",Player1,1,1,1)
CreateVisualEffect("spcrtwpn",[1533.745])
~ EXIT
END

IF ~~ THEN BEGIN 9 
  SAY @27 
  IF ~~ THEN REPLY @23 GOTO 1
  IF ~PartyHasItem("wa2s1h")
PartyHasItem("ring06")
PartyHasItem("misc42")
PartyGoldGT(9999)
~ THEN REPLY @24 DO ~TakePartyGold(10000)
DestroyGold(10000)
TakePartyItemNum("wa2s1h",1)
DestroyItem("wa2s1h")
TakePartyItemNum("ring06",1)
DestroyItem("ring06")
TakePartyItemNum("misc42",1)
DestroyItem("misc42")
GiveItemCreate("cmgforg5",Player1,1,1,1)
CreateVisualEffect("spcrtwpn",[1533.745])
~ EXIT
END

IF ~~ THEN BEGIN 10 
  SAY @28 
  IF ~~ THEN REPLY @23 GOTO 1
  IF ~PartyHasItem("helm07")
PartyHasItem("potn52")
PartyHasItem("restore")
PartyGoldGT(9999)
~ THEN REPLY @24 DO ~TakePartyGold(10000)
DestroyGold(10000)
TakePartyItemNum("helm07",1)
DestroyItem("helm07")
TakePartyItemNum("potn52",1)
DestroyItem("potn52")
TakePartyItemNum("restore",1)
DestroyItem("restore")
GiveItemCreate("cmgforg6",Player1,1,1,1)
CreateVisualEffect("spcrtwpn",[1533.745])
~ EXIT
END

IF ~~ THEN BEGIN 11 
  SAY @29 
  IF ~~ THEN REPLY @23 GOTO 1
  IF ~PartyHasItem("wa2plat")
PartyHasItem("wand05")
PartyHasItem("scrl06")
PartyGoldGT(8999)
~ THEN REPLY @24 DO ~TakePartyGold(9000)
DestroyGold(9000)
TakePartyItemNum("wa2plat",1)
DestroyItem("wa2plat")
TakePartyItemNum("wand05",1)
DestroyItem("wand05")
TakePartyItemNum("scrl06",1)
DestroyItem("scrl06")
GiveItemCreate("cmgforg7",Player1,1,1,1)
CreateVisualEffect("spcrtwpn",[1533.745])
~ EXIT
END

IF ~~ THEN BEGIN 12 
  SAY @30 
  IF ~~ THEN REPLY @23 GOTO 1
  IF ~PartyHasItem("wa2shiel")
PartyHasItem("potn07")
PartyGoldGT(9999)
~ THEN REPLY @24 DO ~TakePartyGold(10000)
DestroyGold(10000)
TakePartyItemNum("wa2shiel",1)
DestroyItem("wa2shiel")
TakePartyItemNum("potn07",1)
DestroyItem("potn07")
GiveItemCreate("cmgforg8",Player1,1,1,1)
CreateVisualEffect("spcrtwpn",[1533.745])
~ EXIT
END

IF ~~ THEN BEGIN 13 
  SAY @31 
  IF ~~ THEN REPLY @23 GOTO 1
  IF ~PartyHasItem("clck05")
PartyHasItem("plat10")
PartyGoldGT(10999)
~ THEN REPLY @24 DO ~TakePartyGold(11000)
DestroyGold(11000)
TakePartyItemNum("clck05",1)
DestroyItem("clck05")
TakePartyItemNum("plat10",1)
DestroyItem("plat10")
GiveItemCreate("cmgforg9",Player1,1,1,1)
CreateVisualEffect("spcrtwpn",[1533.745])
~ EXIT
END

IF ~~ THEN BEGIN 14 
  SAY @32 
  IF ~~ THEN REPLY @33 GOTO 1
  IF ~PartyHasItem("sw1h40")
~ THEN REPLY @34 DO ~TakePartyItemNum("sw1h40",1)
DestroyItem("sw1h40")
GiveItemCreate("cmgfor10",Player1,1,1,1)
CreateVisualEffect("spcrtwpn",[1533.745])
~ EXIT
END
