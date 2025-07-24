
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Redridge Mountains (18-20)",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."Redridge Mountains",
condition_suggested=function() return level >= 18 and level <= 20 and not completedq(150) end,
next="Leveling Guides\\Darkshore (20-22)",
hardcore = true,
},[[
step
Optional Route Change
|tip You can opt to do The Deadmines around level 20 instead of grinding.
|tip This will mean slower leveling but it will be more fun and potentially give you gear upgrades.
|tip If you choose to do The Deadmines, we will say when to accept and turnin dungeon quests that are worth doing in your route.
|tip We will also say when it is a good time to do the dungeon.
_Note_
|tip This feature is currently experimental and may result in a full quest log. If this happens, please submit a feedback report so we can fix it!
|tip If you have a full quest log, we recommend abandoning any dungeon quests that can be shared by your party members later.
Click Here if you'd like to run The Deadmines later |confirm DMflag
Click Here if you'd prefer to grind |confirm
step
talk Thor##523
fpath Sentinel Hill |goto Westfall 56.55,52.64
|only if (Dwarf or Gnome or NightElf) and guideflag("DMflag")
step
talk Gryan Stoutmantle##234
accept The Defias Brotherhood##65 |goto Westfall 56.33,47.52
|only if (Dwarf or Gnome or NightElf) and guideflag("DMflag")
step
talk Ariena Stormfeather##931
fpath Lakeshire |goto Redridge Mountains 30.59,59.41
step
_NOTE:_
Save Cloth in Your Bank as You Level
|tip Once you are close to reaching level 60, you will need 240 of each type of cloth.
|tip As you level and collect Wool Cloth naturally from killing enemies while following the guide, make sure you deposit the cloth into a bank whenever you are near one.
|tip This will give you about 40,000 quick and easy xp to help you get to level 60 faster in the longer later levels.
Click Here to Continue |confirm
|only if level < 60
step
talk Marshal Marris##382
accept Blackrock Menace##20 |goto Redridge Mountains 33.51,48.97
|only if not hardcore
step
talk Foreman Oslow##341
accept The Lost Tools##125 |goto Redridge Mountains 32.14,48.64
step
talk Verner Osgood##415
accept The Price of Shoes##118 |goto Redridge Mountains 30.98,47.28
step
Enter the building |goto Redridge Mountains 29.50,46.12 < 10 |walk
talk Magistrate Solomon##344
|tip Inside the building.
accept Messenger to Stormwind##120 |goto Redridge Mountains 29.99,44.45
step
talk Dockmaster Baren##381
accept Selling Fish##127 |goto Redridge Mountains 27.72,47.38
step
Enter the building |goto Redridge Mountains 26.61,46.37 < 10 |walk
talk Darcy##379
|tip She walks around this area inside the building.
accept A Free Lunch##129 |goto Redridge Mountains 26.75,44.35
step
talk Wiley the Black##266
|tip Upstairs inside the building.
turnin The Defias Brotherhood##65 |goto Redridge Mountains 26.48,45.35 |only if haveq(65) or completedq(65)
accept The Defias Brotherhood##132 |goto Redridge Mountains 26.48,45.35 |only if guideflag("DMflag")
step
Leave the building |goto Redridge Mountains 26.62,46.39 < 10 |walk |only if subzone("Lakeshire Inn")
Enter the building |goto Redridge Mountains 22.80,44.56 < 10 |walk
talk Chef Breanna##343
|tip Inside the building.
accept Redridge Goulash##92 |goto Redridge Mountains 22.68,43.84
step
talk Shawn##8965
accept Hilary's Necklace##3741 |goto Redridge Mountains 29.32,53.63
step
talk Lucius##6966
turnin Redridge Rendezvous##2281 |goto Redridge Mountains 28.06,52.04
accept Alther's Mill##2282 |goto Redridge Mountains 28.06,52.04
|only if Rogue
step
click Glinting Mud##154357
|tip It looks like a brown pile of dirt on the ground underwater.
|tip It spawns in random locations in the water, so you may need to search around.
collect Hilary's Necklace##10958 |q 3741/1 |goto Redridge Mountains 19.17,51.76
Also check around [Redridge Mountains 38.03,54.49]
stickystart "Collect_Spotted_Sunfish"
step
click Sunken Chest##32
|tip Underwater.
|tip Don't linger underwater for any reason. |only if hardcore
|tip If you get into combat, swim to the surface and kill the enemy, then try again. |only if hardcore
collect Oslow's Toolbox##1309 |q 125/1 |goto Redridge Mountains 41.53,54.67
stickystop "Collect_Spotted_Sunfish"
stickystart "Collect_Great_Gortusk_Snouts"
stickystart "Collect_Crisp_Spider_Meat"
step
talk Guard Parker##464
|tip He walks around this area.
turnin A Free Lunch##129 |goto Redridge Mountains 15.27,71.45
accept Visit the Herbalist##130 |goto Redridge Mountains 15.27,71.45
accept Encroaching Gnolls##244 |goto Redridge Mountains 15.27,71.46
step
label "Collect_Crisp_Spider_Meat"
kill Tarantula##442+
collect 5 Crisp Spider Meat##1081 |q 92/3 |goto Redridge Mountains 20.28,68.29
|tip Be careful not to accidentally sell these to a vendor.
You can find more around [14.40,77.92]
step
talk Deputy Feldon##1070
turnin Encroaching Gnolls##244 |goto Redridge Mountains 30.74,60.00
accept Assessing the Threat##246 |goto Redridge Mountains 30.74,60.00
stickystop "Collect_Great_Gortusk_Snouts"
step
talk Hilary##8962
turnin Hilary's Necklace##3741 |goto Redridge Mountains 29.24,53.63
step
talk Lindsay Ashlock##791
|tip Buy enough arrows to fill your ammo bag, plus 4-6 extra stacks.
|tip You have a pretty long grind coming up soon.
Visit the Vendor |vendor Lindsay Ashlock##791 |goto Redridge Mountains 28.77,47.33 |q 89
|only if Hunter
step
talk Martie Jainrose##342
turnin Visit the Herbalist##130 |goto Redridge Mountains 21.86,46.33
accept Delivering Daffodils##131 |goto Redridge Mountains 21.86,46.33
step
Enter the building |goto Redridge Mountains 26.60,46.38 < 10 |walk
talk Darcy##379
|tip She walks around this area inside the building.
turnin Delivering Daffodils##131 |goto Redridge Mountains 26.75,44.34
step
Leave the building |goto Redridge Mountains 26.60,46.38 < 10 |walk |only if subzone("Lakeshire Inn")
Enter Alther's Mill |goto Redridge Mountains 45.84,37.31 < 70 |only if walking and not subzone("Alther's Mill")
click Practice Lockbox##178244+
|tip They look like small grey metal chests on the ground around this area.
|tip Inside the building.
Reach Skill 75 in Lockpicking |complete skill("Lockpicking") >=75 |goto Redridge Mountains 51.98,45.22 |q 2282
|only if Rogue
step
click Lucius's Lockbox
|tip Inside the building.
collect Token of Thievery##7871 |q 2282/1 |goto Redridge Mountains 52.04,44.69
|only if Rogue
step
talk Lucius##6966
turnin Alther's Mill##2282 |goto Redridge Mountains 28.06,52.04
|only if Rogue
step
label "Collect_Great_Gortusk_Snouts"
Leave the building |goto Redridge Mountains 26.60,46.38 < 10 |walk |only if subzone("Lakeshire Inn")
kill Great Goretusk##547+
|tip They look like boars.
|tip While in the western area, be careful to avoid Bellygrub. |notinsticky
|tip It's a level 24 boar that walks around the area. |notinsticky
collect 5 Great Goretusk Snout##2296 |q 92/1 |goto Redridge Mountains 15.82,52.97
|tip Be careful not to accidentally sell these to a vendor.
You can find more around: |notinsticky
[Redridge Mountains 25.89,59.27]
[Redridge Mountains 29.57,75.26]
[Redridge Mountains 35.34,71.20]
stickystart "Kill_Redridge_Mongrels"
step
kill 6 Redridge Poacher##424 |q 246/2 |goto Redridge Mountains 31.47,81.01
|tip Watch for patrols and respawns while in the area. |only if hardcore
|tip Enemies near the camps tend to pull in groups. |only if hardcore
You can find more around [43.02,71.64]
step
label "Kill_Redridge_Mongrels"
kill 10 Redridge Mongrel##423 |q 246/1 |goto Redridge Mountains 31.47,81.01
|tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
|tip Enemies near the camps tend to pull in groups. |only if hardcore |notinsticky
You can find more around [43.02,71.64]
step
Kill enemies around this area
|tip You are about to have to kill a lot of level 21 enemies. |only if not hardcore
|tip Being a level higher will help. |only if not hardcore
|tip Grinding a bit here will also reduce the amount you have to grind later.
|tip Watch for patrols and respawns while in the area. |only if hardcore
|tip Enemies near the camps tend to pull in groups. |only if hardcore
ding 19 |goto Redridge Mountains 31.47,81.01
You can find more around [43.02,71.64]
stickystart "Collect_Murloc_Fins"
step
label "Collect_Spotted_Sunfish"
Kill Murloc enemies around this area
|tip You can find more in the water nearby.
|tip Murloc Minor Tidecallers may heal themselves or allies when health is low. |only if hardcore
|tip The murlocs may run away in fear when at low health, so try to pull them away from the others to kill. |only if hardcore |notinsticky
|tip These enemies tend to pull in groups. |only if hardcore
collect 10 Spotted Sunfish##1467 |q 127/1 |goto Redridge Mountains 49.00,72.02
step
label "Collect_Murloc_Fins"
Kill Murloc enemies around this area
collect 8 Murloc Fin##1468 |goto Redridge Mountains 49.00,72.02 |q 150 |future
|tip Murloc Minor Tidecallers may heal themselves or allies when health is low. |only if hardcore |notinsticky
|tip The murlocs may run away in fear when at low health, so try to pull them away from the others to kill. |only if hardcore |notinsticky
|tip These enemies tend to pull in groups. |only if hardcore |notinsticky
|tip Be careful not to accidentally sell these to a vendor.
step
kill Dire Condor##428+
|tip They look like red birds.
|tip They share spawn points with the Black Dragon Whelps, so kill those too, if you can't find any condors.
collect 5 Tough Condor Meat##1080 |q 92/2 |goto Redridge Mountains 58.04,75.72
You can find more around [47.23,76.89]
step
Kill Blackrock enemies around this area
|tip They look like orcs.
collect 10 Battleworn Axe##3014 |q 20/1 |goto Redridge Mountains 71.90,79.39
You can find more around [76.41,74.07]
|only if not hardcore
step
Kill enemies around this area
|tip We are returning to Stormwind soon
|tip You really want to be level 20 to train new spells
|tip Enemies near the camps tend to pull in groups. |only if hardcore
|tip Alternatively, this can be a good time to run The Deadmines if you can find a group.
ding 19,16870  |goto Redridge Mountains 31.47,81.01
You can find more around [43.02,71.64]
|only if hardcore
step
Kill enemies around this area
|tip We are returning to Stormwind soon
|tip You really want to be level 20 to train new spells
|tip Enemies near the camps tend to pull in groups. |only if hardcore
|tip Alternatively, this can be a good time to run The Deadmines if you can find a group.
ding 19,15220  |goto Redridge Mountains 31.47,81.01
You can find more around [43.02,71.64]
|only if not hardcore
step
Enter the building |goto Redridge Mountains 22.81,44.55 < 10 |walk
talk Chef Breanna##343
|tip Inside the building.
turnin Redridge Goulash##92 |goto Redridge Mountains 22.68,43.83
step
talk Dockmaster Baren##381
turnin Selling Fish##127 |goto Redridge Mountains 27.72,47.38
step
talk Foreman Oslow##341
turnin The Lost Tools##125 |goto Redridge Mountains 32.14,48.64
accept The Everstill Bridge##89 |goto Redridge Mountains 32.14,48.64
step
talk Marshal Marris##382
turnin Blackrock Menace##20 |goto Redridge Mountains 33.51,48.97
|only if not hardcore
step
talk Deputy Feldon##1070
turnin Assessing the Threat##246 |goto Redridge Mountains 30.73,60.00
step
talk Gryan Stoutmantle##234
turnin The Defias Brotherhood##132 |goto Westfall 56.33,47.52
accept The Defias Brotherhood##135 |goto Westfall 56.33,47.52
|only if guideflag("DMflag")
step
Follow the path |goto Stormwind City 74.69,53.64 < 7 |walk
Enter the building |goto Stormwind City 77.14,58.04 < 7 |walk
talk Master Mathias Shaw##332
|tip Upstairs inside the building.
turnin The Defias Brotherhood##135 |goto Stormwind City 75.78,59.84
accept The Defias Brotherhood##141 |goto Stormwind City 75.78,59.84
|only if guideflag("DMflag")
step
Enter the building |goto Stormwind City 56.65,57.71 < 10 |walk
talk Marda Weller##1287
|tip Inside the building.
buy Maul##924 |n
|tip If you can afford it.
|tip You will use it when you reach level 21.
|tip If you have better, skip this step.
Visit the Vendor |vendor Marda Weller##1287 |goto Stormwind City 57.38,56.77 |q 4740 |future
|only if Warrior and itemcount(924) == 0
step
Enter the building |goto Stormwind City 56.65,57.71 < 10 |walk
talk Marda Weller##1287
|tip Inside the building.
buy Maul##924 |n
|tip If you can afford it.
|tip You will use it when you reach level 21.
|tip If you have better, skip this step.
Visit the Vendor |vendor Marda Weller##1287 |goto Stormwind City 57.38,56.77 |q 4740 |future
|only if Paladin and itemcount(924) == 0
step
Enter the building |goto Stormwind City 43.02,34.43 < 10 |walk
talk Duthorian Rall##6171
|tip Inside the building.
accept The Tome of Valor##1793 |goto Stormwind City 39.81,29.80 |instant
|only if Paladin
step
use the Tome of Valor##6776
accept The Tome of Valor##1649
|only if Paladin
step
talk Duthorian Rall##6171
|tip Inside the building.
turnin The Tome of Valor##1649 |goto Stormwind City 39.81,29.80
accept The Tome of Valor##1650 |goto Stormwind City 39.81,29.80
|only if Paladin
step
Enter the building |goto Stormwind City 56.65,57.71 < 10 |walk
talk Marda Weller##1287
|tip Inside the building.
buy Longsword##923 |n
|tip If you can afford it.
|tip You will use it in your Main Hand when you reach level 21.
|tip If you have better, skip this step.
Visit the Vendor |vendor Marda Weller##1287 |goto Stormwind City 57.38,56.77 |q 4740 |future
|only if Rogue and itemcount(923) == 0
step
talk Marda Weller##1287
|tip Inside the building.
buy Kris##2209 |n
|tip If you can afford it.
|tip Use it in your Off Hand.
|tip If you have better, skip this step.
Visit the Vendor |vendor Marda Weller##1287 |goto Stormwind City 57.38,56.77 |q 4740 |future
|only if Rogue and itemcount(2209) == 0
step
Enter the building |goto Stormwind City 42.67,67.02 < 10 |walk
talk Ardwyn Cailen##1312
|tip Inside the building.
buy Dusk Wand##5211 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Ardwyn Cailen##1312 |goto Stormwind City 42.84,65.17 |q 4740 |future
|only if Priest and itemcount(5211) == 0
step
Enter the building |goto Stormwind City 42.67,67.02 < 10 |walk
talk Ardwyn Cailen##1312
|tip Inside the building.
buy Dusk Wand##5211 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Ardwyn Cailen##1312 |goto Stormwind City 42.84,65.17 |q 4740 |future
|only if Warlock and itemcount(5211) == 0
step
Enter the building |goto Stormwind City/0 57.03,64.51 < 7 |walk
talk Kyra Boucher##1275
|tip Inside the building.
|tip If you can afford it.
|tip Stock up on a couple of Runes of Teleportation to use to travel faster while leveling.
Visit the Vendor |vendor Kyra Boucher##1275 |goto Stormwind City/0 56.18,65.22 |q 4740 |future
|only if Mage
step
Enter the building |goto Stormwind City 42.67,67.02 < 10 |walk
talk Ardwyn Cailen##1312
|tip Inside the building.
buy Dusk Wand##5211 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Ardwyn Cailen##1312 |goto Stormwind City 42.84,65.17 |q 4740 |future
|only if Mage and itemcount(5211) == 0
step
Run up the ramp and enter the building |goto Stormwind City 39.33,81.46 < 10 |only if walking
talk Larimaine Purdue##2485
|tip Upstairs inside the tower.
learnspell Teleport: Stormwind##3561 |goto Stormwind City 39.84,79.45
|only if Mage
step
talk Jennea Cannon##5497 |only if Mage
talk Einris Brightspear##5515 |only if Hunter
talk Ursula Deline##5495 |only if Warlock
talk Wu Shen##5479 |only if Warrior
talk Osborne the Night Man##918 |only if Rogue
talk Sheldras Moontree##5504 |only if Druid
talk Brother Benjamin##5484 |only if Priest
talk Arthur the Faithful##5491 |only if Paladin
trainer Jennea Cannon##5497 |goto Stormwind City/0 38.62,79.35 |only if Mage |q 4740 |future
trainer Einris Brightspear##5515  |goto Stormwind City/0 61.66,15.30 |only if Hunter |q 4740 |future
trainer Ursula Deline##5495 |goto Stormwind City/0 26.13,77.20 |only if Warlock |q 4740 |future
trainer Wu Shen##5479 |goto Stormwind City/0 78.72,45.77 |only if Warrior |q 4740 |future
trainer Osborne the Night Man##918 |goto Stormwind City/0 74.54,52.80 |only if Rogue |q 4740 |future
trainer Sheldras Moontree##5504 |goto Stormwind City/0 20.92,55.52 |only if Druid |q 4740 |future
trainer Brother Benjamin##5484 |goto Stormwind City/0 41.64,28.98 |only if Priest |q 4740 |future
trainer Arthur the Faithful##5491 |goto Stormwind City/0 38.65,32.80 |only if Paladin |q 4740 |future
|tip Inside the tower. |only if Mage
|tip Inside the building. |only if Hunter or Warrior or Priest or Paladin
|tip He patrols inside. |only if Priest
|tip In the basement. |only if Warlock
|tip Train your spells.
step
Enter the building |goto Stormwind City 29.14,74.17 < 10 |walk
talk Gakin the Darkbinder##6122
|tip Downstairs inside the building.
accept Devourer of Souls##1716 |goto Stormwind City 25.26,78.56
|only if Warlock
step
talk Spackle Thornberry##5520
|tip Downstairs inside the building.
|tip If you can afford them.
|tip Buy all of the Grimoires for spells that are upgrades for the spells you use with your pet.
|tip After buying them, make sure to use them in your bags to learn the spells.
Visit the Vendor |vendor Spackle Thornberry##5520 |goto Stormwind City 25.66,77.66 |q 4740 |future
|only if Warlock
step
Enter the building |goto Stormwind City 63.62,22.82
talk Wilder Thistlenettle##656
|tip Inside the building.
accept Oh Brother...##167 |goto Stormwind City 65.45,21.21
accept Collecting Memories##168 |goto Stormwind City 65.45,21.21
|only if guideflag("DMflag")
step
talk Shoni the Shilent##6579
accept Underground Assault##2040 |goto Stormwind City 55.52,12.54
|only if guideflag("DMflag")
step
talk Argos Nightwhisper##4984
accept The Corruption Abroad##3765 |goto Stormwind City 21.41,55.79
|tip This quest won't be available if you've accepted or completed Researching the Corruption.
|tip Abandon this quest if you have it.
|tip Train your class spells while in town.
step
talk General Marcus Jonathan##466
turnin Messenger to Stormwind##120 |goto Stormwind City 63.97,75.32
accept Messenger to Stormwind##121 |goto Stormwind City 63.97,75.32
step
Enter the building |goto Elwynn Forest 41.85,65.68 < 10 |walk
talk Smith Argus##514
|tip Inside the building.
turnin The Price of Shoes##118 |goto Elwynn Forest 41.70,65.55
accept Return to Verner##119 |goto Elwynn Forest 41.70,65.55
step
Prepare for The Deadmines
|tip It will be a good time to start The Deadmines soon.
|tip You should run it after finishing the Defias Brotherhood chain, roughly 30-45 minutes.
|tip Start looking for a group.
|confirm
|only if guideflag("DMflag")
step
talk Gryan Stoutmantle##234
turnin The Defias Brotherhood##141 |goto Westfall 56.33,47.52
accept The Defias Brotherhood##142 |goto Westfall 56.33,47.52
|only if guideflag("DMflag")
step
map Westfall
path loop on
path	45.59,65.05	43.36,58.68	41.42,49.74	37.96,44.77
path	32.28,43.11	36.95,43.09	37.97,36.80	43.89,28.63
path	44.45,25.85
Check For the Defias Messenger Along This Path
kill Defias Messenger##550
|tip He walks along the road between Jangolode Mine and Moonbrook.
|tip He walks into Gold Coast Quarry before traveling to either Jangolode Mine or Moonbrook.
|tip Run on the road while looking for him.
|tip He spawns around this location, so it may be easier to kill enemies around this area while waiting for him to either spawn or walk here.
collect A Mysterious Message##1381 |q 142/1
|only if guideflag("DMflag")
step
talk Gryan Stoutmantle##234
turnin The Defias Brotherhood##142 |goto Westfall 56.33,47.52
|only if guideflag("DMflag")
step
talk The Defias Traitor##467
|tip This is an escort quest.
|tip If he's not here, someone may be escorting him.
|tip Wait until he respawns.
accept The Defias Brotherhood##155 |goto Westfall 55.68,47.50 |noautoaccept
|only if guideflag("DMflag")
step
Watch the dialogue
|tip Follow the Defias Traitor and protect him as he walks.
|tip He eventually walks to this location.
Escort The Defias Traitor to Discover Where VanCleef is Hiding |q 155/1 |goto Westfall 42.54,71.69
|only if guideflag("DMflag")
step
talk Gryan Stoutmantle##234
turnin The Defias Brotherhood##155 |goto Westfall 56.33,47.52
accept The Defias Brotherhood##166 |goto Westfall 56.33,47.52
|only if guideflag("DMflag")
step
Enter the building |goto Westfall 56.51,47.41 < 5 |only if walking
talk Scout Riell##820
|tip At the top of the tower.
accept Red Silk Bandanas##214 |goto Westfall 56.67,47.35
|only if guideflag("DMflag") and completedq(153)
step
We are now doing The Deadmines.
Enter the building |goto Westfall 42.56,71.74 < 5 |walk
Follow the path up |goto Westfall 43.38,71.95 < 5 |only if walking
Follow the path |goto Westfall 42.90,72.70 < 5 |only if walking
Run down the ramp |goto Westfall 43.40,72.82 < 5 |only if walking
Follow the path |goto Westfall 43.81,73.37 < 7 |only if walking
Jump down here |goto Westfall 43.27,74.14 < 7 |c |q 168
|only if guideflag("DMflag")
stickystart "Collect_Miners_Union_Cards"
step
Follow the path |goto Westfall 41.60,75.95 < 15 |only if walking
Continue following the path |goto Westfall 41.08,76.97 < 15 |only if walking
Cross the bridge |goto Westfall 41.12,79.68 < 10 |only if walking
Follow the path |goto Westfall 41.09,79.93 < 7 |only if walking
kill Foreman Thistlenettle##626
|tip He looks like a ghoul.
|tip He walks around this area.
collect Thistlenettle's Badge##1875 |q 167/1 |goto Westfall 41.08,80.08
|only if guideflag("DMflag")
step
label "Collect_Miners_Union_Cards"
Kill Undead enemies around this area
collect 4 Miners' Union Card##1894 |q 168/1 |goto Westfall 40.96,80.12
|only if guideflag("DMflag")
step
Enter the Deadmines Dungeon with Your Group |goto The Deadmines/0 0.00,0.00 < 500 |c |q 168
|only if guideflag("DMflag")
stickystart "Collect_10_Red_Silk_Bandanas"
step
_Inside The Deadmines Dungeon:_
kill Sneed's Shredder##642
|tip The second boss of the dungeon.
collect Gnoam Sprecklesprocket##7365 |q 2040/1
|only if guideflag("DMflag")
step
_Inside The Deadmines Dungeon:_
kill Edwin Vancleef##639
|tip The last boss of the dungeon.
|tip Aboard the ship.
collect Head of VanCleef##3637 |q 166/1
|only if guideflag("DMflag")
step
_Inside The Deadmines Dungeon:_
kill Edwin Vancleef##639
|tip The last boss of the dungeon.
|tip Aboard the ship.
collect An Unsent Letter##2874 |q 373 |future
|only if guideflag("DMflag")
step
label "Collect_10_Red_Silk_Bandanas"
_Inside The Deadmines Dungeon:_ |notinsticky
Kill Defias enemies around this area
|tip They are found throughout the dungeon.
collect 10 Red Silk Bandanas##915 |q 214/1
|only if guideflag("DMflag")
step
Leave The Deadmines Dungeon
Click Here to Continue |confirm |q 168
|only if guideflag("DMflag")
step
talk Gryan Stoutmantle##234
turnin The Defias Brotherhood##166 |goto Westfall 56.33,47.52
|only if guideflag("DMflag")
step
Enter the building |goto Westfall 56.51,47.41 < 5 |only if walking
talk Scout Riell##820
|tip At the top of the tower.
turnin Red Silk Bandanas##214 |goto Westfall 56.67,47.35
|only if guideflag("DMflag") and readyq(214)
step
use An Unsent Letter##2874
accept The Unsent Letter##373 |goto Stormwind City 47.89,31.17
|only if guideflag("DMflag")
step
Enter the building |goto Stormwind City 47.89,31.17 < 5 |walk
talk Baros Alexston##1646
turnin The Unsent Letter##373 |goto Stormwind City 49.20,30.28
|only if guideflag("DMflag")
step
talk Shoni the Shilent##6579
turnin Underground Assault##2040 |goto Stormwind City 55.52,12.54
|only if guideflag("DMflag")
step
Enter the building |goto Stormwind City 63.64,22.78 < 5 |walk
talk Wilder Thistlenettle##656
|tip Inside the building
turnin Oh Brother...##167 |goto Stormwind City 65.45,21.21
turnin Collecting Memories##168 |goto Stormwind City 65.45,21.21
|only if guideflag("DMflag")
step
talk Verner Osgood##415
turnin Return to Verner##119 |goto Redridge Mountains 30.98,47.27
accept Underbelly Scales##122 |goto Redridge Mountains 30.98,47.27
accept A Baying of Gnolls##124 |goto Redridge Mountains 30.98,47.27
step
kill Black Dragon Whelp##441+
|tip They look like small flying dragons.
|tip Watch for Redridge patrols while looking for the whelplings. |only if hardcore
collect 6 Underbelly Whelp Scale##1221 |q 122/1 |goto Redridge Mountains 35.34,71.20
You can find more around: |notinsticky
[29.57,75.26]
[47.12,76.91]
stickystart "Collect_Iron_Rivets"
stickystart "Kill_Redridge_Brutes"
stickystart "Kill_Redridge_Mystics"
step
Follow the path up |goto Redridge Mountains 34.92,40.80 < 30 |only if walking
Kill Redridge enemies around this area
|tip They look like gnolls.
|tip Redridge Alphas will not drop the quest item.
|tip Watch for patrols and respawns while here. |only if hardcore
|tip Enemies tend to pull in groups when near campfires. |only if hardcore
collect 5 Iron Pike##2856 |q 89/1 |goto Redridge Mountains 38.80,32.27
You can find more around [23.02,36.55]
step
label "Collect_Iron_Rivets"
Kill Redridge enemies around this area |notinsticky
|tip They look like gnolls. |notinsticky
|tip Redridge Alphas will not drop the quest item. |notinsticky
|tip Watch for patrols and respawns while here. |only if hardcore |notinsticky
|tip Enemies tend to pull in groups when near campfires. |only if hardcore |notinsticky
collect 5 Iron Rivet##1013 |q 89/2 |goto Redridge Mountains 38.80,32.27
You can find more around [23.02,36.55]
step
label "Kill_Redridge_Brutes"
kill 10 Redridge Brute##426 |q 124/1 |goto Redridge Mountains 38.80,32.27
|tip They look like gnolls. |notinsticky
|tip Watch for patrols and respawns while here. |only if hardcore |notinsticky
|tip Enemies tend to pull in groups when near campfires. |only if hardcore |notinsticky
You can find more around [23.02,36.55]
step
label "Kill_Redridge_Mystics"
kill 8 Redridge Mystic##430 |q 124/2 |goto Redridge Mountains 38.80,32.27
|tip They look like gnolls. |notinsticky
|tip Watch for patrols and respawns while here. |only if hardcore |notinsticky
|tip Enemies tend to pull in groups when near campfires. |only if hardcore |notinsticky
You can find more around [23.02,36.55]
step
talk Foreman Oslow##341
turnin The Everstill Bridge##89 |goto Redridge Mountains 32.14,48.64
step
talk Verner Osgood##415
turnin Underbelly Scales##122 |goto Redridge Mountains 30.97,47.27
turnin A Baying of Gnolls##124 |goto Redridge Mountains 30.97,47.27
step
Enter the building |goto Redridge Mountains 29.50,46.12 < 10 |walk
talk Magistrate Solomon##344
|tip Inside the building.
turnin Messenger to Stormwind##121 |goto Redridge Mountains 29.99,44.45
step
talk Dockmaster Baren##381
accept Murloc Poachers##150 |goto Redridge Mountains 27.72,47.38
step
talk Dockmaster Baren##381
turnin Murloc Poachers##150 |goto Redridge Mountains 27.72,47.38
step
_Destroy or Sell These Items:_
|tip They are no longer needed.
trash Murloc Fin##1468
step
Enter the building |goto Stormwind City 56.65,57.71 < 10 |walk
talk Marda Weller##1287
|tip Inside the building.
buy Maul##924 |n
|tip If you can afford it.
|tip You will use it when you reach level 21.
|tip If you have better, skip this step.
Visit the Vendor |vendor Marda Weller##1287 |goto Stormwind City 57.38,56.77 |q 4740 |future
|only if Warrior and itemcount(924) == 0
step
Enter the building |goto Stormwind City 56.65,57.71 < 10 |walk
talk Marda Weller##1287
|tip Inside the building.
buy Maul##924 |n
|tip If you can afford it.
|tip You will use it when you reach level 21.
|tip If you have better, skip this step.
Visit the Vendor |vendor Marda Weller##1287 |goto Stormwind City 57.38,56.77 |q 4740 |future
|only if Paladin and itemcount(924) == 0
step
Enter the building |goto Stormwind City 43.02,34.43 < 10 |walk
talk Duthorian Rall##6171
|tip Inside the building.
accept The Tome of Valor##1793 |goto Stormwind City 39.81,29.80 |instant
|only if Paladin
step
use the Tome of Valor##6776
accept The Tome of Valor##1649 |goto Stormwind City 39.81,29.80
|only if Paladin
step
talk Duthorian Rall##6171
|tip Inside the building.
turnin The Tome of Valor##1649 |goto Stormwind City 39.81,29.80
accept The Tome of Valor##1650 |goto Stormwind City 39.81,29.80
|only if Paladin
step
Enter the building |goto Stormwind City 56.65,57.71 < 10 |walk
talk Marda Weller##1287
|tip Inside the building.
buy Longsword##923 |n
|tip If you can afford it.
|tip You will use it in your Main Hand when you reach level 21.
|tip If you have better, skip this step.
Visit the Vendor |vendor Marda Weller##1287 |goto Stormwind City 57.38,56.77 |q 4740 |future
|only if Rogue and itemcount(923) == 0
step
talk Marda Weller##1287
|tip Inside the building.
buy Kris##2209 |n
|tip If you can afford it.
|tip Use it in your Off Hand.
|tip If you have better, skip this step.
Visit the Vendor |vendor Marda Weller##1287 |goto Stormwind City 57.38,56.77 |q 4740 |future
|only if Rogue and itemcount(2209) == 0
step
Enter the building |goto Stormwind City 42.67,67.02 < 10 |walk
talk Ardwyn Cailen##1312
|tip Inside the building.
buy Dusk Wand##5211 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Ardwyn Cailen##1312 |goto Stormwind City 42.84,65.17 |q 4740 |future
|only if Priest and itemcount(5211) == 0
step
Enter the building |goto Stormwind City 42.67,67.02 < 10 |walk
talk Ardwyn Cailen##1312
|tip Inside the building.
buy Dusk Wand##5211 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Ardwyn Cailen##1312 |goto Stormwind City 42.84,65.17 |q 4740 |future
|only if Warlock and itemcount(5211) == 0
step
Enter the building |goto Stormwind City 42.67,67.02 < 10 |walk
talk Ardwyn Cailen##1312
|tip Inside the building.
buy Dusk Wand##5211 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Ardwyn Cailen##1312 |goto Stormwind City 42.84,65.17 |q 4740 |future
|only if Mage and itemcount(5211) == 0
step
Run up the ramp and enter the building |goto Stormwind City 39.33,81.46 < 10 |only if walking
talk Larimaine Purdue##2485
|tip Upstairs inside the tower.
learnspell Teleport: Stormwind##3561 |goto Stormwind City 39.84,79.45
|only if Mage
step
Enter the building |goto Stormwind City 29.14,74.17 < 10 |walk
talk Gakin the Darkbinder##6122
|tip Downstairs inside the building.
accept Devourer of Souls##1716 |goto Stormwind City 25.26,78.56
|only if Warlock
step
talk Spackle Thornberry##5520
|tip Downstairs inside the building.
|tip If you can afford them.
|tip Buy all of the Grimoires for spells that are upgrades for the spells you use with your pet.
|tip After buying them, make sure to use them in your bags to learn the spells.
Visit the Vendor |vendor Spackle Thornberry##5520 |goto Stormwind City 25.66,77.66 |q 4740 |future
|only if Warlock
step
Optional Route Change
|tip You can opt to do Blackfathom Deeps around level 24 instead of grinding.
|tip This will mean slower leveling but it will be more fun and potentially give you gear upgrades.
|tip If you choose to do Blackfathom Deeps, we will say when to accept and turnin dungeon quests that are worth doing in your route.
|tip We will also say when it is a good time to do the dungeon.
_Note_
|tip This feature is currently experimental and may result in a full quest log. If this happens, please submit a feedback report so we can fix it!
|tip If you have a full quest log, we recommend abandoning any dungeon quests that can be shared by your party members later.
Click Here if you'd like to run Blackfathom Deeps later |confirm BFDflag
Click Here if you'd prefer to grind |confirm
step
Run up the stairs |goto Ironforge 51.24,9.84 < 5 |only if walking
talk Gerrig Bonegrip##2786
|tip Inside the building.
accept Knowledge in the Deeps##971 |goto Ironforge 50.82,5.60
|only if guideflag("BFDflag")
]])