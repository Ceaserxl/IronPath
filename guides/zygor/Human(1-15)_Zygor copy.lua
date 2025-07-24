ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Human Starter (1-15)",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."Elwynn Forest",
condition_suggested=function() return raceclass('Human') and level <= 12 end,
condition_suggested_race=function() return raceclass('Human') end,
condition_suggested_exclusive=true,
},[[
step
_Destroy This Item:_
|tip You won't use it in the Northshire Valley starter area.
|tip You will get another one before you need to use it.
|tip We are doing this to gain an extra bag slot.
trash Hearthstone##6948
|only if not Warlock
step
kill 2 Young Wolf##299 |goto Elwynn Forest 46.38,38.58 |q 33 |future
|tip Loot them for 10 copper worth of vendor items.
|tip This will let you train a spell early.
|tip This substantially increases your leveling speed and is worth the detour.
You can find more around: |notinsticky
[45.82,44.02]
[50.16,45.83]
[52.06,40.29]
|only if (Warrior or Warlock) and level <= 2
step
talk Godric Rothgar##1213
|tip Acquire 10 copper.
|tip You can sell some of your gear if you are short, it's not important at this level.
Sell your trash |vendor Godric Rothgar##1213 |q 33 |future |goto Elwynn Forest/0 47.69,41.42
|only if Warrior or Warlock
step
talk Deputy Willem##823
accept A Threat Within##783 |goto Elwynn Forest 48.17,42.95
step
talk Drusilla La Salle##459
|tip Outside, next to the building.
accept The Stolen Tome##1598 |goto Elwynn Forest 49.87,42.65
learnspell Immolate##348 |goto Elwynn Forest 49.87,42.65
|only if Human Warlock
step
click Stolen Books
|tip We are going to get our imp pet early.
|tip This is HIGHLY recommended as it doubles your leveling speed.
|tip At level 1 you don't have much to lose, but you will get another chance later if you don't wish to risk this. |only if hardcore
|tip While standing inside the tent, zoom your camera out and click the small pile of books in the junk to the right of the tent opening.
|tip There is a video linked below if you need an example.
Click Here To Copy The Video Link |popuptext youtu.be/SEATloEvXAM
collect Powers of the Void##6785 |q 1598/1 |goto Elwynn Forest 56.74,43.77
|only if Human Warlock
step
talk Drusilla La Salle##459
use Hearthstone##6948
|tip Hearth back to your spawn.
turnin The Stolen Tome##1598 |goto Elwynn Forest 49.87,42.65
|only if Human Warlock
step
Summon Your Imp |complete warlockpet("Imp") |q 18 |future
|tip Use the "Summon Imp" ability.
|only if Human Warlock and not warlockpet("Imp")
step
_Destroy This Item:_
|tip You won't use it again in the Northshire Valley starter area.
|tip You will get another one before you need to use it.
|tip We are doing this to gain an extra bag slot.
trash Hearthstone##6948	|goto Elwynn Forest 48.31,41.99
|only if Warlock
step
Enter the building |goto Elwynn Forest 48.31,41.99 < 10 |walk
talk Marshal McBride##197
|tip Inside the building.
turnin A Threat Within##783 |goto Elwynn Forest 48.92,41.61
accept Kobold Camp Cleanup##7 |goto Elwynn Forest 48.92,41.61
step
talk Llane Beshere##911
|tip Inside the building, on the ground floor.
|tip You will need 10 copper to learn this spell.
learnspell Battle Shout##6673 |goto Elwynn Forest 50.24,42.28
|only if Warrior
step
talk Deputy Willem##823
accept Eagan Peltskinner##5261 |goto Elwynn Forest 48.17,42.95
step
talk Eagan Peltskinner##196
|tip Outside the building.
turnin Eagan Peltskinner##5261 |goto Elwynn Forest 48.94,40.16
accept Wolves Across the Border##33 |goto Elwynn Forest 48.94,40.16
step
Kill Wolf enemies around this area
collect 8 Tough Wolf Meat##750 |q 33/1 |goto Elwynn Forest 46.38,38.58
You can find more around: |notinsticky
[45.82,44.02]
[50.16,45.83]
[52.06,40.29]
step
kill 10 Kobold Vermin##6 |q 7/1 |goto Elwynn Forest 47.49,36.15
You can find more around [51.18,37.25]
step
talk Eagan Peltskinner##196
turnin Wolves Across the Border##33 |goto Elwynn Forest 48.94,40.16
step
Kill enemies around this area
ding 3 |goto Elwynn Forest 47.49,36.15
You can find more around [51.18,37.25]
step
talk Godric Rothgar##1213
Sell your trash |vendor Godric Rothgar##1213 |q 7 |goto Elwynn Forest/0 47.69,41.42
step
Enter the building |goto Elwynn Forest 48.31,41.99 < 10 |walk
talk Marshal McBride##197
|tip Inside the building.
turnin Kobold Camp Cleanup##7 |goto Elwynn Forest 48.92,41.61
accept Investigate Echo Ridge##15 |goto Elwynn Forest 48.92,41.61
accept Glyphic Letter##3104 |goto Elwynn Forest 48.92,41.61		|only Human Mage
accept Simple Letter##3100 |goto Elwynn Forest 48.92,41.61		|only Human Warrior
accept Tainted Letter##3105 |goto Elwynn Forest 48.92,41.61		|only Human Warlock
accept Encrypted Letter##3102 |goto Elwynn Forest 48.92,41.61		|only Human Rogue
accept Hallowed Letter##3103 |goto Elwynn Forest 48.92,41.61		|only Human Priest
accept Consecrated Letter##3101 |goto Elwynn Forest 48.92,41.61	|only Human Paladin
step
talk Llane Beshere##911
|tip Inside the building, on the ground floor.
turnin Simple Letter##3100 |goto Elwynn Forest 50.24,42.28
accept The Lost Rune##77616 |goto Elwynn Forest 50.24,42.28 |only if ZGV.IsClassicSoD
|only if Human Warrior and ZGV.IsClassicSoD
step
talk Brother Sammuel##925
|tip Inside the building, on the ground floor.
turnin Consecrated Letter##3101 |goto Elwynn Forest 50.43,42.12
accept Relics of the Light##77617 |goto Elwynn Forest 50.43,42.12 |only if ZGV.IsClassicSoD
|only if Human Paladin and ZGV.IsClassicSoD
step
talk Priestess Anetta##375
|tip Inside the building, on the ground floor.
turnin Hallowed Letter##3103 |goto Elwynn Forest 49.81,39.49
accept Meditation on the Light##77619 |goto Elwynn Forest 49.81,39.49 |only if ZGV.IsClassicSoD
|only if Human Priest and ZGV.IsClassicSoD
step
Gain the Meditation on the Light Buff |complete hasbuff(410935) |goto Elwynn Forest 49.81,39.49 |q 77619
|tip Use the "/kneel" emote while standing inside the building.
|tip You will gain a buff that allows you to learn Priest runes.
|only if Human Priest and ZGV.IsClassicSoD
step
Kill Kobold enemies around this area
|tip Inside the mine.
collect Memory of a Troubled Acolyte##205951 |goto Elwynn Forest 47.66,31.86 |q 77619
|only if Human Priest and ZGV.IsClassicSoD
step
use the Memory of a Troubled Acolyte##205951
Learn Spell: Engrave Gloves - Penance |q 77619/1
|only if Human Priest and ZGV.IsClassicSoD
step
Enter the building |goto Elwynn Forest 48.31,41.99 < 10 |walk
talk Priestess Anetta##375
|tip Inside the building, on the ground floor.
turnin Meditation on the Light##77619 |goto Elwynn Forest 49.81,39.49
|only if Human Priest and ZGV.IsClassicSoD
step
talk Khelden Bremen##198
|tip Upstairs inside the building, on the middle floor.
turnin Glyphic Letter##3104 |goto Elwynn Forest 49.66,39.40
learnspell Arcane Intellect##1459 |goto Elwynn Forest 49.66,39.40
learnspell Conjure Water##5504 |goto Elwynn Forest 49.66,39.40
learnspell Frostbolt##116 |goto Elwynn Forest 49.66,39.40
accept Spell Research##77620 |goto Elwynn Forest 49.66,39.40 |only if ZGV.IsClassicSoD
|only if Human Mage and ZGV.IsClassicSoD
step
Leave the building |goto Elwynn Forest 48.30,42.00 < 10 |walk |only if _G.IsIndoors()
kill 10 Kobold Worker##257 |q 15/1 |goto Elwynn Forest 47.49,36.15
You can find more around [Elwynn Forest 51.18,37.25]
step
Enter the mine |goto Elwynn Forest 47.67,31.88 < 15 |walk
click Kobold Stashbox##397987
|tip It looks like a wooden chest on the ground.
|tip Inside the mine.
collect Rune of Victory Rush##204806 |goto Elwynn Forest 50.63,27.27 |q 77616
|only if Human Warrior and ZGV.IsClassicSoD
step
use the Rune of Victory Rush##204806
Learn: Engrave Gloves - Victory Rush |q 77616/1
|only if Human Warrior and ZGV.IsClassicSoD
step
Kill enemies around this area
|tip Getting this far into level 3 will allow you to reach level 4 when you turn in a quest soon.
ding 3,1150 |goto Elwynn Forest 47.49,36.15
You can find more around [51.18,37.25]
step
talk Godric Rothgar##1213
|tip You will need 1-2 silver for spells.
Sell your trash |vendor Godric Rothgar##1213 |q 15 |goto Elwynn Forest/0 47.69,41.42
step
Enter the building |goto Elwynn Forest 48.28,42.02 < 10 |walk
talk Marshal McBride##197
|tip Inside the building.
turnin Investigate Echo Ridge##15 |goto Elwynn Forest 48.93,41.61
accept Skirmish at Echo Ridge##21 |goto Elwynn Forest 48.93,41.61
step
talk Llane Beshere##911
|tip Inside the building, on the ground floor.
learnspell Rend##772 |goto Elwynn Forest 50.24,42.28
learnspell Charge##100 |goto Elwynn Forest 50.24,42.28
turnin Simple Letter##3100 |goto Elwynn Forest 50.24,42.28
|only if Human Warrior
step
talk Brother Sammuel##925
|tip Inside the building, on the ground floor.
learnspell Judgement##20271 |goto Elwynn Forest 50.43,42.12
learnspell Blessing of Might##19740 |goto Elwynn Forest 50.43,42.12
learnspell Devotion Aura##465 |goto Elwynn Forest 50.43,42.12
turnin Consecrated Letter##3101 |goto Elwynn Forest 50.43,42.12
|only if Human Paladin
step
talk Priestess Anetta##375
|tip Inside the building, on the ground floor.
learnspell Shadow Word: Pain##589 |goto Elwynn Forest 49.81,39.49
learnspell Power Word: Fortitude##1243 |goto Elwynn Forest 49.81,39.49
turnin Hallowed Letter##3103 |goto Elwynn Forest 49.81,39.49
|only if Human Priest
step
talk Llane Beshere##911
|tip Inside the building.
turnin The Lost Rune##77616 |goto Elwynn Forest 50.24,42.28
|only if Human Warrior and ZGV.IsClassicSoD
step
talk Khelden Bremen##198
|tip Upstairs inside the building, on the middle floor.
turnin Glyphic Letter##3104 |goto Elwynn Forest 49.66,39.40
learnspell Arcane Intellect##1459 |goto Elwynn Forest 49.66,39.40
learnspell Conjure Water##5504 |goto Elwynn Forest 49.66,39.40
learnspell Frostbolt##116 |goto Elwynn Forest 49.66,39.40
|only if Human Mage
step
talk Deputy Willem##823
|tip Outside, in front of the building.
accept Brotherhood of Thieves##18 |goto Elwynn Forest 48.17,42.93
stickystart "Collect_Red_Burlap_Bandanas"
step
talk Drusilla La Salle##459
|tip Outside, next to the building.
turnin Tainted Letter##3105 |goto Elwynn Forest 49.87,42.65
accept The Stolen Tome##1598 |goto Elwynn Forest 49.87,42.65
accept Stolen Power##77621 |goto Elwynn Forest 49.87,42.65 |only if ZGV.IsClassicSoD
learnspell Corruption##172 |goto Elwynn Forest 49.87,42.65
|only if Human Warlock
step
click Stolen Books
|tip Try to pull enemies one at a time when possible.
|tip While standing inside the tent, zoom your camera out and click the small pile of books in the junk to the right of the tent opening.
collect Powers of the Void##6785 |q 1598/1 |goto Elwynn Forest 56.74,43.77
|only if Human Warlock
step
talk Drusilla La Salle##459
|tip Outside, next to the building.
turnin The Stolen Tome##1598 |goto Elwynn Forest 49.87,42.65
|only if Human Warlock
step
Summon Your Imp |complete warlockpet("Imp") |q 18 |future
|tip Use the "Summon Imp" ability.
|only if Human Warlock and not warlockpet("Imp")
step
click Defias Stashbox##387477
collect Rune of Haunting##205230 |goto Elwynn Forest 52.54,51.92 |q 77621
|only if Human Warlock and ZGV.IsClassicSoD
step
use the Rune of Haunting##205230
Learn Engrave Gloves - Haunt |q 77621/1
|only if Human Warlock and ZGV.IsClassicSoD
step
talk Drusilla La Salle##459
|tip Outside, next to the building.
turnin Stolen Power##77621 |goto Elwynn Forest 49.87,42.65
|only if Human Warlock and ZGV.IsClassicSoD
step
_NOTE:_
Learn the Judgement Ability
|tip Make sure to learn the Judgement ability from your class trainer.
|tip You will need it to get a rune soon.
Click Here to Continue |confirm |q 77617
|only if Human Paladin and ZGV.IsClassicSoD
step
kill Defias Thug##38+
collect Libram of Judgement##205420 |goto Elwynn Forest 56.09,42.35 |q 77617
You can find more around [Elwynn Forest 53.20,50.30]
|only if Human Paladin and ZGV.IsClassicSoD
step
Equip the Libram of Judgement |equipped Libram of Judgement##205420 |q 77617
|only if Human Paladin and ZGV.IsClassicSoD
step
kill Defias Thug##38+
|tip Use your "Seal of Righteousness" ability, and then use your "Judgement" ability on them.
|tip You will gain a buff.
|tip Repeat this process until you have 10 stacks of the Building Inspiration buff.
Gain the Inspired Buff |havebuff Inspired##408828 |goto Elwynn Forest 56.09,42.35 |q 77617
You can find more around [53.20,50.30]
|only if Human Paladin and ZGV.IsClassicSoD
step
use the Libram of Judgement##205420
Learn the Spell: Engrave Gloves - Crusader Strike |q 77617/1
|only if Human Paladin and ZGV.IsClassicSoD
step
talk Jorik Kerridan##915
|tip Outside, in the stables behind the the building.
turnin Encrypted Letter##3102 |goto Elwynn Forest 50.31,39.92
accept Thrice Stolen##77618 |goto Elwynn Forest 50.31,39.92 |only if ZGV.IsClassicSoD
|only if Human Rogue
step
click Defias Stashbox##387477
collect Rune of Shadowstrike##204795 |goto Elwynn Forest 52.54,51.92 |q 77618
|only if Human Rogue and ZGV.IsClassicSoD
step
use the Rune of Shadowstrike##204795
Learn: Engrave Gloves - Shadowstrike |q 77618/1
|only if Human Rogue and ZGV.IsClassicSoD
step
kill Defias Thug##38+
|tip They look like humans.
collect Spell Notes: CALE ENCI##203751 |goto Elwynn Forest 54.89,42.98 |q 77620
You can find more around [Elwynn Forest 54.13,48.90]
|only if Human Mage and ZGV.IsClassicSoD
step
use the Spell Notes: CALE ENCI##203751
Learn: Engrave Gloves - Ice Lance |q 77620/1
|only if Human Mage and ZGV.IsClassicSoD
step
label "Collect_Red_Burlap_Bandanas"
kill Defias Thug##38+ |notinsticky
collect 12 Red Burlap Bandana##752 |q 18/1 |goto Elwynn Forest 56.09,42.35
You can find more around [Elwynn Forest 53.20,50.30]
step
talk Deputy Willem##823
|tip Outside, in front of the building.
turnin Brotherhood of Thieves##18 |goto Elwynn Forest 48.17,42.94
accept Bounty on Garrick Padfoot##6 |goto Elwynn Forest 48.17,42.94
accept Milly Osworth##3903 |goto Elwynn Forest 48.17,42.94
step
talk Godric Rothgar##1213
Sell your trash |vendor Godric Rothgar##1213 |q 6 |goto Elwynn Forest/0 47.69,41.42
step
Enter the building |goto Elwynn Forest 48.30,42.00 < 10 |walk
talk Brother Sammuel##925
|tip Inside the building, on the ground floor.
turnin Relics of the Light##77617 |goto Elwynn Forest 50.43,42.12
|only if Human Paladin and ZGV.IsClassicSoD
step
Enter the building |goto Elwynn Forest 48.31,41.99 < 10 |walk
talk Khelden Bremen##198
|tip Upstairs inside the building.
turnin Spell Research##77620 |goto Elwynn Forest 49.66,39.40
|only if Human Mage and ZGV.IsClassicSoD
step
kill 12 Kobold Laborer##80 |q 21/1 |goto Elwynn Forest 47.67,31.86
|tip Inside the mine.
step
Kill enemies around this area
|tip Inside and outside the mine.
ding 5 |goto Elwynn Forest 47.67,31.86
step
Leave the mine |goto Elwynn Forest 47.66,31.89 < 15 |walk |only if subzone("Echo Ridge Mine") and _G.IsIndoors()
talk Milly Osworth##9296
|tip Outside, behind the building.
turnin Milly Osworth##3903 |goto Elwynn Forest 50.69,39.35
accept Milly's Harvest##3904 |goto Elwynn Forest 50.69,39.35 |only if Mage or Warlock or Priest
step
talk Jorik Kerridan##915
|tip Inside the building.
turnin Thrice Stolen##77618 |goto Elwynn Forest 50.31,39.92
|only if Human Rogue and ZGV.IsClassicSoD
step
kill Garrick Padfoot##103
collect Garrick's Head##182 |q 6/1 |goto Elwynn Forest 57.51,48.25
step
click Milly's Harvest+
|tip They look like wooden buckets on the ground around this area.
collect 8 Milly's Harvest##11119 |q 3904/1 |goto Elwynn Forest 53.88,48.55
|only if Mage or Warlock or Priest
step
Kill enemies around this area
|tip Getting this far into level 5 will allow you to reach level 6 when you turn in quests soon.
|tip You need to be level 6 to be able to learn your class abilities before leaving this starter area.
ding 5,1500 |goto Elwynn Forest 56.09,42.35
You can find more around [53.20,50.30]
|only if not Mage or Warlock or Priest
step
Kill enemies around this area
|tip Getting this far into level 5 will allow you to reach level 6 when you turn in quests soon.
|tip You need to be level 6 to be able to learn your class abilities before leaving this starter area.
ding 5,1100 |goto Elwynn Forest 56.09,42.35
You can find more around [53.20,50.30]
|only if Mage or Warlock or Priest
step
talk Milly Osworth##9296
turnin Milly's Harvest##3904 |goto Elwynn Forest 50.69,39.35
accept Grape Manifest##3905 |goto Elwynn Forest 50.69,39.35
|only if Mage or Warlock or Priest
step
talk Deputy Willem##823
|tip Outside, in front of the building.
turnin Bounty on Garrick Padfoot##6 |goto Elwynn Forest 48.17,42.94
step
talk Godric Rothgar##1213
Sell your trash |vendor Godric Rothgar##1213 |q 21 |goto Elwynn Forest/0 47.69,41.42
step
Enter the building |goto Elwynn Forest 48.27,42.01 < 10 |walk
talk Marshal McBride##197
|tip Inside the building.
turnin Skirmish at Echo Ridge##21 |goto Elwynn Forest 48.92,41.61
accept Report to Goldshire##54 |goto Elwynn Forest 48.92,41.61
step
Run up the stairs |goto Elwynn Forest 49.56,41.61 < 7 |walk
talk Brother Neals##952
|tip Upstairs inside the building, all the way at the top.
turnin Grape Manifest##3905 |goto Elwynn Forest 49.47,41.58
|only if Mage or Warlock or Priest
step
talk Priestess Anetta##375
|tip Inside the building, on the ground floor.
accept In Favor of the Light##5623 |goto Elwynn Forest 49.81,39.49
|only if Human Priest
step
Follow the road |goto Elwynn Forest 47.05,47.69 < 20 |only if walking
talk Falkhaan Isenstrider##6774
accept Rest and Relaxation##2158 |goto Elwynn Forest 45.56,47.74
step
talk Marshal Dughan##240
turnin Report to Goldshire##54 |goto Elwynn Forest 42.11,65.93
accept The Fargodeep Mine##62 |goto Elwynn Forest 42.11,65.93
step
Enter the building |goto Elwynn Forest 42.95,65.65 < 10 |walk
talk William Pestle##253
|tip Inside the building.
accept Kobold Candles##60 |goto Elwynn Forest 43.32,65.70
step
talk Innkeeper Farley##295
|tip Inside the building.
turnin Rest and Relaxation##2158 |goto Elwynn Forest 43.77,65.81
step
talk Brog Hamfist##151
|tip Inside the building.
|tip If you can afford it, and you need more bag space, buy bags.
Visit the Vendor |vendor Brog Hamfist##151 |goto Elwynn Forest 43.96,65.92 |q 60
step
talk Maximillian Crowe##906
|tip Downstairs in the inn.
|tip Enter from the kitchen.
learnspell Life Tap##1454 |goto Elwynn Forest/0 44.39,66.23
learnspell Shadow Bolt##695 |goto Elwynn Forest/0 44.39,66.23
|only if Warlock and level >= 6
step
Summon Your Imp |complete warlockpet("Imp")
|tip Use the "Summon Imp" ability.
|tip You need to have your Imp active in order to complete the next step.
|only if Human Warlock and not warlockpet("Imp")
step
talk Cylina Darkheart##6374
|tip Downstairs inside the inn.
buy Grimoire of Blood Pact (Rank 1)##16321 |n
|tip If you can't afford it, skip this step and make sure to buy it later.
use the Grimoire of Blood Pact (Rank 1)##16321
Teach Your Imp Blood Pact (Rank 1) |learnpetspell Blood Pact##6307 |goto Elwynn Forest 44.40,65.99
|only if Warlock
step
talk Brog Hamfist##151
|tip Inside the building.
buy Balanced Throwing Dagger##25872 |n
|tip If you can afford it this is very important for hard quests later on.
Visit the Vendor |vendor Brog Hamfist##151 |goto Elwynn Forest 43.96,65.92 |q 60
|only if Rogue or Warrior
step
talk Michelle Belle##2329
|tip Upstairs inside the building.
|tip This requires 1 silver, skip this step if you are tight on money.
|tip You will need up to 2 silver to train level 6 spells. |only if not Warlock
Train Apprentice First Aid |skillmax First Aid,75 |goto Elwynn Forest 43.39,65.55
|only if GetMoney() > 150
step
_NOTE:_
Create Bandages in Downtime
|tip While you wait for boats, it's a good time to make bandages and increase your First Aid skill.
|tip You'll need higher skill to make better bandages later, so make sure to level it up as you go.
|tip Keep bandages on hand for another way to heal yourself.
Click Here to Continue |confirm |q 60
step
talk Keryn Sylvius##917
|tip Upstairs in the inn.
learnspell Sinister Strike##1757 |goto Elwynn Forest/0 43.87,65.93
learnspell Gouge##1776 |goto Elwynn Forest/0 43.87,65.93
|only if Rogue and level >= 6
step
talk Priestess Josetta##377
|tip Upstairs inside the building.
learnspell Power Word: Shield##17 |goto Elwynn Forest 43.28,65.72
learnspell Smite##591 |goto Elwynn Forest 43.28,65.72
turnin In Favor of the Light##5623 |goto Elwynn Forest 43.28,65.72 |only if Human Priest
accept Garments of the Light##5624 |goto Elwynn Forest 43.28,65.72 |only if Human Priest
|only if Priest and level >= 6
step
'|talk Guard Roberts##12423
Heal and Fortify Guard Roberts |q 5624/1 |goto Elwynn Forest/0 48.14,68.04
|tip Target Guard Roberts.
|tip First, cast your "Lesser Heal (Rank 2)" spell on him.
|tip Second, cast your "Power Word: Fortitude" spell on him.
|only if Human Priest
step
Enter the building |goto Elwynn Forest/0 42.95,65.65 < 10 |walk
talk Priestess Josetta##377
|tip Upstairs inside the building.
turnin Garments of the Light##5624 |goto Elwynn Forest/0 43.28,65.72
|only if Human Priest
step
talk Zaldimar Wefhellt##328
|tip Upstairs in the inn.
|tip Conjure Food is a low priority spell, you can skip it for now if you are low on money.
learnspell Fire Blast##2136 |goto Elwynn Forest/0 43.25,66.21
learnspell Fireball##143 |goto Elwynn Forest/0 43.25,66.21
learnspell Conjure Food##587 |goto Elwynn Forest/0 43.25,66.21
|only if Mage and level >= 6
step
talk Corina Steele##54
|tip Inside the building.
buy Gladius##2488 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Corina Steele##54 |goto Elwynn Forest 41.53,65.90 |q 60
|only if Warrior and itemcount(2488) == 0
step
talk Corina Steele##54
|tip Inside the building.
buy Wooden Mallet##2493 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Corina Steele##54 |goto Elwynn Forest 41.53,65.90 |q 60
|only if Paladin and itemcount(2493) == 0
step
talk Corina Steele##54
|tip Inside the building.
buy Stiletto##2494 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Corina Steele##54 |goto Elwynn Forest 41.53,65.90 |q 60
|only if Rogue and itemcount(2494) == 0
step
talk Smith Argus##514
Select _"Train me."_ |gossip 95665 |goto Elwynn Forest/0 41.71,65.55
Train Apprentice Blacksmithing |skillmax Blacksmithing,75 |goto Elwynn Forest/0 41.71,65.55
|tip Weapon stones are up to a 30% damage increase at this level and are very worthwhile.
|tip We'll get rough stones from Kobolds soon.
|only if Warrior or Rogue or Paladin
step
talk Lyria Du Lac##913
|tip Train Parry as well.
|tip If you are short on money, learning Parry is more important. |only if hardcore
learnspell Thunder Clap##6343 |goto Elwynn Forest/0 41.10,65.76
|only if Warrior and level >= 6
step
talk Brother Wilhelm##927
learnspell Divine Protection##498 |goto Elwynn Forest/0 41.10,66.03
learnspell Holy Light##639 |goto Elwynn Forest/0 41.10,66.03
|only if Paladin and level >= 6
step
talk Remy "Two Times"##241
accept Gold Dust Exchange##47 |goto Elwynn Forest 42.14,67.26
stickystart "Collect_Chunks_Of_Boar_Meat"
step
talk "Auntie" Bernice Stonefield##246
|tip Grind enemies on the way to make a grind step less tedious later.
accept Lost Necklace##85 |goto Elwynn Forest 34.48,84.26
step
talk Billy Maclure##247
|tip Grind enemies on the way to make a grind step less tedious later.
turnin Lost Necklace##85 |goto Elwynn Forest 43.13,85.72
accept Pie for Billy##86 |goto Elwynn Forest 43.13,85.72
step
Enter the building |goto Elwynn Forest 43.00,89.40 < 10 |walk
talk Maybell Maclure##251
|tip Inside the building.
accept Young Lovers##106 |goto Elwynn Forest 43.15,89.62
step
talk Joshua Maclure##258
Sell your trash |vendor Joshua Maclure##258 |q 106 |goto Elwynn Forest/0 42.35,89.34
step
label "Collect_Chunks_Of_Boar_Meat"
kill Stonetusk Boar##113+
collect 4 Chunk of Boar Meat##769 |q 86/1 |goto Elwynn Forest 41.86,87.12 |future
|tip Be careful not to accidentally sell these to a vendor.
step
talk "Auntie" Bernice Stonefield##246
|tip Grind enemies on the way to make a grind step less tedious later.
turnin Pie for Billy##86 |goto Elwynn Forest 34.48,84.26
accept Back to Billy##84 |goto Elwynn Forest 34.48,84.26
step
talk Ma Stonefield##244
accept Princess Must Die!##88 |goto Elwynn Forest/0 34.66,84.48
step
talk Tommy Joe Stonefield##252
|tip Grind enemies on the way to make a grind step less tedious later.
turnin Young Lovers##106 |goto Elwynn Forest 29.84,85.99
accept Speak with Gramma##111 |goto Elwynn Forest 29.84,85.99
step
Enter the building |goto Elwynn Forest 34.82,84.11 < 10 |walk
talk Gramma Stonefield##248
|tip Inside the building.
turnin Speak with Gramma##111 |goto Elwynn Forest 34.94,83.86
accept Note to William##107 |goto Elwynn Forest 34.94,83.86
step
talk Billy Maclure##247
|tip Grind enemies on the way to make a grind step less tedious later.
turnin Back to Billy##84 |goto Elwynn Forest 43.13,85.72
accept Goldtooth##87 |goto Elwynn Forest 43.13,85.72
step
_NOTE:_
Save All Linen Cloth You Find
|tip As you quest in Elwynn Forest, save all Linen Cloth you find.
|tip Be careful not to accidentally sell them to a vendor.
|tip You will need ~70 Linen Cloth when you are level 10-11.
|tip You will use them to create your wand, which will be a powerful weapon for you.
|tip However, if you are confident you will be able to buy a wand from the Auction House, you can ignore this. |only if not selfmade
Click Here to Continue |confirm |q 364 |future
|only if Priest	or Warlock or Mage
stickystart "Collect_Gold_Dust"
stickystart "Collect_Large_Candles"
step
Enter the mine |goto Elwynn Forest 38.97,82.33 < 10 |walk
|tip Watch for patrols and respawns while in the area. |only if hardcore
Scout Through the Fargodeep Mine |q 62/1 |goto Elwynn Forest 39.61,80.21
|tip Inside the mine.
|tip Explore carefully through this area. |only if harcore
|tip As you loot Rough Stones, craft them into Sharpening Stones and apply them to your weapon |only if Warrior or Rogue
|tip As you loot Rough Stones, craft them into Weightstones and apply them to your weapon |only if Paladin
step
Follow the path inside the mine |goto Elwynn Forest 39.76,79.21 < 10 |walk
kill Goldtooth##327
|tip He walks around this area inside the mine.
|tip Watch for patrols and respawns while in the area. |only if hardcore
collect Bernice's Necklace##981 |q 87/1 |goto Elwynn Forest 41.71,78.04
step
label "Collect_Gold_Dust"
Kill Kobold enemies around this area
|tip Inside the mine.
|tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
collect 10 Gold Dust##773 |q 47/1 |goto Elwynn Forest 39.61,80.21
step
label "Collect_Large_Candles"
Kill Kobold enemies around this area |notinsticky
|tip Inside the mine. |notinsticky
|tip You can find more outside the mine. |notinsticky
|tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
collect 8 Large Candle##772 |q 60/1 |goto Elwynn Forest 39.61,80.21
step
Kill enemies around this area
|tip Inside and outside the mine.
|tip Watch for patrols and respawns while in the area. |only if hardcore
|tip Getting this far into level 7 will allow you to reach level 8 after turning in quests soon.
|tip You can grind around 600 exp grinding towards Goldshire if you want to skip this step a little early and kill on your way.
ding 7,1900  |goto Elwynn Forest 39.61,80.21
step
Leave the mine |complete not _G.IsIndoors()
|tip There are multiple exits, so just leave through the one you come across first.
|only if haveq(62) or haveq(87) or haveq(47) or haveq(60)
step
talk "Auntie" Bernice Stonefield##246
turnin Goldtooth##87 |goto Elwynn Forest 34.49,84.25
step
talk Remy "Two Times"##241
turnin Gold Dust Exchange##47 |goto Elwynn Forest 42.14,67.26
accept A Fishy Peril##40 |goto Elwynn Forest 42.14,67.26
step
talk Marshal Dughan##240
turnin A Fishy Peril##40 |goto Elwynn Forest 42.11,65.93
accept Further Concerns##35 |goto Elwynn Forest 42.11,65.93
turnin The Fargodeep Mine##62 |goto Elwynn Forest 42.11,65.93
accept The Jasperlode Mine##76 |goto Elwynn Forest 42.11,65.93
step
Enter the building |goto Elwynn Forest 42.95,65.65 < 10 |walk
talk William Pestle##253
|tip Inside the building.
turnin Kobold Candles##60 |goto Elwynn Forest 43.32,65.70
accept Shipment to Stormwind##61 |goto Elwynn Forest 43.32,65.70
turnin Note to William##107 |goto Elwynn Forest 43.32,65.70
accept Collecting Kelp##112 |goto Elwynn Forest 43.32,65.70
step
talk Innkeeper Farley##295
|tip Inside the building.
|tip This will create a Hearthstone for you, so you have one again.
home Goldshire |goto Elwynn Forest 43.77,65.81 |q 1097 |future
step
talk Brog Hamfist##151
|tip Inside the building.
|tip If you can afford it, and you need more bag space, buy bags.
|tip You will need up to 4 silver to train spells.
Visit the Vendor |vendor Brog Hamfist##151 |goto Elwynn Forest 43.96,65.92 |q 112
step
talk Lyria Du Lac##913
learnspell Hamstring##1715 |goto Elwynn Forest/0 41.10,65.76
learnspell Heroic Strike##284 |goto Elwynn Forest/0 41.10,65.76
|only if Warrior and level >= 8
step
talk Brother Wilhelm##927
learnspell Hammer of Justice##853 |goto Elwynn Forest/0 41.10,66.03
learnspell Purify##1152 |goto Elwynn Forest/0 41.10,66.03
|only if Paladin and level >= 8
step
talk Priestess Josetta##377
|tip Upstairs inside the building.
learnspell Renew##139 |goto Elwynn Forest 43.28,65.72
|only if Priest and level >= 8
step
talk Zaldimar Wefhellt##328
|tip Upstairs in the inn.
learnspell Polymorph##118 |goto Elwynn Forest/0 43.25,66.21
learnspell Frostbolt##205 |goto Elwynn Forest/0 43.25,66.21
|tip Frostbolt is optional, Fireball is more damage per mana at this level.
|only if Mage and level >= 8
step
talk Maximillian Crowe##906
|tip Downstairs in the inn.
|tip Enter from the kitchen.
learnspell Fear##5782 |goto Elwynn Forest/0 44.39,66.23
learnspell Curse of Agony##980 |goto Elwynn Forest/0 44.39,66.23
|only if Warlock and level >= 8
step
Summon Your Imp |complete warlockpet("Imp") |q 112
|tip Use the "Summon Imp" ability.
|tip You need to have your Imp active in order to complete the next step.
|only if Human Warlock and not warlockpet("Imp")
step
talk Cylina Darkheart##6374
|tip Downstairs inside the building.
buy Grimoire of Firebolt (Rank 2)##16302 |n
|tip If you can't afford it, skip this step and make sure to buy it later.
use the Grimoire of Firebolt (Rank 2)##16302
Teach Your Imp Firebolt (Rank 2) |learnpetspell Firebolt##7799 |goto Elwynn Forest 44.40,65.99
|only if Human Warlock
step
talk Keryn Sylvius##917
|tip Upstairs in the inn.
learnspell Eviscerate##6760 |goto Elwynn Forest/0 43.87,65.93
learnspell Evasion##5277 |goto Elwynn Forest/0 43.87,65.93
|only if Rogue and level >= 8
step
talk Corina Steele##54
|tip Inside the building.
buy Gladius##2488 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Corina Steele##54 |goto Elwynn Forest 41.53,65.90 |q 112
|only if Warrior and itemcount(2488) == 0
step
talk Corina Steele##54
|tip Inside the building.
buy Wooden Mallet##2493 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Corina Steele##54 |goto Elwynn Forest 41.53,65.90 |q 112
|only if Paladin and itemcount(2493) == 0
step
talk Corina Steele##54
|tip Inside the building.
buy Stiletto##2494 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Corina Steele##54 |goto Elwynn Forest 41.53,65.90 |q 112
|only if Rogue and itemcount(2494) == 0
step
Kill Murloc enemies around this area
collect 4 Crystal Kelp Frond##1256 |q 112/1 |goto Elwynn Forest 50.20,66.86
You can find more around [Elwynn Forest 55.90,66.66]
step
Enter the mine |goto Elwynn Forest 61.71,53.87 < 10 |walk
Scout Through the Jasperlode Mine |q 76/1 |goto Elwynn Forest 60.38,49.68
|tip Inside the mine.
|tip Watch for patrols and respawns while in the area. |only if hardcore
|tip Kobold Geomancers deal heavy damage. |only if hardcore
|tip Use Line of Sight to cancel their casts and maneuver them into move favorable positions when possible. |only if hardcore
step
Leave the mine |goto Elwynn Forest 61.74,53.88 < 10 |walk |only if subzone("Jasperlode Mine") and _G.IsIndoors()
talk Guard Thomas##261
|tip Grind mobs en route to this quest.
turnin Further Concerns##35 |goto Elwynn Forest 73.97,72.18
accept Find the Lost Guards##37 |goto Elwynn Forest 73.97,72.18
accept Protect the Frontier##52 |goto Elwynn Forest 73.97,72.18
stickystart "Kill_Young_Forest_Bears"
stickystart "Kill_Prowlers"
step
click A Half-Eaten Body##55
|tip Grind mobs en route to the body.
turnin Find the Lost Guards##37 |goto Elwynn Forest 72.65,60.33
accept Discover Rolf's Fate##45 |goto Elwynn Forest 72.65,60.33
step
talk Supervisor Raelen##10616
accept A Bundle of Trouble##5545 |goto Elwynn Forest 81.38,66.11
step
talk Rallic Finn##1198
Vendor your trash |vendor Rallic Finn##1198 |q 5545 |goto Elwynn Forest/0 83.28,66.09
stickystart "Collect_Bundles_Of_Wood"
step
Kill enemies around this area
|tip The next step in the guide can be pretty tough, so being a level higher will help.
ding 9 |goto Elwynn Forest 77.69,61.78
You can find more around [83.76,60.88]
step
click Rolf's Corpse##56
|tip Watch out for adds when you're pulling from the murloc huts nearby. |only if hardcore
|tip Murloc Foragers may heal when at low health. |only if hardcore
|tip Also watch for respawns if you're clearing. |only if hardcore
|tip This is one of the few items in the game you can loot while inside of your Divine Protection. |only if Paladin
turnin Discover Rolf's Fate##45 |goto Elwynn Forest 79.80,55.52
accept Report to Thomas##71 |goto Elwynn Forest 79.80,55.52
step
label "Collect_Bundles_Of_Wood"
click Bundle of Wood##176793+
|tip They look like small stacks of brown logs at the base of trees around this area.
collect 8 Bundle of Wood##13872 |q 5545/1 |goto Elwynn Forest 77.69,61.78
You can find more around [83.76,60.88]
step
label "Kill_Young_Forest_Bears"
kill 5 Young Forest Bear##822 |q 52/2 |goto Elwynn Forest 86.49,63.95
You can find more around: |notinsticky
[81.76,59.01]
[78.29,61.34]
[71.40,61.40]
[68.66,65.13]
[75.22,67.19]
step
label "Kill_Prowlers"
kill 8 Prowler##118 |q 52/1 |goto Elwynn Forest 83.27,60.09
step
talk Rallic Finn##1198
Vendor your trash |vendor Rallic Finn##1198 |q 5545 |goto Elwynn Forest/0 83.28,66.09
step
talk Supervisor Raelen##10616
turnin A Bundle of Trouble##5545 |goto Elwynn Forest 81.38,66.12
step
talk Sara Timberlain##278
|tip In front of the building.
accept Red Linen Goods##83 |goto Elwynn Forest 79.46,68.78
step
talk Guard Thomas##261
turnin Protect the Frontier##52 |goto Elwynn Forest 73.97,72.18
turnin Report to Thomas##71 |goto Elwynn Forest 73.97,72.18
accept Deliver Thomas' Report##39 |goto Elwynn Forest 73.97,72.18
accept Report to Gryan Stoutmantle##109 |goto Elwynn Forest 73.97,72.18
stickystart "Bandanas_Collect"
step
kill Princess##330
|tip This quest can be very hard, but there are often other players nearby looking to do it as well.
|tip You can skip this step if you are unable to find help or aren't confident soloing it.
|tip You received 2 Lesser Healing Potions from a recent quest, don't forget about them! |only if hardcore
|tip Don't run from the boars if you can help it, this will make them charge and do extra damage |only if hardcore
|tip Use your throwing knives you purchased here. |only if Warrior or Rogue
|tip This quest can be hard on a Paladin as you have no way to kite Princess. Skip it if you aren't comfortable. |only if Paladin
|tip You can use the fence kiting video below to get room to for casting heals. |only if Paladin
|tip Use the corner fence to easily kite Princess, view the video below for a visual example.
Click Here To Copy The Video Link |popuptext youtu.be/f9Ilklxp0QU
collect Brass Collar##1006 |q 88/1 |goto Elwynn Forest 69.61,79.38
step
label "Bandanas_Collect"
Kill Defias enemies around this area
|tip Focus on killing the ones along the perimeter of the farm, near the fences and buildings.
|tip You may want to avoid pulling from inside the buildings. |only if hardcore
|tip You will likely pull multiple enemies doing so. |only if hardcore
collect 6 Red Linen Bandana##1019 |q 83/1 |goto Elwynn Forest 69.61,79.38
step
Kill enemies around this area
|tip Focus on killing the ones along the perimeter of the farm, near the fences and buildings.
|tip Getting this far into level 9 will allow you to reach level 10 after turning in quests soon.
|tip You may want to avoid pulling from inside the buildings. |only if hardcore
|tip You will likely pull multiple enemies doing so. |only if hardcore
ding 9,3600 |goto Elwynn Forest 69.61,79.38
step
collect 70 Linen Cloth##2589 |goto Elwynn Forest 69.61,79.38
|tip Focus on killing the ones along the perimeter of the farm, near the fences and buildings.
|tip This will allow you to craft a wand soon. You can skip this step if you have other plans for a wand.
|tip You may want to avoid pulling from inside the buildings. |only if hardcore
|tip You will likely pull multiple enemies doing so. |only if hardcore
|only if Warlock or Mage or Priest
step
Continue to kill enemies around this area
|tip Grind enemies until your Hearthstone has 5 minutes on its cooldown.
|tip You will be hearthing back to Goldshire to save on long travel time.
|tip This step will complete when your Hearthstone is ready to use.
|tip Any experience you get here is a "bonus" to save on grinding later and is not required if you'd rather skip this step.
Grind XP Until You Can Hearth to Goldshire |complete C_Container.GetItemCooldown(6948) <= 100 |q 83 |only if hardcore
Grind XP Until You Can Hearth to Goldshire |complete C_Container.GetItemCooldown(6948) <= 300 |q 83 |only if not hardcore
step
use the Westfall Deed##1972
accept Furlbrow's Deed##184
|only if itemcount(1972) > 0
step
talk Sara Timberlain##278
|tip In front of the building.
turnin Red Linen Goods##83 |goto Elwynn Forest 79.46,68.79
step
talk Ariena Stormfeather##931
|tip Be careful as you travel here, follow the road.
|tip The enemies in this zone are much higher level than you currently.
fpath Lakeshire |goto Redridge Mountains 30.59,59.41
|only if not hardcore
step
talk Brog Hamfist##151
|tip Inside the building.
|tip If you can afford it, and you need more bag space, buy bags.
Visit the Vendor |vendor Brog Hamfist##151 |q 112 |goto Elwynn Forest 43.96,65.92
step
talk William Pestle##253
|tip Inside the building.
turnin Collecting Kelp##112 |goto Elwynn Forest 43.32,65.71
step
Watch the dialogue
talk William Pestle##253
|tip Inside the building.
accept The Escape##114 |goto Elwynn Forest 43.32,65.71
step
talk Marshal Dughan##240
turnin Deliver Thomas' Report##39 |goto Elwynn Forest 42.11,65.93
turnin The Jasperlode Mine##76 |goto Elwynn Forest 42.11,65.93
accept Westbrook Garrison Needs Help!##239 |goto Elwynn Forest 42.11,65.93
accept Cloth and Leather Armor##59 |goto Elwynn Forest 42.11,65.93 |only if Warlock
step
talk Smith Argus##514
|tip Inside the building.
accept Elmore's Task##1097 |goto Elwynn Forest 41.71,65.55
step
Enter the building |goto Elwynn Forest 42.95,65.65 < 10 |walk
talk Priestess Josetta##377
|tip Upstairs inside the building.
accept Desperate Prayer##5635 |goto Elwynn Forest 43.28,65.72
learnspell Mind Blast##8092 |goto Elwynn Forest 43.28,65.72
learnspell Lesser Heal##2053 |goto Elwynn Forest 43.28,65.72
learnspell Shadow Word: Pain##594 |goto Elwynn Forest 43.28,65.72
learnspell Resurrection##2006 |goto Elwynn Forest 43.28,65.72
|tip Only train Resurrection if you plan to do group content.
|only if Human Priest and level >= 10
step
Enter the building |goto Elwynn Forest 42.95,65.65 < 10 |walk
talk Maximillian Crowe##906
|tip Downstairs in the inn.
|tip Enter from the kitchen.
learnspell Drain Soul##1120 |goto Elwynn Forest/0 44.39,66.23
learnspell Create Healthstone (Minor)##6201 |goto Elwynn Forest/0 44.39,66.23
|tip This requires Drain Soul to be trained.
learnspell Demon Skin##696 |goto Elwynn Forest/0 44.39,66.23
learnspell Immolate##707 |goto Elwynn Forest/0 44.39,66.23
|only if Warlock and level >= 10
step
talk Remen Marcot##6121
|tip Downstairs inside the building.
accept Gakin's Summons##1685 |goto Elwynn Forest 44.49,66.27
|only if Human Warlock
step
talk Brother Wilhelm##927
learnspell Seal of Righteousness##20287 |goto Elwynn Forest/0 41.10,66.03
learnspell Lay on Hands##633 |goto Elwynn Forest/0 41.10,66.03
learnspell Blessing of Protection##1022 |goto Elwynn Forest/0 41.10,66.03
learnspell Devotion Aura##10290 |goto Elwynn Forest/0 41.10,66.03
|only if Paladin and level >= 10
step
talk Zaldimar Wefhellt##328
|tip Upstairs in the inn.
learnspell Conjure Water##5505 |goto Elwynn Forest/0 43.25,66.21
learnspell Frost Nova##122 |goto Elwynn Forest/0 43.25,66.21
learnspell Frost Armor##7300 |goto Elwynn Forest/0 43.25,66.21
|only if Mage and level >= 10
step
talk Keryn Sylvius##917
|tip Upstairs in the inn.
|tip Train Dual Wield
learnspell Sprint##2983 |goto Elwynn Forest/0 43.87,65.93
learnspell Slice and Dice##5171 |goto Elwynn Forest/0 43.87,65.93
learnspell Sap##6770 |goto Elwynn Forest/0 43.87,65.93
|tip Sap is low priority if you are low on money.
|only if Rogue and level >= 10
step
Enter the building |goto Elwynn Forest 43.00,89.40 < 10 |walk
talk Maybell Maclure##251
|tip Inside the building.
turnin The Escape##114 |goto Elwynn Forest 43.15,89.62
step
talk Ma Stonefield##244
turnin Princess Must Die!##88 |goto Elwynn Forest 34.66,84.48
step
talk Deputy Rainer##963
turnin Westbrook Garrison Needs Help!##239 |goto Elwynn Forest 24.23,74.45
accept Riverpaw Gnoll Bounty##11 |goto Elwynn Forest 24.23,74.45
step
click Wanted Poster##68
|tip Its a sign by the road.
accept Wanted: "Hogger"##176 |goto Elwynn Forest 24.5,74.7
|only if Human Warlock
step
Kill Riverpaw enemies around this area
|tip Be careful if you're pulling from one of the camps. |only if hardcore
|tip You'll likely get adds. |only if hardcore
collect 8 Painted Gnoll Armband##782 |q 11/1 |goto Elwynn Forest 26.75,86.83
You can find more around [24.75,94.05]
step
kill Hogger##448
|tip He can spawn in multiple places around the area.
|tip He does a charge similar to boars that will deal extra damage if you get too far from him.
|tip This quest can be difficult but there are often lots of players looking to kill him. Skip this step if you aren't comfortable. |only if hardcore
|tip Don't forget about your healthstones and health potions! |only if hardcore
|tip He can be cheesed by kiting him to the guard tower. Watch the video below for an example.
Click Here To Copy The Video Link |popuptext youtu.be/x79t_tTgey0
collect Huge Gnoll Claw##1931 |q 176 |goto Elwynn Forest 26.75,86.83
|only if Human Warlock
step
use Gold Pickup Schedule##1307
accept The Collector##123 |goto Elwynn Forest 24.23,74.45
|only if Human Warlock and itemcount(1307) > 0
step
talk Deputy Rainer##963
turnin Riverpaw Gnoll Bounty##11 |goto Elwynn Forest 24.23,74.45
step
talk Farmer Furlbrow##237
turnin Furlbrow's Deed##184 |goto Westfall 59.96,19.36 |only if haveq(184) or completedq(184)
accept The Forgotten Heirloom##64 |goto Westfall 59.96,19.36
step
talk Verna Furlbrow##238
accept Westfall Stew##36 |goto Westfall 59.92,19.42
accept Poor Old Blanchy##151 |goto Westfall 59.92,19.42
step
talk Farmer Saldean##233
accept The Killing Fields##9 |goto Westfall 56.05,31.22
step
Enter the building |goto Westfall 56.15,31.04 < 10 |walk
talk Salma Saldean##235
|tip Inside the building.
turnin Westfall Stew##36 |goto Westfall 56.42,30.52
accept Westfall Stew##38 |goto Westfall 56.42,30.52
accept Goretusk Liver Pie##22 |goto Westfall 56.42,30.52
step
talk Gryan Stoutmantle##234
|tip Stick to the roads and do not run through the field |only if hardcore
turnin Report to Gryan Stoutmantle##109 |goto Westfall 56.33,47.52
step
Enter the building |goto Westfall 56.53,47.39 < 10 |walk
talk Quartermaster Lewis##491
|tip Inside the building.
accept A Swift Message##6181 |goto Westfall 57.00,47.17
|only if Human
step
talk Quartermaster Lewis##491
|tip Inside the building.
|tip If you can afford it, and you need more bag space, buy bags.
Visit the Vendor |vendor Quartermaster Lewis##491 |goto Westfall 57.00,47.17 |q 61
step
talk Thor##523
fpath Sentinel Hill |goto Westfall 56.55,52.64
step
talk Thor##523
turnin A Swift Message##6181 |goto Westfall 56.56,52.64
accept Continue to Stormwind##6281 |goto Westfall 56.56,52.64
|only if Human
step
talk Thor##523
|tip Open the flight map.
|tip We are opening the flight map to let the guide learn that you have the Stormwind City flight path already.
fpath Stormwind City |goto Westfall 56.55,52.64
|only if Human
step
Enter the building |goto Stormwind City 56.59,64.87 < 10 |walk
talk Morgan Pestle##279
|tip Inside the building.
turnin Shipment to Stormwind##61 |goto Stormwind City 56.21,64.59
step
Enter the building |goto Stormwind City 57.51,61.65 < 10 |walk
talk Thurman Mullby##1285
|tip Inside the building.
buy Balanced Throwing Dagger##25872 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Thurman Mullby##1285 |goto Stormwind City 58.37,61.68 |q 1097
|only if Rogue
step
Enter the building |goto Stormwind City 56.66,57.70 < 10 |walk
talk Woo Ping##11867
|tip Inside the building.
|tip This will allow you to use two-handed swords.
Train Two-Handed Swords |complete weaponskill("TH_SWORD") > 0 |goto Stormwind City 57.13,57.71
|only if Warrior
step
Enter the building |goto Stormwind City 56.66,57.70 < 10 |walk
talk Woo Ping##11867
|tip Inside the building.
|tip This will allow you to use one-handed swords.
Train One-Handed Swords |complete weaponskill("SWORD") > 0 |goto Stormwind City 57.13,57.71
|only if Rogue
step
talk Gunther Weller##1289
|tip Inside the building.
buy Cutlass##851 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Gunther Weller##1289 |goto Stormwind City 57.55,57.07 |q 1097
|only if Rogue and itemcount(851) == 0
step
Enter the building |goto Stormwind City 56.66,57.70 < 10 |walk
talk Woo Ping##11867
|tip Inside the building.
|tip This will allow you to use staves.
|tip If you are tight on money and need to buy a wand, a wand is more important.
Train Staves |complete weaponskill("TH_STAFF") > 0 |goto Stormwind City 57.13,57.71
|only if Priest
step
Enter the building |goto Stormwind City 53.44,64.92 < 10 |walk
talk Innkeeper Allison##6740
|tip Inside the building.
home Stormwind City |goto Stormwind City 52.62,65.70
step
_Note:_
Do You Need to Create a Wand?
|tip If you already have a wand, you can skip the next bunch of steps.
|tip Click the line below to select what you want to do.
Yes, Create a Wand		|confirm	|next "Create_Wand_Priest"	|or	|q 1097
No, I Already Have a Wand	|confirm	|next "Skip_Wand_Priest"	|or	|q 1097
|only if Priest
step
label "Create_Wand_Priest"
collect 70 Linen Cloth##2589 |q 1097
|tip You are about to create your wand.
|tip If you need more Linen Cloth, try to buy some from the Auction House. |only if not selfmade
|only if Priest
step
Enter the building |goto Stormwind City 44.55,73.89 < 10 |walk
talk Lawrence Schneider##1300
|tip Inside the building.
Learn Tailoring |skillmax Tailoring,75 |goto Stormwind City 43.69,73.71 |q 1097
|only if Priest
step
Open the Tailoring Profession Window
|tip The Tailoring skill is in the General tab of your spellbook.
|tip Create 35 Bolts of Linen Cloth.
collect 35 Bolt of Linen Cloth##2996 |q 1097
|only if Priest
step
talk Alexandra Bolero##1347
|tip Inside the building.
buy 10 Coarse Thread##2320 |goto Stormwind City 43.25,74.08 |q 1097
|only if Priest
step
talk Lawrence Schneider##1300
|tip Inside the building.
learn Brown Linen Robe##7623 |goto Stormwind City 43.69,73.71 |q 1097
|only if Priest
step
Open the Tailoring Profession Window
|tip The Tailoring skill is in the General tab of your spellbook.
|tip Create 10 Brown Linen Robes.
|tip You are about to learn Enchanting and disenchant these.
collect 10 Brown Linen Robe##6238 |q 1097
|only if Priest
step
Enter the building |goto Stormwind City 43.72,63.84 < 10 |walk
talk Lucan Cordell##1317
|tip Inside the building.
Learn Enchanting |skillmax Enchanting,75 |goto Stormwind City 42.94,64.65 |q 1097
|only if Priest
step
Disenchant the Brown Linen Robes
|tip Use the "Disenchant" ability in the General tab of your spellbook.
|tip If you don't get one of these items from disenchanting, talk to Jessara Cordell here and try to buy it.
|tip They are limited supply items, so it may not be available to buy.
|tip You can also try to buy it from the Auction House. |only if not selfmade
collect Strange Dust##10940 |goto Stormwind City 42.81,64.39 |q 1097
collect 2 Lesser Magic Essence##10938 |goto Stormwind City 42.81,64.39 |q 1097
|only if Priest
step
talk Jessara Cordell##1318
|tip Inside the building.
buy Copper Rod##6217 |goto Stormwind City 42.81,64.39 |q 1097
buy Simple Wood##4470 |goto Stormwind City 42.81,64.39 |q 1097
|only if Priest
step
Open the Enchanting Profession Window
|tip The Enchanting skill is in the General tab of your spellbook.
|tip Create 1 Runed Copper Rod.
collect Runed Copper Rod##6218 |q 1097
|only if Priest
step
talk Betty Quin##11068
|tip Inside the building.
learn Lesser Magic Wand##14293 |goto Stormwind City 43.11,63.72 |q 1097
|only if Priest
step
Open the Enchanting Profession Window
|tip The Enchanting skill is in the General tab of your spellbook.
|tip Create 1 Lesser Magic Wand.
collect Lesser Magic Wand##11287 |q 1097
|only if Priest
step
Enter the building |goto Stormwind City 56.66,57.70 < 10 |walk
talk Woo Ping##11867
|tip Inside the building.
|tip This will allow you to use staves.
|tip If you are tight on money and need to buy a wand, a wand is more important.
Train Staves |complete weaponskill("TH_STAFF") > 0 |goto Stormwind City 57.13,57.71
|only if Human Warlock
step
_Note:_
Do You Need to Create a Wand?
|tip If you already have a wand, you can skip the next bunch of steps.
|tip Click the line below to select what you want to do.
Yes, Create a Wand		|confirm	|next "Create_Wand_Warlock"	|or	|q 1097
No, I Already Have a Wand	|confirm	|next "Skip_Wand_HumanWarlock"	|or	|q 1097
|only if Warlock
step
label "Create_Wand_Warlock"
collect 70 Linen Cloth##2589 |q 1097
|tip You are about to create your wand.
|tip If you need more Linen Cloth, try to buy some from the Auction House. |only if not selfmade
|only if Warlock
step
Enter the building |goto Stormwind City 44.55,73.89 < 10 |walk
talk Lawrence Schneider##1300
|tip Inside the building.
Learn Tailoring |skillmax Tailoring,75 |goto Stormwind City 43.69,73.71 |q 1097
|only if Warlock
step
Open the Tailoring Profession Window
|tip The Tailoring skill is in the General tab of your spellbook.
|tip Create 35 Bolts of Linen Cloth.
collect 35 Bolt of Linen Cloth##2996 |q 1097
|only if Warlock
step
talk Alexandra Bolero##1347
|tip Inside the building.
buy 10 Coarse Thread##2320 |goto Stormwind City 43.25,74.08 |q 1097
|only if Warlock
step
talk Lawrence Schneider##1300
|tip Inside the building.
learn Brown Linen Robe##7623 |goto Stormwind City 43.69,73.71 |q 1097
|only if Warlock
step
Open the Tailoring Profession Window
|tip The Tailoring skill is in the General tab of your spellbook.
|tip Create 10 Brown Linen Robes.
|tip You are about to learn Enchanting and disenchant these.
collect 10 Brown Linen Robe##6238 |q 1097
|only if Warlock
step
Enter the building |goto Stormwind City 43.72,63.84 < 10 |walk
talk Lucan Cordell##1317
|tip Inside the building.
Learn Enchanting |skillmax Enchanting,75 |goto Stormwind City 42.94,64.65 |q 1097
|only if Warlock
step
Disenchant the Brown Linen Robes
|tip Use the "Disenchant" ability in the General tab of your spellbook.
|tip If you don't get one of these items from disenchanting, talk to Jessara Cordell here and try to buy it.
|tip They are limited supply items, so it may not be available to buy.
|tip You can also try to buy it from the Auction House. |only if not selfmade
collect Strange Dust##10940 |goto Stormwind City 42.81,64.39 |q 1097
collect 2 Lesser Magic Essence##10938 |goto Stormwind City 42.81,64.39 |q 1097
|only if Warlock
step
talk Jessara Cordell##1318
|tip Inside the building.
buy Copper Rod##6217 |goto Stormwind City 42.81,64.39 |q 1097
buy Simple Wood##4470 |goto Stormwind City 42.81,64.39 |q 1097
|only if Warlock
step
Open the Enchanting Profession Window
|tip The Enchanting skill is in the General tab of your spellbook.
|tip Create 1 Runed Copper Rod.
collect Runed Copper Rod##6218 |q 1097
|only if Warlock
step
talk Betty Quin##11068
|tip Inside the building.
learn Lesser Magic Wand##14293 |goto Stormwind City 43.11,63.72 |q 1097
|only if Warlock
step
Open the Enchanting Profession Window
|tip The Enchanting skill is in the General tab of your spellbook.
|tip Create 1 Lesser Magic Wand.
collect Lesser Magic Wand##11287 |q 1097
|only if Warlock
step
label "Skip_Wand_HumanWarlock"
Enter the building |goto Stormwind City 29.15,74.18 < 10 |walk
talk Gakin the Darkbinder##6122
|tip Downstairs inside the building.
turnin Gakin's Summons##1685 |goto Stormwind City 25.26,78.56
accept Surena Caledon##1688 |goto Stormwind City 25.26,78.56
|only Human Warlock
step
talk Jennea Cannon##5497 |only if Mage
talk Einris Brightspear##5515 |only if Hunter
talk Ursula Deline##5495 |only if Warlock
talk Wu Shen##5479 |only if Warrior
talk Osborne the Night Man##918 |only if Rogue
talk Sheldras Moontree##5504 |only if Druid
talk Brother Benjamin##5484 |only if Priest
talk Arthur the Faithful##5491 |only if Paladin
trainer Jennea Cannon##5497 |goto Stormwind City/0 38.62,79.35 |only if Mage |q 1097
trainer Einris Brightspear##5515  |goto Stormwind City/0 61.66,15.30 |only if Hunter |q 1097
trainer Ursula Deline##5495 |goto Stormwind City/0 26.13,77.20 |only if Warlock |q 1097
trainer Wu Shen##5479 |goto Stormwind City/0 78.72,45.77 |only if Warrior |q 1097
trainer Osborne the Night Man##918 |goto Stormwind City/0 74.54,52.80 |only if Rogue |q 1097
trainer Sheldras Moontree##5504 |goto Stormwind City/0 20.92,55.52 |only if Druid |q 1097
trainer Brother Benjamin##5484 |goto Stormwind City/0 41.64,28.98 |only if Priest |q 1097
trainer Arthur the Faithful##5491 |goto Stormwind City/0 38.65,32.80 |only if Paladin |q 1097
|tip Inside the tower. |only if Mage
|tip Inside the building. |only if Hunter or Warrior or Priest or Paladin
|tip He patrols inside. |only if Priest
|tip In the basement. |only if Warlock
|tip Train your spells.
step
talk Marshal Dughan##240
turnin The Collector##123 |goto Elwynn Forest 42.11,65.93
accept Manhunt##147 |goto Elwynn Forest 42.11,65.93
|only if Human Warlock and haveq(123)
step
talk Marshal Dughan##240
turnin Wanted: "Hogger"##176 |goto Elwynn Forest 42.11,65.93
|only if Human Warlock and readyq(176)
step
Leave the building |goto Stormwind City 29.15,74.18 < 10 |walk |only if subzone("The Slaughtered Lamb")
talk Sara Timberlain##278
|tip In front of the building.
|tip Level your wand skill en route to this quest if it is low.
|tip You really want it near max to fight Surena soon.
turnin Cloth and Leather Armor##59 |goto Elwynn Forest 79.46,68.78
|only if Human Warlock
stickystart "Kill_Collector_HumanWarlock"
step
Leave the building |goto Stormwind City 29.15,74.18 < 10 |walk |only if subzone("The Slaughtered Lamb")
kill Surena Caledon##881
|tip Inside the building.
|tip You will pull 3 enemies. Apply DoTs and Wand Surena. Put your pet on Morgan, and fear the third.
|tip Make a healthstone and don't forget to use it if needed.
|tip Morgan does a backstab, don't turn your back to him! |only if hardcore
|tip Don't be afraid to ask for help from people in the area. |only if hardcore
|tip We have a video of us doing this step below if you want to see how it's performed before you pull.
Click Here To Copy The Video Link |popuptext youtu.be/unJ1RuAlDTY
collect Surena's Choker##6810 |q 1688/1 |goto Elwynn Forest 71.02,80.78
|only if Human Warlock
step
label "Kill_Collector_HumanWarlock"
kill Morgan the Collector##473
collect The Collector's Ring##2239 |q 147/1 |goto Elwynn Forest 71.02,80.78
|only if Human Warlock
step
Grind XP Until You Can Hearth |complete C_Container.GetItemCooldown(6948) == 0 |q 1688 |goto Elwynn Forest 71.02,80.78
|tip This is optional and simply makes you have to grind less later.
|only if Human Warlock and C_Container.GetItemCooldown(6948) <= 600 and not haveq(147)
step
talk Marshal Dughan##240
turnin Manhunt##147 |goto Elwynn Forest 42.11,65.93
|only if Human Warlock and haveq(147)
step
Enter the building |goto Stormwind City 29.15,74.18 < 10 |walk
talk Gakin the Darkbinder##6122
|tip Downstairs inside the building.
turnin Surena Caledon##1688 |goto Stormwind City 25.26,78.56
accept The Binding##1689 |goto Stormwind City 25.26,78.56
|only if Human Warlock
step
use the Bloodstone Choker##6928
|tip Use it while standing on the pink symbol on the ground.
|tip Downstairs inside the building, inside the crypt.
kill Summoned Voidwalker##5676 |q 1689/1 |goto Stormwind City 25.11,77.46
|only if Human Warlock
step
talk Gakin the Darkbinder##6122
|tip Upstairs inside the building, in the basement above the crypt.
turnin The Binding##1689 |goto Stormwind City 25.25,78.53
|only if Human Warlock
step
_NOTE:_
Create Soul Shards
|tip As you follow the guide, use your "Drain Soul" spell as you kill an enemy to get a Soul Shard.
|tip Once you have a Soul Shard, use your "Summon Voidwalker" ability to summon your voidwalker.
|tip It will tank enemies for you, making it easier to kill enemies.
Click Here to Continue |confirm |q 1097
|only if Human Warlock
step
Leave the building |goto Stormwind City 29.15,74.14 < 10 |c |q 1097
|only if Human Warlock and subzone("The Slaughtered Lamb")
step
label "Skip_Wand_Priest"
Enter the building |goto Stormwind City 43.04,34.49 < 10 |walk
talk High Priestess Laurena##376
|tip Inside the building.
turnin Desperate Prayer##5635 |goto Stormwind City 38.58,26.01
|only if Human Priest
step
_Note:_
Do You Need to Create a Wand?
|tip If you already have a wand, you can skip the next bunch of steps.
|tip Click the line below to select what you want to do.
Yes, Create a Wand		|confirm	|next "Create_Wand_Mage"	|or	|q 1097
No, I Already Have a Wand	|confirm	|next "Skip_Wand_Mage"	|or	|q 1097
|only if Human Mage
step
_Note:_
Do You Need to Create a Wand?
|tip If you already have a wand, you can skip the next bunch of steps.
|tip Click the line below to select what you want to do.
Yes, Create a Wand		|confirm	|next "Create_Wand_Mage"	|or	|q 1097
No, I Already Have a Wand	|confirm	|next "Skip_Wand_NotHumanMage"	|or	|q 1097
|only if not Human and Mage
step
label "Create_Wand_Mage"
collect 70 Linen Cloth##2589 |q 1097
|tip You are about to create your wand.
|tip If you need more Linen Cloth, try to buy some from the Auction House. |only if not selfmade
|only if Mage
step
Enter the building |goto Stormwind City 44.55,73.89 < 10 |walk
talk Lawrence Schneider##1300
|tip Inside the building.
Learn Tailoring |skillmax Tailoring,75 |goto Stormwind City 43.69,73.71 |q 1097
|only if Mage
step
Open the Tailoring Profession Window
|tip The Tailoring skill is in the General tab of your spellbook.
|tip Create 35 Bolts of Linen Cloth.
collect 35 Bolt of Linen Cloth##2996 |q 1097
|only if Mage
step
talk Alexandra Bolero##1347
|tip Inside the building.
buy 10 Coarse Thread##2320 |goto Stormwind City 43.25,74.08 |q 1097
|only if Mage
step
talk Lawrence Schneider##1300
|tip Inside the building.
learn Brown Linen Robe##7623 |goto Stormwind City 43.69,73.71 |q 1097
|only if Mage
step
Open the Tailoring Profession Window
|tip The Tailoring skill is in the General tab of your spellbook.
|tip Create 10 Brown Linen Robes.
|tip You are about to learn Enchanting and disenchant these.
collect 10 Brown Linen Robe##6238 |q 1097
|only if Mage
step
Enter the building |goto Stormwind City 43.72,63.84 < 10 |walk
talk Lucan Cordell##1317
|tip Inside the building.
Learn Enchanting |skillmax Enchanting,75 |goto Stormwind City 42.94,64.65 |q 1097
|only if Mage
step
Disenchant the Brown Linen Robes
|tip Use the "Disenchant" ability in the General tab of your spellbook.
|tip If you don't get one of these items from disenchanting, talk to Jessara Cordell here and try to buy it.
|tip They are limited supply items, so it may not be available to buy.
|tip You can also try to buy it from the Auction House. |only if not selfmade
collect Strange Dust##10940 |goto Stormwind City 42.81,64.39 |q 1097
collect 2 Lesser Magic Essence##10938 |goto Stormwind City 42.81,64.39 |q 1097
|only if Mage
step
talk Jessara Cordell##1318
|tip Inside the building.
buy Copper Rod##6217 |goto Stormwind City 42.81,64.39 |q 1097
buy Simple Wood##4470 |goto Stormwind City 42.81,64.39 |q 1097
|only if Mage
step
Open the Enchanting Profession Window
|tip The Enchanting skill is in the General tab of your spellbook.
|tip Create 1 Runed Copper Rod.
collect Runed Copper Rod##6218 |q 1097
|only if Mage
step
talk Betty Quin##11068
|tip Inside the building.
learn Lesser Magic Wand##14293 |goto Stormwind City 43.11,63.72 |q 1097
|only if Mage
step
Open the Enchanting Profession Window
|tip The Enchanting skill is in the General tab of your spellbook.
|tip Create 1 Lesser Magic Wand.
collect Lesser Magic Wand##11287 |q 1097
|only if Mage
step
label "Skip_Wand_Mage"
Enter the building |goto Stormwind City 73.64,47.60 < 10 |walk
talk Osric Strang##1323
|tip Inside the building.
turnin Continue to Stormwind##6281 |goto Stormwind City 74.32,47.24
accept Dungar Longdrink##6261 |goto Stormwind City 74.32,47.24
|only if Human
step
talk Lyria Du Lac##913
accept A Warrior's Training##1638 |goto Elwynn Forest 41.09,65.77 |or
'|complete completedq(1679) |or
|only if Human Warrior
step
Enter the building |goto Stormwind City 71.66,39.89 < 10 |walk
talk Harry Burlguard##6089
|tip Inside the building.
turnin A Warrior's Training##1638 |goto Stormwind City 74.25,37.26
accept Bartleby the Drunk##1639 |goto Stormwind City 74.25,37.26 |or
'|complete completedq(1678) |or
|only if Human Warrior
step
talk Bartleby##6090
|tip He walks around this area inside the building.
turnin Bartleby the Drunk##1639 |goto Stormwind City 73.83,37.17
accept Beat Bartleby##1640 |goto Stormwind City 73.83,37.17 |or
'|complete completedq(1678) |or
|tip He will attack you immediately after you accept this quest.
|only if Human Warrior
step
kill Bartleby##6090
|tip He walks around this area inside the building.
|tip He will eventually surrender.
Beat Bartleby |q 1640/1 |goto Stormwind City 73.83,37.17 |or
'|complete completedq(1678) |or
|only if Human Warrior
step
talk Bartleby##6090
|tip He walks around this area inside the building.
turnin Beat Bartleby##1640 |goto Stormwind City 73.83,37.17
accept Bartleby's Mug##1665 |goto Stormwind City 73.83,37.17 |or
'|complete completedq(1678) |or
|only if Human Warrior
step
talk Harry Burlguard##6089
|tip Inside the building.
turnin Bartleby's Mug##1665 |goto Stormwind City 74.25,37.26 |or
'|complete completedq(1678) |or
|only if Human Warrior
step
label "Skip_Wand_NotHumanMage"
Enter the building |goto Stormwind City 51.83,13.26 < 10 |walk
talk Grimand Elmore##1416
|tip Inside the building.
turnin Elmore's Task##1097 |goto Stormwind City 51.76,12.07
accept Stormpike's Delivery##353 |goto Stormwind City 51.76,12.07
step
Follow the path |goto Stormwind City 60.27,12.57 < 20 |walk
Enter the Deeprun Tram |complete subzone("Deeprun Tram") |goto Stormwind City 63.92,8.20 |q 433 |future
|tip Walk into the swirling portal.
step
_Inside Deeprun Tram:_
Ride the Tram
|tip Ride the Deeprun Tram from Stormwind City to Ironforge.
talk Monty##12997
|tip On the middle platform, near the wall.
|tip In the Ironforge section of the Deeprun Tram.
|tip We cannot give you an arrow to follow here as it is inside an instance.
accept Deeprun Rat Roundup##6661
step
_Inside Deeprun Tram:_
use Rat Catcher's Flute##17117
|tip Use it on Deeprun Rats around this area.
|tip They look like small grey rats on the ground around this area.
|tip In the Ironforge section of the Deeprun Tram.
Capture #5# Rats |q 6661/1
step
_Inside Deeprun Tram:_
talk Monty##12997
|tip On the middle platform, near the wall.
|tip In the Ironforge section of the Deeprun Tram.
|tip We cannot give you an arrow to follow here as it is inside an instance.
turnin Deeprun Rat Roundup##6661
step
_Inside Deeprun Tram:_
Enter Ironforge |complete zone("Ironforge") |q 433 |future
|tip Walk into the swirling portal to Monty's left.
|tip We cannot give you an arrow to follow here as it is inside an instance.
step
Run up the stairs and enter the building |goto Ironforge 59.41,37.76 < 7 |walk
talk Daryl Riknussun##5159
|tip Inside the building.
|tip You need to have the Cooking profession learned in order to accept a quest soon.
Learn Cooking |skillmax Cooking,75 |goto Ironforge 60.08,36.43 |q 7321 |future
step
talk Gryth Thurden##1573
fpath Ironforge |goto Ironforge 55.50,47.75
step
Run up the stairs and enter the building |goto Ironforge 61.31,88.15 < 7 |walk
talk Buliwyf Stonehand##11865
|tip Inside the building.
|tip This will allow you to equip two-handed maces.
Train Two-Handed Maces |complete weaponskill("TH_MACE") > 0 |goto Ironforge 61.17,89.52
|only if Warrior
step
talk Bixi Wobblebonk##13084
|tip Inside the building.
|tip This will allow you to equip thrown weapons.
|tip Skip this if you'd prefer to just use other ranged weapons.
Train Thrown |complete weaponskill("THROWN") > 0 |goto Ironforge 62.23,89.62
|only if Warrior
step
talk Brenwyn Wintersteel##5120
|tip Downstairs inside the building.
buy Small Throwing Knife##2947 |n
|tip If you can afford it.
|tip If you have better, skip this step.
|tip Skip this if you didn't learn the Throwing skill.
Visit the Vendor |vendor Brenwyn Wintersteel##5120 |goto Ironforge 62.37,88.68 |q 433 |future
|only if Warrior
step
Enter the building |goto Dun Morogh 45.97,48.83 < 10 |walk
talk Razzle Sprysprocket##1269
|tip Inside the building.
accept Operation Recombobulation##412 |goto Dun Morogh 45.85,49.37
|only if level < 11
step
talk Senir Whitebeard##1252
accept Frostmane Hold##287 |goto Dun Morogh 46.73,53.83
|only if level < 11
step
Follow the path |goto Dun Morogh 39.61,48.01 < 40 |only if walking
Follow the path up |goto Dun Morogh 36.01,51.96 < 15 |only if walking
|tip Go out of your way to grind mobs en route to this quest.
talk Tundra MacGrann##1266
|tip On top of the mountain.
|tip As you travel to him, be careful to avoid the elite yeti that walks around this area.
accept Tundra MacGrann's Stolen Stash##312 |goto Dun Morogh 34.57,51.65
|only if level < 11
step
Enter the cave |goto Dun Morogh 37.80,53.69 < 20 |walk
click MacGrann's Meat Locker##272
|tip Inside the cave.
|tip Wait for the elite yeti to leave the cave and walk away before you enter the cave.
collect MacGrann's Dried Meats##2667 |q 312/1 |goto Dun Morogh 38.51,53.93
|tip He runs back quickly after he walks down the path a bit.
|tip Try to get into the cave as quick as you can when he leaves it, to give yourself time to run back out safely.
|tip If he attacks you as you leave the cave, just run away.
|only if haveq(312)
step
Follow the path up |goto Dun Morogh 36.01,51.96 < 15 |only if walking
talk Tundra MacGrann##1266
|tip On top of the mountain.
turnin Tundra MacGrann's Stolen Stash##312 |goto Dun Morogh 34.57,51.65
|only if readyq(312)
stickystart "Kill_Frostmane_Headhunters"
step
Enter the cave |goto Dun Morogh 24.84,50.89 < 20 |walk
Follow the path down |goto Dun Morogh 22.61,50.53 < 20 |walk
Fully Explore Frostmane Hold |q 287/2 |goto Dun Morogh 22.79,52.10
|tip Inside the cave.
|tip Watch for patrols and respawns while inside the cave. |only if hardcore
|only if haveq(287)
step
label "Kill_Frostmane_Headhunters"
Follow the path up |goto Dun Morogh 21.78,50.47 < 20 |walk
kill 5 Frostmane Headhunter##1123 |q 287/1 |goto Dun Morogh 24.87,50.90
|tip Inside and outside the cave. |notinsticky
|tip Watch for patrols and respawns while inside the cave. |only if hardcore |notinsticky
|only if haveq(287)
stickystart "Collect_Gyromechanic_Gears"
step
Leave the cave |goto Dun Morogh 25.07,50.99 < 20 |walk |only if subzone("Frostmane Hold") and _G.IsIndoors()
kill Leper Gnome##1211+
|tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
collect 8 Restabilization Cog##3083 |q 412/1 |goto Dun Morogh 25.64,43.33
|only if haveq(412)
step
label "Collect_Gyromechanic_Gears"
kill Leper Gnome##1211+
|tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
collect 8 Gyromechanic Gear##3084 |q 412/2 |goto Dun Morogh 25.64,43.33
|only if haveq(412)
step
Leave the building |goto Dun Morogh 46.95,52.05 < 10 |walk |only if subzone("Thunderbrew Distillery")
talk Senir Whitebeard##1252
turnin Frostmane Hold##287 |goto Dun Morogh 46.73,53.82
|only if readyq(287)
step
Enter the building |goto Dun Morogh 45.97,48.84 < 10 |walk
talk Razzle Sprysprocket##1269
|tip Inside the building.
turnin Operation Recombobulation##412 |goto Dun Morogh 45.85,49.37
|only if readyq(412)
step
talk Rudra Amberstill##1265
accept Protecting the Herd##314 |goto Dun Morogh 63.08,49.89
|tip Only do this quest if you purchased throwing weapons |only if Warrior or Rogue
|tip And you trained Gouge |only if Rogue
|tip And you trained Hamstring |only if Warrior
|tip We strongly recommend trying to find help for this quest as it gives a large weapon upgrade. |only if Paladin
|tip We do not recommend trying to solo him however. |only if Paladin
|tip Skip this step if you aren't comfortable cheesing an elite, you will just need to grind more later. |only if hardcore
|tip We strongly recommend watching the video below before attempting this quest. |only if not Paladin
Click Here To Copy The Video Link |popuptext youtu.be/z1BVC3I33qE |only if not Paladin
step
Aggro Vagash |goto Dun Morogh 62.41,48.08 > 10
|tip He can spawn deep in the cave. Wait for him to come out if you want an easier time. |only if not Paladin
|tip Follow the arrow and kite him to the fence location. |only if not Paladin
|tip Hop back and forth over the fence so Vagash can't attack you while you whittle him down. |only if not Paladin
|tip We strongly recommend watching the video below before attempting this quest. |only if not Paladin
Click Here To Copy The Video Link |popuptext youtu.be/z1BVC3I33qE |only if not Paladin
|tip Skip this step if you are unable to find help, it is difficult to solo. |only if Paladin
collect Fang of Vagash##3627 |q 314/1 |goto Dun Morogh 63.90,49.86
step
talk Rudra Amberstill##1265
turnin Protecting the Herd##314 |goto Dun Morogh 63.08,49.89
|only if readyq(314)
step
talk Senator Mehr Stonehallow##1977
accept The Public Servant##433 |goto Dun Morogh 68.67,55.97
step
talk Foreman Stonebrow##1254
accept Those Blasted Troggs!##432 |goto Dun Morogh 69.08,56.33
stickystart "Kill_Rockjaw_Skullthumpers"
step
Enter the cave |goto Dun Morogh 70.70,56.49 < 20 |walk
kill 10 Rockjaw Bonesnapper##1117 |q 433/1 |goto Dun Morogh 70.98,54.77
|tip Inside the cave.
|tip Watch for patrols and respawns while inside the cave. |only if hardcore
step
label "Kill_Rockjaw_Skullthumpers"
kill 6 Rockjaw Skullthumper##1115 |q 432/1 |goto Dun Morogh 70.70,56.49
|tip Inside and outside the cave.
|tip Watch for patrols and respawns while inside the cave. |only if hardcore |notinsticky
step
Kill enemies around this area
|tip Inside and outside the cave. |only if not hardcore
|tip Try to grind outside of the cave. |only if hardcore
|tip Watch for patrols and respawns while in the area. |only if hardcore
|tip Getting this far into level 10 will allow you to reach level 11 after turning in quests soon.
ding 10,6400 |goto Dun Morogh 70.70,56.49
step
Leave the cave |goto Dun Morogh 70.70,56.49 < 20 |walk |only if subzone("Gol'Bolar Quarry Mine")
Follow the path up |goto Dun Morogh 67.86,57.69 < 20 |only if walking
talk Senator Mehr Stonehallow##1977
turnin The Public Servant##433 |goto Dun Morogh 68.67,55.97
step
talk Foreman Stonebrow##1254
turnin Those Blasted Troggs!##432 |goto Dun Morogh 69.08,56.33
step
Follow the road |goto Dun Morogh 67.68,52.75 < 40 |only if walking and subzone("Gol'Bolar Quarry")
Follow the road and run through the tunnel |goto Dun Morogh 81.21,42.70 < 10 |only if walking and not subzone("North Gate Outpost")
talk Pilot Hammerfoot##1960
accept The Lost Pilot##419 |goto Dun Morogh 83.89,39.19
step
click A Dwarven Corpse##2059
turnin The Lost Pilot##419 |goto Dun Morogh 79.67,36.17
accept A Pilot's Revenge##417 |goto Dun Morogh 79.67,36.17
step
kill Mangeclaw##1961
|tip He walks around this area.
collect Mangy Claw##3183 |q 417/1 |goto Dun Morogh 78.31,37.76
step
talk Pilot Hammerfoot##1960
turnin A Pilot's Revenge##417 |goto Dun Morogh 83.89,39.19
step
Run through the tunnel |goto Dun Morogh 84.42,31.02 < 10 |only if walking and not zone("Loch Modan")
Enter the building |goto Loch Modan 23.53,17.89 < 10 |walk
talk Mountaineer Stormpike##1343
|tip Upstairs inside the building.
turnin Stormpike's Delivery##353 |goto Loch Modan 24.76,18.40
accept Filthy Paws##307 |goto Loch Modan 24.76,18.40
stickystart "Collect_Boar_Intestines"
stickystart "Collect_Spider_Ichors"
stickystart "Collect_Bear_Meat"
step
Kill enemies around this area
|tip Getting this far into level 11 will allow you to reach level 12 after turning in quests soon.
|tip You are about to have to complete a quest that can be pretty difficult at level 11, so being a level higher will help.
ding 11,7950 |goto Loch Modan 35.69,31.78 |q 418 |future
You can find more around: |notinsticky
[29.17,23.57]
[29.43,48.28]
step
Enter the building |goto Loch Modan 35.23,47.75 < 7 |walk
talk Vidra Hearthstove##1963
|tip Inside the building.
accept Thelsamar Blood Sausages##418 |goto Loch Modan 34.83,49.28
stickystop "Collect_Boar_Intestines"
stickystop "Collect_Spider_Ichors"
stickystop "Collect_Bear_Meat"
step
talk Yanni Stoutheart##1682
|tip Inside the building.
|tip If you can afford it, and you need more bag space, buy bags.
Visit the Vendor |vendor Yanni Stoutheart##1682 |goto Loch Modan 34.76,48.62 |q 416 |future
step
map Loch Modan
path follow strictbounce; loop off; ants straight; dist 20; markers none
path	32.67,49.72	33.27,49.16	33.86,48.37	34.30,47.64	34.91,47.05
path	35.56,46.76	36.09,46.37	37.11,46.01	37.32,45.60	37.37,44.45
path	37.29,43.33	36.73,41.98
talk Mountaineer Kadrell##1340
|tip He walks around this area.
accept Rat Catching##416
accept Mountaineer Stormpike's Task##1339
|tip This quest won't be available if you've picked up Stormpike's Order. |only if haveq(1338)
|tip Drop Stormpike's Order and it should become available. |only if haveq(1338)
stickystart "Collect_Boar_Intestines"
stickystart "Collect_Spider_Ichors"
stickystart "Collect_Bear_Meat"
stickystart "Collect_Tunnel_Rat_Ears"
stickystart "Collect_Linen_Cloth_Paladin"
step
click Miners' League Crates##271
|tip They look like piles of brown boxes on the ground around this area inside the mine.
|tip Watch for patrols and respawns while in the area. |only if hardcore
|tip Tunnel Rat Geomancers are casters that deal heavy damage. |only if hardcore
|tip This mine can be dangerous, so try to stay near the entrance and wait for boxes to respawn, if you can, so you can leave quickly when you're finished.
collect 4 Miners' Gear##2640 |q 307/1 |goto Loch Modan 35.48,18.85
step
label "Collect_Tunnel_Rat_Ears"
Leave the mine |goto Loch Modan 35.48,18.85 < 10 |walk |only if subzone("Silver Stream Mine") and _G.IsIndoors()
Kill Tunnel Rat enemies around this area
collect 12 Tunnel Rat Ear##3110 |q 416/1 |goto Loch Modan 24.57,29.79
|tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
You can find more around [26.08,43.64]
step
label "Collect_Linen_Cloth_Paladin"
Kill Tunnel Rat enemies around this area
|tip You will need these soon for a Paladin class quest.
|tip Be careful not to accidentally sell these to a vendor.
collect 10 Linen Cloth##2589 |goto Loch Modan 24.57,29.79 |q 1644 |future
You can find more around [26.08,43.64]
|only if Human Paladin
step
talk Mountaineer Stormpike##1343
|tip Upstairs inside the building.
turnin Filthy Paws##307 |goto Loch Modan 24.76,18.40
turnin Mountaineer Stormpike's Task##1339 |goto Loch Modan 24.76,18.40
accept Stormpike's Order##1338 |goto Loch Modan 24.76,18.40
step
label "Collect_Boar_Intestines"
kill Mountain Boar##1190+
collect 3 Boar Intestines##3172 |goto Loch Modan 36.99,34.36 |q 418 |future
You can find more around [29.17,23.57]
step
label "Collect_Spider_Ichors"
kill Forest Lurker##1195+
collect 3 Spider Ichor##3174 |goto Loch Modan 35.69,31.78 |q 418 |future
You can find more around: |notinsticky
[29.17,23.57]
[29.43,48.28]
step
label "Collect_Bear_Meat"
kill Elder Black Bear##1186+
collect 3 Bear Meat##3173 |goto Loch Modan 35.68,32.10 |q 418 |future
You can find more around: |notinsticky
[30.73,25.86]
[28.66,11.57]
[24.03,25.79]
[27.45,28.54]
[28.09,40.94]
step
talk Vidra Hearthstove##1963
|tip Inside the building.
turnin Thelsamar Blood Sausages##418 |goto Loch Modan 34.83,49.28
step
map Loch Modan
path follow strictbounce; loop off; ants straight; dist 20; markers none
path	32.67,49.72	33.27,49.16	33.86,48.37	34.30,47.64	34.91,47.05
path	35.56,46.76	36.09,46.37	37.11,46.01	37.32,45.60	37.37,44.45
path	37.29,43.33	36.73,41.98
talk Mountaineer Kadrell##1340
|tip He walks around this area.
turnin Rat Catching##416
step
talk Thorgrum Borrelson##1572
fpath Thelsamar |goto Loch Modan 33.94,50.95
step
talk Mountaineer Cobbleflint##1089
accept In Defense of the King's Lands##224 |goto Loch Modan 22.07,73.12
step
Enter the building |goto Loch Modan 23.71,75.47 < 10 |walk
talk Captain Rugelfuss##1092
|tip Upstairs inside the building.
accept The Trogg Threat##267 |goto Loch Modan 23.23,73.67
stickystart "Kill_Stonesplinter_Troggs"
stickystart "Kill_Stonesplinter_Scouts"
step
Follow the road to the path here |goto Loch Modan 29.32,66.73 < 40 |only if walking and not subzone("Stonesplinter Valley")
Kill Stonesplinter enemies around this area
collect 8 Trogg Stone Tooth##2536 |q 267/1 |goto Loch Modan 32.51,73.25
|tip Watch for patrols and respawns while in the area. |only if hardcore
|tip Enemies tend to bunch together, so be prepared for adds. |only if hardcore
step
label "Kill_Stonesplinter_Troggs"
kill 10 Stonesplinter Trogg##1161 |q 224/1 |goto Loch Modan 32.51,73.25
|tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
|tip Enemies tend to bunch together, so be prepared for adds. |only if hardcore |notinsticky
step
label "Kill_Stonesplinter_Scouts"
kill 10 Stonesplinter Scout##1162 |q 224/2 |goto Loch Modan 32.51,73.25
|tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
|tip Enemies tend to bunch together, so be prepared for adds. |only if hardcore |notinsticky
step
Kill enemies around this area
|tip Getting this far into level 12 will allow you to reach level 13 after turning in quests soon.
|tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
|tip Enemies tend to bunch together, so be prepared for adds. |only if hardcore |notinsticky
ding 12,8300 |goto Loch Modan 32.51,73.25
step
Leave Stonesplinter Valley and follow the road |goto Loch Modan 30.57,69.69 < 20 |only if walking and subzone("Stonesplinter Valley")
talk Mountaineer Cobbleflint##1089
turnin In Defense of the King's Lands##224 |goto Loch Modan 22.07,73.13
step
Enter the building |goto Loch Modan 23.71,75.45 < 7 |walk
talk Captain Rugelfuss##1092
|tip Upstairs inside the building.
turnin The Trogg Threat##267 |goto Loch Modan 23.23,73.67
step
Enter the building |goto Stormwind City 43.44,35.14 < 10 |walk
talk Duthorian Rall##6171
|tip Inside the building.
accept The Tome of Divinity##1641 |goto Stormwind City 39.81,29.80 |instant
|only if Human Paladin
step
use the Tome of Divinity##6775
accept The Tome of Divinity##1642
|only if Human Paladin
step
talk Duthorian Rall##6171
|tip Inside the building.
turnin The Tome of Divinity##1642 |goto Stormwind City 39.81,29.80
accept The Tome of Divinity##1643 |goto Stormwind City 39.81,29.80
|only if Human Paladin
step
Leave the building |goto Stormwind City 43.06,34.49 < 10 |walk |only if subzone("Cathedral of Light")
talk Stephanie Turner##6174
turnin The Tome of Divinity##1643 |goto Stormwind City 57.08,61.74
accept The Tome of Divinity##1644 |goto Stormwind City 57.08,61.74
|only if Human Paladin
step
talk Stephanie Turner##6174
|tip You should already have 10 Linen Cloth from earlier in the guide.
turnin The Tome of Divinity##1644 |goto Stormwind City 57.08,61.74
accept The Tome of Divinity##1780 |goto Stormwind City 57.08,61.74
|only if Human Paladin
step
Enter the building |goto Stormwind City 43.44,35.14 < 10 |walk
talk Duthorian Rall##6171
|tip Inside the building.
turnin The Tome of Divinity##1780 |goto Stormwind City 39.81,29.80
accept The Tome of Divinity##1781 |goto Stormwind City 39.81,29.80
|only if Human Paladin
step
talk Gazin Tenorm##6173
|tip Inside the building.
turnin The Tome of Divinity##1781 |goto Stormwind City 38.55,26.45
accept The Tome of Divinity##1786 |goto Stormwind City 38.55,26.45
|only if Human Paladin
step
Leave the building |goto Stormwind City 43.06,34.49 < 10 |walk |only if subzone("Cathedral of Light")
use the Symbol of Life##6866
|tip Use it on Henze Faulk's corpse.
|tip This will resurrect him and allow you to talk to him.
Watch the dialogue
talk Henze Faulk##6172
turnin The Tome of Divinity##1786 |goto Elwynn Forest 72.60,51.41
accept The Tome of Divinity##1787 |goto Elwynn Forest 72.60,51.41
|only if Human Paladin
step
kill Defias Rogue Wizard##474+
collect Defias Script##6846 |q 1787/1 |goto Elwynn Forest 74.07,51.57
|only if Human Paladin
step
Enter the building |goto Stormwind City 43.44,35.14 < 10 |walk
talk Gazin Tenorm##6173
|tip Inside the building.
turnin The Tome of Divinity##1787 |goto Stormwind City 38.56,26.47
accept The Tome of Divinity##1788 |goto Stormwind City 38.56,26.47
|only if Human Paladin
step
talk Duthorian Rall##6171
|tip Inside the building.
turnin The Tome of Divinity##1788 |goto Stormwind City 39.81,29.80
|only if Human Paladin
step
talk Furen Longbeard##5413
turnin Stormpike's Order##1338 |goto Stormwind City 58.09,16.53
step
Run up the ramp |goto Stormwind City 62.42,62.28 < 10 |only if walking
talk Dungar Longdrink##352
|tip Inside the building.
turnin Dungar Longdrink##6261 |goto Stormwind City 66.27,62.13
accept Return to Lewis##6285 |goto Stormwind City 66.27,62.13
|only if Human
step
A New Wand Is Available
|tip The 'Greater Magic Wand' is created with the Enchanting profession at level 70.
|tip It requires 1 Simple Wood and 1 Greater Magic Essence to craft.
|tip You can use the Auction House to acquire one, or craft one yourself if you are able. |only if not selfmade
|tip You can also craft one yourself if you are able. |only if selfmade
Click Here to Continue |confirm
|only if Priest and itemcount(11288) == 0
step
talk Innkeeper Heather##8931
collect 40 Longjaw Mud Snapper##4592 |goto Westfall/0 52.86,53.72 |q 102
|tip This food is extremely cheap compared to most.
|tip Stock up and use it liberally.
|only if Warrior or Rogue
step
talk Scout Galiaan##878
accept Red Leather Bandanas##153 |goto Westfall 53.98,52.98
step
talk Gryan Stoutmantle##234
accept The People's Militia##12 |goto Westfall 56.33,47.52
step
talk Captain Danuvin##821
accept Patrolling Westfall##102 |goto Westfall 56.42,47.62
step
Enter the building |goto Westfall 56.51,47.40 < 10 |walk
talk Quartermaster Lewis##491
|tip Inside the building.
turnin Return to Lewis##6285 |goto Westfall 57.00,47.17
|only if Human
stickystart "Collect_Stringy_Vulture_Meat"
stickystart "Collect_Handfuls_Of_Oats"
stickystart "Collect_Goretusk_Livers"
stickystart "Kill_Defias_Trappers"
stickystart "Kill_Defias_Smugglers"
step
label "Kill_Defias_Trappers"
kill 15 Defias Trapper##504 |q 12/1 |goto Westfall 49.35,47.19
|tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
You can find more around: |notinsticky
[50.73,40.31]
[46.51,38.74]
[46.51,27.82]
step
label "Kill_Defias_Smugglers"
kill 15 Defias Smuggler##95 |q 12/2 |goto Westfall 49.35,47.19
|tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
You can find more around: |notinsticky
[50.73,40.31]
[46.51,38.74]
[46.51,27.82]
stickystart "Collect_Goretusk_Snouts"
step
Kill enemies around this area
|tip Getting this far into level 13 will allow you to reach level 14 when turning in quests soon.
|tip You are about to do a few quests where you may have to fight multiple enemies fairly often, so it will help to be a level higher.
|tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
ding 13,9500 |goto Westfall 49.35,47.19
You can find more around: |notinsticky
[50.73,40.31]
[46.51,38.74]
stickystart "Collect_Okra"
stickystart "Kill_Harvest_Watchers"
step
click Furlbrow's Wardrobe##290
|tip Clear the area before trying to complete this quest.
|tip It looks like a dark colored tall piece of furniture inside the building - but don't go inside the building.
|tip Be careful to avoid the doorway of the building, so you don't aggro the enemies inside.
|tip Set your max camera distance to the highest value in the game's Interface Options.
|tip Scroll your camera all the way out and stand here, outside the building.
|tip Adjust your camera so that you can see, and click, Furlbrow's Wardrobe through the doorway.
|tip You can click it from outside the building by doing this.
|tip If you can't get it to work, try to kill the enemies inside the building. |only if not hardore
|tip If you have trouble, try to find someone to help you. |only if hardcore
collect Furlbrow's Pocket Watch##841 |q 64/1 |goto Westfall 49.24,19.42
step
Kill Defias enemies around this area
collect 15 Red Leather Bandana |q 153/1 |goto Westfall 49.24,19.42
|tip Watch for patrols and respawns while in the area. |only if hardcore
You can find more around: |notinsticky
[50.73,40.31]
[46.51,38.74]
[46.51,27.82]
stickystop "Collect_Okra"
stickystop "Kill_Harvest_Watchers"
stickystart "Collect_Murloc_Eyes"
step
Kill Riverpaw enemies around this area
collect 8 Gnoll Paw##725 |q 102/1 |goto Westfall 52.06,14.98
|tip The gnolls tend to aggro as a group when at camps. |only if hardcore
|tip You may have to wait on respawns to find Gnolls that aren't in large groups.
|tip Focus on killing Murlocs for their eyes as you wait on respawns.
You can find more around: |notinsticky
[56.88,13.69]
[44.90,13.81]
step
label "Collect_Murloc_Eyes"
Kill Murloc enemies around this area
|tip The murloc tend to aggro in groups near the huts. |only if hardcore
collect 3 Murloc Eye##730 |q 38/2 |goto Westfall 54.65,10.94
step
Follow the path up |goto Westfall 54.63,14.26 < 30 |c |q 151
|only if subzone("Longshore")
step
label "Collect_Goretusk_Livers"
Kill Goretusk enemies around this area
|tip Go out of your way to kill boars, this quest can take a while.
collect 8 Goretusk Liver##723 |q 22/1 |goto Westfall 53.55,41.12
|tip Be careful not to accidentally sell these to a vendor.
You can find more around: |notinsticky
[60.81,45.54]
[60.01,29.16]
step
label "Collect_Goretusk_Snouts"
Kill Goretusk enemies around this area
|tip They look like boars.
collect 3 Goretusk Snout##731 |q 38/3 |goto Westfall 53.55,41.12
|tip Be careful not to accidentally sell these to a vendor.
You can find more around: |notinsticky
[60.81,45.54]
[60.01,29.16]
step
label "Collect_Stringy_Vulture_Meat"
Kill Fleshripper enemies around this area
|tip They look like vultures.
collect 3 Stringy Vulture Meat##729 |q 38/1 |goto Westfall 53.55,41.12
|tip Be careful not to accidentally sell these to a vendor.
You can find more around: |notinsticky
[60.81,45.54]
[60.01,29.16]
[49.44,27.31]
step
label "Collect_Handfuls_Of_Oats"
click Sack of Oats##2724
|tip They look like tan grain bags on the ground around this area.
|tip They are spread out around Westfall, usually concentrated near and around farm areas.
|tip Keep an eye out for these as you run around completing other quests.
collect 8 Handful of Oats##1528 |q 151/1 |goto Westfall 50.51,20.69
You can find more around: |notinsticky
[57.38,18.41]
step
talk Verna Furlbrow##238
turnin Poor Old Blanchy##151 |goto Westfall 59.92,19.42
step
talk Farmer Furlbrow##237
turnin The Forgotten Heirloom##64 |goto Westfall 59.95,19.36
stickystart "Kill_Harvest_Watchers"
step
label "Collect_Okra"
kill Harvest Watcher##114+
collect 3 Okra##732 |q 38/4 |goto Westfall 53.89,32.26
|tip Make sure not to sell these to a vendor.
You can find more around [51.03,22.94]
step
Enter the building |goto Westfall 56.15,31.05 < 10 |walk
talk Salma Saldean##235
|tip Inside the building.
turnin Goretusk Liver Pie##22 |goto Westfall 56.42,30.52
step
Enter the building |goto Westfall 56.15,31.05 < 10 |walk
talk Salma Saldean##235
|tip Inside the building.
turnin Westfall Stew##38 |goto Westfall 56.42,30.52
step
label "Kill_Harvest_Watchers"
kill 20 Harvest Watcher##114 |q 9/1 |goto Westfall 53.89,32.26
You can find more around [51.03,22.94]
step
Kill enemies around this area
|tip Getting this far into level 14 will allow you to reach level 15 when turning in quest soon.
ding 14,11900 |goto Westfall 53.89,32.26
You can find more around [51.03,22.94]
step
talk Farmer Saldean##233
turnin The Killing Fields##9 |goto Westfall 56.04,31.23
Sell your junk here as well |vendor Farmer Saldean##233 |goto Westfall 56.04,31.23
|only if readyq(9)
step
talk Captain Danuvin##821
turnin Patrolling Westfall##102 |goto Westfall 56.42,47.62
step
talk Gryan Stoutmantle##234
turnin The People's Militia##12 |goto Westfall 56.33,47.52
step
talk Gryan Stoutmantle##234
accept The Defias Brotherhood##65 |goto Westfall 56.33,47.52
step
talk Quartermaster Lewis##491
|tip Inside the building.
|tip If you can afford it, and you need more bag space, buy bags.
Visit the Vendor |vendor Quartermaster Lewis##491 |goto Westfall 57.00,47.17 |q 65
step
talk Scout Galiaan##878
turnin Red Leather Bandanas##153 |goto Westfall 53.99,52.98
step
talk Jennea Cannon##5497 |only if Mage
talk Einris Brightspear##5515 |only if Hunter
talk Ursula Deline##5495 |only if Warlock
talk Wu Shen##5479 |only if Warrior
talk Osborne the Night Man##918 |only if Rogue
talk Sheldras Moontree##5504 |only if Druid
talk Brother Benjamin##5484 |only if Priest
talk Arthur the Faithful##5491 |only if Paladin
trainer Jennea Cannon##5497 |goto Stormwind City/0 38.62,79.35 |only if Mage |q 963 |future
trainer Einris Brightspear##5515  |goto Stormwind City/0 61.66,15.30 |only if Hunter |q 963 |future
trainer Ursula Deline##5495 |goto Stormwind City/0 26.13,77.20 |only if Warlock |q 963 |future
trainer Wu Shen##5479 |goto Stormwind City/0 78.72,45.77 |only if Warrior |q 963 |future
trainer Osborne the Night Man##918 |goto Stormwind City/0 74.54,52.80 |only if Rogue |q 963 |future
trainer Sheldras Moontree##5504 |goto Stormwind City/0 20.92,55.52 |only if Druid |q 963 |future
trainer Brother Benjamin##5484 |goto Stormwind City/0 41.64,28.98 |only if Priest |q 963 |future
trainer Arthur the Faithful##5491 |goto Stormwind City/0 38.65,32.80 |only if Paladin |q 963 |future
|tip Inside the tower. |only if Mage
|tip Inside the building. |only if Hunter or Warrior or Priest or Paladin
|tip He patrols inside. |only if Priest
|tip In the basement. |only if Warlock
|tip Train your spells.
|only if not hardcore
step
Follow the path up |goto Dun Morogh 30.71,34.33 < 10 |only if walking
Continue up the path |goto Dun Morogh 31.06,32.56 < 7 |only if walking
Continue up the path |goto Dun Morogh 31.43,32.34 < 7 |only if walking
Continue up the path |goto Dun Morogh 31.14,30.50 < 7 |only if walking
Follow the path down |goto Dun Morogh 32.33,28.63 < 15 |only if walking
Follow the path |goto Dun Morogh 32.74,27.11 < 20 |only if walking
Jump to Your Death |havebuff Ghost##8326 |goto Eastern Kingdoms 44.92,51.98 |q 963 |future |notravel
|tip While you are in the Wetlands, keep running north and jump off the cliff.
|tip This is a much easier and faster way to reach Menethil Harbor.
|only if not hardcore
step
talk Spirit Healer##6491
Select _"Return me to life."_
Resurrect at the Spirit Healer Near Menethil Harbor |complete not isdead |goto Wetlands 11.72,43.30 |q 963 |future |zombiewalk
|only if not hardcore
step
Enter Menethil Harbor and the building |goto Wetlands 10.25,56.45 < 10 |walk |only if not subzone("Menethil Keep")
talk Neal Allen##1448
|tip Inside the building.
buy Bronze Tube##4371 |n
|tip If you can afford it.
|tip It may not be for sale, since it's a limited supply item.
|tip This item is needed for a quest later on in Duskwood.
Visit the Vendor |vendor Neal Allen##1448 |goto Wetlands 10.75,56.75 |q 174 |future
|only if not hardcore
step
_Note_
We are going to Menethil Harbor.
|tip The remaining quests in Eastern Kingdoms are high level.
|tip There is a slow (45 minutes) but safe way, or a fast (10 minutes) but slightly dangerous way that also lets you train spells.
|tip This will be your only chance to train in the next 6-8 levels. |only if Warlock or Paladin or Mage
|tip We have a video to help with the fast route and it is relatively safe if you are patient.
I want the fast but risky route. |confirm	|next "Fast_Route"	|or	|q 3524 |future
I want the slow but safe route.	|confirm	|next "Safe_Route"	|or	|q 3524 |future
|only if hardcore
step
label "Fast_Route"
talk Jennea Cannon##5497 |only if Mage
talk Einris Brightspear##5515 |only if Hunter
talk Ursula Deline##5495 |only if Warlock
talk Wu Shen##5479 |only if Warrior
talk Osborne the Night Man##918 |only if Rogue
talk Sheldras Moontree##5504 |only if Druid
talk Brother Benjamin##5484 |only if Priest
talk Arthur the Faithful##5491 |only if Paladin
trainer Jennea Cannon##5497 |goto Stormwind City/0 38.62,79.35 |only if Mage |q 963 |future
trainer Einris Brightspear##5515  |goto Stormwind City/0 61.66,15.30 |only if Hunter |q 963 |future
trainer Ursula Deline##5495 |goto Stormwind City/0 26.13,77.20 |only if Warlock |q 963 |future
trainer Wu Shen##5479 |goto Stormwind City/0 78.72,45.77 |only if Warrior |q 963 |future
trainer Osborne the Night Man##918 |goto Stormwind City/0 74.54,52.80 |only if Rogue |q 963 |future
trainer Sheldras Moontree##5504 |goto Stormwind City/0 20.92,55.52 |only if Druid |q 963 |future
trainer Brother Benjamin##5484 |goto Stormwind City/0 41.64,28.98 |only if Priest |q 963 |future
trainer Arthur the Faithful##5491 |goto Stormwind City/0 38.65,32.80 |only if Paladin |q 963 |future
|tip Inside the tower. |only if Mage
|tip Inside the building. |only if Hunter or Warrior or Priest or Paladin
|tip He patrols inside. |only if Priest
|tip In the basement. |only if Warlock
|tip Train your spells.
|only if hardcore
step
Head to the path above the frozen lake |goto Dun Morogh/0 58.11,41.94 < 30 |only if walking
Continue up the hill |goto Dun Morogh/0 60.60,44.07 < 10 |only if walking
Jump at the dark part of the mountain to skip up. Watch the video if you need visual help, it can be confusing. |goto Dun Morogh/0 60.72,44.18 < 5 |only if walking
Jump up the hill further |goto Dun Morogh/0 61.03,44.06 < 10 |only if walking
Continue following the arrow exactly |goto Dun Morogh/0 61.03,44.06 < 15 |only if walking
Continue following the arrow exactly |goto Dun Morogh/0 61.14,41.38 < 15 |only if walking
Continue following the arrow exactly |goto Dun Morogh/0 59.51,40.00 < 15 |only if walking
Continue following the arrow exactly |goto Dun Morogh/0 59.23,39.15 < 15 |only if walking
Continue following the arrow exactly |goto Dun Morogh/0 61.29,37.96 < 15 |only if walking
Continue following the arrow exactly |goto Dun Morogh/0 61.37,32.08 < 15 |only if walking
Continue following the arrow exactly |goto Dun Morogh/0 62.14,27.43 < 15 |only if walking
Continue following the arrow exactly |goto Dun Morogh/0 63.16,25.74 < 15 |only if walking
Continue following the arrow exactly |goto Dun Morogh/0 63.34,23.87 < 15 |only if walking
Continue following the arrow exactly |goto Dun Morogh/0 63.89,22.33 < 15 |only if walking
Continue following the arrow exactly |goto Dun Morogh/0 65.14,22.40 < 15 |only if walking
Continue following the arrow exactly |goto Dun Morogh/0 66.77,19.23 < 15 |only if walking
Continue following the arrow exactly |goto Dun Morogh/0 67.82,18.03 < 15 |only if walking
Continue following the arrow exactly |goto Dun Morogh/0 67.06,14.43 < 15 |only if walking
You are going to jump down the cliff, you cannot die if you're full health and jump towards the arrow. |goto Dun Morogh/0 65.79,12.22 < 10 |only if walking
You are going to jump down the cliff, you cannot die if you're full health and jump towards the arrow. |goto Dun Morogh/0 65.58,10.85 < 10 |only if walking
Jump onto the small hill and be full health before jumping |goto Dun Morogh/0 65.75,10.05 < 10 |only if walking
Continue following the arrow exactly |goto Dun Morogh/0 66.95,9.91 < 15 |only if walking
Continue following the arrow exactly |goto Wetlands/0 25.52,68.63 < 15 |only if walking |notravel
Continue following the arrow exactly |goto Wetlands/0 17.77,67.76 < 15 |only if walking |notravel
You are going to jump down the cliff, you cannot die if you're full health and jump towards the arrow. |goto Wetlands/0 17.05,67.44 < 15 |only if walking |notravel
Be full health and jump towards the arrow exactly |goto Wetlands/0 16.63,65.19 < 10 |only if walking |notravel
Be full health and jump towards the arrow exactly |goto Wetlands/0 16.14,64.41 < 10 |only if walking |notravel
There are two crocodiles in the water and murlocs to your left. Take your time and wait for a good window before crossing. |goto Wetlands/0 14.97,63.97 < 20 |only if walking |notravel
Follow the arrow exactly to reach Menethil Harbor |goto Wetlands/0 12.62,60.96 < 30 |q 3524 |future |next "Post_Menethil_Skip" |only if walking |notravel
|tip You can watch a video of us doing the route if want to be extra safe by clicking here:
Click Here To Copy The Video Link |popuptext www.youtube.com/watch?v=g5Aak-n_XJk
|only if hardcore
step
label "Safe_Route"
Enter the water in Westfall and swim north along the coast to Menethil Harbor in the Wetlands |goto Westfall 54.32,9.30 < 50 |c |q 963 |future
|only if hardcore
step
Swim along the coast to Menethil Harbor in the Wetlands |goto Wetlands 9.37,61.86 < 40 |c |q 963 |future |notravel
|tip This is a long swim (30+ minutes), but it is very safe with no enemies along the way.
|tip There is virtually no risk of dying, unlike other methods.
|tip As you swim north, stay close enough to the cliffs to avoid getting too fatigued.
|tip Once you reach Baradin Bay, near Menethil Harbor, swim through the middle of the bay in the parts that don't make you fatigued.
|only if hardcore
step
label "Post_Menethil_Skip"
talk Shellei Brondir##1571
fpath Menethil Harbor |goto Wetlands 9.49,59.69
]])