BEGIN BCMGMIRI


IF
~Global("CmGMirChat","GLOBAL",1)
Global("MiriamTalk","LOCALS",2)
GlobalTimerExpired("MiriamTalkTime","GLOBAL")~
THEN BEGIN MirChat1
 SAY @0
 ++ @1 + mirchat1a
 ++ @2 + mirchat1b
 ++ @3 + mirchat1c
END

IF ~~ mirchat1a
SAY @4
 ++ @5 + mirchat1a1
 ++ @6 + mirchat1a2
END

IF ~~ mirchat1a1
SAY @7
= @8
IF ~~ THEN EXIT
END

IF ~~ mirchat1a2
SAY @9
= @8
IF ~~ THEN EXIT
END

IF ~~ mirchat1b
SAY @10
 ++ @11 + mirchat1a
 ++ @12 +mirchat1a
END

IF ~~ mirchat1c
SAY @13
=
@14
IF ~~ THEN EXIT
END

IF
~Global("CmGMirChat","GLOBAL",1)
Global("MiriamTalk","LOCALS",4)
GlobalTimerExpired("MiriamTalkTime","GLOBAL")~
THEN BEGIN MirChat2
 SAY @15
 ++ @16 + mirchat2a
 ++ @17 + mirchat2b
 ++ @18 + mirchat2c
 ++ @19 + mirchat2d
END

IF ~~ mirchat2a
SAY @20
 ++ @21 + mirchat2a1
 ++ @22 + mirchat2a1
 ++ @23 + mirchat2d
END

IF ~~ mirchat2a1
SAY @24
 ++ @25 + mirchat2a1A
 ++ @26 + mirchat2a1B
 ++ @27 + mirchat2a1C
END

IF ~~ mirchat2a1A
SAY @28
=
@29
IF ~~ THEN EXIT
END

IF ~~ mirchat2a1B
SAY @30
=
@31
IF ~~ THEN EXIT
END

IF ~~ mirchat2a1C
SAY @32
=
@33
IF ~~ THEN EXIT
END

IF ~~ mirchat2b
SAY @34
 ++ @35 + mirchat2a1
 ++ @36 + mirchat2a1
 ++ @23 + mirchat2d
END

IF ~~ mirchat2c
SAY @37
 ++ @38 + mirchat2a1
 ++ @36 + mirchat2a1
 ++ @39 + mirchat2d
END

IF ~~ mirchat2d
SAY @40
=
@41
IF ~~ THEN EXIT
END

IF
~Global("CmGMirChat","GLOBAL",1)
Global("MiriamTalk","LOCALS",6)
GlobalTimerExpired("MiriamTalkTime","GLOBAL")~
THEN BEGIN MirChat3
 SAY @42
 ++ @43 + mirchat3a
 ++ @44 + mirchat3b
 ++ @45 + mirchat3c
 ++ @46 + mirchat3a
END

IF ~~ mirchat3a
SAY @47
 ++ @48 + mirchat3c
 ++ @49 + mirchat3d
END

IF ~~ mirchat3b
SAY @50
IF ~~ THEN EXIT
END

IF ~~ mirchat3c
SAY @51
= @52
IF ~~ THEN EXIT
END

IF ~~ mirchat3d
SAY @53
IF ~~ THEN EXIT
END

IF
~Global("CmGMirChat","GLOBAL",1)
Global("MiriamTalk","LOCALS",8)
GlobalTimerExpired("MiriamTalkTime","GLOBAL")~
THEN BEGIN MirChat4
 SAY @54
 ++ @55 + mirchat4a
 ++ @56 + mirchat4b
 ++ @57 + mirchat4c
 ++ @58 + mirchat4d
END

IF ~~ mirchat4a
SAY @59
IF ~~ THEN EXIT
END

IF ~~ mirchat4b
SAY @60
 ++ @57 + mirchat4c
 ++ @61 + mirchat4a
END

IF ~~ mirchat4c
SAY @62
 ++ @63 + mirchat4c1
 ++ @64 + mirchat4c2
