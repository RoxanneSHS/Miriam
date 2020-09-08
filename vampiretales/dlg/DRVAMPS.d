CHAIN
IF ~Detect("cmgmiriam")
InParty("cmgmiriam")
See("cmgmiriam")
!StateCheck("cmgmiriam",STATE_SLEEPING)
Global("CmgSeeMiriam","GLOBAL",0)~ THEN CMLILITH ConfrontMiriam
@0 /* ~Look at this sisters, one of our kind is with this group of warm bloods.~ */ DO ~SetGlobal("CmgSeeMiriam","GLOBAL",1)~
== CMMARIAL @1 /* ~Ah you said warm bloods. I can feel their warm blood going down my throat now.~ */
== CMGBLOOD @2 /* ~Did you bring us this food sister? We are famished after all.~ */
== CMGMIRIJ @3 /* ~Greetings fellow kindred of us, yet not like us. These warm bloods are our... friends, yes friends, not food to be consumed.~  */
== CMLILITH @4 /* ~There is something odd about the aura of this one sisters. Something strange indeed.~ */
== CMGMIRIJ @5 /* ~Odd? Yes perhaps we are as any entity you greet and know nothing about. Odd like you. We have yet to meet fellow kindred who follow the path of a long dead god. Followers of Kali you are we see, who is a long dead broken diety.~  */
== CMGBLOOD @6 /* ~The great goddess is not broken!~  */
== CMMARIAL @7 /* ~And she is not dead. Such lies coming from one of our own!~   */
== CMLILITH @8 /* ~She is not one of us my sisters. Look closely at her aura. She's a diablerist, one that drains the blood of her own kind!~  */
== CMMARIAL @9 /* ~(Hissing) Kill it! Tear it apart! Let its blood run cold on the floor for the vermin to lick up!~    */
== CMGBLOOD @10 /* ~Such a shame a beautiful creature such is she is the most vile of our kind. I want her pretty head on a pick so I can adore it.~ */
== CMGMIRIJ @11 /* ~All of this talk of blood is getting us excited. You know what they say, the forbidden fruit tastes the sweetest!~  */
== CMLILITH @12 /* ~Disgusting creature! She enjoys killing her own kind!~  */
== CMGMIRIJ @13 /* ~We will make you all one with us. Resistance is futile.~  */
== CMMARIAL @14 /* ~Come sisters lets kill this beast and take her friends as sustenance!~   */
DO ~SetGlobal("CmgKaliHostile","GLOBAL",1) Enemy() Attack("cmgmiriam")~
EXIT