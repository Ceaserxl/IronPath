ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Darkshore (13-17)",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."Darkshore",
condition_suggested=function() return level >= 13 and level <= 17 and not completedq(4762) end,
next="Leveling Guides\\Loch Modan (17-18)",
hardcore = true,
},[[
step
talk Cerellean Whiteclaw##3644
|tip On the dock.
accept For Love Eternal##963 |goto Darkshore 35.74,43.71
step
talk Wizbang Cranktoggle##3666
|tip Upstairs inside the building.
accept Buzzbox 827##983 |goto Darkshore 36.98,44.14
step
talk Gwennyth Bly'Leggonde##10219
accept Washed Ashore##3524 |goto Darkshore 36.62,45.59
step
talk Caylais Moonfeather##3841
fpath Auberdine |goto Darkshore 36.34,45.58
step
talk Barithras Moonshade##3583
accept Cave Mushrooms##947 |goto Darkshore 37.32,43.64
|tip You can skip it, but it is part of a large quest chain worth 6,660 xp. |only if hardcore
|tip You will need to grind that xp later. |only if hardcore
step
talk Sentinel Glynda Nal'Shea##2930
|tip She walks around this area.
accept The Red Crystal##4811 |goto Darkshore 37.70,43.39
step
Enter the building |goto Darkshore 37.77,41.36 < 15 |walk
talk Dalmond##4182
|tip Inside the building.
|tip If you can afford it, and you need more bag space, buy bags.
Visit the Vendor |vendor Dalmond##4182 |goto Darkshore 37.45,40.50 |q 4811
step
talk Thundris Windweaver##3649
|tip Inside the building.
accept Bashal'Aran##954 |goto Darkshore 37.39,40.13
accept Tools of the Highborne##958 |goto Darkshore 37.39,40.13
step
talk Tharnariun Treetender##3701
accept Plagued Lands##2118 |goto Darkshore 38.84,43.42
step
talk Terenthis##3693
|tip Inside the building.
accept How Big a Threat?##984 |goto Darkshore 39.37,43.48
stickystart "Collect_Crawler_Legs"
step
click Beached Sea Creature##175207
|tip There are several murlocs surrounding the corpse. |only if hardcore
|tip When low health, they will run away, so try to pull them a good deal away from the beached sea creature. |only if hardcore
collect Sea Creature Bones##12242 |q 3524/1 |goto Darkshore 36.39,50.88
step
label "Collect_Crawler_Legs"
kill Pygmy Tide Crawler##2231+
collect 6 Crawler Leg##5385 |q 983/1 |goto Darkshore 36.12,48.70
step
Find a Corrupt Furbolg Camp |q 984/1 |goto Darkshore 38.95,53.57
step
use Tharnariun's Hope##7586
|tip Use it on a Rabid Thistle Bear around this area.
|tip Be careful to not accidentally use it on a regular Thistle Bear.
|tip Make sure it's very close to you when you use it.
|tip Make it get close to the glowing red circle that appears on the ground.
Capture a Rabid Thistle Bear |q 2118/1 |goto Darkshore 38.35,57.54
If you need another quest item, talk to Tharnariun Treetender at [38.84,43.42]
step
click Buzzbox 827##17182
turnin Buzzbox 827##983 |goto Darkshore 36.66,46.26
accept Buzzbox 411##1001 |goto Darkshore 36.66,46.26
step
Run up the ramp |goto Darkshore 36.70,45.02 < 10 |only if walking
talk Gwennyth Bly'Leggonde##10219
turnin Washed Ashore##3524 |goto Darkshore 36.62,45.59
accept Washed Ashore##4681 |goto Darkshore 36.62,45.59
stickystart "Collect_Thresher_Eyes"
step
Run on the dock and jump into the water here |goto Darkshore 32.42,43.82 < 20 |only if walking
click Skeletal Sea Turtle##176189
|tip Underwater.
|tip Don't linger underwater for any reason. |only if hardcore
|tip If you get into combat, swim to the surface and kill the enemy, then try again. |only if hardcore
collect Sea Turtle Remains##12289 |q 4681/1 |goto Darkshore 31.87,46.32
step
Run up the ramp |goto Darkshore 36.70,45.02 < 10 |only if walking
talk Gwennyth Bly'Leggonde##10219
turnin Washed Ashore##4681 |goto Darkshore 36.62,45.59
stickystop "Collect_Thresher_Eyes"
step
talk Innkeeper Shaussiy##6737
|tip Inside the building.
home Auberdine |goto Darkshore 37.04,44.12
step
talk Tharnariun Treetender##3701
turnin Plagued Lands##2118 |goto Darkshore 38.84,43.42
accept Cleansing of the Infected##2138 |goto Darkshore 38.84,43.42
step
talk Terenthis##3693
|tip Inside the building.
turnin How Big a Threat?##984 |goto Darkshore 39.37,43.48
accept How Big a Threat?##985 |goto Darkshore 39.37,43.48
accept Thundris Windweaver##4761 |goto Darkshore 39.37,43.48
step
talk Gorbold Steelhand##6301
accept Deep Ocean, Vast Sea##982 |goto Darkshore 38.11,41.17
step
Enter the building |goto Darkshore 37.77,41.36 < 15 |walk
talk Dalmond##4182
|tip Inside the building.
|tip If you can afford it, and you need more bag space, buy bags.
Visit the Vendor |vendor Dalmond##4182 |goto Darkshore 37.45,40.50 |q 4761
step
talk Thundris Windweaver##3649
|tip Inside the building.
turnin Thundris Windweaver##4761 |goto Darkshore 37.40,40.13
step
Kill enemies around this area
|tip You should already be pretty close to reaching level 14.
|tip You are about to have to complete a quest that's underwater and can be difficult, with accidentally aggroing additional enemies.
|tip Being a level higher will help.
ding 14 |goto Darkshore 39.01,35.63
stickystart "Collect_Thresher_Eyes"
step
_NOTE:_
Incoming Underwater Quest
|tip The next 2 steps have you diving underwater to retrieve Lockboxes for a quest.
|tip The area is filled with aggressive murlocs and can be hard to navigate.
|tip The quest is optional.
|tip If you decide to skip the quest, make sure to also abandon the "Deep Ocean, Vast Sea" quest.
|tip
Click Here to Continue |confirm |q 982
|only if hardcore
step
Swim through the hole in the bottom of the underwater boat |goto Darkshore 38.79,29.38 < 10 |walk
click Silver Dawning's Lockbox##175165
|tip Inside the sunken ship, at the very bottom.
collect Silver Dawning's Lockbox##12191 |q 982/1 |goto Darkshore 38.24,28.80
step
Swim through the hole in the bottom of the underwater boat |goto Darkshore 40.28,27.51 < 10 |walk
click Mist Veil's Lockbox
|tip Inside the sunken ship, at the very bottom.
collect Mist Veil's Lockbox##12192 |q 982/2 |goto Darkshore 39.63,27.46
step
label "Collect_Thresher_Eyes"
kill Darkshore Thresher##2185
|tip Underwater around this area.
collect 3 Thresher Eye##5412 |q 1001/1 |goto Darkshore 31.60,39.75
You can find more around: |notinsticky
[35.39,37.08]
[39.63,27.46]
step
click Buzzbox 411##17183
turnin Buzzbox 411##1001 |goto Darkshore 41.96,28.64
accept Buzzbox 323##1002 |goto Darkshore 41.96,28.64
step
click Beached Sea Creature##175233
|tip The creature is surrounded by murlocs that can be hard to pull by themselves. |only if hardcore
|tip Greymist Seers will heal. |only if hardcore
|tip Greymist Coastrunners will run away quickly when at low health, so pull them away from the beached sea creature as best possible. |only if hardcore
accept Beached Sea Creature##4723 |goto Darkshore 41.88,31.55
step
talk Asterion##3650
turnin Bashal'Aran##954 |goto Darkshore 44.17,36.29
accept Bashal'Aran##955 |goto Darkshore 44.17,36.29
step
Kill enemies around this area
|tip Only Vile Sprites and Wild Grells will drop the quest item.
collect 8 Grell Earring##5336 |q 955/1 |goto Darkshore 45.13,38.46
You can find more around [47.72,37.13]
step
talk Asterion##3650
turnin Bashal'Aran##955 |goto Darkshore 44.17,36.29
accept Bashal'Aran##956 |goto Darkshore 44.17,36.29
step
kill Deth'ryll Satyr##2212+
collect Ancient Moonstone Seal##5338 |q 956/1 |goto Darkshore 45.50,36.68
You can find more around: |notinsticky
[45.57,39.70]
[46.75,39.13]
[47.71,36.91]
step
talk Asterion##3650
turnin Bashal'Aran##956 |goto Darkshore 44.17,36.30
accept Bashal'Aran##957 |goto Darkshore 44.17,36.30
step
Locate the Large, Red Crystal on Darkshore's Eastern Mountain Range |q 4811/1 |goto Darkshore 47.29,48.69
|tip The moonkin around this area tend to aggro from a wide range. |only if hardcore
|tip Raging Moonkin will enrage when near death. |only if hardcore
step
talk Gwennyth Bly'Leggonde##10219
turnin Beached Sea Creature##4723 |goto Darkshore 36.62,45.59
step
talk Sentinel Glynda Nal'Shea##2930
|tip She walks around this area.
turnin The Red Crystal##4811 |goto Darkshore 37.71,43.39
accept As Water Cascades##4812 |goto Darkshore 37.71,43.39
step
use the Empty Water Tube##14338
collect Moonwell Water Tube##14339 |q 4812/1 |goto Darkshore 37.79,44.06
step
Enter the building |goto Darkshore 37.77,41.36 < 15 |walk
talk Dalmond##4182
|tip Inside the building.
|tip If you can afford it, and you need more bag space, buy bags.
Visit the Vendor |vendor Dalmond##4182 |goto Darkshore 37.45,40.50 |q 4812
step
talk Gorbold Steelhand##6301
|tip Outside the building.
turnin Deep Ocean, Vast Sea##982 |goto Darkshore 38.11,41.17
step
Enter the cave |goto Darkshore 43.06,45.55 < 15 |walk
use the Cenarion Moondust##15208
|tip Inside the cave.
kill Lunaclaw##12138
Face Lunaclaw and Earn the Strength of Body and Heart it Possesses |q 6001/1 |goto Darkshore 43.48,45.96
|only if NightElf Druid
step
Leave Auberdine |goto Darkshore 39.76,45.77 < 40 |only if walking and subzone("Auberdine")
click Mysterious Red Crystal##175524
|tip The moonkin around this area have a pretty large aggro radius. |only if hardcore
|tip Approach the mysterious red crystal with great caution. |only if hardcore
turnin As Water Cascades##4812 |goto Darkshore 47.29,48.69
accept The Fragments Within##4813 |goto Darkshore 47.29,48.69
stickystart "Collect_Moonstalker_Fangs"
step
Kill enemies around this area
|tip You should already be pretty close to reaching level 15.
|tip The moonkin around this area have a pretty large aggro radius. |only if hardcore
|tip Watch for respawns while in the area. |only if hardcore
ding 15 |goto Darkshore 44.53,46.29
step
talk Sentinel Glynda Nal'Shea##2930
|tip She walks around this area.
turnin The Fragments Within##4813 |goto Darkshore 37.71,43.39
step
talk Sentinel Tysha Moonblade##3639
accept The Fall of Ameth'Aran##953 |goto Darkshore 40.30,59.73
stickystop "Collect_Moonstalker_Fangs"
stickystart "Collect_Highborne_Relics"
stickystart "Collect_Anyas_Pendant"
step
click Lay of Ameth'Aran##17188
|tip Watch for patrols and respawns while in the area. |only if hardcore
Read the Lay of Ameth'Aran |q 953/1 |goto Darkshore 43.31,58.70
step
click Ancient Flame##16393
|tip Watch for patrols and respawns while in the area. |only if hardcore
Destroy the Seal at the Ancient Flame |q 957/1 |goto Darkshore 42.37,61.79
step
click Fall of Ameth'Aran##17189
|tip Watch for patrols and respawns while in the area. |only if hardcore
Read the Fall of Ameth'Aran |q 953/2 |goto Darkshore 42.67,63.10
step
label "Collect_Highborne_Relics"
Kill Highborne enemies around this area
|tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
collect 7 Highborne Relic##5360 |q 958/1 |goto Darkshore 43.07,60.24
step
label "Collect_Anyas_Pendant"
map Darkshore
path follow strict; loop on; ants straight; dist 30; markers none
path	42.85,62.22	42.66,60.80	43.64,59.99	42.41,58.48	41.43,60.57
kill Anaya Dawnrunner##3667
|tip She looks like a neutral female night elf ghost, in a green and yellow robe.
|tip She may spawn in multiple locations, and walks around this area.
|tip She has a long respawn timer, if you see her die to someone else, skip this step.
|tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
|tip It may be a good idea to kill enemies while searching for Anaya. |only if hardcore |notinsticky
collect Anaya's Pendant##5382 |q 963/1 |goto
step
talk Sentinel Tysha Moonblade##3639
turnin The Fall of Ameth'Aran##953 |goto Darkshore 40.30,59.73
stickystart "Collect_Moonstalker_Fangs"
stickystart "Kill_Rabid_Thistle_Bears"
step
_NOTE:_
Tame a Moonstalker
|tip Use your "Tame Beast" ability on a Moonstalker.
|tip Try to tame one that's level 15 already.
|tip They look like blue and black striped tigers around this area.
|tip You can abandon your pet right before taming a Moonstalker.
|tip This will be your permanent pet.
Click Here to Continue |confirm |goto Darkshore 39.11,63.81 |q 1002
You can find more around: |notinsticky
[39.37,66.79]
[39.32,70.23]
[41.98,69.94]
|only if Hunter
step
click Beached Sea Creature##175226
|tip The creature is surrounded by aggressive murlocs. |only if hardcore
|tip Try pulling them individually when possible. |only if hardcore
|tip Greymist Netters can immobilize you completely, so be wary of them. |only if hardcore
|tip Greymist Seers may heal when their health is low. |only if hardcore
accept Beached Sea Creature##4728 |goto Darkshore 36.06,70.86
step
label "Collect_Moonstalker_Fangs"
Kill Moonstalker enemies around this area
'|kill ##2069, ##2070, ##2071, ##2237
|tip They look like blue and black striped tigers.
|tip They share spawn points with Rabid Thistle Bears, so kill those too, if you can't find any Moonstalkers.
collect 6 Moonstalker Fang##5413 |q 1002/1 |goto Darkshore 39.11,63.81
You can find more around: |notinsticky
[39.37,66.79]
[39.32,70.23]
[41.98,69.94]
step
label "Kill_Rabid_Thistle_Bears"
kill 20 Rabid Thistle Bear##2164 |q 2138/1 |goto Darkshore 39.11,63.81
|tip They share spawn points with Moonstalkers, so kill those too, if you can't find any Rabid Thistle Bears. |notinsticky
You can find more around: |notinsticky
[39.37,66.79]
[39.32,70.23]
[41.98,69.94]
step
talk Onu##3616
turnin Grove of the Ancients##952 |goto Darkshore/0 43.56,76.30
|only if NightElf
step
click Beached Sea Turtle##176190
|tip The creature is surrounded by murlocs that can be hard to pull by themselves. |only if hardcore
|tip Greymist Seers will heal. |only if hardcore
|tip Greymist Coastrunners will run away quickly when at low health, so pull them away from the creature as best possible. |only if hardcore
accept Beached Sea Turtle##4722 |goto Darkshore/0 37.14,62.16
stickystart "Kill_Blackwood_Windtalkers"
step
kill 8 Blackwood Pathfinder##2167 |q 985/1 |goto Darkshore/0 39.93,56.19
|tip These enemies may run away when at low health. |only if hardcore
You can find more around [39.81,53.87]
step
label "Kill_Blackwood_Windtalkers"
kill 5 Blackwood Windtalker##2324 |q 985/2 |goto Darkshore/0 39.93,56.19
|tip These enemies may run away when at low health. |only if hardcore |notinsticky
|tip These enemies can temporarily pacify you, leaving you vulnerable to damage. You can avoid this by backing away during their cast.|only if hardcore |notinsticky
You can find more around [39.81,53.87]
step
Kill enemies around this area
|tip We are grinding a bit here, so you don't have to grind a very long time later.
|tip You are about to have to go to a cave that can be difficult, so being a level higher will help.
|tip You will turn in your quests after grinding to get a large chunk of xp toward reaching level 17 quicker.
|tip These enemies may run away when at low health. |only if hardcore |notinsticky
|tip Blackwood Windtalkers may temporarily pacify you, leaving you vulnerable to damage. |only if hardcore |notinsticky
ding 16 |goto Darkshore/0 39.93,56.19
You can find more around [39.81,53.87]
step
use the Grimoire of Sacrifice (Rank 1)##16351
Teach Your Voidwalker Sacrifice (Rank 1) |learnpetspell Sacrifice##7812
|tip You need to have your voidwalker active to be able to learn these new spells.
|only if Warlock
step
Run up the ramp inside the building |goto Darkshore/0 36.85,44.12 < 10 |only if walking
talk Cerellean Whiteclaw##3644
|tip On the dock.
turnin For Love Eternal##963 |goto Darkshore/0 35.74,43.71
step
talk Gubber Blump##10216
accept Fruit of the Sea##1138 |goto Darkshore/0 36.09,44.93
step
Run up the ramp |goto Darkshore/0 36.70,45.01 < 10 |only if walking
talk Gwennyth Bly'Leggonde##10219
turnin Beached Sea Turtle##4722 |goto Darkshore/0 36.62,45.60
turnin Beached Sea Creature##4728 |goto Darkshore/0 36.62,45.60
step
talk Tharnariun Treetender##3701
turnin Cleansing of the Infected##2138 |goto Darkshore/0 38.84,43.41
step
talk Terenthis##3693
|tip Inside the building.
turnin How Big a Threat?##985 |goto Darkshore/0 39.37,43.48
step
Enter the building |goto Darkshore/0 37.77,41.36 < 15 |walk
talk Dalmond##4182
|tip Inside the building.
|tip If you can afford it, and you need more bag space, buy bags.
Visit the Vendor |vendor Dalmond##4182 |goto Darkshore/0 37.45,40.50 |q 958
step
talk Thundris Windweaver##3649
|tip Inside the building.
turnin Tools of the Highborne##958 |goto Darkshore/0 37.40,40.13
accept The Cliffspring River##4762 |goto Darkshore/0 37.40,40.13
step
talk Asterion##3650
turnin Bashal'Aran##957 |goto Darkshore/0 44.17,36.30
step
Enter the building |goto Darnassus 35.49,10.63 < 10 |walk
talk Mathrengyl Bearwalker##4217
|tip On the middle floor of the building.
accept A Lesson to Learn##26 |goto Darnassus 35.37,8.39
accept Lessons Anew##6121 |goto Darnassus 35.37,8.39
|only if NightElf Druid
step
talk Dendrite Starblaze##11802
|tip Upstairs inside the building.
turnin A Lesson to Learn##26 |goto Moonglade 56.21,30.64
accept Trial of the Lake##29 |goto Moonglade 56.21,30.64
turnin Lessons Anew##6121 |goto Moonglade 56.21,30.64
accept The Principal Source##6122 |goto Moonglade 56.21,30.64
|only if NightElf Druid
step
click Bauble Container
|tip It looks like a wicker basket vase on the ground underwater.
|tip They spawn randomly, so you may have to search around this area.
collect Shrine Bauble##15877 |goto Moonglade 54.33,55.65 |q 29
|only if NightElf Druid
step
use the Shrine Bauble##15877
Complete the Trial of the Lake |q 29/1 |goto Moonglade 35.92,41.38
|only if NightElf Druid
step
talk Tajarri##11799
turnin Trial of the Lake##29 |goto Moonglade 36.51,40.11
accept Trial of the Sea Lion##272 |goto Moonglade 36.51,40.11
|only if NightElf Druid
step
Incoming Cave Step
|tip The upcoming steps require you to navigate a dangerous cave.
|tip You can skip it, but it is part of a large quest chain worth 6,660 xp.
|tip You will need to grind that xp later.
Click Here to Continue |q 947 |future
|only if hardcore
stickystart "Collect_Scaber_Stalks"
step
Follow the path up |goto Darkshore 54.56,31.75 < 20 |only if walking
Enter the cave |goto Darkshore 54.97,33.37 < 15 |walk
Follow the path up |goto Darkshore 55.16,33.97 < 10 |walk
click Death Cap##11713
|tip Upstairs inside the cave.
|tip They look like brown and white mushrooms on the ground around this area inside the cave.
|tip If there's not one around here, you can find more downstairs in the side rooms of the cave.
|tip Beware, Naga casters can aggro from far away and the melee Naga in the cave use a knockback which can send you into the depths of the cave.
collect Death Cap##5270 |q 947/2 |goto Darkshore 55.75,36.19
step
label "Collect_Scaber_Stalks"
click Scaber Stalk##11714+
|tip They look like blue mushrooms on the ground around this area inside the cave.
|tip Beware, Naga casters can aggro from far away and the melee Naga in the cave use a knockback which can send you into the depths of the cave. |only if hardcore
|tip If possible, only stay on the upper level of the cave as the spawn can be quite inconsistent. |only if hardcore
collect 5 Scaber Stalk##5271 |q 947/1 |goto Darkshore 55.22,33.92
step
use the Empty Cliffspring Falls Sampler##15844
|tip At the entrance of the cave.
|tip Be careful, 3 enemies will spawn when you collect the sample. Be prepared to run away. |only if hardcore
collect Filled Cliffspring Falls Sampler##15845 |q 6122/1 |goto Darkshore 54.93,33.32
|only if NightElf Druid
step
Leave the cave |goto Darkshore 54.97,33.37 < 15 |walk |only if subzone("Cliffspring Falls") and _G.IsIndoors()
click Buzzbox 323
turnin Buzzbox 323##1002 |goto Darkshore 51.28,24.58
accept Buzzbox 525##1003 |goto Darkshore 51.28,24.58
step
use the Empty Sampling Tube##12350
|tip In the water, at the bottom of the waterfall.
collect Cliffspring River Sample##12349 |q 4762/1 |goto Darkshore 50.84,25.50
step
click Beached Sea Turtle##176196
accept Beached Sea Turtle##4727 |goto Darkshore 53.09,18.15
stickystart "Collect_Fine_Crab_Chunks"
step
click Beached Sea Turtle##176197
accept Beached Sea Turtle##4725 |goto Darkshore 44.21,20.64
step
label "Collect_Fine_Crab_Chunks"
kill Reef Crawler##2235+
collect 6 Fine Crab Chunks##12237 |q 1138/1 |goto Darkshore 49.51,21.27
You can find more around [45.58,20.83]
step
Kill enemies around this area
|tip Getting this far into level 16 will allow you to reach level 17 after turning in quests soon.
ding 16,11700 |goto Darkshore 49.51,21.27
You can find more around [45.58,20.83]
step
click Strange Lockbox##177792
|tip Underwater.
collect Half Pendant of Aquatic Agility##15883 |goto Darkshore 48.87,11.32 |q 272
|only if NightElf Druid
step
talk Gubber Blump##10216
turnin Fruit of the Sea##1138 |goto Darkshore 36.10,44.93
step
Run up the ramp |goto Darkshore 36.70,45.01 < 10 |only if walking
talk Gwennyth Bly'Leggonde##10219
turnin Beached Sea Turtle##4727 |goto Darkshore 36.62,45.60
turnin Beached Sea Turtle##4725 |goto Darkshore 36.62,45.60
step
talk Barithras Moonshade##3583
turnin Cave Mushrooms##947 |goto Darkshore 37.32,43.64
accept Onu##948 |goto Darkshore 37.32,43.64
|tip You must have completed the previous quest for this to appear. |only if hardcore
step
Enter the building |goto Darkshore 37.77,41.36 < 15 |walk
talk Dalmond##4182
|tip Inside the building.
|tip If you can afford it, and you need more bag space, buy bags.
Visit the Vendor |vendor Dalmond##4182 |goto Darkshore 37.45,40.50 |q 4762
step
talk Thundris Windweaver##3649
|tip Inside the building.
turnin The Cliffspring River##4762 |goto Darkshore 37.40,40.13
step
_Note_
|tip We are leaving Darkshore for now but will return via Hearthstone.
|tip We strongly recommend against setting your hearthstone anywhere else in the meantime.
|tip It is a long run back to Darkshore.
Click Here To Confirm |confirm
step
talk Naela Trance##1459
|tip She walks around this area.
buy Fine Longbow##11304 |n
|tip If you can afford it.
|tip It may not be available to buy, since it's a limited supply item.
|tip If it's not available, or you can't afford it, buy a Reinforced Bow instead. |only if itemcount(3026) == 0
|tip If you have better, skip this step.
Visit the Vendor |vendor Naela Trance##1459 |goto Wetlands 11.27,58.43 |q 436 |future
|only if Hunter and itemcount(11304) == 0
step
talk Naela Trance##1459
buy Medium Quiver##11362 |n
|tip If you can afford it.
Visit the Vendor |vendor Naela Trance##1459 |goto Wetlands 11.27,58.43 |q 436 |future
|only if Hunter and itemcount(11362) == 0
step
talk Alanndarian Nightsong##3702
|tip Inside the building.
turnin The Principal Source##6122 |goto Darkshore 37.69,40.66
accept Gathering the Cure##6123 |goto Darkshore 37.69,40.66
|only if NightElf Druid
step
click Lunar Fungal Bloom+
|tip They look like clusters of small white-spotted mushrooms on the ground inside the small caves around this area.
collect 12 Lunar Fungus##15851 |q 6123/2 |goto Darkshore 43.07,45.55
You can find more small caves at: |notinsticky
[43.07,49.24]
[43.38,50.50]
[42.71,52.28]
[45.22,53.45]
[46.30,45.56]
[45.52,50.24]
|only if NightElf Druid
step
Enter the building |goto Darkshore 37.77,41.36 < 15 |walk
talk Alanndarian Nightsong##3702
|tip Inside the building.
turnin Gathering the Cure##6123 |goto Darkshore 37.69,40.66
accept Curing the Sick##6124 |goto Darkshore 37.69,40.66
|only if NightElf Druid
step
use the Curative Animal Salve##15826
|tip Use it on Sickly Deer around this area.
|tip They look like green diseased deer in areas with trees.
|tip They are spread out all throughout Darkshore.
Cure #10# Sickly Deer |q 6124/1 |goto Darkshore 41.51,46.08
|only if NightElf Druid
step
talk Dendrite Starblaze##11802
|tip Upstairs inside the building.
turnin Curing the Sick##6124 |goto Moonglade 56.21,30.64
accept Power over Poison##6125 |goto Moonglade 56.21,30.64
|only if NightElf Druid
step
Enter the building |goto Darnassus 35.52,10.72 < 10 |walk
talk Mathrengyl Bearwalker##4217
|tip Upstairs inside the building, on the top floor.
turnin Power over Poison##6125 |goto Darnassus 35.38,8.41
|only if NightElf Druid
step
Enter the cave in the tree trunk |goto Darnassus 32.12,16.46 < 10 |walk
talk Syurna##4163
|tip Inside the cave.
Train the "Pick Lock" Ability |skillmax Lockpicking,75 |goto Darnassus 36.99,21.91
|only if Rogue
step
talk Jocaste##4146 |only if Hunter
talk Syurna##4163 |only if Rogue
talk Sildanair##4089 |only if Warrior
talk Denatharion##4218 |only if Druid
talk Jandria##4091 |only if Priest
trainer Jocaste##4146 |goto Darnassus/0 40.40,8.58 |only if Hunter |q 436 |future
trainer Sildanair##4089 |goto Darnassus/0 61.78,42.28 |only if Warrior |q 436 |future
trainer Syurna##4163 |goto Darnassus/0 36.97,21.86 |only if Rogue |q 436 |future
trainer Denatharion##4218  |goto Darnassus/0 34.74,7.43 |only if Druid |q 436 |future
trainer Jandria##4091 |goto Darnassus/0 37.91,82.80 |only if Priest |q 436 |future
|tip In the basement of the tree. |only if Rogue
|tip Train your spells.
]])