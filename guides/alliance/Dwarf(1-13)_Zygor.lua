ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Dwarf & Gnome Starter (1-13)",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."Dun Morogh",
condition_suggested=function() return raceclass{'Dwarf','Gnome'} and level <= 12 end,
condition_suggested_race=function() return raceclass{'Dwarf','Gnome'} end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Darkshore (13-17)",
hardcore = true,
},[[
step
_NOTE:_
Save All Linen Cloth You Find
|tip As you quest in Elwynn Forest, save all Linen Cloth you find.
|tip Be careful not to accidentally sell them to a vendor.
|tip You will need ~70 Linen Cloth when you are level 10-11.
|tip You will use them to create your wand, which will be a powerful weapon for you.
|tip However, if you are confident you will be able to buy a wand from the Auction House (if this isn't a new or populated server), you can ignore this. |only if not selfmade
Click Here to Continue |confirm |q 364 |future
|only if Priest
step
talk Sten Stoutarm##658
accept Dwarven Outfitters##179 |goto Dun Morogh 29.93,71.20
step
Kill Wolf enemies around this area
'|kill Ragged Young Wolf##705, Ragged Timber Wolf##704
collect 8 Tough Wolf Meat##750 |q 179/1 |goto Dun Morogh 30.14,74.59
You can find more around [26.93,75.75]
step
talk Sten Stoutarm##658
turnin Dwarven Outfitters##179 |goto Dun Morogh 29.93,71.20
accept Simple Rune##3106 |goto Dun Morogh 29.93,71.20		|only Dwarf Warrior
accept Encrypted Rune##3109 |goto Dun Morogh 29.93,71.20		|only Dwarf Rogue
accept Hallowed Rune##3110 |goto Dun Morogh 29.93,71.20		|only Dwarf Priest
accept Consecrated Rune##3107 |goto Dun Morogh 29.93,71.20		|only Dwarf Paladin
accept Etched Rune##3108 |goto Dun Morogh 29.93,71.20		|only Dwarf Hunter
accept Glyphic Memorandum##3114 |goto Dun Morogh 29.93,71.20	|only Gnome Mage
accept Simple Memorandum##3112 |goto Dun Morogh 29.93,71.20	|only Gnome Warrior
accept Tainted Memorandum##3115 |goto Dun Morogh 29.93,71.20	|only Gnome Warlock
accept Encrypted Memorandum##3113 |goto Dun Morogh 29.93,71.20	|only Gnome Rogue
accept Coldridge Valley Mail Delivery##233 |goto Dun Morogh 29.93,71.20
step
talk Balir Frosthammer##713
accept A New Threat##170 |goto Dun Morogh 29.71,71.25
stickystart "Kill_Rockjaw_Troggs"
stickystart "Kill_Burly_Rockjaw_Troggs"
step
label "Kill_Rockjaw_Troggs"
kill 6 Rockjaw Trogg##707 |q 170/1 |goto Dun Morogh 30.65,74.94
|tip These are typically more rare, prioritize them where possible.
step
label "Kill_Burly_Rockjaw_Troggs"
kill 6 Burly Rockjaw Trogg##724 |q 170/2 |goto Dun Morogh 30.65,74.94
step
talk Balir Frosthammer##713
turnin A New Threat##170 |goto Dun Morogh 29.71,71.25
|tip Kill any enemies on your way to the turnin to save on grinding later
stickystart "Hunter_Ammo_1"
step
label "Hunter_Ammo_1"
talk Adlin Pridedrift##829
Visit the vendor |vendor Adlin Pridedrift##829 |goto Dun Morogh/0 30.09,71.57 |q 233
collect 800 Light Shot##2516 |goto Dun Morogh/0 30.09,71.57 |only if Dwarf Hunter
|tip Restock on ammo before you head out. |only if Dwarf Hunter
step
talk Talin Keeneye##714
turnin Coldridge Valley Mail Delivery##233 |goto Dun Morogh 22.60,71.43
accept Coldridge Valley Mail Delivery##234 |goto Dun Morogh 22.60,71.43
accept The Boar Hunter##183 |goto Dun Morogh 22.60,71.43
step
kill 12 Small Crag Boar##708 |q 183/1 |goto Dun Morogh 21.52,71.91
step
talk Talin Keeneye##714
turnin The Boar Hunter##183 |goto Dun Morogh 22.60,71.43
step
talk Grelin Whitebeard##786
turnin Coldridge Valley Mail Delivery##234 |goto Dun Morogh 25.08,75.71
|tip Kill any enemies on your way to the turnin to save on grinding later.
step
talk Nori Pridedrift##12738
accept Scalding Mornbrew Delivery##3364 |goto Dun Morogh 24.98,75.96
step
Enter the building |goto Dun Morogh 28.79,69.05 < 10 |walk
talk Felix Whindlebolt##8416
|tip He walks around this area inside the building.
|tip Hurry, you have a timed quest.
accept A Refugee's Quandary##3361 |goto Dun Morogh 28.51,67.67
step
talk Durnan Furcutter##836
|tip Inside the building.
|tip You want to be level 4 by the time you turn in this quest, grind mobs en route if you are not. |only if level < 4
turnin Scalding Mornbrew Delivery##3364 |goto Dun Morogh 28.77,66.37
accept Bring Back the Mug##3365 |goto Dun Morogh 28.77,66.37
step
talk Thran Khorman##912
|tip Inside the building.
|tip Train your class spells.
turnin Simple Rune##3106 |goto Dun Morogh 28.83,67.24
accept The Lost Rune##77655 |goto Dun Morogh 28.83,67.24 |only if ZGV.IsClassicSoD
|only if Dwarf Warrior
step
talk Solm Hargrin##916
|tip Inside the building.
|tip Train your class spells.
turnin Encrypted Rune##3109 |goto Dun Morogh 28.37,67.51
accept Thrice Stolen##77658 |goto Dun Morogh 28.37,67.51 |only if ZGV.IsClassicSoD
|only if Dwarf Rogue
step
talk Branstock Khalder##837
|tip Inside the building.
|tip Train your class spells.
turnin Hallowed Rune##3110 |goto Dun Morogh 28.60,66.39
accept Meditation on the Light##77661 |goto Dun Morogh 28.60,66.39 |only if ZGV.IsClassicSoD
|only if Dwarf Priest
step
Gain the Meditation on the Light Buff |complete hasbuff(410935) |goto Dun Morogh 28.92,66.42 |q 77661
|tip Target the Altar of the Light.
|tip It looks like a stone pedastal inside the building.
|tip Use the "/kneel" emote while standing next to it.
|tip You will gain a buff that allows you to learn Priest runes.
|only if Dwarf Priest and ZGV.IsClassicSoD
step
Leave the building |goto Dun Morogh 28.79,69.07 < 10 |walk |only if subzone("Anvilmar")
click Rockjaw Footlocker##405633
collect Memory of a Troubled Acolyte##205951 |goto Dun Morogh 26.73,72.55 |q 77661
|only if Dwarf Priest and ZGV.IsClassicSoD
step
use the Memory of a Troubled Acolyte##205951
Learn Spell: Engrave Gloves - Penance |q 77661/1
|only if Dwarf Priest and ZGV.IsClassicSoD
step
talk Bromos Grummner##926
|tip Inside the building.
|tip Train your class spells.
turnin Consecrated Rune##3107 |goto Dun Morogh 28.83,68.33
accept Relics of the Light##77657 |goto Dun Morogh 28.83,68.33 |only if ZGV.IsClassicSoD
|only if Dwarf Paladin
step
_NOTE:_
Learn the Judgement Ability
|tip Make sure to learn the Judgement ability from your class trainer.
|tip You will need it to get the rune.
Click Here to Continue |confirm |q 77657
|only if Dwarf Paladin and ZGV.IsClassicSoD
step
talk Thorgas Grimson##895
|tip Inside the building.
|tip Consider not training any spells, you will need 4s 14c for a big weapon upgrade when you leave this zone.
turnin Etched Rune##3108 |goto Dun Morogh 29.18,67.46
accept Trek Through the Caves##77660 |goto Dun Morogh 29.18,67.46 |only if ZGV.IsClassicSoD
|only if Dwarf Hunter
step
talk Thran Khorman##912
|tip Inside the building.
|tip Train your class spells.
turnin Simple Memorandum##3112 |goto Dun Morogh 28.83,67.24
accept The Lost Rune##77656 |goto Dun Morogh 28.83,67.24 |only if ZGV.IsClassicSoD
|only if Gnome Warrior
step
talk Solm Hargrin##916
|tip Inside the building.
|tip Train your class spells.
turnin Encrypted Memorandum##3113 |goto Dun Morogh 28.37,67.51
accept Thrice Stolen##77659 |goto Dun Morogh 28.37,67.51 |only if ZGV.IsClassicSoD
|only if Gnome Rogue
step
talk Marryk Nurribit##944
|tip Inside the building.
|tip Train your class spells.
turnin Glyphic Memorandum##3114 |goto Dun Morogh 28.71,66.36
accept Spell Research##77667 |goto Dun Morogh 28.71,66.37 |only if ZGV.IsClassicSoD
|only if Gnome Mage
step
Leave the building |goto Dun Morogh 28.79,69.07 < 10 |walk |only if subzone("Anvilmar")
click Rockjaw Footlocker##405633
collect Spell Notes: CALE ENCI##203751 |goto Dun Morogh 26.73,72.55 |q 77667
|only if Gnome Mage and ZGV.IsClassicSoD
step
use the Spell Notes: CALE ENCI##203751
Learn: Engrave Gloves - Ice Lance |q 77667/1
|only if Gnome Mage and ZGV.IsClassicSoD
step
Leave the building |goto Dun Morogh 28.79,69.07 < 10 |walk |only if subzone("Anvilmar")
talk Alamar Grimm##460
|tip Upstairs inside the building.
|tip Train your class spells.
turnin Tainted Memorandum##3115 |goto Dun Morogh 28.65,66.14
accept Beginnings##1599 |goto Dun Morogh 28.65,66.14
accept Stolen Power##77666 |goto Dun Morogh 28.65,66.14 |only if ZGV.IsClassicSoD
|only if Gnome Warlock
step
Leave the building |goto Dun Morogh 28.79,69.07 < 10 |walk |only if subzone("Anvilmar")
click Rockjaw Footlocker##405633
collect Rune of Haunting##205230 |goto Dun Morogh 26.73,72.55 |q 77666
|only if Gnome Warlock and ZGV.IsClassicSoD
step
use the Rune of Haunting##205230
Learn Engrave Gloves - Haunt |q 77666/1
|only if Gnome Warlock and ZGV.IsClassicSoD
step
Leave the building |goto Dun Morogh 28.79,69.07 < 10 |walk |only if subzone("Anvilmar")
talk Nori Pridedrift##12738
turnin Bring Back the Mug##3365 |goto Dun Morogh 24.98,75.96
step
talk Grelin Whitebeard##786
accept The Troll Cave##182 |goto Dun Morogh 25.08,75.71
stickystart "Kill_Frostmane_Troll_Whelps"
step
Enter the cave |goto Dun Morogh 26.78,79.83 < 15 |walk
Follow the path |goto Dun Morogh 28.00,81.05 < 10 |walk
kill Frostmane Novice##946+
|tip Inside the cave.
|tip There's not very many of them, and they can be spread out inside the cave.
|tip Keep an eye out for ranged attackers while in the cave, as it's easy to be overwhelmed. |only if hardcore
collect 3 Feather Charm##6753 |q 1599/1 |goto Dun Morogh 28.73,82.58
You can find more around: |notinsticky
[Dun Morogh 29.34,81.50]
[Dun Morogh 30.15,82.34]
[Dun Morogh 30.49,81.05]
|only if Gnome Warlock
stickystop "Kill_Frostmane_Troll_Whelps"
step
Enter the building |goto Dun Morogh 28.79,69.05 < 10 |walk
talk Alamar Grimm##460
|tip Upstairs inside the building.
turnin Beginnings##1599 |goto Dun Morogh 28.65,66.14
turnin Stolen Power##77666 |goto Dun Morogh 28.65,66.14 |only if ZGV.IsClassicSoD
|only if Gnome Warlock
step
Summon Your Imp |complete warlockpet("Imp") |q 218
|tip Use the "Summon Imp" ability.
|only if Gnome Warlock and not warlockpet("Imp")
step
talk Wren Darkspring##6376
|tip Upstairs inside the building.
buy Grimoire of Blood Pact (Rank 1)##16321 |n
|tip If you can't afford it, skip this step and make sure to buy it later.
use the Grimoire of Blood Pact (Rank 1)##16321
Teach Your Imp Blood Pact (Rank 1) |learnpetspell Blood Pact##6307 |goto Dun Morogh 28.80,66.16
|only if Gnome Warlock
stickystart "Learn_Engrave_Gloves_Victory_Rush_Dwarf_Warrior"
stickystart "Learn_Engrave_Gloves_Victory_Rush_Gnome_Warrior"
stickystart "Kill_Frostmane_Troll_Whelps"
step
kill Frostmane Troll Whelp##706+
collect Libram of Judgement##205420 |goto Dun Morogh 21.04,76.30 |q 77657
You can find more around: |notinsticky
[Dun Morogh 22.77,79.78]
[Dun Morogh 26.81,79.90]
|only if Dwarf Paladin and ZGV.IsClassicSoD
step
Equip the Libram of Judgement |equipped Libram of Judgement##205420 |q 77657
|only if Dwarf Paladin and ZGV.IsClassicSoD
step
kill Frostmane Troll Whelp##706+
|tip Use your "Seal of Righteousness" ability, and then use your "Judgement" ability on them.
|tip You will gain a buff.
|tip Repeat this process until you have 10 stacks of the Building Inspiration buff.
Gain the Inspired Buff |havebuff Inspired##408828 |goto Dun Morogh 26.78,79.83 |q 77657
|tip Inside and outside the cave. |notinsticky
You can find more outside the cave around: |notinsticky
[22.78,79.72]
[21.02,76.15]
|only if Dwarf Paladin and ZGV.IsClassicSoD
step
use the Libram of Judgement##205420
Learn the Spell: Engrave Gloves - Crusader Strike |q 77657/1
|only if Dwarf Paladin and ZGV.IsClassicSoD
step
Leave the building |goto Dun Morogh 28.79,69.05 < 10 |walk |only if subzone("Anvilmar")
click Felix's Box
collect Felix's Box##10438 |q 3361/1 |goto Dun Morogh 20.88,76.07
|tip Grind enemies between each of Felix's parts to reduce a grind later.
step
click Felix's Chest
collect Felix's Chest##16313 |q 3361/2 |goto Dun Morogh 22.78,80.00
|tip Grind enemies between each of Felix's parts to reduce a grind later.
step
click Felix's Bucket of Bolts
collect Felix's Bucket of Bolts##16314 |q 3361/3 |goto Dun Morogh 26.33,79.27
|tip Grind enemies between each of Felix's parts to reduce a grind later.
step
label "Learn_Engrave_Gloves_Victory_Rush_Dwarf_Warrior"
Kill Frostmane enemies around this area
|tip They look like trolls.
|tip Inside and outside the cave.
collect Rune of Victory Rush##204806 |n
use the Rune of Victory Rush##204806
Learn: Engrave Gloves - Victory Rush |q 77655/1 |goto Dun Morogh 26.79,79.88
|only if Dwarf Warrior and ZGV.IsClassicSoD
step
label "Learn_Engrave_Gloves_Victory_Rush_Gnome_Warrior"
Kill Frostmane enemies around this area
|tip They look like trolls.
|tip Inside and outside the cave.
collect Rune of Victory Rush##204806 |n
use the Rune of Victory Rush##204806
Learn: Engrave Gloves - Victory Rush |q 77656/1 |goto Dun Morogh 26.79,79.88
|only if Gnome Warrior and ZGV.IsClassicSoD
step
label "Kill_Frostmane_Troll_Whelps"
kill 14 Frostmane Troll Whelp##706 |q 182/1 |goto Dun Morogh 26.78,79.83
|tip Inside and outside the cave. |notinsticky
You can find more outside the cave around: |notinsticky
[Dun Morogh 22.78,79.72]
[Dun Morogh 21.02,76.15]
step
Leave the cave |goto Dun Morogh 26.78,79.83 < 15 |walk |only if subzone("Coldridge Valley") and _G.IsIndoors()
talk Grelin Whitebeard##786
turnin The Troll Cave##182 |goto Dun Morogh 25.08,75.71
accept The Stolen Journal##218 |goto Dun Morogh 25.08,75.71
step
Enter the cave |goto Dun Morogh 26.80,79.86 < 15 |walk
Follow the path |goto Dun Morogh 27.73,80.71 < 10 |walk
Follow the path down |goto Dun Morogh 28.13,80.11 < 10 |walk
Continue down the path |goto Dun Morogh 29.06,78.87 < 10 |walk
|tip Watch for patrols and respawns while inside the cave. |only if hardcore
kill Grik'nir the Cold##808
|tip Inside the cave.
collect Grelin Whitebeard's Journal##2004 |q 218/1 |goto Dun Morogh 30.49,80.16
step
click Frostmane Loot Chest
|tip Inside the cave, up on a ledge.
collect Rune of the Chimera##206168 |goto Dun Morogh 30.78,80.06
|only if Dwarf Hunter and ZGV.IsClassicSoD
step
use the Rune of the Chimera##206168
Learn Engrave Gloves - Chimera Shot |q 77660/1
|only if Dwarf Hunter and ZGV.IsClassicSoD
step
click Frostmane Loot Cache##405628
|tip Inside the cave, up on a ledge.
collect Rune of Shadowstrike##204795 |goto Dun Morogh 30.78,80.06 |q 77658
|only if Dwarf Rogue and ZGV.IsClassicSoD
step
use the Rune of Shadowstrike##204795
Learn Engrave Gloves - Shadowstrike |q 77658/1
|only if Dwarf Rogue and ZGV.IsClassicSoD
step
click Frostmane Loot Cache##405628
|tip Inside the cave, up on a ledge.
collect Rune of Shadowstrike##204795 |goto Dun Morogh 30.78,80.06 |q 77659
|only if Gnome Rogue and ZGV.IsClassicSoD
step
use the Rune of Shadowstrike##204795
Learn Engrave Gloves - Shadowstrike |q 77659/1
|only if Gnome Rogue and ZGV.IsClassicSoD
step
Leave the cave |goto Dun Morogh 26.78,79.83 < 15 |walk |only if subzone("Coldridge Valley") and _G.IsIndoors()
talk Grelin Whitebeard##786
turnin The Stolen Journal##218 |goto Dun Morogh 25.08,75.71
accept Senir's Observations##282 |goto Dun Morogh 25.08,75.71
step
Kill enemies around this area
|tip Inside and outside the cave.
|tip Watch for patrols and respawns while in the area.  |only if hardcore
|tip Getting this far into level 5 will allow you to reach level 6 when you head to the next town.
|tip This is important, so you can visit your class trainer before leaving the starter area.
ding 5,2200 |goto Dun Morogh 26.78,79.83
step
Grind enemies until you have 4 Silver |complete _G.GetMoney() >= 4 |goto Dun Morogh 26.78,79.83
|tip We will use this to buy a big weapon upgrade after leaving the starting zone.
|only if Dwarf Hunter
step
Allow Enemies to Kill You
|tip Since you are less than level 11, you will not receive resurrection sickness when you revive.
|tip This basically makes dying have no real penalty at this level.
|tip This will allow you to travel a long distance quickly.
Die on Purpose |complete isdead |goto Dun Morogh 26.78,79.83 |q 3361
|only if not hardcore
step
talk Spirit Healer##6491
Select _"Return me to life."_
Resurrect at the Spirit Healer |complete not isdead |goto Dun Morogh 29.55,69.83 |q 3361 |zombiewalk
|only if not hardcore
step
Enter the building |goto Dun Morogh 28.79,69.05 < 10 |walk
talk Felix Whindlebolt##8416
|tip He walks around this area inside the building.
turnin A Refugee's Quandary##3361 |goto Dun Morogh 28.55,67.65
step
talk Thorgas Grimson##895
|tip Inside the building.
turnin Trek Through the Caves##77660 |goto Dun Morogh 29.18,67.46
|only if Dwarf Hunter and ZGV.IsClassicSoD
step
talk Bromos Grummner##926
|tip Inside the building.
turnin Relics of the Light##77657 |goto Dun Morogh 28.83,68.33
|only if Dwarf Paladin and ZGV.IsClassicSoD
step
talk Solm Hargrin##916
|tip Outside, in the stables behind the the building.
turnin Thrice Stolen##77658 |goto Dun Morogh 50.31,39.92
|only if Dwarf Rogue and ZGV.IsClassicSoD
step
talk Solm Hargrin##916
|tip Outside, in the stables behind the the building.
turnin Thrice Stolen##77659 |goto Dun Morogh 50.31,39.92
|only if Gnome Rogue and ZGV.IsClassicSoD
step
talk Thran Khorman##912
|tip Inside the building.
turnin The Lost Rune##77655 |goto Dun Morogh 28.83,67.24
|only if Dwarf Warrior and ZGV.IsClassicSoD
step
talk Thran Khorman##912
|tip Inside the building.
turnin The Lost Rune##77656 |goto Dun Morogh 28.83,67.24
|only if Gnome Warrior and ZGV.IsClassicSoD
step
talk Marryk Nurribit##944
|tip Inside the building.
turnin Spell Research##77667 |goto Dun Morogh 28.71,66.37
|only if Gnome Mage and ZGV.IsClassicSoD
step
talk Branstock Khalder##837
|tip Inside the building.
turnin Meditation on the Light##77661 |goto Dun Morogh 28.60,66.39
|only if Dwarf Priest and ZGV.IsClassicSoD
step
Leave the building |goto Dun Morogh 28.79,69.05 < 10 |walk |only if subzone("Anvilmar")
talk Mountaineer Thalos##1965
turnin Senir's Observations##282 |goto Dun Morogh 33.48,71.84
accept Senir's Observations##420 |goto Dun Morogh 33.48,71.84
step
talk Hands Springsprocket##6782
accept Supplies to Tannok##2160 |goto Dun Morogh 33.85,72.24
stickystart "Collect_Chunks_Of_Boar_Meat"
stickystart "Collect_Crag_Boar_Ribs"
step
Enter the tunnel |goto Dun Morogh 34.12,71.51 < 10 |only if walking and subzone("Coldridge Pass")
Leave the tunnel and follow the road |goto Dun Morogh 35.67,65.93 < 10 |only if walking and subzone("Coldridge Pass")
talk Hegnar Rumbleshot##1243
buy Ornate Blunderbuss##2509 |n
|tip If you can afford it.
|tip If you have better, skip this step. Stock up on ammo while you're as well, however.
Visit the Vendor |vendor Hegnar Rumbleshot##1243 |goto Dun Morogh 40.68,65.13 |q 384 |future
|only if Hunter and itemcount(2509) == 0
step
Enter the tunnel |goto Dun Morogh 34.12,71.51 < 10 |only if walking and subzone("Coldridge Pass")
Leave the tunnel and follow the road |goto Dun Morogh 35.67,65.93 < 10 |only if walking and subzone("Coldridge Pass")
talk Senir Whitebeard##1252
turnin Senir's Observations##420 |goto Dun Morogh 46.73,53.83
stickystop "Collect_Chunks_Of_Boar_Meat"
stickystop "Collect_Crag_Boar_Ribs"
step
talk Ragnar Thunderbrew##1267
accept Beer Basted Boar Ribs##384 |goto Dun Morogh 46.83,52.36
step
Enter the building |goto Dun Morogh 46.95,52.04 < 10 |walk
talk Tannok Frosthammer##6806
|tip Inside the building.
turnin Supplies to Tannok##2160 |goto Dun Morogh 47.22,52.19
step
talk Kreg Bilmn##1691
|tip Inside the building.
|tip If you can afford it, and you need more bag space, buy bags.
Visit the Vendor |vendor Kreg Bilmn##1691 |goto Dun Morogh 47.19,52.40 |q 384
step
talk Kreg Bilmn##1691
|tip Inside the building.
|tip If you afford it.
buy Balanced Throwing Dagger##25872 |n
Visit the Vendor |vendor Kreg Bilmn##1691 |goto Dun Morogh 47.19,52.40 |q 400 |future
|only if Rogue
step
talk Innkeeper Belm##1247
|tip Inside the building.
home Thunderbrew Distillery |goto Dun Morogh 47.38,52.52
|tip Train your level 6 spells while in town.
|tip Stock up on food and drink if you have spare coin after.
step
talk Maxan Anvol##1226
|tip Inside the building.
accept Garments of the Light##5625 |goto Dun Morogh 47.34,52.19
|only if Dwarf Priest
step
Leave the building |goto Dun Morogh 46.95,52.03 < 10 |walk |only if subzone("Thunderbrew Distillery")
Heal and Fortify Mountaineer Dolf |q 5625/1 |goto Dun Morogh 45.81,54.57
|tip Target Mountaineer Dolf.
|tip First, cast your "Lesser Heal (Rank 2)" spell on him.
|tip Second, cast your "Power Word: Fortitude" spell on him.
|only if Dwarf Priest
step
Enter the building |goto Dun Morogh 46.95,52.04 < 10 |walk
talk Maxan Anvol##1226
|tip Inside the building.
turnin Garments of the Light##5625 |goto Dun Morogh 47.34,52.19
|only if Dwarf Priest
step
Leave the building |goto Dun Morogh 46.95,52.03 < 10 |walk |only if subzone("Thunderbrew Distillery")
talk Tharek Blackstone##1872
accept Tools for Steelgrill##400 |goto Dun Morogh 46.02,51.68
step
Enter the building |goto Dun Morogh 45.74,51.84 < 10 |walk
talk Grawn Thromwyn##1273
|tip Inside the building.
buy Large Axe##2491 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Grawn Thromwyn##1273 |goto Dun Morogh 45.29,52.19 |q 384
|only if Dwarf Warrior and itemcount(2491) == 0
step
Enter the building |goto Dun Morogh 45.74,51.84 < 10 |walk
talk Grawn Thromwyn##1273
|tip Inside the building.
buy Gladius##2488 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Grawn Thromwyn##1273 |goto Dun Morogh 45.29,52.19 |q 384
|only if Gnome Warrior and itemcount(2488) == 0
step
Enter the building |goto Dun Morogh 45.74,51.84 < 10 |walk
talk Grawn Thromwyn##1273
|tip Inside the building.
buy Wooden Mallet##2493 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Grawn Thromwyn##1273 |goto Dun Morogh 45.29,52.19 |q 384
|only if Paladin and itemcount(2493) == 0
step
Enter the building |goto Dun Morogh 45.74,51.84 < 10 |walk
talk Grawn Thromwyn##1273
|tip Inside the building.
buy Stiletto##2494 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Grawn Thromwyn##1273 |goto Dun Morogh 45.29,52.19 |q 384
|only if Rogue and itemcount(2494) == 0
stickystart "Collect_Chunks_Of_Boar_Meat"
stickystart "Collect_Crag_Boar_Ribs"
step
talk Pilot Bellowfiz##1378
accept Stocking Jetsteam##317 |goto Dun Morogh 49.43,48.41
step
talk Pilot Stonegear##1377
accept The Grizzled Den##313 |goto Dun Morogh 49.62,48.61
step
talk Beldin Steelgrill##1376
turnin Tools for Steelgrill##400 |goto Dun Morogh 50.44,49.09
step
talk Loslor Rudge##1694
accept Ammo for Rumbleshot##5541 |goto Dun Morogh 50.08,49.42
stickystart "Collect_Thick_Bear_Fur"
step
label "Collect_Chunks_Of_Boar_Meat"
Kill Crag Boar enemies around this area
collect 4 Chunk of Boar Meat##769 |q 317/1 |goto Dun Morogh 48.34,55.70 |future
|tip Be careful not to accidentally sell these to a vendor.
You can find more around: |notinsticky
[48.37,60.48]
[44.55,65.31]
[42.18,65.32]
step
label "Collect_Crag_Boar_Ribs"
Kill Crag Boar enemies around this area
collect 6 Crag Boar Rib##2886 |q 384/1 |goto Dun Morogh 48.34,55.70 |future
|tip Be careful not to accidentally sell these to a vendor.
You can find more around: |notinsticky
[48.37,60.48]
[44.55,65.31]
[42.18,65.32]
step
label "Collect_Thick_Bear_Fur"
kill Young Black Bear##1128+
collect 2 Thick Bear Fur##6952 |q 317/2 |goto Dun Morogh 49.76,51.15
You can find more around: |notinsticky
[45.18,50.18]
[44.96,56.85]
[42.54,59.61]
[39.44,61.23]
step
click Ammo Crate##176785
collect Rumbleshot's Ammo##13850 |q 5541/1 |goto Dun Morogh 44.14,56.94
step
Kill Wendigo enemies around this area
|tip Inside and outside the cave.
|tip They respawn quickly, so you'll be better staying close to the cave entrance.
collect 8 Wendigo Mane##2671 |q 313/1 |goto Dun Morogh 42.33,54.03
step
Kill enemies around this area
|tip Inside and outside the cave.
|tip They respawn quickly, so you'll be better staying close to the cave entrance.
|tip You should already be level 7, or pretty close.
ding 7 |goto Dun Morogh 42.33,54.03
step
Follow the path up |goto Dun Morogh 40.60,62.56 < 30 |only if walking
talk Hegnar Rumbleshot##1243
turnin Ammo for Rumbleshot##5541 |goto Dun Morogh 40.68,65.13
|tip Stock up on ammo while you're here if needed. |only if Dwarf Hunter
step
talk Hegnar Rumbleshot##1243
buy Ornate Blunderbuss##2509 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Hegnar Rumbleshot##1243 |goto Dun Morogh 40.68,65.13 |q 312 |future
|only if Hunter and itemcount(2509) == 0
step
Allow Enemies to Kill You
|tip Since you are less than level 11, you will not receive resurrection sickness when you revive.
|tip This basically makes dying have no real penalty at this level.
|tip This will allow you to travel a long distance quickly.
Die on Purpose |complete isdead |goto Dun Morogh 42.77,65.72 |q 313
|only if not hardcore
step
talk Spirit Healer##6491
Select _"Return me to life."_
Resurrect at the Spirit Healer |complete not isdead |goto Dun Morogh 47.05,55.10 |q 313 |zombiewalk
|only if not hardcore
step
talk Senir Whitebeard##1252
accept Frostmane Hold##287 |goto Dun Morogh 46.73,53.83
|tip Grind enemies on the way to accept this quest to make a grind step later less tedious.
step
Enter the building |goto Dun Morogh 46.95,52.04 < 10 |walk
talk Innkeeper Belm##1247
|tip Inside the building.
buy Rhapsody Malt##2894 |q 384/2 |goto Dun Morogh 47.38,52.52
step
talk Kreg Bilmn##1691
|tip Inside the building.
|tip If you can afford it, and you need more bag space, buy bags.
Visit the Vendor |vendor Kreg Bilmn##1691 |goto Dun Morogh 47.19,52.40 |q 384
step
Leave the building |goto Dun Morogh 46.95,52.04 < 10 |walk |only if subzone("Thunderbrew Distillery")
talk Ragnar Thunderbrew##1267
turnin Beer Basted Boar Ribs##384 |goto Dun Morogh 46.83,52.36
step
Enter the building |goto Dun Morogh 45.74,51.84 < 10 |walk
talk Grawn Thromwyn##1273
|tip Inside the building.
buy Large Axe##2491 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Grawn Thromwyn##1273 |goto Dun Morogh 45.29,52.19 |q 317
|only if Dwarf Warrior and itemcount(2491) == 0
step
Enter the building |goto Dun Morogh 45.74,51.84 < 10 |walk
talk Grawn Thromwyn##1273
|tip Inside the building.
buy Gladius##2488 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Grawn Thromwyn##1273 |goto Dun Morogh 45.29,52.19 |q 317
|only if Gnome Warrior and itemcount(2488) == 0
step
Enter the building |goto Dun Morogh 45.74,51.84 < 10 |walk
talk Grawn Thromwyn##1273
|tip Inside the building.
buy Wooden Mallet##2493 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Grawn Thromwyn##1273 |goto Dun Morogh 45.29,52.19 |q 317
|only if Paladin and itemcount(2493) == 0
step
Enter the building |goto Dun Morogh 45.74,51.84 < 10 |walk
talk Grawn Thromwyn##1273
|tip Inside the building.
buy Stiletto##2494 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Grawn Thromwyn##1273 |goto Dun Morogh 45.29,52.19 |q 317
|only if Rogue and itemcount(2494) == 0
step
talk Pilot Bellowfiz##1378
turnin Stocking Jetsteam##317 |goto Dun Morogh 49.43,48.41
accept Evershine##318 |goto Dun Morogh 49.43,48.41
step
talk Pilot Stonegear##1377
turnin The Grizzled Den##313 |goto Dun Morogh 49.62,48.61
step
Summon Your Imp |complete warlockpet("Imp")
|tip Use the "Summon Imp" ability.
|tip You need to have your Imp active in order to complete the next step.
|only if Gnome Warlock and not warlockpet("Imp")
step
talk Dannie Fizzwizzle##6328
buy Grimoire of Firebolt (Rank 2)##16302 |n
|tip If you can't afford it, skip this step and make sure to buy it later.
use the Grimoire of Firebolt (Rank 2)##16302
Teach Your Imp Firebolt (Rank 2) |learnpetspell Blood Pact##7799 |goto Dun Morogh 47.28,53.67
|only if Gnome Warlock
step
Enter the building |goto Dun Morogh 46.95,52.05 < 10 |walk
talk Kreg Bilmn##1691
|tip Inside the building.
|tip If you can afford it, and you need more bag space, buy bags.
|tip Stock up on food and water, there's a lot of grinding ahead.
Visit the Vendor |vendor Kreg Bilmn##1691 |goto Dun Morogh 47.19,52.40 |q 412 |future
step
talk Thamner Pol##2326
|tip Inside the building.
Train Apprentice First Aid |skillmax First Aid,75 |goto Dun Morogh 47.18,52.61
|only if GetMoney() > 150
step
_NOTE:_
Create Bandages in Downtime
|tip While you wait for boats or trams, it's a good time to make bandages and increase your First Aid skill.
|tip You'll need higher skill to make better bandages later, so make sure to level it up as you go.
|tip Keep bandages on hand for another way to heal yourself.
Click Here to Continue |confirm |q 412 |future
step
Enter the building |goto Dun Morogh 45.74,51.84 < 10 |walk
talk Grawn Thromwyn##1273
|tip Inside the building.
buy Large Axe##2491 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Grawn Thromwyn##1273 |goto Dun Morogh 45.29,52.19 |q 412 |future
|only if Dwarf Warrior and itemcount(2491) == 0
step
Enter the building |goto Dun Morogh 45.74,51.84 < 10 |walk
talk Grawn Thromwyn##1273
|tip Inside the building.
buy Gladius##2488 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Grawn Thromwyn##1273 |goto Dun Morogh 45.29,52.19 |q 412 |future
|only if Gnome Warrior and itemcount(2488) == 0
step
Enter the building |goto Dun Morogh 45.74,51.84 < 10 |walk
talk Grawn Thromwyn##1273
|tip Inside the building.
buy Wooden Mallet##2493 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Grawn Thromwyn##1273 |goto Dun Morogh 45.29,52.19 |q 412 |future
|only if Paladin and itemcount(2493) == 0
step
Enter the building |goto Dun Morogh 45.74,51.84 < 10 |walk
talk Grawn Thromwyn##1273
|tip Inside the building.
buy Stiletto##2494 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Grawn Thromwyn##1273 |goto Dun Morogh 45.29,52.19 |q 412 |future
|only if Rogue and itemcount(2494) == 0
step
Enter the building |goto Dun Morogh 45.97,48.83 < 10 |walk
talk Razzle Sprysprocket##1269
|tip Inside the building.
accept Operation Recombobulation##412 |goto Dun Morogh 45.85,49.37
step
Follow the path |goto Dun Morogh 39.61,48.01 < 40 |only if walking
Follow the path up |goto Dun Morogh 36.01,51.96 < 15 |only if walking
|tip Go out of your way to grind mobs en route to this quest.
talk Tundra MacGrann##1266
|tip On top of the mountain.
|tip As you travel to him, be careful to avoid the elite yeti that walks around this area.
accept Tundra MacGrann's Stolen Stash##312 |goto Dun Morogh 34.57,51.65
step
Enter the cave |goto Dun Morogh 37.80,53.69 < 20 |walk
click MacGrann's Meat Locker##272
|tip Inside the cave.
|tip Wait for the elite yeti to leave the cave and walk away before you enter the cave.
collect MacGrann's Dried Meats##2667 |q 312/1 |goto Dun Morogh 38.51,53.93
|tip He runs back quickly after he walks down the path a bit.
|tip Try to get into the cave as quick as you can when he leaves it, to give yourself time to run back out safely.
|tip If he attacks you as you leave the cave, just run away.
step
Follow the path up |goto Dun Morogh 36.01,51.96 < 15 |only if walking
talk Tundra MacGrann##1266
|tip On top of the mountain.
turnin Tundra MacGrann's Stolen Stash##312 |goto Dun Morogh 34.57,51.65
step
talk Rejold Barleybrew##1374
|tip Be very careful to jump onto the small hill and not all the way down. |only if hardcore
turnin Evershine##318 |goto Dun Morogh 30.19,45.73
accept A Favor for Evershine##319 |goto Dun Morogh 30.19,45.73
accept The Perfect Stout##315 |goto Dun Morogh 30.19,45.73
|tip Grind enemies en route to these quests.
step
talk Marleth Barleybrew##1375
accept Bitter Rivals##310 |goto Dun Morogh 30.19,45.53
stickystart "Kill_Elder_Crag_Boars"
stickystart "Kill_Snow_Leopards"
step
kill 6 Ice Claw Bear##1196 |q 319/1 |goto Dun Morogh 37.90,42.59
You can find more around: |notinsticky
[34.50,31.74]
[30.71,39.90]
[27.80,48.14]
[28.11,53.97]
step
label "Kill_Elder_Crag_Boars"
kill 8 Elder Crag Boar##1127 |q 319/2 |goto Dun Morogh 34.50,31.74
You can find more around: |notinsticky
[30.71,39.90]
[27.80,48.14]
[28.11,53.97]
step
label "Kill_Snow_Leopards"
kill 8 Snow Leopard##1201 |q 319/3 |goto Dun Morogh 34.50,31.74
You can find more around: |notinsticky
[30.71,39.90]
[27.80,48.14]
[28.11,53.97]
step
Allow Enemies to Kill You
|tip You can do this anywhere near Brewnall Village, it doesn't have to be at this exact location.
|tip Since you are less than level 11, you will not receive resurrection sickness when you revive.
|tip This basically makes dying have no real penalty at this level.
|tip This will allow you to travel a long distance quickly.
Die on Purpose |complete isdead |goto Dun Morogh 30.71,39.90 |q 319
|only if not hardcore
step
talk Spirit Healer##6491
Select _"Return me to life."_
Resurrect at the Spirit Healer |complete not isdead |goto Dun Morogh 47.05,55.10 |q 319 |zombiewalk
|only if not hardcore
step
Enter the building |goto Dun Morogh 46.95,52.05 < 10 |walk
talk Kreg Bilmn##1691
|tip Inside the building.
|tip If you can afford it, and you need more bag space, buy bags.
Visit the Vendor |vendor Kreg Bilmn##1691 |goto Dun Morogh 47.19,52.40 |q 319
step
talk Innkeeper Belm##1247
|tip Inside the building.
buy Thunder Ale##2686 |goto Dun Morogh 47.38,52.52 |q 310
step
talk Jarven Thunderbrew##1373
|tip Downstairs inside the building.
accept Distracting Jarven##308 |goto Dun Morogh 47.64,52.66
|only if haveq(310)
step
click Unguarded Thunder Ale Barrel
|tip Downstairs inside the building.
|tip It may take a moment for it to become Unguarded.
turnin Bitter Rivals##310 |goto Dun Morogh 47.70,52.69
accept Return to Marleth##311 |goto Dun Morogh 47.70,52.69
step
Enter the building |goto Dun Morogh 45.74,51.84 < 10 |walk
talk Grawn Thromwyn##1273
|tip Inside the building.
buy Large Axe##2491 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Grawn Thromwyn##1273 |goto Dun Morogh 45.29,52.19 |q 319
|only if Dwarf Warrior and itemcount(2491) == 0
step
Enter the building |goto Dun Morogh 45.74,51.84 < 10 |walk
talk Grawn Thromwyn##1273
|tip Inside the building.
buy Gladius##2488 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Grawn Thromwyn##1273 |goto Dun Morogh 45.29,52.19 |q 319
|only if Gnome Warrior and itemcount(2488) == 0
step
Enter the building |goto Dun Morogh 45.74,51.84 < 10 |walk
talk Grawn Thromwyn##1273
|tip Inside the building.
buy Wooden Mallet##2493 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Grawn Thromwyn##1273 |goto Dun Morogh 45.29,52.19 |q 319
|only if Paladin and itemcount(2493) == 0
step
Enter the building |goto Dun Morogh 45.74,51.84 < 10 |walk
talk Grawn Thromwyn##1273
|tip Inside the building.
buy Stiletto##2494 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Grawn Thromwyn##1273 |goto Dun Morogh 45.29,52.19 |q 319
|only if Rogue and itemcount(2494) == 0
step
Follow the path up |goto Dun Morogh 38.44,42.11 < 15 |only if walking
kill Frostmane Seer##1397+
click Shimmerweed Basket##276+
|tip They look like tan wooden baskets on the ground around this area.
|tip Enemies tend to pull in groups around here. |only if hardcore
|tip Watch for respawns while in the area. |only if hardcore
collect 6 Shimmerweed##2676 |q 315/1 |goto Dun Morogh 40.09,42.44
You can find more around [41.81,35.62]
step
Follow the path |goto Dun Morogh 41.90,47.23 < 40 |only if walking
|tip Grind mobs en route to this turn in. You want to be level 9 for this next quest. |only if level < 9
talk Marleth Barleybrew##1375
turnin Return to Marleth##311 |goto Dun Morogh 30.19,45.53
step
talk Rejold Barleybrew##1374
turnin A Favor for Evershine##319 |goto Dun Morogh 30.19,45.73
accept Return to Bellowfiz##320 |goto Dun Morogh 30.19,45.73
turnin The Perfect Stout##315 |goto Dun Morogh 30.19,45.73
accept Shimmer Stout##413 |goto Dun Morogh 30.19,45.73
step
Kill enemies around this area
|tip You should already be level 9, or very close to it.
|tip You are about to have to complete some quests that can be difficult, so being a level higher will help.
ding 9 |goto Dun Morogh 34.50,31.74
You can find more around: |notinsticky
[30.71,39.90]
[27.80,48.14]
[28.11,53.97]
stickystart "Kill_Frostmane_Headhunters"
step
Enter the cave |goto Dun Morogh 24.84,50.89 < 20 |walk
Follow the path down |goto Dun Morogh 22.61,50.53 < 20 |walk
Fully Explore Frostmane Hold |q 287/2 |goto Dun Morogh 22.79,52.10
|tip Inside the cave.
|tip Watch for patrols and respawns while inside the cave. |only if hardcore
step
label "Kill_Frostmane_Headhunters"
Follow the path up |goto Dun Morogh 21.78,50.47 < 20 |walk
kill 5 Frostmane Headhunter##1123 |q 287/1 |goto Dun Morogh 24.87,50.90
|tip Inside and outside the cave. |notinsticky
|tip Watch for patrols and respawns while inside the cave. |only if hardcore |notinsticky
stickystart "Collect_Gyromechanic_Gears"
step
Leave the cave |goto Dun Morogh 25.07,50.99 < 20 |walk |only if subzone("Frostmane Hold") and _G.IsIndoors()
kill Leper Gnome##1211+
|tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
collect 8 Restabilization Cog##3083 |q 412/1 |goto Dun Morogh 25.64,43.33
step
label "Collect_Gyromechanic_Gears"
kill Leper Gnome##1211+
|tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
collect 8 Gyromechanic Gear##3084 |q 412/2 |goto Dun Morogh 25.64,43.33
step
Kill enemies around this area
|tip Getting this far into level 9 will allow you to reach level 10 after turning in quests soon.
|tip You will return to town soon, so it will be a good time to learn your level 10 abilities.
ding 9,4300 |goto Dun Morogh 26.36,47.69
You can find more around: |notinsticky
[29.93,42.60]
|only if not Dwarf Priest
step
ding 10
|only if Dwarf Priest
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
Leave the building |goto Wetlands 10.25,56.45 < 10 |walk |only if subzone("Menethil Keep")
talk Shellei Brondir##1571
fpath Menethil Harbor |goto Wetlands 9.49,59.69
|only if not hardcore
step
talk Kreg Bilmn##1691
|tip Inside the building.
|tip If you can afford it, and you need more bag space, buy bags.
Visit the Vendor |vendor Kreg Bilmn##1691 |goto Dun Morogh 47.19,52.40 |q 412
step
Leave the building |goto Dun Morogh 46.95,52.05 < 10 |walk |only if subzone("Thunderbrew Distillery")
talk Senir Whitebeard##1252
turnin Frostmane Hold##287 |goto Dun Morogh 46.73,53.82
accept The Reports##291 |goto Dun Morogh 46.73,53.82
step
Enter the building |goto Dun Morogh 45.74,51.84 < 10 |walk
talk Grawn Thromwyn##1273
|tip Inside the building.
buy Large Axe##2491 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Grawn Thromwyn##1273 |goto Dun Morogh 45.29,52.19 |q 412
|only if Dwarf Warrior and itemcount(2491) == 0
step
Enter the building |goto Dun Morogh 45.74,51.84 < 10 |walk
talk Grawn Thromwyn##1273
|tip Inside the building.
buy Gladius##2488 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Grawn Thromwyn##1273 |goto Dun Morogh 45.29,52.19 |q 412
|only if Gnome Warrior and itemcount(2488) == 0
step
Enter the building |goto Dun Morogh 45.74,51.84 < 10 |walk
talk Grawn Thromwyn##1273
|tip Inside the building.
buy Wooden Mallet##2493 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Grawn Thromwyn##1273 |goto Dun Morogh 45.29,52.19 |q 412
|only if Paladin and itemcount(2493) == 0
step
Enter the building |goto Dun Morogh 45.74,51.84 < 10 |walk
talk Grawn Thromwyn##1273
|tip Inside the building.
buy Stiletto##2494 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Grawn Thromwyn##1273 |goto Dun Morogh 45.29,52.19 |q 412
|only if Rogue and itemcount(2494) == 0
step
Enter the building |goto Dun Morogh 45.97,48.84 < 10 |walk
talk Razzle Sprysprocket##1269
|tip Inside the building.
turnin Operation Recombobulation##412 |goto Dun Morogh 45.85,49.37
step
Leave the building |goto Dun Morogh 45.97,48.85 < 10 |walk
talk Pilot Bellowfiz##1378
turnin Return to Bellowfiz##320 |goto Dun Morogh 49.43,48.41
step
_NOTE:_
You Have Access to Stronger Ammo
|tip Now that you're level 10, you can purchase stronger bullets or arrows.
|tip When you restock ammo at vendors, make sure to buy level 10 ammo.
Click Here to Continue |confirm |q 6062 |future
|only if Dwarf Hunter
step
talk Grif Wildheart##1231
accept Taming the Beast##6064 |goto Dun Morogh 45.81,53.03
|only if Dwarf Hunter
step
use the Taming Rod##15911
|tip Use it on a Large Crag Boar around this area.
Tame a Large Crag Boar |q 6064/1 |goto Dun Morogh 48.26,56.81
|tip Dismiss it after you tame it.
|tip It may attack you after you dismiss it.
|only if Dwarf Hunter
step
talk Grif Wildheart##1231
turnin Taming the Beast##6064 |goto Dun Morogh 45.81,53.04
accept Taming the Beast##6084 |goto Dun Morogh 45.81,53.04
|only if Dwarf Hunter
step
use the Taming Rod##15913
|tip Use it on a Snow Leopard around this area.
Tame a Snow Leopard |q 6084/1 |goto Dun Morogh 48.68,58.93
|tip Dismiss it after you tame it.
|tip It may attack you after you dismiss it.
|only if Dwarf Hunter
step
talk Grif Wildheart##1231
turnin Taming the Beast##6084 |goto Dun Morogh 45.81,53.04
accept Taming the Beast##6085 |goto Dun Morogh 45.81,53.04
|only if Dwarf Hunter
step
use the Taming Rod##15908
|tip Use it on an Ice Claw Bear around this area.
Tame an Ice Claw Bear |q 6085/1 |goto Dun Morogh 49.06,62.12
You can usually find another one around [50.11,53.57]
|only if Dwarf Hunter
step
talk Grif Wildheart##1231
turnin Taming the Beast##6085 |goto Dun Morogh 45.81,53.04
accept Training the Beast##6086 |goto Dun Morogh 45.81,53.04
|only if Dwarf Hunter
step
Follow the path up |goto Dun Morogh 47.25,41.65 < 30 |only if walking
Enter the building |goto Ironforge 66.34,82.50 < 10 |walk
talk Belia Thundergranite##10090
|tip Inside the building.
turnin Training the Beast##6086 |goto Ironforge 70.87,85.80
|only if Dwarf Hunter
step
_NOTE:_
You Can Now Train Your Pet
|tip Learn pet abilities from Pet Trainers.
|tip Use your "Beast Training" ability to teach your pet abilities.
Click Here to Continue |confirm |q 413
|only if Dwarf Hunter
step
talk Sognar Cliffbeard##5124
|tip He walks around this area.
buy Tough Jerky##117 |n
|tip Buy 20-40, whatever you have money and bag space for.
|tip This will be used to feed your permanent pet soon and keep it Happy, so it deals more damage and gains Loyalty faster.
|tip By keeping your pet Happy and ranking up its Loyalty, it won't run away and abandon you, and will need food less often to stay Happy.
Visit the Vendor |vendor Sognar Cliffbeard##5124 |goto Ironforge 60.54,78.45 |q 413
|only if Dwarf Hunter
step
Run up the stairs and enter the building |goto Ironforge 61.32,88.18 < 7 |walk
talk Buliwyf Stonehand##11865
|tip Inside the building.
|tip This will allow you to equip two-handed maces.								|only if Dwarf Warrior
|tip This will allow you to equip two-handed axes and two-handed maces.						|only if Gnome Warrior
Train Two-Handed Axes |complete weaponskill("TH_AXE") > 0 |goto Ironforge 61.17,89.52				|only if Gnome Warrior
Train Two-Handed Maces |complete weaponskill("TH_MACE") > 0 |goto Ironforge 61.17,89.52
|only if Warrior
step
talk Kelomir Ironhand##5121
|tip Inside the building.
buy Giant Mace##1197 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Kelomir Ironhand##5121 |goto Ironforge 62.55,88.71 |q 433 |future
|only if Warrior and itemcount(1197) == 0
step
Enter the building |goto Dun Morogh 46.95,52.06 < 10 |walk
talk Maxan Anvol##1226
|tip Inside the building
accept Desperate Prayer##5637 |goto Dun Morogh 47.34,52.19
|only if Dwarf Priest
step
_Note:_
Do You Need to Create a Wand?
|tip If you already have a wand, you can skip the next bunch of steps.
|tip Click the line below to select what you want to do.
Yes, Create a Wand		|confirm	|next "Create_Wand_Priest"	|or	|q 433 |future
No, I Already Have a Wand	|confirm	|next "Skip_Wand_Priest"	|or	|q 433 |future
|only if Dwarf Priest
step
label "Create_Wand_Priest"
collect 70 Linen Cloth##2589 |q 433 |future
|tip You are about to create your wand.
|tip If you need more Linen Cloth, try to buy some from the Auction House. |only if not selfmade
|only if Dwarf Priest
step
Enter the building |goto Ironforge 43.84,29.66 < 10 |walk
talk Uthrar Threx##1703
|tip Inside the building.
Learn Tailoring |skillmax Tailoring,75 |goto Ironforge 43.82,27.86 |q 433 |future
|only if Dwarf Priest
step
Open the Tailoring Profession Window
|tip The Tailoring skill is in the General tab of your spellbook.
|tip Create 35 Bolts of Linen Cloth.
collect 35 Bolt of Linen Cloth##2996 |q 433 |future
|only if Dwarf Priest
step
talk Poranna Snowbraid##5154
|tip Inside the building.
buy 10 Coarse Thread##2320 |goto Ironforge 42.94,28.31 |q 433 |future
|only if Dwarf Priest
step
talk Uthrar Threx##1703
|tip Inside the building.
learn Brown Linen Robe##7623 |goto Ironforge 43.82,27.86 |q 433 |future
|only if Dwarf Priest
step
Open the Tailoring Profession Window
|tip The Tailoring skill is in the General tab of your spellbook.
|tip Create 10 Brown Linen Robes.
|tip You are about to learn Enchanting and disenchant these.
collect 10 Brown Linen Robe##6238 |q 433 |future
|only if Dwarf Priest
step
Enter the building |goto Ironforge 59.73,44.08 < 10 |walk
talk Gimble Thistlefuzz##5157
|tip Upstairs inside the building.
Learn Enchanting |skillmax Enchanting,75 |goto Ironforge 59.77,45.45 |q 433 |future
|only if Dwarf Priest
step
Disenchant the Brown Linen Robes
|tip Use the "Disenchant" ability in the General tab of your spellbook.
|tip If you don't get one of these items from disenchanting, talk to Tilli Thistlefuzz here and try to buy it.
|tip They are limited supply items, so it may not be available to buy.
|tip You can also try to buy it from the Auction House. |only if not selfmade
collect Strange Dust##10940 |goto Ironforge 61.03,44.00 |q 433 |future
collect 2 Lesser Magic Essence##10938 |goto Ironforge 61.03,44.00 |q 433 |future
|only if Dwarf Priest
step
talk Tilli Thistlefuzz##5158
|tip Inside the building.
buy Copper Rod##6217 |goto Ironforge 61.03,44.00 |q 433 |future
buy Simple Wood##4470 |goto Ironforge 61.03,44.00 |q 433 |future
|only if Dwarf Priest
step
Open the Enchanting Profession Window
|tip The Enchanting skill is in the General tab of your spellbook.
|tip Create 1 Runed Copper Rod.
collect Runed Copper Rod##6218 |q 433 |future
|only if Dwarf Priest
step
talk Gimble Thistlefuzz##5157
|tip Upstairs inside the building.
|tip This should be available with 10 Enchanting.
learn Lesser Magic Wand##14293 |goto Ironforge 59.77,45.45 |q 433 |future
|only if Dwarf Priest
step
Open the Enchanting Profession Window
|tip The Enchanting skill is in the General tab of your spellbook.
|tip Create 1 Lesser Magic Wand.
collect Lesser Magic Wand##11287 |q 433 |future
|only if Dwarf Priest
step
talk Dink##7312 |only if Mage
talk Regnus Thundergranite##5117 |only if Hunter
talk Briarthorn##5172 |only if Warlock
talk Bilban Tosslespanner##5114 |only if Warrior
talk Toldren Deepiron##5143 |only if Priest
talk Brandur Ironhammer##5149 |only if Paladin
talk Fenthwick##5167 |only if Rogue
trainer Dink##7312 |goto Ironforge/0 27.10,8.49 |only if Mage |q 433 |future
trainer Regnus Thundergranite##5117 |goto Ironforge/0 69.86,82.94 |only if Hunter |q 433 |future
trainer Briarthorn##5172 |goto Ironforge/0 50.33,5.70 |only if Warlock |q 433 |future
trainer Bilban Tosslespanner##5114 |goto Ironforge/0 65.92,88.39 |only if Warrior |q 433 |future
trainer Fenthwick##5167 |goto Ironforge/0 51.49,15.33 |only if Rogue |q 433 |future
trainer Toldren Deepiron##5143 |goto Ironforge/0 25.19,10.76 |only if Priest |q 433 |future
trainer Brandur Ironhammer##5149 |goto Ironforge/0 23.11,6.14 |only if Paladin |q 433 |future
|tip Inside the building.
|tip Train your spells.
step
Follow the path up |goto Dun Morogh 47.20,41.70 < 20 |only if walking and not zone("Ironforge")
talk Lago Blackwrench##6120
accept The Slaughtered Lamb##1715 |goto Ironforge 47.63,9.26
|only if Gnome Warlock
step
Follow the path |goto Ironforge 72.82,50.18 < 20 |walk
Enter the Deeprun Tram |complete subzone("Deeprun Tram") |goto Ironforge 76.58,51.14 |q 6662 |future
|tip Walk into the swirling portal.
|tip We cannot give you an arrow to follow here as it is inside an instance.
|only if Gnome Warlock
step
_Inside Deeprun Tram:_
talk Monty##12997
|tip On the middle platform, near the wall.
|tip In the Ironforge section of the Deeprun Tram.
|tip We cannot give you an arrow to follow here as it is inside an instance.
accept Deeprun Rat Roundup##6661
|only if Gnome Warlock
step
_Inside Deeprun Tram:_
use Rat Catcher's Flute##17117
|tip Use it on Deeprun Rats around this area.
|tip They look like small grey rats on the ground around this area.
|tip In the Ironforge section of the Deeprun Tram.
Capture #5# Rats |q 6661/1
|only if Gnome Warlock
step
_Inside Deeprun Tram:_
talk Monty##12997
|tip On the middle platform, near the wall.
|tip In the Ironforge section of the Deeprun Tram.
|tip We cannot give you an arrow to follow here as it is inside an instance.
turnin Deeprun Rat Roundup##6661
|only if Gnome Warlock
step
_Inside Deeprun Tram:_
Watch the dialogue
talk Monty##12997
|tip On the middle platform, near the wall.
|tip In the Ironforge section of the Deeprun Tram.
accept Me Brother, Nipsy##6662
|only if Gnome Warlock
step
_Inside Deeprun Tram:_
Ride the Tram
|tip Ride the Deeprun Tram from Ironforge to Stormwind City.
talk Nipsy##13018
|tip On the middle platform, near the wall.
|tip In the Stormwind City section of the Deeprun Tram.
turnin Me Brother, Nipsy##6662
|only if Gnome Warlock
step
_NOTE:_
Tame a Winter Wolf
|tip Use your "Tame Beast" ability on a Winter Wolf.
|tip They look like white wolves around this area.
|tip This will be your permanent pet for a little while.
Click Here to Continue |confirm |goto Dun Morogh 51.23,45.55 |q 413
|only if Dwarf Hunter
step
_Inside Deeprun Tram:_
Enter Stormwind City |complete zone("Stormwind City") |q 1715
|tip Walk into the swirling portal.
|only if Gnome Warlock
step
Enter the building |goto Stormwind City 29.15,74.18 < 10 |walk
talk Gakin the Darkbinder##6122
|tip Downstairs inside the building.
turnin The Slaughtered Lamb##1715 |goto Stormwind City 25.26,78.56
accept Surena Caledon##1688 |goto Stormwind City 25.26,78.56
|only Gnome Warlock
step
Leave the building |goto Stormwind City 29.15,74.18 < 10 |walk |only if subzone("The Slaughtered Lamb")
Enter the building |goto Stormwind City 53.44,64.92 < 10 |walk
talk Innkeeper Allison##6740
|tip Inside the building.
home Stormwind City |goto Stormwind City 52.62,65.70
|only if Gnome Warlock
step
Enter the building |goto Elwynn Forest 70.93,80.43 < 10 |walk
kill Surena Caledon##881
|tip Inside the building.
|tip You will pull 3 enemies. Apply DoTs and Wand Surena. Put your pet on Morgan, and fear the third.
|tip Make a healthstone and don't forget to use it if needed.
|tip Morgan does a backstab, don't turn your back to him! |only if hardcore
|tip Don't be afraid to ask for help from people in the area. |only if hardcore
|tip We have a video of us doing this step below if you want to see how it's performed before you pull.
Click Here To Copy The Video Link |popuptext youtu.be/unJ1RuAlDTY
collect Surena's Choker##6810 |q 1688/1 |goto Elwynn Forest 71.02,80.78
|only if Gnome Warlock
step
Enter the building |goto Stormwind City 29.15,74.18 < 10 |walk
talk Gakin the Darkbinder##6122
|tip Downstairs inside the building.
turnin Surena Caledon##1688 |goto Stormwind City 25.26,78.56
accept The Binding##1689 |goto Stormwind City 25.26,78.56
|only Gnome Warlock
step
use the Bloodstone Choker##6928
|tip Use it while standing on the pink symbol on the ground.
|tip Downstairs inside the building, inside the crypt.
kill Summoned Voidwalker##5676 |q 1689/1 |goto Stormwind City 25.11,77.46
|only if Gnome Warlock
step
talk Gakin the Darkbinder##6122
|tip Upstairs inside the building, in the basement above the crypt.
turnin The Binding##1689 |goto Stormwind City 25.25,78.53
|only if Gnome Warlock
step
_NOTE:_
Create Soul Shards
|tip As you follow the guide, use your "Drain Soul" spell as you kill an enemy to get a Soul Shard.
|tip Once you have a Soul Shard, use your "Summon Voidwalker" ability to summon your voidwalker.
|tip It will tank enemies for you, making it easier to kill enemies.
Click Here to Continue |confirm |q 433 |future
|only if Gnome Warlock
step
Leave the building |goto Stormwind City 29.15,74.14 < 10 |c |q 433 |future
|only if Gnome Warlock and subzone("The Slaughtered Lamb")
step
talk Rudra Amberstill##1265
accept Protecting the Herd##314 |goto Dun Morogh 63.08,49.89
|tip Only do this quest if you purchased throwing weapons |only if Warrior or Rogue
|tip And you trained Gouge |only if Rogue
|tip And you trained Hamstring |only if Warrior
|tip Skip this step if you aren't comfortable cheesing an elite, you will just need to grind more later. |only if hardcore
|tip We strongly recommend watching the video below before attempting this quest.
Click Here To Copy The Video Link |popuptext youtu.be/z1BVC3I33qE
|only if not Paladin
step
Aggro Vagash |goto Dun Morogh 62.41,48.08 > 10
|tip He can spawn deep in the cave. Wait for him to come out if you want an easier time.
|tip Follow the arrow and kite him to the fence location.
|tip Hop back and forth over the fence so Vagash can't attack you while you whittle him down.
|tip We strongly recommend watching the video below before attempting this quest.
Click Here To Copy The Video Link |popuptext youtu.be/z1BVC3I33qE
collect Fang of Vagash##3627 |q 314/1 |goto Dun Morogh 63.90,49.86
|only if not Paladin
step
talk Rudra Amberstill##1265
turnin Protecting the Herd##314 |goto Dun Morogh 63.08,49.89
|only if not Paladin
step
label "Skip_Wand_Priest"
talk Senator Mehr Stonehallow##1977
accept The Public Servant##433 |goto Dun Morogh 68.67,55.97
step
talk Foreman Stonebrow##1254
accept Those Blasted Troggs!##432 |goto Dun Morogh 69.08,56.33
stickystart "Kill_Rockjaw_Skullthumpers"
stickystart "Collect_Linen_Cloth_Priest"
stickystart "Collect_Linen_Cloth_Paladin"
step
Enter the cave |goto Dun Morogh 70.70,56.49 < 20 |walk
kill 10 Rockjaw Bonesnapper##1117 |q 433/1 |goto Dun Morogh 70.98,54.77
|tip Inside the cave.
|tip Watch for patrols and respawns while in the area. |only if hardcore
step
label "Kill_Rockjaw_Skullthumpers"
kill 6 Rockjaw Skullthumper##1115 |q 432/1 |goto Dun Morogh 70.70,56.49
|tip Inside and outside the cave.
|tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
step
Kill enemies around this area
|tip Inside and outside the cave.
|tip Watch for patrols and respawns while in the area. |only if hardcore
|tip Getting this far into level 10 will allow you to reach level 11 after turning in quests soon.
|tip There aren't enough quests to reach level 11 naturally in Dun Morogh.
|tip This is a longer grind, but is still much faster than traveling far to another zone, like Elwynn Forest, to complete quests.
|tip Being level 11 will allow you to be able to more comfortably complete quests in Loch Modan, which is a much closer zone.
|tip Also, a lot of grey and green weapons drop from these enemies, so grinding them will get you a lot of money to use for weapon upgrades, learning abilities, and buying bags.
ding 10,6400 |goto Dun Morogh 70.70,56.49
You can sell items at Frast Dokner who walks around [68.87,55.96]
step
label "Collect_Linen_Cloth_Priest"
Kill enemies around this area
|tip Inside and outside the cave.
|tip Be sure to check behind you for respawns if inside the cave. |only if hardcore
|tip Also try to keep a clear escape route. |only if hardcore
|tip You are collecting these to make your wand soon.
collect 70 Linen Cloth##2589 |goto Dun Morogh 70.70,56.49 |q 291 |future
|tip Be careful not to accidentally sell these to a vendor.
|only if Priest
step
label "Collect_Linen_Cloth_Paladin"
Kill enemies around this area
|tip Inside and outside the cave.
|tip Be sure to check behind you for respawns if inside the cave. |only if hardcore
|tip Also try to keep a clear escape route. |only if hardcore
|tip You will need these soon for a Paladin class quest.
collect 10 Linen Cloth##2589 |goto Dun Morogh 70.70,56.49 |q 1648 |future
|tip Be careful not to accidentally sell these to a vendor.
|only if Paladin
step
Leave the cave |goto Dun Morogh 70.70,56.49 < 20 |walk |only if subzone("Gol'Bolar Quarry Mine")
Follow the path up |goto Dun Morogh 67.86,57.69 < 20 |only if walking
talk Senator Mehr Stonehallow##1977
turnin The Public Servant##433 |goto Dun Morogh 68.67,55.97
step
talk Foreman Stonebrow##1254
turnin Those Blasted Troggs!##432 |goto Dun Morogh 69.08,56.33
step
talk Cook Ghilm##1355
|tip He walks around this area.
|tip You need to have the Cooking profession learned in order to accept a quest soon.
Learn Cooking |skillmax Cooking,75 |goto Dun Morogh 68.38,54.49 |q 419 |future
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
accept Filthy Paws##307 |goto Loch Modan 24.76,18.40
stickystart "Collect_Boar_Intestines"
stickystart "Collect_Spider_Ichors"
stickystart "Collect_Bear_Meat"
step
_NOTE:_
Tame a Forest Lurker
|tip Use your "Tame Beast" ability on a Forest Lurker.
|tip They look like brown spiders around this area.
|tip This will be your permanent pet for a little while.
Click Here to Continue |confirm |goto Loch Modan 35.69,31.78 |q 307
You can find more around: |notinsticky
[Loch Modan 29.17,23.57]
[Loch Modan 29.43,48.28]
|only if Dwarf Hunter
step
Kill enemies around this area
|tip Getting this far into level 11 will allow you to reach level 12 after turning in quests soon.
|tip You are about to have to complete a quest that can be pretty difficult at level 11, so being a level higher will help.
ding 11,7950 |goto Loch Modan 35.69,31.78 |q 418 |future
You can find more around: |notinsticky
[29.17,23.57]
[29.43,48.28]
stickystop "Collect_Boar_Intestines"
stickystop "Collect_Spider_Ichors"
stickystop "Collect_Bear_Meat"
step
Enter the building |goto Loch Modan 35.23,47.75 < 7 |walk
talk Vidra Hearthstove##1963
|tip Inside the building.
accept Thelsamar Blood Sausages##418 |goto Loch Modan 34.83,49.28
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
step
talk Vrok Blunderblast##1469
buy Hunter's Boomstick##2511 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Vrok Blunderblast##1469 |goto Loch Modan 35.83,43.46 |q 307
|only if Hunter and itemcount(2511) == 0
step
Enter the building |goto Loch Modan 37.18,47.09 < 7 |walk
talk Brock Stoneseeker##1681
|tip Downstairs inside the building.
|tip He sometimes walks out near the entrance of the building.
accept Honor Students##6387 |goto Loch Modan 37.02,47.81
|only if Dwarf or Gnome
stickystart "Collect_Boar_Intestines"
stickystart "Collect_Spider_Ichors"
stickystart "Collect_Bear_Meat"
stickystart "Collect_Tunnel_Rat_Ears"
step
click Miners' League Crates##271
|tip They look like piles of brown boxes on the ground around this area inside the mine.
|tip This mine can be dangerous, so try to stay near the entrance and wait for boxes to respawn, if you can, so you can leave quickly when you're finished.
|tip Watch for patrols and respawns while in the area. |only if hardcore
|tip Tunnel Rat Geomancers are casters that deal heavy damage. |only if hardcore
collect 4 Miners' Gear##2640 |q 307/1 |goto Loch Modan 35.48,18.85
step
label "Collect_Tunnel_Rat_Ears"
Leave the mine |goto Loch Modan 35.48,18.85 < 10 |walk |only if subzone("Silver Stream Mine") and _G.IsIndoors()
Kill Tunnel Rat enemies around this area
collect 12 Tunnel Rat Ear##3110 |q 416/1 |goto Loch Modan 24.57,29.79
|tip Watch for patrols and respawns while in the area. |only if hardcore
You can find more around [26.08,43.64]
step
Enter the building |goto Loch Modan 23.53,17.89 < 10 |walk
talk Mountaineer Stormpike##1343
|tip Upstairs inside the building.
turnin Filthy Paws##307 |goto Loch Modan 24.76,18.40
turnin Mountaineer Stormpike's Task##1339 |goto Loch Modan 24.76,18.40
accept Stormpike's Order##1338 |goto Loch Modan 24.76,18.40
step
label "Collect_Boar_Intestines"
kill Mountain Boar##1190+
|tip Kill the other types of enemies around this area for extra xp. |notinsticky
collect 3 Boar Intestines##3172 |goto Loch Modan 36.99,34.36 |q 418 |future
You can find more around [Loch Modan 29.17,23.57]
step
label "Collect_Spider_Ichors"
kill Forest Lurker##1195+
|tip Kill the other types of enemies around this area for extra xp. |notinsticky
collect 3 Spider Ichor##3174 |goto Loch Modan 35.69,31.78 |q 418 |future
You can find more around: |notinsticky
[29.17,23.57]
[29.43,48.28]
step
label "Collect_Bear_Meat"
kill Elder Black Bear##1186+
|tip Kill the other types of enemies around this area for extra xp. |notinsticky
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
talk Vrok Blunderblast##1469
buy Hunter's Boomstick##2511 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Vrok Blunderblast##1469 |goto Loch Modan 35.83,43.46 |q 416
|only if Hunter and itemcount(2511) == 0
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
talk Thorgrum Borrelson##1572
turnin Honor Students##6387 |goto Loch Modan 33.94,50.95
accept Ride to Ironforge##6391 |goto Loch Modan 33.94,50.95
|only if Dwarf or Gnome
step
Follow the path |goto Ironforge 44.58,49.54 < 10 |walk
talk Senator Barin Redstone##1274
turnin The Reports##291 |goto Ironforge 39.55,57.49
step
Run up the stairs and enter the building |goto Ironforge 49.59,28.51 < 7 |walk
talk Golnir Bouldertoe##4256
|tip Downstairs inside the building.
turnin Ride to Ironforge##6391 |goto Ironforge 51.52,26.30
accept Gryth Thurden##6388 |goto Ironforge 51.52,26.30
|only if Dwarf or Gnome
step
talk Dink##7312 |only if Mage
talk Regnus Thundergranite##5117 |only if Hunter
talk Briarthorn##5172 |only if Warlock
talk Bilban Tosslespanner##5114 |only if Warrior
talk Toldren Deepiron##5143 |only if Priest
talk Brandur Ironhammer##5149 |only if Paladin
talk Fenthwick##5167 |only if Rogue
trainer Dink##7312 |goto Ironforge/0 27.10,8.49 |only if Mage |q 6388
trainer Regnus Thundergranite##5117 |goto Ironforge/0 69.86,82.94 |only if Hunter |q 6388
trainer Briarthorn##5172 |goto Ironforge/0 50.33,5.70 |only if Warlock |q 6388
trainer Bilban Tosslespanner##5114 |goto Ironforge/0 65.92,88.39 |only if Warrior |q 6388
trainer Fenthwick##5167 |goto Ironforge/0 51.49,15.33 |only if Rogue |q 6388
trainer Toldren Deepiron##5143 |goto Ironforge/0 25.19,10.76 |only if Priest |q 6388
trainer Brandur Ironhammer##5149 |goto Ironforge/0 23.11,6.14 |only if Paladin |q 6388
|tip Inside the building.
|tip Train your spells.
step
Enter the building |goto Ironforge 27.30,12.45 < 15 |walk
talk Brandur Ironhammer##5149
|tip Inside the building.
accept Tome of Divinity##2999 |goto Ironforge 23.12,6.14
|only if Dwarf Paladin
step
talk Tiza Battleforge##6179
|tip Upstairs inside the building.
turnin Tome of Divinity##2999 |goto Ironforge 27.64,12.19
accept The Tome of Divinity##1645 |goto Ironforge 27.64,12.19 |instant
|only if Dwarf Paladin
step
use the Tome of Divinity##6916
accept The Tome of Divinity##1646
|only if Dwarf Paladin
step
talk Tiza Battleforge##6179
|tip Upstairs inside the building.
turnin The Tome of Divinity##1646 |goto Ironforge 27.64,12.19
accept The Tome of Divinity##1647 |goto Ironforge 27.64,12.19
|only if Dwarf Paladin
step
map Ironforge
path follow strictbounce; loop off; ants straight; dist 20; markers none
path	21.75,51.75	21.97,54.66	22.70,58.39	23.32,61.81	23.72,63.80
path	25.81,67.98	27.55,71.41	31.72,78.27	36.24,81.32	39.82,83.22
path	42.92,84.10
talk John Turner##6175
|tip He walks around this area in a large path.
turnin The Tome of Divinity##1647
accept The Tome of Divinity##1648
|only if Dwarf Paladin
step
map Ironforge
path follow strictbounce; loop off; ants straight; dist 20; markers none
path	21.75,51.75	21.97,54.66	22.70,58.39	23.32,61.81	23.72,63.80
path	25.81,67.98	27.55,71.41	31.72,78.27	36.24,81.32	39.82,83.22
path	42.92,84.10
talk John Turner##6175
|tip He walks around this area in a large path.
|tip You should already have 10 Linen Cloth from earlier in the guide.
turnin The Tome of Divinity##1648
accept The Tome of Divinity##1778
|only if Dwarf Paladin
step
Enter the building |goto Ironforge 27.30,12.45 < 15 |walk
talk Tiza Battleforge##6179
|tip Upstairs inside the building.
turnin The Tome of Divinity##1778 |goto Ironforge 27.64,12.19
accept The Tome of Divinity##1779 |goto Ironforge 27.64,12.19
|only if Dwarf Paladin
step
talk Muiredon Battleforge##6178
|tip Upstairs inside the building.
turnin The Tome of Divinity##1779 |goto Ironforge 23.53,8.29
accept The Tome of Divinity##1783 |goto Ironforge 23.53,8.29
|only if Dwarf Paladin
step
talk Gryth Thurden##1573
turnin Gryth Thurden##6388 |goto Ironforge 55.51,47.74
accept Return to Brock##6392 |goto Ironforge 55.51,47.74
|only if Dwarf or Gnome
step
Enter the building |goto Loch Modan 37.18,47.09 < 10 |walk
talk Brock Stoneseeker##1681
|tip Downstairs inside the building.
|tip He sometimes walks out near the entrance of the building.
turnin Return to Brock##6392 |goto Loch Modan 37.02,47.81
|only if Dwarf or Gnome
step
Enter the building |goto Loch Modan 35.23,47.74 < 10 |walk
talk Innkeeper Hearthstove##6734
|tip Inside the building.
home Stoutlager Inn |goto Loch Modan 35.53,48.40
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
|tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
|tip Enemies tend to bunch together, so be prepared for adds. |only if hardcore |notinsticky
collect 8 Trogg Stone Tooth##2536 |q 267/1 |goto Loch Modan 32.51,73.25
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
Follow the path up |goto Loch Modan 21.32,68.12 < 20 |only if walking and not subzone("South Gate Outpost")
Run through the tunnel |goto Loch Modan 19.56,62.74 < 10 |only if walking and not subzone("South Gate Outpost")
talk Mountaineer Barleybrew##1959
turnin Shimmer Stout##413 |goto Dun Morogh 86.28,48.81
accept Stout to Kadrell##414 |goto Dun Morogh 86.28,48.81
step
Run through the tunnel |goto Dun Morogh 84.20,51.34 < 10 |only if walking and subzone("South Gate Outpost")
use the Symbol of Life##6866
|tip Use it on Narm Faulk's corpse.
|tip This will resurrect him and allow you to talk to him.
Watch the dialogue
talk Narm Faulk##6177
turnin The Tome of Divinity##1783 |goto Dun Morogh 78.32,58.09
accept The Tome of Divinity##1784 |goto Dun Morogh 78.32,58.09
|only if Dwarf Paladin
step
kill Dark Iron Spy##6123+
collect Dark Iron Script##6847 |q 1784/1 |goto Dun Morogh 77.39,61.27
|only if Dwarf Paladin
step
talk Yanni Stoutheart##1682
|tip Inside the building.
|tip If you can afford it, and you need more bag space, buy bags.
Visit the Vendor |vendor Yanni Stoutheart##1682 |goto Loch Modan 34.76,48.62 |q 414
step
map Loch Modan
path follow strictbounce; loop off; ants straight; dist 20; markers none
path	32.67,49.72	33.27,49.16	33.86,48.37	34.30,47.64	34.91,47.05
path	35.56,46.76	36.09,46.37	37.11,46.01	37.32,45.60	37.37,44.45
path	37.29,43.33	36.73,41.98
talk Mountaineer Kadrell##1340
|tip He walks around this area.
turnin Stout to Kadrell##414
step
Run up the stairs and enter the building |goto Ironforge 61.32,88.18 < 7 |walk
talk Bixi Wobblebonk##13084
|tip Inside the building.
|tip This will allow you to equip thrown weapons.
Train Thrown |complete weaponskill("THROWN") > 0 |goto Ironforge 62.23,89.62
|only if Warrior
step
Enter the building |goto Ironforge 27.30,12.45 < 15 |only if walking
talk Muiredon Battleforge##6178
|tip Upstairs inside the building.
turnin The Tome of Divinity##1784 |goto Ironforge 23.53,8.29
accept The Tome of Divinity##1785 |goto Ironforge 23.53,8.29
|only if Dwarf Paladin
step
talk Tiza Battleforge##6179
|tip Upstairs inside the building.
turnin The Tome of Divinity##1785 |goto Ironforge 27.64,12.19
|only if Dwarf Paladin
step
Follow the path |goto Ironforge 72.82,50.18 < 20 |walk
Enter the Deeprun Tram |complete subzone("Deeprun Tram") |goto Ironforge 76.97,51.25 |c |q 6661 |future
|tip Walk into the swirling portal.
step
_Inside Deeprun Tram:_
talk Monty##12997
|tip On the middle platform, near the wall.
|tip In the Ironforge section of the Deeprun Tram.
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
turnin Deeprun Rat Roundup##6661
step
_Inside Deeprun Tram:_
Watch the dialogue
talk Monty##12997
|tip On the middle platform, near the wall.
|tip In the Ironforge section of the Deeprun Tram.
accept Me Brother, Nipsy##6662
step
_Inside Deeprun Tram:_
Ride the Tram
|tip Ride the Deeprun Tram from Ironforge to Stormwind City.
talk Nipsy##13018
|tip On the middle platform, near the wall.
|tip In the Stormwind City section of the Deeprun Tram.
turnin Me Brother, Nipsy##6662
step
_Inside Deeprun Tram:_
Enter Stormwind City |complete zone("Stormwind City") |q 1338
|tip Walk into the swirling portal.
step
talk Furen Longbeard##5413
turnin Stormpike's Order##1338 |goto Stormwind City 58.09,16.53
step
Run through the doorway |goto Stormwind City 74.91,51.56 < 10 |only if walking
Enter the building |goto Stormwind City 77.97,48.19 < 10 |walk
talk Ilsa Corbin##5480
|tip Upstairs inside the building.
accept A Warrior's Training##1638 |goto Stormwind City 78.50,45.71 |or
'|complete completedq(1679) |or
|only if (Dwarf or Gnome) and Warrior
step
Leave the Command Center |goto Stormwind City 74.89,51.59 < 10 |walk |only if subzone("Command Center")
Enter the building |goto Stormwind City 71.66,39.89 < 10 |walk
talk Harry Burlguard##6089
|tip Inside the building.
turnin A Warrior's Training##1638 |goto Stormwind City 74.25,37.26
accept Bartleby the Drunk##1639 |goto Stormwind City 74.25,37.26 |or
'|complete completedq(1678) |or
|only if (Dwarf or Gnome) and Warrior
step
talk Bartleby##6090
|tip He walks around this area inside the building.
turnin Bartleby the Drunk##1639 |goto Stormwind City 73.83,37.17
accept Beat Bartleby##1640 |goto Stormwind City 73.83,37.17 |or
'|complete completedq(1678) |or
|tip He will attack you immediately after you accept this quest.
|only if (Dwarf or Gnome) and Warrior
step
kill Bartleby##6090
|tip He walks around this area inside the building.
|tip He will eventually surrender.
Beat Bartleby |q 1640/1 |goto Stormwind City 73.83,37.17 |or
'|complete completedq(1678) |or
|only if (Dwarf or Gnome) and Warrior
step
talk Bartleby##6090
|tip He walks around this area inside the building.
turnin Beat Bartleby##1640 |goto Stormwind City 73.83,37.17
accept Bartleby's Mug##1665 |goto Stormwind City 73.83,37.17 |or
'|complete completedq(1678) |or
|only if (Dwarf or Gnome) and Warrior
step
talk Harry Burlguard##6089
|tip Inside the building.
turnin Bartleby's Mug##1665 |goto Stormwind City 74.25,37.26 |or
'|complete completedq(1678) |or
|only if (Dwarf or Gnome) and Warrior
step
Enter the building |goto Stormwind City 56.66,57.71 < 10 |walk
talk Woo Ping##11867
|tip Inside the building.
|tip This will allow you to equip two-handed swords and staves.
Train Two-Handed Swords |complete weaponskill("TH_SWORD") > 0 |goto Stormwind City 57.13,57.71
Train Staves |complete weaponskill("TH_STAFF") > 0 |goto Stormwind City 57.13,57.71
|only if Warrior
step
Enter the building |goto Stormwind City 56.66,57.71 < 10 |walk
talk Woo Ping##11867
|tip Inside the building.
|tip This will allow you to equip two-handed swords.
Train Two-Handed Swords |complete weaponskill("TH_SWORD") > 0 |goto Stormwind City 57.13,57.71
|only if Paladin
step
Enter the building |goto Stormwind City 56.66,57.71 < 10 |walk
talk Woo Ping##11867
|tip Inside the building.
|tip This will allow you to equip one-handed swords.
Train One-Handed Swords |complete weaponskill("SWORD") > 0 |goto Stormwind City 57.13,57.71
|only if Rogue
step
talk Gunther Weller##1289
|tip Inside the building.
buy Cutlass##851 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Gunther Weller##1289 |goto Stormwind City 57.55,57.07 |q 3524 |future
|only if Rogue and itemcount(851) ==0
step
Enter the building |goto Stormwind City 43.04,34.49 < 10 |walk
talk High Priestess Laurena##376
|tip Inside the building.
turnin Desperate Prayer##5635 |goto Stormwind City 38.58,26.01
|only if Dwarf Priest
step
Enter the building |goto Stormwind City 56.66,57.70 < 10 |walk
talk Woo Ping##11867
|tip Inside the building.
|tip This will allow you to use staves.
Train Staves |complete weaponskill("TH_STAFF") > 0 |goto Stormwind City 57.13,57.71
|only if Dwarf Priest
step
Enter the building |goto Stormwind City 56.66,57.70 < 10 |walk
talk Woo Ping##11867
|tip Inside the building.
|tip This will allow you to use one-handed swords.
Train One-Handed Swords |complete weaponskill("SWORD") > 0 |goto Stormwind City 57.13,57.71
|only if Mage
step
Enter the building |goto Stormwind City 56.66,57.70 < 10 |walk
talk Woo Ping##11867
|tip Inside the building.
|tip This will allow you to use staves and one-handed swords.
Train Staves |complete weaponskill("TH_STAFF") > 0 |goto Stormwind City 57.13,57.71
Train One-Handed Swords |complete weaponskill("SWORD") > 0 |goto Stormwind City 57.13,57.71
|tip By the time you're able to use these, you'll be far away from a vendor that sells them, so we are buying them now.
|only if Warlock
|only if Warlock and subzone("The Slaughtered Lamb")
step
Run up the ramp |goto Stormwind City 62.39,62.31 < 15 |only if walking
talk Dungar Longdrink##352
|tip Inside the building.
fpath Stormwind |goto Stormwind City 66.27,62.14
step
_Note_
We are going to Menethil Harbor.
|tip We are heading to Darkshore to quest since quests will get hard here soon.
|tip There is a slow (45 minutes) but safe way, or a fast (10 minutes) but slightly dangerous way that also lets you train spells.
|tip This will be your only chance to train in the next 6-8 levels. |only if Warlock or Paladin or Mage
|tip We have a video to help with the fast route.
I want the fast route.		|confirm	|next "Fast_Route"	|or	|q 3524 |future
I want the slow but safe route.	|confirm	|next "Safe_Route"	|or	|q 3524 |future
|only if hardcore
step
label "Fast_Route"
Head to the path above the frozen lake |goto Dun Morogh/0 58.11,41.94 < 30 |only if walking
Continue up the hill |goto Dun Morogh/0 60.60,44.07 < 10 |only if walking
Jump at the dark part of the mountain to skip up. Watch the video if you need visual help, it can be confusing. |goto Dun Morogh/0 60.72,44.18 < 1 |only if walking
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
|only if hardcore
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
|tip We are heading to Darkshore to quest since quests will get hard here soon.
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
talk Vesprystus##3838
fpath Rut'theran Village |goto Teldrassil 58.40,94.02
|only if Hunter
step
talk Ilyenia Moonfire##11866
|tip This will allow you to use bows.
Train Bows |complete weaponskill("BOW") > 0 |goto Darnassus 57.56,46.73
|only if Hunter
step
talk Ariyell Skyshadow##4203
buy Laminated Recurve Bow##2507 |n
|tip If you can afford it.
|tip If you have better, skip this step.
|tip Also buy a Small Quiver or Medium Quiver, whichever you can afford.
Visit the Vendor |vendor Ariyell Skyshadow##4203 |goto Darnassus 58.76,44.50 |q 3524 |future
|only if Hunter and itemcount(2507) == 0
step
talk Ilyenia Moonfire##11866
|tip This will allow you to use staves.
Train Staves |complete weaponskill("TH_STAFF") > 0 |goto Darnassus 57.56,46.73
|only if Hunter
]])