END

IF ~~ mirchat4c1
SAY @65
 ++ @66 + mirchat4c3
 ++ @67 + mirchat4c3
END

IF ~~ mirchat4c2
SAY @68
 ++ @66 + mirchat4c3
 ++ @67 + mirchat4c3
END

IF ~~ mirchat4c3
SAY @69
= @70
= @71
IF ~~ THEN DO ~SetGlobal("MiriamPastRevelation","GLOBAL",1)~
EXIT
END

IF ~~ mirchat4d
SAY @72
= @73
IF ~~ THEN EXIT
END

IF
~Global("CmGMirChat","GLOBAL",1)
Global("MiriamTalk","LOCALS",10)
GlobalTimerExpired("MiriamTalkTime","GLOBAL")~
THEN BEGIN MirChat5
 SAY @74
 ++ @75 + mirchat5a
 ++ @76 + mirchat5b
 ++ @77 + mirchat5c
 ++ @78 + mirchat5a
END

IF ~~ mirchat5a
SAY @79
 ++ @80 + mirchat5d
 ++ @81 + mirchat5b
 ++ @82 + mirchat5d
END

IF ~~ mirchat5b
SAY @83
IF ~~ THEN EXIT
END

IF ~~ mirchat5c
SAY @84
 ++ @80 + mirchat5d
 ++ @81 + mirchat5b
 ++ @82 + mirchat5d
END

IF ~~ mirchat5d
SAY @85
= @86
= @87
= @88
IF ~~ THEN EXIT
END


/* Party banters */

CHAIN
IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",STATE_SLEEPING)
Global("MiriamAerie1","LOCALS",0)~ THEN BCMGMIRI MirAer1
@89 DO ~SetGlobal("MiriamAerie1","LOCALS",1)~
== BAERIE @90
== BCMGMIRI @91
== BAERIE @92
== BCMGMIRI @93
== BAERIE @94
== BCMGMIRI @95
EXIT

CHAIN
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",STATE_SLEEPING)
Global("MiriamAnomen1","LOCALS",0)
Global("AnomenIsKnight","GLOBAL",0)
Global("AnomenIsNotKnight","GLOBAL",0)~ THEN BCMGMIRI MirAno1
@96 DO ~SetGlobal("MiriamAnomen1","LOCALS",1)~
== BANOMEN @97
== BCMGMIRI @98
== BANOMEN @99
== BCMGMIRI @100
== BANOMEN @101
== BCMGMIRI @102
EXIT

CHAIN
IF ~InParty("cmgmiriam")
See("cmgmiriam")
!StateCheck("cmgmiriam",STATE_SLEEPING)
Global("MiriamCernd1","LOCALS",0)~ THEN BCERND MirCer1
@103 DO ~SetGlobal("MiriamCernd1","LOCALS",1)~
== BCMGMIRI @104
= @105
== BCERND @106
== BCMGMIRI @107
== BCERND @108
== BCMGMIRI @109
== BCERND @110
EXIT

CHAIN IF ~InParty("HaerDalis")
See("HaerDalis")
!StateCheck("HaerDalis",STATE_SLEEPING)
Global("MiriamHaer1","LOCALS",0)~ THEN BCMGMIRI MirHar1
@111 DO ~SetGlobal("MiriamHaer1","LOCALS",1)~
== BHAERDA @112
== BCMGMIRI @113
== BHAERDA @114
== BCMGMIRI @115
== BHAERDA @116
== BCMGMIRI @117
= @118
EXIT

CHAIN
IF ~InParty("cmgmiriam")
See("cmgmiriam")
!StateCheck("cmgmiriam",STATE_SLEEPING)
Global("MiriamJaheira1","LOCALS",0)~ THEN BJAHEIR MirJah1
@119 DO ~SetGlobal("MiriamJaheira1","LOCALS",1)~
== BCMGMIRI @120
== BJAHEIR @121
== BCMGMIRI @122
== BJAHEIR @123
== BCMGMIRI @124
== BJAHEIR @125
== BCMGMIRI @126
EXIT

CHAIN
IF ~InParty("cmgmiriam")
See("cmgmiriam")
!StateCheck("cmgmiriam",STATE_SLEEPING)
Global("MiriamJan1","LOCALS",0)~ THEN BJAN MirJan1
@127 DO ~SetGlobal("MiriamJan1","LOCALS",1)~
== BCMGMIRI @128
== BJAN @129
== BCMGMIRI @130
= @131
== BJAN @132
== BCMGMIRI @133
== BJAN @134
== BCMGMIRI @135
EXIT

CHAIN
IF ~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",STATE_SLEEPING)
Global("MiriamKorgan1","LOCALS",0)~ THEN BCMGMIRI MirKor1
@136 DO ~SetGlobal("MiriamKorgan1","LOCALS",1)~
== BKORGAN @137
== BCMGMIRI @138
== BKORGAN @139
== BCMGMIRI @140
= @141
== BKORGAN @142
== BCMGMIRI @143
EXIT

CHAIN
IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",STATE_SLEEPING)
Global("MiriamMazzy1","LOCALS",0)~ THEN BCMGMIRI MirMaz1
@144
DO ~SetGlobal("MiriamMazzy1","LOCALS",1)~
== BMAZZY @145
== BCMGMIRI @146
== BMAZZY @147
= @148
== BCMGMIRI @149
= @150
== BMAZZY @151
== BCMGMIRI @152
= @153
EXIT

CHAIN
IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",STATE_SLEEPING)
Global("MiriamMinsc1","LOCALS",0)~ THEN BCMGMIRI MirMin1
@154
DO ~SetGlobal("MiriamMinsc1","LOCALS",1)~
== BMINSC @155
== BCMGMIRI @156
== BMINSC @157
== BCMGMIRI @158
== BMINSC @159
== BCMGMIRI @160
EXIT

CHAIN
IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",STATE_SLEEPING)
Global("MiriamPastRevelation","GLOBAL",1)
Global("MiriamNalia1","LOCALS",0)~ THEN BCMGMIRI MirNal1
@161
DO ~SetGlobal("MiriamNalia1","LOCALS",1)~
== BNALIA @162
== BCMGMIRI @163
== BNALIA @164
== BCMGMIRI @165
== BNALIA @166
== BCMGMIRI @167
= @168
EXIT

CHAIN
IF ~InParty("cmgmiriam")
See("cmgmiriam")
!StateCheck("cmgmiriam",STATE_SLEEPING)
Global("MiriamValygar1","LOCALS",0)~ THEN BVALYGA MirVal1
@169
DO ~SetGlobal("MiriamValygar1","LOCALS",1)~
== BCMGMIRI @170
== BVALYGA @171
== BCMGMIRI @172
= @173
EXIT

CHAIN
IF ~InParty("cmgmiriam")
See("cmgmiriam")
!StateCheck("cmgmiriam",STATE_SLEEPING)
Global("MiriamViconia1","GLOBAL",0)~ THEN BVICONI MirVic1
@174
DO ~SetGlobal("MiriamViconia1","GLOBAL",1)~
== BCMGMIRI @175
== BVICONI @176
== BCMGMIRI @177
= @178
== BVICONI @179
== BCMGMIRI @180
= @181
== BVICONI @182
EXIT

CHAIN
IF ~InParty("cmgmiriam")
See("cmgmiriam")
!StateCheck("cmgmiriam",STATE_SLEEPING)
Global("MiriamYoshimo1","LOCALS",0)~ THEN BYOSHIM MirYosh1
@183
DO ~SetGlobal("MiriamYoshimo1","LOCALS",1)~
== BCMGMIRI @184
== BYOSHIM @185
== BCMGMIRI @186
== BYOSHIM @187
== BCMGMIRI @188
== BYOSHIM @189
= @190
== BCMGMIRI @191
= @192
== BYOSHIM @193
== BCMGMIRI @194
= @195
EXIT
