local IronPath = _G.IronPath
IronPath_Guide = {
    easyName = "Alliance - 13-60",
    minLevel = 13,
    maxLevel = 60,
    faction = "Alliance",
    steps = {
        [[
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
step
talk Dink##7312 |only if Mage
talk Briarthorn##5172 |only if Warlock
talk Brandur Ironhammer##5149 |only if Paladin
trainer Dink##7312 |goto Ironforge/0 27.10,8.49 |only if Mage |q 436 |future
trainer Briarthorn##5172 |goto Ironforge/0 50.33,5.70 |only if Warlock |q 436 |future
trainer Brandur Ironhammer##5149 |goto Ironforge/0 23.11,6.14 |only if Paladin |q 436 |future
|tip Inside the building.
|tip Train your spells.
step
talk Lina Hearthstove##9989
|tip Stable your permanent pet.
|tip You are about to tame a temporary pet soon, so you can learn "Bite 3".
Click Here to Continue |confirm |goto Loch Modan 34.64,48.09 |q 436 |future
|only if Hunter
step
Enter the building |goto Loch Modan 37.18,47.10 < 10 |walk
talk Jern Hornhelm##1105
|tip Downstairs inside the building.
|tip He sometimes walks out near the entrance of the building.
accept Ironband's Excavation##436 |goto Loch Modan 37.24,47.39
step
_NOTE:_
|tip You can tame any other beast along the way to help you get here and find a Wood Lurker to tame.
|tip Try to find a level 17 one before abandoning your pet.
|tip You can kill the level 18s and wait for them to respawn.
|tip Abandon whatever beast you tamed, before beginning to tame a Wood Lurker.
Tame a Wood Lurker
|tip Use your "Tame Beast" ability on a Wood Lurker.
|tip They look like brown spiders around this area.
|tip Try to tame one that's level 17.
|tip This will be your temporary pet for a while, so you can learn "Bite 3", to teach your permanent pet later.
Click Here to Continue |confirm |goto Loch Modan 59.86,25.29 |q 436
|only if Hunter
step
talk Magmar Fellhew##1345
turnin Ironband's Excavation##436 |goto Loch Modan 64.90,66.65
accept Gathering Idols##297 |goto Loch Modan 64.90,66.65
step
talk Prospector Ironband##1344
accept Excavation Progress Report##298 |goto Loch Modan 65.93,65.62
step
Kill enemies around this area
|tip They look like troggs.
|tip Watch for patrols while in the area. |only if hardcore
|tip Enemies will run away when at low health. |only if hardcore
|tip This area can be very dangerous, stick to the outskirts and don't forget to look up occasionally. |only if hardcore
collect 8 Carved Stone Idol##2636 |q 297/1 |goto Loch Modan 70.31,62.79
step
talk Magmar Fellhew##1345
turnin Gathering Idols##297 |goto Loch Modan 64.90,66.65
step
Follow the path |goto Loch Modan 66.22,52.81 < 40 |only if walking
Follow the path |goto Loch Modan 81.86,59.10 < 40 |only if walking
Enter the building |goto Loch Modan 83.43,62.83 < 15 |walk
talk Marek Ironheart##1154
|tip Inside the building.
accept Crocolisk Hunting##385 |goto Loch Modan 81.75,61.66
step
talk Cliff Hadin##1687
|tip Inside the building.
buy Fine Longbow##11304 |n
|tip If you can afford it.
|tip It may not be available to buy, since it's a limited supply item.
|tip If it's not available, or you can't afford it, buy a Reinforced Bow instead. |only if itemcount(3026) == 0
|tip If you have better, skip this step.
Visit the Vendor |vendor Cliff Hadin##1687 |goto Loch Modan 83.02,62.96 |q 385 |future
|only if Hunter and itemcount(11304) == 0
step
talk Daryl the Youngling##1187
|tip Inside the building.
accept A Hunter's Boast##257 |goto Loch Modan 83.47,65.46
step
kill 6 Mountain Buzzard##1194 |q 257/1 |goto Loch Modan 80.20,65.20
|tip Try to hurry, this quest is timed.
You can find more around: |notinsticky
[77.04,57.34]
[76.41,73.71]
[74.40,69.25]
[69.56,75.78]
step
Follow the path |goto Loch Modan 81.86,59.10 < 40 |only if walking
Enter the building |goto Loch Modan 83.43,62.83 < 15 |walk
talk Daryl the Youngling##1187
|tip Inside the building.
|tip Try to hurry, this quest is timed.
turnin A Hunter's Boast##257 |goto Loch Modan 83.47,65.46
accept A Hunter's Challenge##258 |goto Loch Modan 83.47,65.46
step
talk Cliff Hadin##1687
|tip Inside the building.
buy Fine Longbow##11304 |n
|tip If you can afford it.
|tip It may not be available to buy, since it's a limited supply item.
|tip If it's not available, or you can't afford it, buy a Reinforced Bow instead. |only if itemcount(3026) == 0
|tip If you have better, skip this step.
Visit the Vendor |vendor Cliff Hadin##1687 |goto Loch Modan 83.02,62.96 |q 257
|only if Hunter and itemcount(11304) == 0
step
kill 5 Elder Mountain Boar##1192 |q 258/1 |goto Loch Modan 76.58,43.83
|tip Try to hurry, this quest is timed.
You can find more around: |notinsticky
[Loch Modan 67.11,37.93]
[Loch Modan 61.61,34.76]
step
Follow the path |goto Loch Modan 81.86,59.10 < 40 |only if walking
Enter the building |goto Loch Modan 83.43,62.83 < 15 |walk
talk Daryl the Youngling##1187
|tip Inside the building.
|tip Try to hurry, this quest is timed.
turnin A Hunter's Challenge##258 |goto Loch Modan 83.47,65.46
step
talk Cliff Hadin##1687
|tip Inside the building.
buy Fine Longbow##11304 |n
|tip If you can afford it.
|tip It may not be available to buy, since it's a limited supply item.
|tip If it's not available, or you can't afford it, buy a Reinforced Bow instead. |only if itemcount(3026) == 0
|tip If you have better, skip this step.
Visit the Vendor |vendor Cliff Hadin##1687 |goto Loch Modan 83.02,62.96 |q 258
|only if Hunter and itemcount(11304) == 0
step
talk Bingles Blastenheimer##6577
|tip He walks around this area.
accept Bingles' Missing Supplies##2038 |goto Loch Modan 63.56,47.92
stickystart "Collect_Crocolisk_Skin"
step
kill Loch Crocolisk##1693+
collect 5 Crocolisk Meat##2924 |q 385/1 |goto Loch Modan 54.84,38.49
|tip Be careful not to accidentally sell these to a vendor.
You can find more around [54.80,54.28]
step
label "Collect_Crocolisk_Skin"
kill Loch Crocolisk##1693+ |notinsticky
collect 6 Crocolisk Skin##2925 |q 385/2 |goto Loch Modan 54.84,38.49
You can find more around [54.80,54.28]
step
_NOTE:_
This Quest is Optional
|tip The next 4 steps can be very difficult solo.
|tip You may have to fight 3 enemies at a time at some point.
|tip If you want to stay on the safe side, or don't have someone to help you, you may want to skip the quest.
Click Here to Continue |confirm |q 2038
|only if hardcore
step
click Bingles's Toolbucket##104564
|tip Enemies around this area tend to be bunched up and pull in two. |only if hardcore
|tip Stonesplinter Seers are ranged attackers that hit hard. |only if hardcore
|tip Enemies may run away when at low health here. |only if hardcore
collect Bingles' Wrench##7343 |q 2038/1 |goto Loch Modan 48.73,30.09
step
click Bingles' Blastencapper##104575
|tip Enemies around this area tend to be bunched up and pull in two. |only if hardcore
|tip Stonesplinter Seers are ranged attackers that hit hard. |only if hardcore
|tip Enemies may run away when at low health here. |only if hardcore
collect Bingles' Blastencapper##7376 |q 2038/4 |goto Loch Modan 54.21,26.60
step
click Bingles's Toolbucket##104574
|tip Enemies around this area tend to be bunched up and pull in two. |only if hardcore
|tip Stonesplinter Seers are ranged attackers that hit hard. |only if hardcore
|tip Enemies may run away when at low health here. |only if hardcore
collect Bingles' Hammer##7346 |q 2038/3 |goto Loch Modan 51.78,24.09
step
click Bingles' Toolbucket##104569
|tip Enemies around this area tend to be bunched up and pull in two. |only if hardcore
|tip Stonesplinter Seers are ranged attackers that hit hard. |only if hardcore
|tip Enemies may run away when at low health here. |only if hardcore
collect Bingles' Screwdriver##7345 |q 2038/2 |goto Loch Modan 48.37,20.51
step
Run up the ramp |goto Loch Modan 55.39,14.84 < 15 |only if walking
talk Chief Engineer Hinderweir VII##1093
accept A Dark Threat Looms##250 |goto Loch Modan 46.05,13.62
step
talk Nillen Andemar##222
buy Heavy Spiked Mace##4778 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Nillen Andemar##222 |goto Loch Modan 42.87,9.90 |q 250
|only if Warrior and itemcount(4778) == 0
step
click Suspicious Barrel##257
|tip On the ground next the wall.
|tip Dark Iron Sappers may detonate themselves when at low health. |only if hardcore
|tip You will see an emote before it happens and you should move away from them once you see it. |only if hardcore
turnin A Dark Threat Looms##250 |goto Loch Modan 56.05,13.24
accept A Dark Threat Looms##199 |goto Loch Modan 56.05,13.24
step
Run up the ramp |goto Loch Modan 55.39,14.84 < 15 |only if walking
talk Chief Engineer Hinderweir VII##1093
turnin A Dark Threat Looms##199 |goto Loch Modan 46.05,13.62
step
talk Bingles Blastenheimer##6577
|tip He walks around this area.
turnin Bingles' Missing Supplies##2038 |goto Loch Modan 63.56,47.91
step
Kill enemies around this area
|tip You should already be level 18, or very close.
ding 18 |goto Loch Modan 74.06,51.92
step
use the Grimoire of Consume Shadows (Rank 1)##16357
|tip You should have purchased this in a previous guide.
Teach Your Voidwalker Consume Shadows (Rank 1) |learnpetspell Consume Shadows##17767 |goto Loch Modan 25.66,77.66
|tip You need to have your voidwalker active to be able to learn these new spells.
|only if Warlock
step
Follow the path |goto Loch Modan 72.32,52.39 < 40 |only if walking
Enter the building |goto Loch Modan 83.43,62.83 < 15 |walk
talk Marek Ironheart##1154
|tip Inside the building.
turnin Crocolisk Hunting##385 |goto Loch Modan 81.76,61.66
step
talk Cliff Hadin##1687
|tip Inside the building.
buy Fine Longbow##11304 |n
|tip If you can afford it.
|tip It may not be available to buy, since it's a limited supply item.
|tip If it's not available, or you can't afford it, buy a Reinforced Bow instead. |only if itemcount(3026) == 0
|tip If you have better, skip this step.
Visit the Vendor |vendor Cliff Hadin##1687 |goto Loch Modan 83.02,62.96 |q 385
|only if Hunter and itemcount(11304) == 0
step
talk Lina Hearthstove##9989
|tip Abandon your temporary pet and get your permanent pet from the stable.
|tip Teach "Bite 3" to your permanent pet.
Click Here to Continue |confirm |goto Loch Modan 34.64,48.09 |q 298
|only if Hunter
step
Enter the building |goto Loch Modan 37.18,47.10 < 10 |walk
talk Jern Hornhelm##1105
|tip Downstairs inside the building.
|tip He sometimes walks out near the entrance of the building.
turnin Excavation Progress Report##298 |goto Loch Modan 37.24,47.39
step
Enter the building |goto Ironforge 72.18,67.50 < 7 |walk
talk Skolmin Goldfury##5122
|tip Upstairs inside the building.
buy Heavy Recurve Bow##3027 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Skolmin Goldfury##5122 |goto Ironforge 71.76,66.70 |q 20 |future
|only if Hunter and itemcount(3027) == 0
step
talk Gearcutter Cogspinner##5175
buy Bronze Tube##4371 |n
|tip If you can afford it.
|tip It may not be for sale, since it's a limited supply item.
|tip This item is needed for a quest later on in Duskwood.
|tip Don't buy this, if you already bought one earlier in the guide.
Visit the Vendor |vendor Gearcutter Cogspinner##5175 |goto Ironforge 67.84,42.50 |q 174 |future
|only if itemcount(4371) == 0
step
talk Billibub Cogspinner##5519
buy Bronze Tube##4371 |n
|tip If you can afford it.
|tip It may not be for sale, since it's a limited supply item.
|tip This item is needed for a quest later on in Duskwood.
|tip Don't buy this, if you already bought one earlier in the guide.
Visit the Vendor |vendor Billibub Cogspinner##5519 |goto Stormwind City 55.21,7.05 |q 174 |future
|only if itemcount(4371) == 0
step
Follow the path |goto Stormwind City 74.74,53.71 < 10 |walk
Enter the building |goto Stormwind City 77.12,58.01 < 10 |walk
talk Renzik "The Shiv"##6946
|tip Upstairs inside the building.
accept Redridge Rendezvous##2281 |goto Stormwind City 75.76,60.36
|only if Rogue
step
click Strange Lockbox
|tip Underwater.
collect Half Pendant of Aquatic Endurance##15882 |goto Westfall 17.87,33.11 |q 272
|only if NightElf Druid
step
use the Half Pendant of Aquatic Agility##15883
collect Pendant of the Sea Lion##15885 |q 272/1 |goto Moonglade 35.92,41.42
|only if NightElf Druid
step
talk Dendrite Starblaze##11802
|tip Upstairs inside the building.
turnin Trial of the Sea Lion##272 |goto Moonglade 56.21,30.64
accept Aquatic Form##5061 |goto Moonglade 56.21,30.64
|only if NightElf Druid
step
Enter the building |goto Darnassus 35.49,10.63 < 10 |walk
talk Mathrengyl Bearwalker##4217
|tip Upstairs inside the building, on the top floor.
turnin Aquatic Form##5061 |goto Darnassus 35.37,8.39
|only if NightElf Druid
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
step
click WANTED: Murkdeep!##175320
accept WANTED: Murkdeep!##4740 |goto Darkshore 37.23,44.23
|only if not hardcore
step
talk Archaeologist Hollee##2913
turnin Trouble In Darkshore?##730 |goto Darkshore 37.44,41.84 |only if haveq(730)
accept The Absent Minded Prospector##729 |goto Darkshore 37.44,41.84
step
Enter the building |goto Darkshore 37.77,41.34 < 15 |walk
talk Thundris Windweaver##3649
|tip Inside the building.
accept The Blackwood Corrupted##4763 |goto Darkshore 37.40,40.13
step
use the Empty Cleansing Bowl##12346
collect Filled Cleansing Bowl##12347 |goto Darkshore 37.78,44.02 |q 4763
step
talk Gershala Nightwhisper##8997
turnin The Corruption Abroad##3765 |goto Darkshore 38.33,43.04
step
talk Tharnariun Treetender##3701
accept Tharnariun's Hope##2139 |goto Darkshore 38.84,43.42
|tip This requires "Cleansing of the Infected" from the Darkshore (13-17) guide.
step
talk Terenthis##3693
|tip Inside the building.
accept A Lost Master##986 |goto Darkshore 39.37,43.48
step
talk Sentinel Elissa Starbreeze##3657
|tip Upstairs inside the building.
accept The Tower of Althalaxx##965 |goto Darkshore 39.05,43.55
step
talk Onu##3616
turnin Onu##948 |goto Darkshore 43.55,76.29
accept The Master's Glaive##944 |goto Darkshore 43.55,76.29
|tip This quest will only be available if you've completed the quest chain starting with "Cave Mushrooms". |only if hardcore
stickystart "Collect_Fine_Moonstalker_Pelts"
stickystart "Collect_Grizzled_Scalps"
step
Enter the Master's Glaive |q 944/1 |goto Darkshore 38.57,86.30
stickystop "Collect_Fine_Moonstalker_Pelts"
stickystop "Collect_Grizzled_Scalps"
step
use the Phial of Scrying##5251
click Scrying Bowl##10076
|tip It appears on the ground next to you.
|tip Watch for patrols and respawns while in the area. |only if hardcore
turnin The Master's Glaive##944 |goto Darkshore 38.53,86.17
accept The Twilight Camp##949 |goto Darkshore 38.53,86.17
|tip This quest will only be available if you've completed the quest chain starting with "Cave Mushrooms". |only if hardcore
step
_Destroy This Items:_
|tip It is no longer needed.
trash Phial of Scrying##5251 |goto Darkshore 38.54,86.05
step
click Twilight Tome##12666
|tip Watch for patrols and respawns while in the area. |only if hardcore
turnin The Twilight Camp##949 |goto Darkshore 38.54,86.05
accept Return to Onu##950 |goto Darkshore 38.54,86.05
|tip This quest will only be available if you've completed the quest chain starting with "Cave Mushrooms". |only if hardcore
step
talk Therylune##3584
|tip She walks around this area.
|tip This is an escort quest.
|tip If she's not here, someone may be escorting her.
|tip Wait for her to respawn.
|tip If you have to wait, clear enemies towards the ramp while doing so. |only if hardcore
accept Therylune's Escape##945 |goto Darkshore 38.64,87.34 |noautoaccept
step
Watch the dialogue
|tip Follow Therylune and protect her as she walks.
|tip She eventually walks to this location.
Escort Therylune Away from the Master's Glaive |q 945/1 |goto Darkshore 40.51,87.09
step
use the Book: The Powers Below##5352
accept The Powers Below##968
|only if itemcount(5352) > 0
stickystart "Collect_Fine_Moonstalker_Pelts"
step
label "Collect_Grizzled_Scalps"
kill Grizzled Thistle Bear##2165+
collect 4 Grizzled Scalp##5414 |q 1003/1 |goto Darkshore 43.52,81.93
You can find more around: |notinsticky
[40.33,81.60]
[41.22,84.67]
stickystop "Collect_Fine_Moonstalker_Pelts"
step
talk Prospector Remtravel##2917
|tip This is an escort quest.
|tip If he's not here, someone may be escorting him.
|tip Wait until he respawns.
turnin The Absent Minded Prospector##729 |goto Darkshore 35.73,83.70
accept The Absent Minded Prospector##731 |goto Darkshore 35.73,83.70 |noautoaccept
|tip This quest is difficult and optional. |only if hardcore
|tip It requires escorting the npc and protecting him from waves of attackers with minimal rest time. |only if hardcore
|tip Skipping this quest will result in extra grinding down the road. |only if hardcore
step
Watch the dialogue
|tip Follow Prospector Remtravel and protect him as he walks.
|tip He is very weak and can die easily, so get the enemies off of him quickly.
|tip Despite this, do let him get aggro first so he will help you fight.
|tip Troggs will appear and ambush him 3 times along the way.
|tip Try to quickly eat and drink after every enemy to be healthy for the next.
|tip Don't be afraid to run if you get overwhelemed. |only if hardcore
|tip Enemies do respawn quickly here, so be careful. |only if hardcore
Escort Prospector Remtravel |q 731/1 |goto Darkshore 35.73,83.70
step
click Beached Sea Creature##175230
accept Beached Sea Creature##4733 |goto Darkshore 31.27,87.39
step
click Beached Sea Turtle##175227
accept Beached Sea Turtle##4732 |goto Darkshore 31.24,85.63
step
click Beached Sea Turtle##175227
accept Beached Sea Turtle##4731 |goto Darkshore 31.69,83.72
step
click Beached Sea Creature##175227
accept Beached Sea Creature##4730 |goto Darkshore 32.66,80.81
stickystart "Collect_Fine_Moonstalker_Pelts"
step
click Buzzbox 525##17185
turnin Buzzbox 525##1003 |goto Darkshore 41.40,80.56
step
label "Collect_Fine_Moonstalker_Pelts"
Kill Moonstalker enemies around this area
'|kill Moonstalker Sire##2237, Moonstalker Matriarch##2071
|tip They look like blue and black striped tigers.
|tip They share spawn points with Grizzled Thistle Bears, so kill those too, if you can't find any.
collect 5 Fine Moonstalker Pelt##5386 |q 986/1 |goto Darkshore 43.52,81.93
You can find more around: |notinsticky
[40.33,81.60]
[41.22,84.67]
[38.59,75.10]
[39.49,93.81]
step
talk Onu##3616
turnin Return to Onu##950 |goto Darkshore 43.56,76.29
step
Watch the dialogue
talk Onu##3616
accept Mathystra Relics##951 |goto Darkshore 43.56,76.29
|tip This quest will only be available if you've completed the quest chain starting with "Cave Mushrooms". |only if hardcore
step
Kill enemies around this area
|tip You should already be level 21, or very close.
|tip You are about to have to complete a quest where you have to kill a few waves of multiple enemies, which can be difficult.
|tip Being a level higher will help.
ding 21 |goto Darkshore 37.92,82.30
step
Kill Greymist enemies around this area
|tip Groups of murlocs will appear near the water and run into the camp.
|tip Try to stand outside the camp, so they don't all attack you at once when they run in.
|tip Kill them to get Murkdeep to appear.
|tip You may need help with this.
kill Murkdeep##10323 |q 4740/1 |goto Darkshore 36.51,76.59
|only if not hardcore
step
talk Gwennyth Bly'Leggonde##10219
turnin Beached Sea Creature##4733 |goto Darkshore 36.62,45.59
turnin Beached Sea Turtle##4732 |goto Darkshore 36.62,45.59
turnin Beached Sea Turtle##4731 |goto Darkshore 36.62,45.59
turnin Beached Sea Creature##4730 |goto Darkshore 36.62,45.59
step
talk Sentinel Glynda Nal'Shea##2930
|tip She walks around this area.
turnin WANTED: Murkdeep!##4740 |goto Darkshore 37.71,43.39
|only if not hardcore
step
talk Terenthis##3693
|tip Inside the building.
turnin A Lost Master##986 |goto Darkshore 39.37,43.48
accept A Lost Master##993 |goto Darkshore 39.37,43.48
step
talk Archaeologist Hollee##2913
turnin The Absent Minded Prospector##731 |goto Darkshore 37.44,41.84
accept The Absent Minded Prospector##741 |goto Darkshore 37.44,41.84
|tip This won't be available if you haven't completed the previous quest. |only if hardcore
step
click Blackwood Grain Stores##175331
|tip You will be attacked each time you click a keg.
|tip Watch for respawns while in the area. |only if hardcore
|tip Enemies will may run away in fear when at low health. |only if hardcore
|tip Blackwood Totemics will drop totems that heal themselves and their allies. |only if hardcore
|tip Be sure to destroy them as soon as they appear. |only if hardcore
collect Blackwood Grain Sample##12342 |goto Darkshore 50.62,34.95 |q 4763
step
Follow the path up |goto Darkshore 52.40,35.94 < 20 |only if walking
Enter the cave |goto Darkshore 51.57,37.49 < 15 |walk
kill Den Mother##6788 |q 2139/1 |goto Darkshore 51.48,38.26
|tip Inside the cave.
|tip There are generally 4 or more level 9 cubs inside the cave with her. |only if hardcore
|tip They are all linked with the Den Mother and will attack in unison. |only if hardcore
|tip The cubs can hit pretty hard, so it may be a good idea to try and kill one, flee and repeat. |only if hardcore
|tip You can skip this quest and grind extra later. |only if hardcore
step
click Blackwood Nut Stores##175329
|tip You will be attacked each time you click a keg.
|tip Watch for respawns while in the area. |only if hardcore
|tip Enemies will may run away in fear when at low health. |only if hardcore
|tip Blackwood Totemics will drop totems that heal themselves and their allies. |only if hardcore
|tip Be sure to destroy them as soon as they appear. |only if hardcore
collect Blackwood Nut Sample##12343 |goto Darkshore 51.83,33.56 |q 4763
step
click Blackwood Fruit Stores##175330
|tip You will be attacked each time you click a keg.
|tip Watch for respawns while in the area. |only if hardcore
|tip Enemies will may run away in fear when at low health. |only if hardcore
|tip Blackwood Totemics will drop totems that heal themselves and their allies. |only if hardcore
|tip Be sure to destroy them as soon as they appear. |only if hardcore
collect Blackwood Fruit Sample##12341 |goto Darkshore 52.83,33.41 |q 4763
step
use the Filled Cleansing Bowl##12347
kill Xabraxxis##10373
|tip He appears nearby.
|tip Make sure to step quite a bit back as every live Blackwood enemy will run to this location. |only if hardcore
|tip The normal enemies will become passive eventually. |only if hardcore
click Xabraxxis' Demon Bag##object=177624
_Note_
|tip It appears on the ground after you kill him, be sure to click it.
collect Talisman of Corruption##12355 |q 4763/1 |goto Darkshore 52.41,33.44
step
talk Balthule Shadowstrike##3661
turnin The Tower of Althalaxx##965 |goto Darkshore 54.97,24.89
accept The Tower of Althalaxx##966 |goto Darkshore 54.97,24.89
step
kill Dark Strand Fanatic##2336+
|tip Watch for patrols and respawns while in the area. |only if hardcore
|tip Enemies around the camp fire tend to pull in groups. |only if hardcore
collect 4 Worn Parchment##5348 |q 966/1 |goto Darkshore 55.46,26.77
step
talk Balthule Shadowstrike##3661
turnin The Tower of Althalaxx##966 |goto Darkshore 54.97,24.89
accept The Tower of Althalaxx##967 |goto Darkshore 54.97,24.89
step
click Mathystra Relic##13872+
|tip They look like various small grey-ish colored stone objects on the ground around this area.
|tip Watch for Stormscale Sorceress' around the area. |only if hardcore
|tip They are ranged attackers that deal heavy damage and can aggro from far away. |only if hardcore
|tip Watch for respawns while here. |only if hardcore
collect 6 Mathystra Relic##5273 |q 951/1 |goto Darkshore 58.64,23.94
You can find more around: |notinsticky
[61.03,21.68]
[58.13,20.36]
[56.88,22.20]
step
talk Gelkak Gyromast##6667
accept Gyromast's Retrieval##2098 |goto Darkshore 56.65,13.48
|tip This quest has you going underwater into a fairly dangerous area. |only if hardcore
|tip If you are uncomfortable with underwater quests, skip this. |only if hardcore
step
Kill Crawler enemies around this area
|tip They look like crabs.
collect Bottom of Gelkak's Key##7500 |q 2098/3 |goto Darkshore 56.47,14.58
You can find more around [52.01,21.19]
step
Kill Greymist enemies around this area
|tip Underwater.
|tip Don't linger underwanter for any reason. |only if hardcore
|tip If you get into combat, swim to the surface and kill the enemy, then try again. |only if hardcore
|tip Watch for respawns while in the area. |only if hardcore
collect Middle of Gelkak's Key##7499 |q 2098/2 |goto Darkshore 54.95,12.16
step
kill Giant Foreststrider##2323+
collect Top of Gelkak's Key##7498 |q 2098/1 |goto Darkshore 61.19,14.79
You can find more around [61.12,10.76]
step
talk Gelkak Gyromast##6667
turnin Gyromast's Retrieval##2098 |goto Darkshore 56.65,13.48
step
Kill enemies around this area
|tip Getting this far into level 21 will allow you to reach level 22 after turning in quests soon.
|tip You will be doing an escort quest soon that will be difficult, so being a level higher will help.
|tip You will also be going to Darnassus soon, so it will be a good time to learn your level 22 abilities.
ding 21,22200 |goto Darkshore 60.29,16.33
step
talk Thundris Windweaver##3649
|tip Inside the building.
turnin The Blackwood Corrupted##4763 |goto Darkshore 37.40,40.13
step
talk Tharnariun Treetender##3701
turnin Tharnariun's Hope##2139 |goto Darkshore 38.84,43.41
step
talk Vesprystus##3838
fpath Rut'theran Village |goto Teldrassil 58.40,94.02
step
Run up the ramp |goto Darnassus 62.60,68.79 < 10 |only if walking
talk Landria##4173
|tip Inside the building.
buy Heavy Recurve Bow##3027 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Landria##4173 |goto Darnassus 63.26,66.27 |q 951
|only if Hunter and itemcount(3027) == 0
step
talk Landria##4173
|tip Inside the building.
buy Medium Quiver##11362 |n
|tip If you can afford it.
|tip Ignore this if you aren't using bows.
Visit the Vendor |vendor Landria##4173 |goto Darnassus 63.26,66.27 |q 951
|only if Hunter and itemcount(11362) == 0
step
talk Chief Archaeologist Greywhisker##2912
|tip Outside the building.
turnin The Absent Minded Prospector##741 |goto Darnassus 31.25,84.50
accept The Absent Minded Prospector##942 |goto Darnassus 31.25,84.50
step
Run up the ramp |goto Darnassus 56.46,20.41 < 5 |only if walking
talk Argent Guard Manados##4784
|tip Inside the building.
accept Twilight Falls##1199 |goto Darnassus 55.23,24.00
|only if guideflag("BFDflag")
step
talk Dawnwatcher Shaedlass##4786
|tip Inside the building.
accept In Search of Thaelrid##1198 |goto Darnassus 55.37,25.00
|only if guideflag("BFDflag")
step
talk Gershala Nightwhisper##8997
accept Researching the Corruption##1275 |goto Darkshore 38.33,43.04
|only if guideflag("BFDflag")
step
talk Onu##3616
turnin Mathystra Relics##951 |goto Darkshore 43.55,76.29
step
Enter the cave |goto Darkshore 44.58,85.11 < 15 |walk
talk Volcor##3692
|tip Inside the cave.
|tip He starts an escort quest.
|tip If he's not here, someone may be escorting him.
|tip Wait until he respawns.
turnin A Lost Master##993 |goto Darkshore 45.01,85.30
accept Escape Through Force##994 |goto Darkshore 45.01,85.30 |noautoaccept
|tip Volcor will help you fight your way to the road.
|tip You will be attacked by multiple groups of enemies along the way.
|tip This quest rewards much more experience than the stealth quest he offers.
step
Watch the dialogue
|tip Follow Volcor and protect him as he walks.
|tip He eventually walks to this location.
Help Volcor to the Road |q 994/1 |goto Darkshore 41.95,81.80
step
talk Kerlonian Evershade##11218
|tip This is an escort quest.
|tip If he's not here, someone may be escorting him.
|tip Wait for him to respawn.
|tip He can take a long time to respawn, so if you don't want to wait, you can skip the quest and grind a bit later to make up for it.
accept The Sleeper Has Awakened##5321 |goto Darkshore 44.39,76.43 |noautoaccept
step
click Kerlonian's Chest##176634
collect Horn of Awakening##13536 |q 5321/1 |goto Darkshore 44.38,76.31
step
label "Escort_Kerlonian_Evershade"
Enter Ashenvale and follow the road |goto Darkshore 43.49,94.32 < 50 |only if walking
Enter the building |goto Ashenvale 26.87,36.65 < 15 |walk
use the Horn of Awakening##13536
|tip Kerlonian Evershade will follow you.
|tip He will sometimes stop walking and fall asleep.
|tip Use it near him when he falls asleep.
|tip Make sure he is next to you at all times.
|tip Avoid walking on the road, or you will get ambushed by groups of enemies.
|tip You can still follow the road, but stay in the forest on the sides.
|tip Lead Kerlonian Evershade to this location inside the building.
|tip Try to hurry, this quest is timed.
|tip If you fail, you can skip it.
Escort Kerlonian Evershade to Maestra's Post |q 5321/2 |goto Ashenvale 27.15,35.92
step
talk Liladris Moonriver##11219
|tip On the balcony of the building.
turnin The Sleeper Has Awakened##5321 |goto Ashenvale 27.26,35.58
step
talk Delgren the Purifier##3663
turnin The Tower of Althalaxx##967 |goto Ashenvale 26.20,38.70
accept The Tower of Althalaxx##970 |goto Ashenvale 26.20,38.70
step
talk Orendil Broadleaf##3847
accept Bathran's Hair##1010 |goto Ashenvale 26.44,38.59
step
Kill Dark Strand enemies around this area
|tip This item has a low drop rate.
|tip Watch for patrols and respawns while in the area.	|only if hardcore
|tip Enemies near tents tend to pull in groups.		|only if hardcore
collect Glowing Soul Gem##5366 |q 970/1 |goto Ashenvale 31.39,30.62
step
click Plant Bundle##17282+
|tip They look like small piles of grey straw on the ground around this area.
|tip They can respawn fairly quickly.
|tip If you have trouble seeing them, reduce the "Ground Clutter" setting to "0" in the System > Graphics game settings menu.
|tip Watch for patrols and respawns while in the area. |only if hardcore
collect 5 Bathran's Hair##5437 |q 1010/1 |goto Ashenvale 30.44,24.05
You can find more around: |notinsticky
[31.75,22.70]
[32.29,21.79]
step
talk Orendil Broadleaf##3847
turnin Bathran's Hair##1010 |goto Ashenvale 26.44,38.59
accept Orendil's Cure##1020 |goto Ashenvale 26.44,38.59
step
talk Delgren the Purifier##3663
turnin The Tower of Althalaxx##970 |goto Ashenvale 26.20,38.70
accept The Tower of Althalaxx##973 |goto Ashenvale 26.20,38.70
step
Follow the road |goto Ashenvale 25.53,38.43 < 30 |only if walking and subzone("Maestra's Post")
talk Therysil##3585
turnin Therylune's Escape##945 |goto Ashenvale 22.65,51.91
step
Follow the road to Astranaar |goto Ashenvale 28.17,48.38 < 40 |only if walking and subzone("The Shrine of Aessina")
talk Daelyshia##4267
fpath Astranaar |goto Ashenvale 34.41,47.99
step
talk Shindrell Swiftfire##3845
accept The Zoram Strand##1008 |goto Ashenvale 34.67,48.84
step
talk Sentinel Thenysil##4079
accept On Guard in Stonetalon##1070 |goto Ashenvale 34.89,49.79
step
talk Faldreas Goeth'Shael##3996
accept Journey to Stonetalon Peak##1056 |goto Ashenvale 35.77,49.10
step
talk Innkeeper Kimlya##6738
|tip Inside the building.
home Astranaar |goto Ashenvale 36.99,49.22
step
talk Raene Wolfrunner##3691
|tip Inside the building.
accept Raene's Cleansing##991 |goto Ashenvale 36.62,49.58
step
Enter the building |goto Ashenvale 37.20,51.86 < 10 |walk
talk Pelturas Whitemoon##3894
|tip Inside the building.
turnin Orendil's Cure##1020 |goto Ashenvale 37.37,51.79
step
Watch the dialogue
talk Pelturas Whitemoon##3894
|tip Inside the building.
accept Elune's Tear##1033 |goto Ashenvale 37.37,51.79
step
Follow the road and enter the Barrens |goto The Barrens 48.99,5.39 < 30 |only if walking
talk Takar the Seer##6244
|tip Avoid the Crossroads in the the Barrens as you travel here.
turnin Devourer of Souls##1716 |goto The Barrens 49.31,57.10
accept Heartswood##1738 |goto The Barrens 49.31,57.10
|only if Warlock
step
talk Bragok##16227
fpath Ratchet |goto The Barrens 63.09,37.16
|only if Warlock
step
click Heartswood##93192
collect Heartswood##6912 |q 1738/1 |goto Ashenvale 31.49,31.45
|only if Warlock
step
Follow the path up |goto Ashenvale 41.60,50.11 < 20 |only if walking
Continue up the path |goto Ashenvale 43.57,45.62 < 30 |only if walking
click Elune's Tear##19015+
|tip They look like white balls on the ground around this area.
collect Elune's Tear##5493 |q 1033/1 |goto Ashenvale 46.24,45.96
step
Follow the path down |goto Ashenvale 44.53,45.37 < 30 |only if walking and subzone("Iris Lake")
Continue down the path |goto Ashenvale 42.31,48.38 < 20 |only if walking and subzone("Iris Lake")
Enter the building |goto Ashenvale 37.20,51.86 < 10 |walk
talk Pelturas Whitemoon##3894
|tip Inside the building.
turnin Elune's Tear##1033 |goto Ashenvale 37.37,51.79
step
Watch the dialogue
talk Pelturas Whitemoon##3894
|tip Inside the building.
accept The Ruins of Stardust##1034 |goto Ashenvale 37.37,51.79
step
click Stardust Covered Bush##19016+
|tip They look like bushes with white sparkles floating off of them on the ground around this area.
|tip Be careful of enemies underwater.						|only if hardcore
|tip Shadethicket Wood Shapers may root you.					|only if hardcore
|tip Shadethicket Raincallers are ranged attackers that deal heavy damage.	|only if hardcore
|tip Move out of the storms that they summon.					|only if hardcore
collect 5 Handful of Stardust##5494 |q 1034/1 |goto Ashenvale 33.42,67.36
step
Kill enemies around this area
|tip You are about to have to kill a difficult level 24 enemy that has a level 24 pet.
|tip It will help to be a level higher.
ding 23 |goto Ashenvale 33.42,67.36
step
_NOTE:_
The Next Step is Optional
|tip The enemy in the next step can be difficult and dangerous.
|tip He is a level 24 enemy with a level 24 pet, who can also summon other minions.
|tip If you are not comfortable with the risk, or don't have someone to help you, you can skip the quest.
|tip If you skip the quest, you will have to grind more later.
|tip If you decide to skip it, abandon the quest "The Tower of Althalaxx".
Click to Continue |confirm |q 973
|only if hardcore
step
Leave the Ruins of Stardust |goto Ashenvale 36.12,61.82 < 40 |only if walking and subzone("The Ruins of Stardust")
Follow the path |goto Ashenvale 28.39,60.88 < 40 |only if walking
Follow the path up |goto Ashenvale 25.86,63.07 < 15 |only if walking
kill Ilkrud Magthrull##3664
|tip Try to carefully pull the 2 Felhounds near him without pulling him as well.
|tip He has a succubus guard, and he summons multiple voidwalkers throughout the fight, so try to kill him quickly.
|tip Save Hammer of Justice to stop him from summoning voidwalkers |only if Paladin
|tip Save enough Energy to cast Gouge to stop him from summoning voidwalkers |only if Rogue
|tip If you have trouble, try to find someone to help you.
|tip Watch for patrols and respawns while in the area. |only if hardcore
collect Ilkrud Magthrull's Tome##5533 |q 973/1 |goto Ashenvale 25.28,60.69
step
talk Delgren the Purifier##3663
turnin The Tower of Althalaxx##973 |goto Ashenvale 26.20,38.70
accept The Tower of Althalaxx##1140 |goto Ashenvale 26.20,38.70
step
Follow the path |goto Ashenvale 22.94,38.34 < 50 |only if walking and not subzone("Lake Falathim")
clicknpc Teronis' Corpse##3891
turnin Raene's Cleansing##991 |goto Ashenvale 20.31,42.33
accept Raene's Cleansing##1023 |goto Ashenvale 20.31,42.33
step
Kill Saltspittle enemies around this area
|tip Watch for patrols and respawns while in the area. |only if hardcore
|tip Saltspittle Oracles may heal when at low health. |only if hardcore
|tip Enemies here may run away in fear when at low health. |only if hardcore
|tip Be careful of enemies obscured by the water. |only if hardcore
collect Glowing Gem##5463 |q 1023/1 |goto Ashenvale 20.31,42.33
step
Follow the path |goto Ashenvale 18.45,32.56 < 50 |only if walking
talk Talen##3846
accept The Ancient Statuette##1007 |goto Ashenvale 14.79,31.30
stickystart "Collect_Wrathtail_Heads"
step
click Ancient Statuette##17783
collect Ancient Statuette##5424 |q 1007/1 |goto Ashenvale 14.20,20.64
step
talk Talen##3846
turnin The Ancient Statuette##1007 |goto Ashenvale 14.79,31.30
step
Watch the dialogue
talk Talen##3846
accept Ruuzel##1009 |goto Ashenvale 14.79,31.30
step
_NOTE:_
The Next Step is Optional
|tip The enemy in the next step can be difficult and dangerous.
|tip She is a naga who has 2 guards with her.
|tip If you are not comfortable with the risk, or don't have someone to help you, you can skip the quest.
|tip If you skip the quest, you will have to grind more later.
|tip If you decide to skip it, abandon the quest "Ruuzel".
Click to Continue |confirm |q 1009
|only if hardcore
step
Check for Lady Vespia |goto Ashenvale 11.2,29.4 < 70 |or
|tip She is a rare spawn naga that can spawn on the island here.
|tip She can also drop the Ring of Zoram and is much easier to kill.
|tip Skip this step if she is not up.
collect Ring of Zoram##5445 |q 1009/1 |or
step
kill Ruuzel##3943
|tip She looks like a green naga with pink fins.
|tip She walks clockwise near the water around this small island.
|tip She has 2 guards with her.
|tip If you have trouble, try to get someone to help you, or skip it.
collect Ring of Zoram##5445 |q 1009/1 |goto Ashenvale 6.58,13.46
step
talk Talen##3846
turnin Ruuzel##1009 |goto Ashenvale 14.79,31.30
step
label "Collect_Wrathtail_Heads"
Kill Wrathtail enemies around this area
collect 20 Wrathtail Head##5490 |q 1008/1 |goto Ashenvale 15.14,22.61
You can find more around: |notinsticky
[13.12,29.41]
step
talk Shindrell Swiftfire##3845
turnin The Zoram Strand##1008 |goto Ashenvale 34.67,48.84
accept Pridewings of Stonetalon##1134 |goto Ashenvale 34.67,48.84
step
talk Raene Wolfrunner##3691
|tip Inside the building.
turnin Raene's Cleansing##1023 |goto Ashenvale 36.62,49.58
step
_Destroy This Item:_
|tip It is no longer needed.
trash Teronis' Journal##5505 |goto Ashenvale 37.19,51.86
step
Enter the building |goto Ashenvale 37.19,51.86 < 10 |walk
talk Pelturas Whitemoon##3894
|tip Inside the building.
turnin The Ruins of Stardust##1034 |goto Ashenvale 37.37,51.79
step
Follow the path up |goto Ashenvale 36.76,71.36 < 30 |only if walking and not zone("Stonetalon Mountains")
Run through the tunnel to Stonetalon Mountains |goto Ashenvale 42.27,71.09 < 15 |only if walking and not zone("Stonetalon Mountains")
Enter the building |goto Stonetalon Mountains 59.04,62.24 < 10 |walk
talk Ziz Fizziks##4201
|tip Inside the building.
accept Super Reaper 6000##1093 |goto Stonetalon Mountains 58.99,62.60
step
Follow the path up around the cliff |goto Stonetalon Mountains 60.06,70.00 < 40 |only if walking
talk Kaela Shadowspear##4080
turnin On Guard in Stonetalon##1070 |goto Stonetalon Mountains 59.90,66.85
accept On Guard in Stonetalon##1085 |goto Stonetalon Mountains 59.90,66.85
|tip This requires a questchain that starts in the "Ashenvale (22-23)" guide.
step
talk Gaxim Rustfizzle##4077
turnin On Guard in Stonetalon##1085 |goto Stonetalon Mountains 59.52,67.15
accept A Gnome's Respite##1071 |goto Stonetalon Mountains 59.52,67.15
stickystart "Kill_Venture_Co_Loggers"
stickystart "Kill_Venture_Co_Deforesters"
step
kill Venture Co. Operator##3988+
|tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
|tip Venture Co. Deforesters are casters that aggro from a wide range and deal heavy damage. |only if hardcore |notinsticky
collect Super Reaper 6000 Blueprints##5734 |q 1093/1 |goto Stonetalon Mountains 62.33,53.49
You can find more around: |notinsticky
[66.16,52.01]
[66.49,45.90]
[70.97,43.13]
[73.02,49.47]
[74.68,55.44]
step
label "Kill_Venture_Co_Loggers"
kill 10 Venture Co. Logger##3989 |q 1071/1 |goto Stonetalon Mountains 60.44,52.78
|tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
|tip Venture Co. Deforesters are casters that aggro from a wide range and deal heavy damage. |only if hardcore |notinsticky
You can find more around: |notinsticky
[71.20,56.50]
[70.01,48.11]
[64.24,46.72]
step
label "Kill_Venture_Co_Deforesters"
kill 10 Venture Co. Deforester##3991 |q 1071/2 |goto Stonetalon Mountains 60.44,52.78
|tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
You can find more around: |notinsticky
[71.20,56.50]
[70.01,48.11]
[64.24,46.72]
step
Kill enemies around this area
|tip You should already be level 24, or very close.
|tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
|tip Venture Co. Deforesters are casters that aggro from a wide range and deal heavy damage. |only if hardcore |notinsticky
ding 24 |goto Stonetalon Mountains 60.44,52.78
You can find more around: |notinsticky
[71.20,56.50]
[70.01,48.11]
[64.24,46.72]
step
Enter the building |goto Stonetalon Mountains 59.04,62.24 < 10 |walk
talk Ziz Fizziks##4201
|tip Inside the building.
turnin Super Reaper 6000##1093 |goto Stonetalon Mountains 58.99,62.60
step
Follow the path up around the cliff |goto Stonetalon Mountains 60.06,70.00 < 40 |only if walking
talk Gaxim Rustfizzle##4077
turnin A Gnome's Respite##1071 |goto Stonetalon Mountains 59.52,67.15
accept An Old Colleague##1072 |goto Stonetalon Mountains 59.52,67.15
accept A Scroll from Mauren##1075 |goto Stonetalon Mountains 59.52,67.15
step
Kill Pridewing enemies around this area
'|kill Pridewing Wyvern##4012, Pridewing Consort##4014, Pridewing Skyhunter##4013, Young Pridewing##4011, Pridewing Patriarch##4015
|tip They look like wyverns.
collect 12 Pridewing Venom Sac##5808 |q 1134/1 |goto Stonetalon Mountains 51.55,45.08
You can find more around: |notinsticky
[54.89,42.08]
[54.05,39.63]
[45.90,46.08]
step
Follow the path to Stonetalon Peak |goto Stonetalon Mountains 46.86,31.45 < 30 |only if walking and not subzone("Stonetalon Peak")
talk Keeper Albagorm##3994
turnin Journey to Stonetalon Peak##1056 |goto Stonetalon Mountains 37.10,8.10
step
talk Teloren##4407
fpath Stonetalon Peak |goto Stonetalon Mountains 36.44,7.18
step
cast Teleport: Moonglade##18960
trainer Loganaar##12042 |goto Moonglade/0 52.50,40.54 |q 1134
|tip Go to Moonglade and train your spells, then hearth once it is off cooldown.
|only if Druid and C_Container.GetItemCooldown(6948) <= 100
step
Prepare for Blackfathom Deeps
|tip It will be a good time to start Blackfathom Deeps soon.
|tip You should run it after this guide, roughly 45 minutes.
|tip Start looking for a group.
|confirm
|only if guideflag("BFDflag")
step
talk Shindrell Swiftfire##3845
turnin Pridewings of Stonetalon##1134 |goto Ashenvale 34.67,48.84
step
talk Raene Wolfrunner##3691
|tip Inside the building.
accept An Aggressive Defense##1025 |goto Ashenvale 36.62,49.58
accept Culling the Threat##1054 |goto Ashenvale 36.62,49.58
stickystart "Kill_Foulweald_Ursas"
stickystart "Kill_Foulweald_Totemics"
stickystart "Kill_Foulweald_Warriors"
step
kill Foulweald Den Watcher##3746 |q 1025/1 |goto Ashenvale 50.44,61.25
|tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
|tip Foulweald Shaman and Totemics utilize totems which should be destroyed as they appear. |only if hardcore |notinsticky
|tip Enemies near buildings tend to pull in groups so be prepared. |only if hardcore |notinsticky
You can find more around [55.84,62.92]
step
label "Kill_Foulweald_Ursas"
kill 2 Foulweald Ursa##3749 |q 1025/2 |goto Ashenvale 50.44,61.25
|tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
|tip Foulweald Shaman and Totemics utilize totems which should be destroyed as they appear. |only if hardcore |notinsticky
|tip Enemies near buildings tend to pull in groups so be prepared. |only if hardcore |notinsticky
You can find more around [55.84,62.92]
step
label "Kill_Foulweald_Totemics"
kill 10 Foulweald Totemic##3750 |q 1025/3 |goto Ashenvale 50.44,61.25
|tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
|tip Foulweald Shaman and Totemics utilize totems which should be destroyed as they appear. |only if hardcore |notinsticky
|tip Enemies near buildings tend to pull in groups so be prepared. |only if hardcore |notinsticky
You can find more around [55.84,62.92]
step
label "Kill_Foulweald_Warriors"
kill 12 Foulweald Warrior##3743 |q 1025/4 |goto Ashenvale 50.44,61.25
|tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
|tip Foulweald Shaman and Totemics utilize totems which should be destroyed as they appear. |only if hardcore |notinsticky
|tip Enemies near buildings tend to pull in groups so be prepared. |only if hardcore |notinsticky
You can find more around [55.84,62.92]
step
Enter the building |goto Ashenvale 50.12,66.47 < 15 |walk
talk Sentinel Velene Starstrike##3885
|tip Inside the building.
accept Elemental Bracers##1016 |goto Ashenvale 49.80,67.21
step
kill Befouled Water Elemental##3917+
|tip You can find more in the water surrounding this small island.
|tip Be careful of Tideress, a level 27 green water elemental that moves around this area.
|tip These enemies are immune to frost damage.
collect 5 Intact Elemental Bracer##12220 |goto Ashenvale 48.38,69.68 |q 1016
step
use the Divining Scroll##5456
collect Divined Scroll##5455 |q 1016/1
step
talk Sentinel Velene Starstrike##3885
|tip Inside the building.
turnin Elemental Bracers##1016 |goto Ashenvale 49.80,67.21
step
talk Jarrodenus##12577
|tip This step is necessary to access some flight paths to Ratchet.
|tip Stick to the road, and don't worry about the patrolling orc outrider. They do not aggro.
fpath Talrendis Point |goto Azshara 11.90,77.59
|only if not hardcore
step
talk Raene Wolfrunner##3691
|tip Inside the building.
turnin An Aggressive Defense##1025 |goto Ashenvale 36.62,49.58
step
Follow the path up |goto Ashenvale 41.67,49.97 < 20 |only if walking and not subzone("Thistlefur Village")
kill Dal Bloodclaw##3987
|tip He looks like a grey furbolg that walks around this area.
|tip Avoid pulling him when near buildings. |only if hardcore
|tip Clear an area before engaging. |only if hardcore
collect Dal Bloodclaw's Skull##5544 |q 1054/1 |goto Ashenvale 37.35,35.60
Also check around [39.36,36.52]
step
talk Raene Wolfrunner##3691
|tip Inside the building.
turnin Culling the Threat##1054 |goto Ashenvale 36.62,49.58
step
Run Blackfathom Deeps
Jump into the water |goto Ashenvale/0 14.12,13.88 < 10 |walk
Swim underwater into the cave |goto Ashenvale/0 13.28,13.23 < 10 |walk
Follow the path |goto Ashenvale/0 13.90,10.92 < 10 |walk
Follow the path |goto Ashenvale/0 13.74,9.38 < 10 |walk
Follow the path |goto Ashenvale/0 14.37,9.20 < 10 |walk
Follow the path |goto Ashenvale/0 16.50,11.61 < 10 |walk
Enter the Blackfathom Deeps Dungeon with Your Group |goto Blackfathom Deeps/0 0.00,0.00 < 500 |c |q 971
|only if guideflag("BFDflag")
stickystart "Collect_10_Twilight_Pendants"
stickystart "Collect_8_Corrupted_Brain_Stems"
step
_Inside the Blackfathom Deeps Dungeon:_
click Pitted Iron Chest
|tip Follow the path inside the dungeon to enter The Drowned Sacellum.
|tip Swim to the south side of the room and then jump across the platforms to reach the southwest path.
|tip Continue following the path to enter The Pool of Ask'ar.
|tip It is underwater to the north of Gamoo-ra.
collect Lorgalis Manuscript##5359 |q 971/1
|only if guideflag("BFDflag")
step
_Inside the Blackfathom Deeps Dungeon:_
talk Argent Guard Thaelrid##4787
|tip Head southwest again in The Pool of Ask'ar and swim into the underwater cave.
|tip He is laying on the ground inside the underwater cave.
turnin In Search of Thaelrid##1198
accept Blackfathom Villainy##1200
|only if guideflag("BFDflag")
step
_Inside the Blackfathom Deeps Dungeon:_
kill Twilight Lord Kelris##4832
|tip The fourth boss of the dungeon.
|tip Leave the underwater cave and reenter the main room in The Pool of Ask'ar.
|tip Swim south and follow the path to the left to reach the Moonshrine Ruins.
|tip Follow the path southeast through the Moonshrine Ruins into the Moonshrine Sanctum.
collect Head of Kelris##5881 |q 1200/1
|only if guideflag("BFDflag")
step
label "Collect_10_Twilight_Pendants"
_Inside the Blackfathom Deeps Dungeon:_ |notinsticky
Kill Twilight enemies around this area
|tip They are found throughout the instance.
collect 10 Twilight Pendant##5879 |q 1199/1
|only if guideflag("BFDflag")
step
label "Collect_8_Corrupted_Brain_Stems"
_Inside the Blackfathom Deeps Dungeon:_ |notinsticky
Kill Blackfathom and Fallenroot enemies around this area
|tip They are found throughout the instance.
collect 8 Corrupted Brain Stem##5952 |q 1275/1
|only if guideflag("BFDflag")
step
Leave the Blackfathom Deeps Dungeon
Click Here to Continue |confirm |q 971
|only if guideflag("BFDflag")
step
talk Terenthis##3693
|tip Inside the building.
turnin Escape Through Force##994 |goto Darkshore 39.37,43.48
|only if not hardcore
step
talk Gershala Nightwhisper##8997
turnin Researching the Corruption##1275 |goto Darkshore 38.33,43.04
|only if guideflag("BFDflag")
step
Run up the ramp |goto Darnassus 56.46,20.41 < 5 |only if walking
talk Argent Guard Manados##4784
|tip Inside the building.
turnin Twilight Falls##1199 |goto Darnassus 55.23,24.00
|only if guideflag("BFDflag")
step
talk Dawnwatcher Selgorm##4783
|tip Inside the building.
turnin Blackfathom Villainy##1200 |goto Darnassus 56.17,24.38
|only if guideflag("BFDflag")
step
talk Jocaste##4146 |only if Hunter
talk Syurna##4163 |only if Rogue
talk Sildanair##4089 |only if Warrior
talk Denatharion##4218 |only if Druid
talk Jandria##4091 |only if Priest
trainer Jocaste##4146 |goto Darnassus/0 40.40,8.58 |only if Hunter
trainer Sildanair##4089 |goto Darnassus/0 61.78,42.28 |only if Warrior
trainer Syurna##4163 |goto Darnassus/0 36.97,21.86 |only if Rogue
trainer Denatharion##4218  |goto Darnassus/0 34.74,7.43 |only if Druid
trainer Jandria##4091 |goto Darnassus/0 37.91,82.80 |only if Priest
|tip In the basement of the tree. |only if Rogue
|tip Train your spells.
step
Follow the path |goto Stormwind City 74.74,53.70 < 10 |only if walking
Enter the building |goto Stormwind City 77.14,58.02 < 10 |walk
talk Master Mathias Shaw##332
|tip Upstairs inside the building.
accept Mathias and the Defias##2360 |goto Stormwind City 75.78,59.85
|only if Rogue
step
talk Thor##523
fpath Sentinel Hill |goto Westfall 56.56,52.64
|only if Rogue
step
talk Agent Kearnen##7024
turnin Mathias and the Defias##2360 |goto Westfall 68.49,70.08
accept Klaven's Tower##2359 |goto Westfall 68.49,70.08
|only if Rogue
step
collect Defias Tower Key##7923 |q 2359/2 |goto Westfall 71.63,73.91
|tip Use your "Pickpocket" ability on a Malformed Defias Drone.
|tip He walks around this area.
|only if Rogue
step
Enter the building |goto Westfall 69.97,74.07 < 10 |walk
click Duskwood Chest##123214
|tip Upstairs inside the building, on the top level.
|tip You will get a debuff after opening it.
|tip Use your "Sap" ability on Klaven Mortwake nearby before clicking the chest.
|tip He is elite, but you should be fine.
|tip If you have trouble, try to find someone to help you.
collect Klaven Mortwake's Journal##7908 |q 2359/1 |goto Westfall 70.41,73.93
|only if Rogue
step
Leave the building |goto Westfall 69.95,74.04 < 10 |walk |only if zone("Westfall") and _G.IsIndoors()
Follow the path |goto Stormwind City 74.74,53.70 < 10 |only if walking
Enter the building |goto Stormwind City 77.14,58.02 < 10 |walk
talk Master Mathias Shaw##332
|tip Upstairs inside the building.
turnin Klaven's Tower##2359 |goto Stormwind City 75.78,59.85
accept The Touch of Zanzil##2607 |goto Stormwind City 75.78,59.85
|only if Rogue
step
talk Doc Mixilpixil##7207
|tip Downstairs inside the building.
turnin The Touch of Zanzil##2607 |goto Stormwind City 78.04,58.77
accept The Touch of Zanzil##2608 |goto Stormwind City 78.04,58.77
|only if Rogue
step
Watch the dialogue
|tip Use the "/lay" emote (type it in your chat) while targeting Doc Mixilpixil.
Complete the Diagnosis |q 2608/1 |goto Stormwind City 78.04,58.77
|only if Rogue
step
talk Doc Mixilpixil##7207
|tip Downstairs inside the building.
turnin The Touch of Zanzil##2608 |goto Stormwind City 78.04,58.77
|only if Rogue
step
Remove the Touch of Zanzil |nobuff Touch of Zanzil##9991
|tip You will still have the "Touch of Zanzil" debuff.
|tip There is a quest to remove the debuff.
|tip The quest makes you gather items in Stormwind City, but gathering the items can cost a lot of silver.
|tip To remove the buff without doing the quest and wasting money, you have 2 options:
|tip If you have First Aid leveled, create an "Anti-Venom" and use it on yourself.
|tip You can also try to buy one from the Auction House, they're usually cheap. |only if not selfmade
|tip Alternatively, try to ask a Druid player to use their "Cure Poison" ability on you.
|only if Rogue
step
talk Jasper Fel##1325
|tip Inside the building, on the middle floor.
|tip Stock up on Dust of Decay and Empty Vials, at least 20 of each.
|tip You will use these to create poisons soon to use on your weapon to help you deal more damage.
|tip The poisons only last for 30 minutes, so you want to have enough to be able to always poison your weapon.
Visit the Vendor |vendor Jasper Fel##1325 |goto Stormwind City 78.32,58.98 |q 484 |future
|only if Rogue
step
Enter the building |goto Ironforge 27.69,12.34 < 20 |walk
talk Milstaff Stormeye##2489
|tip Inside the building.
learnspell Teleport: Ironforge##3562 |goto Ironforge 25.50,7.07
|only if Mage
step
Enter the building |goto Ironforge 30.43,26.37 < 7 |walk
talk Ginny Longberry##5151
|tip Inside the building.
|tip If you can afford it.
|tip Stock up on a couple of Runes of Teleportation to use to travel faster while leveling.
Visit the Vendor |vendor Ginny Longberry##5151 |goto Ironforge 31.32,27.79 |q 484 |future
|only if Mage
step
talk James Halloran##2094
|tip He walks around this area.
accept Young Crocolisk Skins##484 |goto Wetlands 8.51,55.71
step
talk Karl Boran##1242
|tip He walks around this area.
accept Claws from the Deep##279 |goto Wetlands 8.31,58.53
step
talk First Mate Fitzsimmons##1239
accept The Third Fleet##288 |goto Wetlands 10.89,59.67
accept The Greenwarden##463 |goto Wetlands 10.89,59.67
step
Enter the building |goto Wetlands 10.79,59.76 < 10 |walk
talk Innkeeper Helbrek##1464
|tip He walks around inside the building.
home Deepwater Tavern |goto Wetlands 10.70,60.95
step
talk Innkeeper Helbrek##1464
|tip He walks around inside the building.
buy Flagon of Mead##2594 |q 288/1 |goto Wetlands 10.70,60.95
step
talk Archaeologist Flagongut##2911
|tip Upstairs inside the building.
turnin The Absent Minded Prospector##942 |goto Wetlands 10.84,60.43
step
Leave the building |goto Wetlands 10.79,59.77 < 10 |walk |only if subzone("Deepwater Tavern")
talk First Mate Fitzsimmons##1239
turnin The Third Fleet##288 |goto Wetlands 10.89,59.67
step
talk Edwina Monzor##1462
|tip She walks around this area.
|tip If you need any more, only buy enough level 10 ammo to get you to level 25.
|tip You will switch to level 25 ammo at level 25.
|tip Buy enough level 25 ammo to fill your ammo bag, and save it in your bags to switch to it later, once you hit level 25 soon.
Visit the Vendor |vendor Edwina Monzor##1462 |goto Wetlands/0 11.11,58.33 |q 463
|only if Hunter
step
talk Sida##2111
accept Digging Through the Ooze##470 |goto Wetlands 11.80,57.99
step
Enter the building |goto Wetlands 10.30,56.30 < 15 |walk
talk Neal Allen##1448
|tip Inside the building.
buy Bronze Tube##4371 |n
|tip If you can afford it.
|tip It may not be for sale, since it's a limited supply item.
|tip This item is needed for a quest later on in Duskwood.
Visit the Vendor |vendor Neal Allen##1448 |goto Wetlands 10.75,56.75 |q 174 |future
|only if itemcount(4371) == 0
stickystart "Kill_Young_Crocs"
stickystart "Slay_Bluegill_Murlocs"
step
Leave the building |goto Wetlands 10.30,56.30 < 15 |walk |only if subzone("Menethil Keep")
Leave Menethil Harbor |goto Wetlands 10.96,54.57 < 30 |only if walking and subzone("Menethil Harbor")
kill Gobbler##1259
|tip He looks like a grey murloc that walks around this area.
|tip Watch for patrols and respawns while in the area. |only if hardcore
collect Gobbler's Head##3618 |q 279/2 |goto Wetlands 17.99,40.38
Also check around: |notinsticky
[14.45,41.53]
[14.86,35.88]
step
label "Slay_Bluegill_Murlocs"
Kill Bluegill enemies around this area
|tip They look like murlocs.
|tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
|tip Enemies near huts will likely pull in groups, so avoid if possible. |only if hardcore |notinsticky
Slay #12# Bluegill Murlocs |q 279/1 |goto Wetlands 13.64,39.55
stickystop "Kill_Young_Crocs"
step
Kill enemies around this area
|tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
|tip Enemies near huts will likely pull in groups, so avoid if possible. |only if hardcore |notinsticky
|tip You should already be close to reaching level 25.
ding 25 |goto Wetlands 16.87,40.02
step
_NOTE:_
You Have Access to Stronger Ammo
|tip Now that you're level 25, you can purchase stronger bullets or arrows.
|tip When you restock ammo at vendors, make sure to buy level 25 ammo.
|tip Destroy all of your level 10 ammo, and use the level 25 ammo you bought earlier.
Click Here to Continue |confirm |q 279
|only if Hunter
stickystart "Kill_Young_Crocs"
step
talk Fradd Swiftgear##2682
|tip He walks around this area.
buy Bronze Tube##4371 |n
|tip If you can afford it.
|tip It may not be for sale, since it's a limited supply item.
|tip This item is needed for a quest later on in Duskwood.
Visit the Vendor |vendor Fradd Swiftgear##2682 |goto Wetlands 26.40,25.76 |q 174 |future
|only if itemcount(4371) == 0
step
talk Einar Stonegrip##2093
accept Daily Delivery##469 |goto Wetlands 49.91,39.37
step
talk Rethiel the Greenwarden##1244
turnin The Greenwarden##463 |goto Wetlands 56.37,40.40
accept Tramping Paws##276 |goto Wetlands 56.37,40.40
step
Kill Black Ooze enemies on the way south. |goto Wetlands 66.20,53.00 <100 |c |or
|tip This step will skip if you reach the waypoint without finding the bag.
|tip Don't worry, you'll have more chances later.
collect Sida's Bag##3349 |q 470/1 |or
step
label "Kill_Young_Crocs"
Leave the building |goto Wetlands 10.30,56.30 < 15 |walk |only if subzone("Menethil Keep")
Leave Menethil Harbor |goto Wetlands 10.96,54.57 < 30 |only if walking and subzone("Menethil Harbor")
kill Young Wetlands Crocolisk##1417+
|tip Go out of your way to kill Young Wetlands Crocolisks as you quest.
|tip The droprate for this quest can be low.
collect 4 Young Crocolisk Skin##3397 |q 484/1 |goto Wetlands 51.00,37.20
You can find more around: |notinsticky
[20.01,46.59]
[27.47,40.25]
[34.44,36.03]
stickystart "Kill_Mosshide_Gnolls"
step
kill 10 Mosshide Mongrel##1008 |q 276/2 |goto Wetlands 61.18,57.60
|tip Avoid pulling from the camp areas if possible. |only if hardcore
|tip Enemies around there tend to pull in groups. |only if hardcore
|tip Watch for patrols and respawns while in the area. |only if hardcore
You can find more around: |notinsticky
[64.11,63.15]
[62.39,70.70]
[55.68,74.52]
step
label "Kill_Mosshide_Gnolls"
kill 15 Mosshide Gnoll##1007 |q 276/1 |goto Wetlands 64.11,63.15
|tip Avoid pulling from the camp areas if possible. |only if hardcore |notinsticky
|tip Enemies around there tend to pull in groups. |only if hardcore |notinsticky
|tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
You can find more around: |notinsticky
[62.39,70.70]
[55.68,74.52]
step
click Musquash Root
collect Musquash Root##2784 |q 335/2 |goto Wetlands 64.76,75.29
|only if Warlock
step
Kill Black Ooze enemies on the way north. |goto Wetlands 56.37,40.40 <60 |c |or
|tip This step will skip if you reach the waypoint without finding the bag.
|tip Don't worry, you'll have more chances later.
collect Sida's Bag##3349 |q 470/1 |or
step
talk Rethiel the Greenwarden##1244
turnin Tramping Paws##276 |goto Wetlands 56.37,40.40
accept Fire Taboo##277 |goto Wetlands 56.37,40.40
step
_Note:_
Check Your Hearthstone
|tip The next step will instruct you to jump off of a bridge into the water.
|tip Afterwards, the guide assumes you will hearth back to Menethil Harbor.
|tip If your Hearthstone is not ready to use, you will have to swim a long way and it takes a while, so grind until it's ready.
|tip If you don't want to wait at all, skip the next 2 guide steps.
|tip You will have to skip a handful of quests worth about 10,000 xp.
Click Here to Continue |confirm |q 637 |future
|only if C_Container.GetItemCooldown(6948) > 0
step
Cross the bridge |goto Wetlands 51.11,11.59 < 30 |only if walking
Jump off the bridge into the water |goto Wetlands 50.65,8.53 < 15 |only if walking
click Waterlogged Letter##2656
|tip It looks like a rolled up white scroll in the hand of a dead dwarf.
|tip Underwater.
collect Waterlogged Envelope##4433 |goto Arathi Highlands 44.29,92.88 |q 637 |future |notravel
step
cast Teleport: Moonglade##18960
trainer Loganaar##12042 |goto Moonglade/0 52.50,40.54 |q 637 |future
|tip Go to Moonglade and train your spells, then hearth once it is off cooldown.
|only if Druid and C_Container.GetItemCooldown(6948) <= 100
step
use the Waterlogged Envelope##4433
accept Sully Balloo's Letter##637 |goto Wetlands 11.80,57.99
step
talk Sida##2111
turnin Digging Through the Ooze##470 |goto Wetlands 11.80,57.99
step
Enter the building |goto Wetlands 10.30,56.30 < 15 |walk
talk Neal Allen##1448
|tip Inside the building.
buy Bronze Tube##4371 |n
|tip If you can afford it.
|tip It may not be for sale, since it's a limited supply item.
|tip This item is needed for a quest later on in Duskwood.
Visit the Vendor |vendor Neal Allen##1448 |goto Wetlands 10.75,56.75 |q 174 |future
|only if itemcount(4371) == 0
step
Leave the building |goto Wetlands 10.30,56.30 < 15 |walk |only if subzone("Menethil Keep")
talk James Halloran##2094
|tip He walks around this area.
turnin Young Crocolisk Skins##484 |goto Wetlands 8.51,55.71
accept Apprentice's Duties##471 |goto Wetlands 8.51,55.71
turnin Daily Delivery##469 |goto Wetlands 8.51,55.71
step
talk Karl Boran##1242
|tip He walks around this area.
turnin Claws from the Deep##279 |goto Wetlands 8.31,58.53
accept Reclaiming Goods##281 |goto Wetlands 8.31,58.53
step
Run up the stairs and enter the building |goto Ironforge 61.32,88.18 < 7 |walk
talk Buliwyf Stonehand##11865
|tip Inside the building.
|tip This will allow you to equip two-handed axes.
Train Two-Handed Axes |complete weaponskill("TH_AXE") > 0 |goto Ironforge 61.17,89.52
|only if Paladin
step
Run up the stairs and enter the building |goto Ironforge 50.21,7.54 < 7 |walk
talk Gerrig Bonegrip##2786
|tip Inside the building.
turnin The Powers Below##968 |goto Ironforge 50.83,5.62
|only if haveq(968) or completedq(968)
step
talk Gearcutter Cogspinner##5175
buy Bronze Tube##4371 |n
|tip If you can afford it.
|tip It may not be for sale, since it's a limited supply item.
|tip This item is needed for a quest later on in Duskwood.
Visit the Vendor |vendor Gearcutter Cogspinner##5175 |goto Ironforge 67.84,42.50 |q 174 |future
|only if itemcount(4371) == 0
step
talk Lomac Gearstrip##4081
turnin An Old Colleague##1072 |goto Ironforge 72.10,51.89
step
talk Sara Balloo##2695
turnin Sully Balloo's Letter##637 |goto Ironforge 63.48,67.29
step
Run up the stairs |goto Ironforge 51.24,9.84 < 5 |only if walking
talk Gerrig Bonegrip##2786
|tip Inside the building.
turnin Knowledge in the Deeps##971 |goto Ironforge 50.82,5.60
|only if guideflag("BFDflag")
step
Watch the dialogue
talk Sara Balloo##2695
accept Sara Balloo's Plea##683 |goto Ironforge 63.48,67.29
step
Follow the path |goto Ironforge 44.57,49.55 < 10 |walk
talk King Magni Bronzebeard##2784
turnin Sara Balloo's Plea##683 |goto Ironforge 39.11,56.17
accept A King's Tribute##686 |goto Ironforge 39.11,56.17
step
Follow the path |goto Ironforge 44.57,49.55 < 10 |walk |only if subzone("The High Seat")
Run up the stairs and enter the building |goto Ironforge 38.53,85.78 < 7 |walk
talk Grand Mason Marblesten##2790
|tip He walks around inside the building.
turnin A King's Tribute##686 |goto Ironforge 39.03,88.02
accept A King's Tribute##689 |goto Ironforge 39.03,88.02
step
talk Dink##7312 |only if Mage
talk Regnus Thundergranite##5117 |only if Hunter
talk Bilban Tosslespanner##5114 |only if Warrior
talk Toldren Deepiron##5143 |only if Priest
talk Brandur Ironhammer##5149 |only if Paladin
talk Fenthwick##5167 |only if Rogue
trainer Dink##7312 |goto Ironforge/0 27.10,8.49 |only if Mage |q 689
trainer Regnus Thundergranite##5117 |goto Ironforge/0 69.86,82.94 |only if Hunter |q 689
trainer Bilban Tosslespanner##5114 |goto Ironforge/0 65.92,88.39 |only if Warrior |q 689
trainer Fenthwick##5167 |goto Ironforge/0 51.49,15.33 |only if Rogue |q 689
trainer Toldren Deepiron##5143 |goto Ironforge/0 25.19,10.76 |only if Priest |q 689
trainer Brandur Ironhammer##5149 |goto Ironforge/0 23.11,6.14 |only if Paladin |q 689
|tip Inside the building.
|tip Train your spells.
step
Enter the building |goto Ironforge 27.69,12.34 < 20 |walk
talk Milstaff Stormeye##2489
|tip Inside the building.
learnspell Teleport: Ironforge##3562 |goto Ironforge 25.50,7.07
|only if Mage
step
Enter the building |goto Ironforge 30.43,26.37 < 7 |walk
talk Ginny Longberry##5151
|tip Inside the building.
|tip If you can afford it.
|tip Stock up on a couple of Runes of Teleportation to use to travel faster while leveling.
Visit the Vendor |vendor Ginny Longberry##5151 |goto Ironforge 31.32,27.79 |q 484 |future
|only if Mage
step
talk Billibub Cogspinner##5519
buy Bronze Tube##4371 |n
|tip If you can afford it.
|tip It may not be for sale, since it's a limited supply item.
|tip This item is needed for a quest later on in Duskwood.
Visit the Vendor |vendor Billibub Cogspinner##5519 |goto Stormwind City 55.21,7.05 |q 174 |future
|only if itemcount(4371) == 0
step
talk Collin Mauren##4078
turnin A Scroll from Mauren##1075 |goto Stormwind City 43.09,80.38
step
Enter the building |goto Stormwind City 29.14,74.17 < 10 |walk
talk Gakin the Darkbinder##6122
|tip Downstairs inside the building.
turnin Heartswood##1738 |goto Stormwind City 25.26,78.56
accept The Binding##1739 |goto Stormwind City 25.26,78.56
|only if Warlock
step
use the Heartswood Core##6913
|tip Use it while standing on the pink symbol on the ground.
|tip Further downstairs inside the building, inside the crypt.
kill Summoned Succubus##5677 |q 1739/1 |goto Stormwind City 25.11,77.46
|only if Warlock
step
talk Gakin the Darkbinder##6122
|tip Downstairs inside the building, in the basement above the crypt.
turnin The Binding##1739 |goto Stormwind City 25.25,78.56
|only if Warlock
step
talk Spackle Thornberry##5520
|tip Downstairs inside the building.
|tip If you can afford them.
|tip Buy all of the Grimoires for spells that are upgrades for the spells you use with your pet.
|tip After buying them, make sure to use them in your bags to learn the spells.
Visit the Vendor |vendor Spackle Thornberry##5520 |goto Stormwind City 25.66,77.66 |q 66 |future
|only if Warlock
step
talk Ursula Deline##5495
trainer Ursula Deline##5495 |goto Stormwind City/0 26.13,77.20
|only if Warlock
step
_NOTE:_
Be Prepared to Fight Waves of Enemies
|tip When you accept the quest in the next step, you will have to protect and NPC from 3 waves of level 17-18 enemies.
|tip First Wave - 3 enemies.
|tip Second Wave - 4 enemies.
|tip Third Wave - 5 enemies.
|tip Remember to heal and use your defensive abilities when needed, preferably during the ladder waves.
|tip Bring food and water to eat and drink between the waves.
|tip You should be able to complete the quest at this level.
Click Here to Continue |confirm |q 1650
|only if Paladin
step
Follow the path up through the mountains |goto Westfall 52.64,72.27 < 50 |only if walking
Follow the path around the mountain |goto Westfall 38.44,82.68 < 20 |only if walking
talk Daphne Stilwell##6182
|tip She walks around this area.
turnin The Tome of Valor##1650 |goto Westfall 42.33,88.64
accept The Tome of Valor##1651 |goto Westfall 42.33,88.64
|only if Paladin
step
Watch the dialogue
Kill the enemies that attack in waves
|tip You will be attacked by 3 waves of level 17 - 18 enemies.
|tip First Wave - 3 enemies.
|tip Second Wave - 4 enemies.
|tip Third Wave - 5 enemies.
|tip Remember to heal and use your defensive abilities when needed, preferably during the ladder waves.
|tip Eat and drink between the waves.
|tip You should be able to complete the quest at this level.
Protect Daphne Stilwell |q 1651/1 |goto Westfall 42.33,88.64
|only if Paladin
step
talk Daphne Stilwell##6182
|tip She walks around this area.
turnin The Tome of Valor##1651 |goto Westfall 41.68,89.09
accept The Tome of Valor##1652 |goto Westfall 41.68,89.09
|only if Paladin
step
talk Malissa##3135
|tip Walking around here.
|tip Stock up on poisons.
|tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Malissa##3135 |goto Duskwood 79.44,44.44 |q 66 |future
|only if Rogue
step
Enter the building |goto Duskwood 75.55,45.37 < 10 |walk
talk Madame Eva##265
|tip She walks around this area inside the building.
accept The Legend of Stalvan##66 |goto Duskwood 75.82,45.29
accept The Totem of Infliction##101 |goto Duskwood 75.82,45.29
step
talk Steven Black##10062
|tip Stable your permanent pet.
|tip You are about to tame a temporary pet soon, so you can learn "Bite 4".
Click Here to Continue |confirm |goto Duskwood 74.02,46.11 |q 101
|only if Hunter
step
_NOTE:_
Tame a Black Ravager
|tip Use your "Tame Beast" ability on a Black Ravager.
|tip They look like black wolves around this area.
|tip Make sure to tame a regular "Black Ravager", and not the Young or Mastiff variants.
Learn the "Bite 4" Pet Ability
|tip Kill enemies around this area until you see a message in your chat saying you learned "Bite 4".
|tip You will teach "Bite 4" to your permanent pet soon.
Click Here to Continue |confirm |goto Duskwood 67.90,32.14 |q 101
|only if Hunter
step
talk Steven Black##10062
|tip Abandon your temporary pet and get your permanent pet from the stable.
|tip Teach "Bite 4" to your permanent pet.
Click Here to Continue |confirm |goto Duskwood 74.02,46.11 |q 101
|only if Hunter
step
Enter the building |goto Duskwood 73.83,46.02 < 10 |walk
talk Innkeeper Trelayne##6790
|tip Inside the building.
home Darkshire |goto Duskwood 73.87,44.41
step
Leave the building |goto Duskwood 73.83,46.02 < 10 |walk |only if subzone("Scarlet Raven Tavern")
talk Commander Althea Ebonlocke##264
|tip She walks around this area.
accept The Night Watch##56 |goto Duskwood 73.60,46.90
step
Enter the building |goto Duskwood 72.93,46.81 < 10 |walk
talk Clerk Daltry##267
|tip He walks around this area inside the building.
turnin The Legend of Stalvan##66 |goto Duskwood 72.52,46.85
accept The Legend of Stalvan##67 |goto Duskwood 72.52,46.85
step
talk Gavin Gnarltree##225
|tip He walks around this area.
buy Merciless Axe##12249 |n
|tip If you can afford it.
|tip You will use it when you reach level 26.
|tip It may not be available to buy, since it's a limited supply item.
|tip If you have better, skip this step.
Visit the Vendor |vendor Gavin Gnarltree##225 |goto Duskwood 73.60,50.04 |q 163 |future
|only if Warrior and itemcount(12249) == 0
step
talk Gavin Gnarltree##225
|tip He walks around this area.
buy Merciless Axe##12249 |n
|tip If you can afford it.
|tip You will use it when you reach level 26.
|tip It may not be available to buy, since it's a limited supply item.
|tip If you have better, skip this step.
Visit the Vendor |vendor Gavin Gnarltree##225 |goto Duskwood 73.60,50.04 |q 163 |future
|only if Paladin and itemcount(12249) == 0
step
talk Gavin Gnarltree##225
|tip He walks around this area.
buy Broad Bladed Knife##12247 |n
|tip If you can afford it.
|tip You will use it when you reach level 27.
|tip It may not be available to buy, since it's a limited supply item.
|tip If you have better, skip this step.
Visit the Vendor |vendor Gavin Gnarltree##225 |goto Duskwood 73.60,50.04 |q 163 |future
|only if Rogue and itemcount(12247) == 0
step
Enter the building |goto Duskwood 75.23,48.26 < 10 |walk
talk Elaine Carevin##633
|tip Inside the building.
accept Raven Hill##163 |goto Duskwood 75.33,48.69
accept The Hermit##165 |goto Duskwood 75.33,48.69
accept Deliveries to Sven##164 |goto Duskwood 75.33,48.69
step
talk Felicia Maline##2409
fpath Darkshire |goto Duskwood 77.49,44.29
step
talk Herble Baubbletump##3133
buy Bronze Tube##4371 |n
|tip If you can afford it.
|tip It may not be for sale, since it's a limited supply item.
|tip You need this item now for a quest in the next guide step.
|tip If you haven't been able to buy one while following the guide so far, fly to Stormwind City and buy one from the auction house. |only if not selfmade
collect Bronze Tube##4371 |goto Duskwood 77.99,48.33 |q 174 |future
step
Enter the building |goto Duskwood 79.78,47.69 < 10 |walk
talk Viktori Prism'Antras##276
|tip Inside the building.
accept Look To The Stars##174 |goto Duskwood 79.80,48.02
step
talk Viktori Prism'Antras##276
|tip Inside the building.
turnin Look To The Stars##174 |goto Duskwood 79.80,48.02
accept Look To The Stars##175 |goto Duskwood 79.80,48.02
step
Enter the building |goto Duskwood 81.67,59.14 < 10 |walk
talk Blind Mary##302
|tip She walks around inside the building.
turnin Look To The Stars##175 |goto Duskwood 81.99,59.09
accept Look To The Stars##177 |goto Duskwood 81.99,59.09
stickystart "Kill_Skeletal_Mages"
stickystart "Kill_Skeletal_Warriors"
step
Enter the building |goto Duskwood 80.33,71.10 < 10 |walk
kill Insane Ghoul##511
|tip He walks around inside the building.
|tip He may also leave the building and walk around the graveyard.
|tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
|tip Skeletal mages may aggro from a decent distance. |only if hardcore |notinsticky
collect Mary's Looking Glass##1946 |q 177/1 |goto Duskwood 80.94,71.40
step
label "Kill_Skeletal_Mages"
kill 6 Skeletal Mage##203 |q 56/2 |goto Duskwood 79.42,70.31
|tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
|tip Skeletal mages may aggro from a decent distance. |only if hardcore |notinsticky
step
label "Kill_Skeletal_Warriors"
kill 8 Skeletal Warrior##48 |q 56/1 |goto Duskwood 79.42,70.31
|tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
|tip Skeletal mages may aggro from a decent distance. |only if hardcore |notinsticky
step
Kill enemies around this area
|tip You should already be very close to reaching level 26.
|tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
|tip Skeletal mages may aggro from a decent distance. |only if hardcore |notinsticky
ding 26 |goto Duskwood 79.42,70.31
step
Follow the road |goto Duskwood 72.18,59.00 < 50 |only if walking and (subzone("Tranquil Gardens Cemetery") or subzone("Darkshire"))
talk Jitters##288
|tip He walks around this area.
turnin Raven Hill##163 |goto Duskwood 18.16,56.51
accept Jitters' Growling Gut##5 |goto Duskwood 18.16,56.51
step
talk Sven Yorgen##311
turnin Deliveries to Sven##164 |goto Duskwood 7.78,34.07
accept Sven's Revenge##95 |goto Duskwood 7.78,34.07
step
talk Lars##893
accept Wolves at Our Heels##226 |goto Duskwood 7.71,33.20
stickystart "Kill_Rabid_Dire_Wolves"
step
map Duskwood
path follow smart; loop off; ants straight; dist 50; markers none
path	11.81,29.39	15.57,24.64	18.51,23.95	23.24,26.03	29.03,26.73
path	33.15,23.17	37.32,19.68	45.37,18.08
kill 12 Starving Dire Wolf##213 |q 226/1
|tip You can find them all along the coast of the river.
step
label "Kill_Rabid_Dire_Wolves"
map Duskwood
path follow smart; loop off; ants straight; dist 50; markers none
path	11.81,29.39	15.57,24.64	18.51,23.95	23.24,26.03	29.03,26.73
path	33.15,23.17	37.32,19.68	45.37,18.08
kill 8 Rabid Dire Wolf##565 |q 226/2
|tip You can find them all along the coast of the river. |notinsticky
step
talk Abercrombie##289
|tip Inside the building.
turnin The Hermit##165 |goto Duskwood 28.11,31.47
accept Supplies from Darkshire##148 |goto Duskwood 28.11,31.47
stickystart "Collect_Gooey_Spider_Legs"
step
kill Black Widow Hatchling##930+
collect 5 Vial of Spider Venom##1130 |q 101/2 |goto Duskwood 31.85,35.93
You can find more around: |notinsticky
[28.46,48.96]
[32.20,55.11]
step
label "Collect_Gooey_Spider_Legs"
kill Black Widow Hatchling##930+
collect 6 Gooey Spider Leg##2251 |goto Duskwood 31.85,35.93 |q 93 |future
|tip Be careful not to accidentally sell these to a vendor.
You can find more around: |notinsticky
[28.46,48.96]
[32.20,55.11]
step
Leave the crypt |goto Duskwood 23.59,34.89 < 15 |walk |only if subzone("Dawning Wood Catacombs") and _G.IsIndoors()
talk Lars##893
turnin Wolves at Our Heels##226 |goto Duskwood 7.71,33.20
step
talk Thor##523
fpath Sentinel Hill |goto Westfall 56.55,52.64
step
Enter the building |goto Westfall 42.22,66.90 < 10 |walk
click Old Footlocker
|tip Inside the building.
turnin The Legend of Stalvan##67 |goto Westfall 41.51,66.73
accept The Legend of Stalvan##68 |goto Westfall 41.51,66.73
step
talk Chef Grual##272
|tip He walks around this area inside the building.
turnin Jitters' Growling Gut##5 |goto Duskwood 73.78,43.45
accept Dusky Crab Cakes##93 |goto Duskwood 73.78,43.45
step
talk Chef Grual##272
|tip He walks around this area inside the building.
turnin Dusky Crab Cakes##93 |goto Duskwood 73.78,43.45
accept Return to Jitters##240 |goto Duskwood 73.78,43.45
step
_Destroy or Sell These Items:_
|tip They are no longer needed.
trash Gooey Spider Leg##2251 |goto Duskwood 73.82,46.01
step
Leave the building |goto Duskwood 73.82,46.01 < 10 |walk |only if subzone("Scarlet Raven Tavern")
talk Commander Althea Ebonlocke##264
|tip She walks around this area.
turnin The Night Watch##56 |goto Duskwood 73.59,46.90
accept The Night Watch##57 |goto Duskwood 73.59,46.90
step
Enter the building |goto Duskwood 72.93,46.81 < 10 |walk
talk Clerk Daltry##267
|tip He walks around this area inside the building.
turnin The Legend of Stalvan##68 |goto Duskwood 72.52,46.85
accept The Legend of Stalvan##69 |goto Duskwood 72.52,46.85
step
talk Gavin Gnarltree##225
|tip He walks around this area.
buy Merciless Axe##12249 |n
|tip If you can afford it.
|tip It may not be available to buy, since it's a limited supply item.
|tip If you have better, skip this step.
Visit the Vendor |vendor Gavin Gnarltree##225 |goto Duskwood 73.60,50.04 |q 101
|only if Warrior and itemcount(12249) == 0
step
talk Gavin Gnarltree##225
|tip He walks around this area.
buy Merciless Axe##12249 |n
|tip If you can afford it.
|tip It may not be available to buy, since it's a limited supply item.
|tip If you have better, skip this step.
Visit the Vendor |vendor Gavin Gnarltree##225 |goto Duskwood 73.60,50.04 |q 101
|only if Paladin and itemcount(12249) == 0
step
talk Gavin Gnarltree##225
|tip He walks around this area.
buy Broad Bladed Knife##12247 |n
|tip If you can afford it.
|tip You will use it when you reach level 27.
|tip It may not be available to buy, since it's a limited supply item.
|tip If you have better, skip this step.
Visit the Vendor |vendor Gavin Gnarltree##225 |goto Duskwood 73.60,50.04 |q 101
|only if Rogue and itemcount(12247) == 0
step
Enter the building |goto Duskwood 75.57,45.37 < 10 |walk
talk Madame Eva##265
|tip She walks around this area inside the building.
turnin Supplies from Darkshire##148 |goto Duskwood 75.81,45.29
accept Ghost Hair Thread##149 |goto Duskwood 75.81,45.29
step
Enter the building |goto Duskwood 79.78,47.69 < 10 |walk
talk Viktori Prism'Antras##276
|tip Inside the building.
turnin Look To The Stars##177 |goto Duskwood 79.80,48.02
step
Enter the building |goto Duskwood 81.68,59.13 < 10 |walk
talk Blind Mary##302
|tip She walks around inside the building.
turnin Ghost Hair Thread##149 |goto Duskwood 81.98,59.09
accept Return the Comb##154 |goto Duskwood 81.98,59.09
step
Enter the building |goto Duskwood 75.57,45.37 < 10 |walk
talk Madame Eva##265
|tip She walks around this area inside the building.
turnin Return the Comb##154 |goto Duskwood 75.81,45.29
accept Deliver the Thread##157 |goto Duskwood 75.81,45.29
step
click Mound of loose dirt
|tip Be careful, there are stealthed enemies around this area.
turnin Sven's Revenge##95 |goto Duskwood 49.86,77.70
accept Sven's Camp##230 |goto Duskwood 49.86,77.70
step
Follow the road |goto Duskwood 43.59,65.05 < 40 |only if walking and subzone("The Yorgen Farmstead")
talk Jitters##288
|tip He walks around this area.
turnin Return to Jitters##240 |goto Duskwood 18.14,56.52
step
talk Sven Yorgen##311
turnin Sven's Camp##230 |goto Duskwood 7.78,34.07
accept The Shadowy Figure##262 |goto Duskwood 7.78,34.07
step
talk Abercrombie##289
|tip Inside the building.
turnin Deliver the Thread##157 |goto Duskwood 28.11,31.47
accept Zombie Juice##158 |goto Duskwood 28.11,31.47
step
Enter the building |goto Elwynn Forest 42.95,65.64 < 10 |walk
talk Innkeeper Farley##295
|tip Inside the building.
turnin The Legend of Stalvan##69 |goto Elwynn Forest 43.77,65.80
accept The Legend of Stalvan##70 |goto Elwynn Forest 43.77,65.80
step
click Storage Chest
|tip Upstairs inside the building.
collect An Undelivered Letter##910 |q 70/1 |goto Elwynn Forest 44.29,65.82
step
Leave the building |goto Elwynn Forest 42.95,65.64 < 10 |walk |only if subzone("Lion's Pride Inn")
talk Caretaker Folsom##297
turnin The Legend of Stalvan##70 |goto Stormwind City 29.58,61.93
accept The Legend of Stalvan##72 |goto Stormwind City 29.58,61.93
step
click Sealed Crate
turnin The Legend of Stalvan##72 |goto Stormwind City 29.46,61.58
accept The Legend of Stalvan##74 |goto Stormwind City 29.46,61.58
step
Enter the building |goto Stormwind City 29.15,74.15 < 10 |walk
talk Zardeth of the Black Claw##1435
|tip Downstairs inside the building.
accept A Noble Brew##335 |goto Stormwind City 26.45,78.66
step
Leave the building |goto Stormwind City 29.15,74.15 < 10 |walk |only if subzone("The Slaughtered Lamb")
Enter the building |goto Duskwood 75.55,45.37 < 10 |walk
talk Madame Eva##265
|tip She walks around this area inside the building.
turnin The Shadowy Figure##262 |goto Duskwood 75.81,45.29
accept The Shadowy Search Continues##265 |goto Duskwood 75.81,45.29
step
talk Gavin Gnarltree##225
|tip He walks around this area.
buy Merciless Axe##12249 |n
|tip If you can afford it.
|tip It may not be available to buy, since it's a limited supply item.
|tip If you have better, skip this step.
Visit the Vendor |vendor Gavin Gnarltree##225 |goto Duskwood 73.60,50.04 |q 265
|only if Warrior and itemcount(12249) == 0
step
talk Gavin Gnarltree##225
|tip He walks around this area.
buy Merciless Axe##12249 |n
|tip If you can afford it.
|tip It may not be available to buy, since it's a limited supply item.
|tip If you have better, skip this step.
Visit the Vendor |vendor Gavin Gnarltree##225 |goto Duskwood 73.60,50.04 |q 265
|only if Paladin and itemcount(12249) == 0
step
talk Gavin Gnarltree##225
|tip He walks around this area.
buy Broad Bladed Knife##12247 |n
|tip If you can afford it.
|tip You will use it when you reach level 27.
|tip It may not be available to buy, since it's a limited supply item.
Visit the Vendor |vendor Gavin Gnarltree##225 |goto Duskwood 73.60,50.04 |q 265
|only if Rogue and itemcount(12247) == 0
step
Enter the building |goto Duskwood 72.92,46.81 < 10 |walk
talk Clerk Daltry##267
|tip He walks around this area inside the building.
turnin The Shadowy Search Continues##265 |goto Duskwood 72.53,46.85
accept Inquire at the Inn##266 |goto Duskwood 72.53,46.85
step
Enter the building |goto Duskwood 73.82,46.03 < 10 |walk
talk Tavernkeep Smitts##273
|tip He walks around this area inside the building.
turnin Inquire at the Inn##266 |goto Duskwood 73.78,44.48
accept Finding the Shadowy Figure##453 |goto Duskwood 73.78,44.48
turnin Zombie Juice##158 |goto Duskwood 73.78,44.48
accept Gather Rot Blossoms##156 |goto Duskwood 73.78,44.48
step
Leave the building |goto Duskwood 73.82,46.03 < 10 |walk |only if subzone("Scarlet Raven Tavern")
talk Jitters##288
|tip He walks around this area.
turnin Finding the Shadowy Figure##453 |goto Duskwood 18.14,56.52
accept Return to Sven##268 |goto Duskwood 18.14,56.52
stickystart "Kill_Skeletal_Fiends"
stickystart "Kill_Skeletal_Horrors"
step
Kill Skeletal enemies around this area
|tip Only Skeletal Fiends and Skeletal Horrors will drop the quest item.
|tip Watch for respawns while in the area. |only if hardcore |notinsticky
collect 8 Rot Blossom##1598 |q 156/1 |goto Duskwood 15.20,44.97
You can find more around: |notinsticky
[21.50,47.70]
[22.93,43.21]
step
Kill Skeletal enemies around this area
collect 10 Skeleton Finger##2378 |q 101/3 |goto Duskwood 15.20,44.97
step
label "Kill_Skeletal_Fiends"
kill 15 Skeletal Fiend##531 |q 57/1 |goto Duskwood 15.20,44.97
|tip Watch for respawns while in the area. |only if hardcore |notinsticky
You can find more around: |notinsticky
[21.50,47.70]
[22.93,43.21]
step
label "Kill_Skeletal_Horrors"
kill 15 Skeletal Horror##202 |q 57/2 |goto Duskwood 15.20,44.97
|tip Watch for respawns while in the area. |only if hardcore |notinsticky
You can find more around: |notinsticky
[21.50,47.70]
[22.93,43.21]
step
Kill enemies around this area
|tip You should already be level 27, or very close.
|tip Watch for respawns while in the area. |only if hardcore |notinsticky
ding 27 |goto Duskwood 15.20,44.97
You can find more around: |notinsticky
[21.50,47.70]
[22.93,43.21]
step
talk Sven Yorgen##311
turnin Return to Sven##268 |goto Duskwood 7.78,34.06
accept Proving Your Worth##323 |goto Duskwood 7.78,34.06
step
_NOTE:_
During the Next Few Steps
|tip Beware Mor'Ladim, who is a level 35 elite golden skeleton that walks along the road inside Raven Hill.
|tip The quest in the next few steps can be dangerous, requiring you to enter into a dangerous crypt.
|tip You may want to skip the quest, unless you have help, or feel confident you can handle it.
|tip If you skip the quest, abandon the "Prove Your Worth" quest.
|tip You will miss out on the rest of the quest line if you skip, requiring you grind more later.
Click Here to Continue |confirm |q 323
|only if hardcore
stickystart "Kill_Skeletal_Healers"
stickystart "Kill_Skeletal_Raiders"
step
Enter the crypt |goto Duskwood 15.88,38.73 < 7 |walk
kill 3 Skeletal Warder##785 |q 323/3 |goto Duskwood 15.53,37.02
|tip Inside the crypt.
|tip Be careful of Mor'Ladim, a level 35 elite skeleton who walks around this area outside the crypt.
|tip Watch for respawns while in the area. |only if hardcore |notinsticky
You can find more inside the crypt around [16.01,34.05]
step
label "Kill_Skeletal_Healers"
kill 3 Skeletal Healer##787 |q 323/2 |goto Duskwood 15.87,38.73
|tip Inside the crypt. |notinsticky
|tip You can find more outside the crypt. |notinsticky
|tip Be careful of Mor'Ladim, a level 35 elite skeleton who walks around this area outside the crypt. |notinsticky
|tip Watch for respawns while in the area. |only if hardcore |notinsticky
You can find more inside the crypt around [16.01,34.05]
step
label "Kill_Skeletal_Raiders"
Run up the stairs |goto Duskwood 15.44,37.59 < 10 |walk |only if subzone("Dawning Wood Catacombs") and _G.IsIndoors()
Leave the crypt |goto Duskwood 15.87,38.73 < 10 |walk |only if subzone("Dawning Wood Catacombs") and _G.IsIndoors()
kill 15 Skeletal Raider##1110 |q 323/1 |goto Duskwood 15.87,38.73
|tip Inside and outside the crypt. |notinsticky
|tip They share spawns with other enemies inside the crypt. |notinsticky
|tip They can also spawn around the house ontop of the hill. |notinsticky
|tip Be careful of Mor'Ladim, a level 35 elite skeleton who walks around this area outside the crypt. |notinsticky
step
Run up the stairs |goto Duskwood 15.44,37.59 < 10 |walk |only if subzone("Dawning Wood Catacombs") and _G.IsIndoors()
Leave the crypt |goto Duskwood 15.87,38.73 < 10 |walk |only if subzone("Dawning Wood Catacombs") and _G.IsIndoors()
talk Sven Yorgen##311
turnin Proving Your Worth##323 |goto Duskwood 7.78,34.06
accept Seeking Wisdom##269 |goto Duskwood 7.78,34.06
step
talk Tavernkeep Smitts##273
|tip He walks around this area inside the building.
turnin Gather Rot Blossoms##156 |goto Duskwood 73.78,44.48
accept Juice Delivery##159 |goto Duskwood 73.78,44.48
step
Leave the building |goto Duskwood 73.83,46.01 < 10 |walk |only if subzone("Scarlet Raven Tavern")
talk Commander Althea Ebonlocke##264
|tip She walks around this area.
turnin The Night Watch##57 |goto Duskwood 73.60,46.90
step
Optional Route Change
|tip You can opt to do The Stockades around level 28 instead of grinding.
|tip This will mean slower leveling but it will be more fun and potentially give you gear upgrades.
|tip If you choose to do The Stockades, we will say when to accept and turnin dungeon quests that are worth doing in your route.
|tip We will also say when it is a good time to do the dungeon.
_Note_
|tip This feature is currently experimental and may result in a full quest log. If this happens, please submit a feedback report so we can fix it!
|tip If you have a full quest log, we recommend abandoning any dungeon quests that can be shared by your party members later.
Click Here if you'd like to run The Stockades later |confirm Stockflag
Click Here if you'd prefer to grind |confirm
step
Enter the building |goto Duskwood 72.88,46.83 < 5 |walk
talk Councilman Millstipe##270
|tip He walks around inside the building.
accept Crime and Punishment##377 |goto Duskwood 71.92,47.79
|only if guideflag("Stockflag")
step
talk Gavin Gnarltree##225
|tip He walks around this area.
buy Merciless Axe##12249 |n
|tip If you can afford it.
|tip It may not be available to buy, since it's a limited supply item.
Visit the Vendor |vendor Gavin Gnarltree##225 |goto Duskwood 73.60,50.04 |q 159
|only if Warrior and itemcount(12249) == 0
step
talk Gavin Gnarltree##225
|tip He walks around this area.
buy Merciless Axe##12249 |n
|tip If you can afford it.
|tip It may not be available to buy, since it's a limited supply item.
Visit the Vendor |vendor Gavin Gnarltree##225 |goto Duskwood 73.60,50.04 |q 159
|only if Paladin and itemcount(12249) == 0
step
talk Gavin Gnarltree##225
|tip He walks around this area.
buy Broad Bladed Knife##12247 |n
|tip If you can afford it.
|tip It may not be available to buy, since it's a limited supply item.
Visit the Vendor |vendor Gavin Gnarltree##225 |goto Duskwood 73.60,50.04 |q 159
|only if Rogue and itemcount(12247) == 0
step
talk Guard Howe##903
accept Blackrock Bounty##128 |goto Redridge Mountains 31.54,57.85
|only if not hardcore
step
talk Verner Osgood##415
accept Howling in the Hills##126 |goto Redridge Mountains 30.97,47.27
|tip This requires you to complete the "A Baying of Gnolls" quest found in the "Redridge Mountains (18-20)" guide.
|only if not hardcore
step
Enter the building |goto Redridge Mountains 29.50,46.12 < 10 |walk
talk Bailiff Conacher##900
|tip Inside the building.
accept Solomon's Law##91 |goto Redridge Mountains 29.72,44.26
step
Leave the building |goto Redridge Mountains 29.50,46.12 < 10 |walk |only if subzone("Lakeshire Town Hall")
click Wanted: Lieutenant Fangore
accept Wanted: Lieutenant Fangore##180 |goto Redridge Mountains 26.75,46.47
|only if not hardcore and not Warlock
step
talk Gerald Crawley##3090
|tip Inside the building.
|tip Stock up on poisons.
|tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Gerald Crawley##3090 |goto Redridge Mountains/0 25.06,41.12 |q 34 |future
|only if Rogue
step
talk Martie Jainrose##342
accept An Unwelcome Guest##34 |goto Redridge Mountains/0 21.86,46.33
step
kill Bellygrub##345
|tip He looks like a darker brown boar that walks around this area.
collect Bellygrub's Tusk##3631 |q 34/1 |goto Redridge Mountains/0 15.68,49.32
step
talk Martie Jainrose##342
turnin An Unwelcome Guest##34 |goto Redridge Mountains/0 21.86,46.33
step
Follow the path up |goto Redridge Mountains/0 17.27,44.89 < 20 |only if walking
kill Yowler##518
|tip He walks between 2 of the gnolls camps.
|tip Watch for patrols and respawns while in the area. |only if hardcore
|tip Enemies around camp tend to pull in groups so be wary. |only if hardcore
|tip You can skip this quest, but you will need to grind extra xp if you do. |only if hardcore
collect Yowler's Paw##3614 |q 126/1 |goto Redridge Mountains/0 27.84,21.77
Also check around [34.17,25.09]
|only if not hardcore
stickystart "Collect_Shadowhide_Pendants"
step
kill Lieutenant Fangore##703
|tip He looks like a gnoll wearing a red robe, and carrying a long sword, that walks around this area.
|tip Try to kite him away, so you can fight him alone.
|tip If you have trouble, try to find someone to help you.
|tip Watch for patrols and respawns while in the area. |only if hardcore
|tip Enemies around camp tend to pull in groups so be wary. |only if hardcore
|tip You can skip this quest, but you will need to grind extra xp if you do. |only if hardcore
collect Fangore's Paw##3632 |q 180/1 |goto Redridge Mountains/0 78.93,38.46
Also check around [84.46,50.51]
|only if not hardcore
step
label "Collect_Shadowhide_Pendants"
Kill Shadowhide enemies around this area
|tip They look like gnolls.
|tip Enemies around camps tend to pull in groups so be wary. |only if hardcore
|tip Watch for patrols and respawns here. |only if hardcore
collect 10 Shadowhide Pendant##1075 |q 91/1 |goto Redridge Mountains/0 77.98,39.66
You can find more around: |notinsticky
[76.82,54.09]
[83.92,54.28]
step
Kill Shadowhide enemies around this area
|tip Enemies around camps tend to pull in groups so be wary. |only if hardcore
|tip Watch for patrols and respawns here. |only if hardcore
|tip Getting this far into level 27 will allow you to reach level 28 after turning in quests soon.
|tip You are about to return to Stormwind City soon, so it will be a good time to learn your level 28 abilities.
ding 27,37050 |goto Redridge Mountains/0 77.98,39.66
You can find more around: |notinsticky
[76.82,54.09]
[83.92,54.28]
|only if hardcore
step
Follow the road |goto Redridge Mountains/0 47.63,27.69 < 40 |only if walking
Follow the path |goto Redridge Mountains/0 39.14,14.15 < 40 |only if walking
kill 15 Blackrock Champion##435 |q 128/1 |goto Redridge Mountains/0 33.21,6.88
|tip Inside and outside the cave.
|tip They are mostly inside the cave, and the next guide step is inside the cave.
|tip Try to kill them mostly inside the cave.
|only if not hardcore
step
kill enemies around this area
|tip Getting this far into level 27 will allow you to reach level 28 after turning in quests soon.
|tip You are about to return to Stormwind City soon, so it will be a good time to learn your level 28 abilities.
ding 27,27900 |goto Redridge Mountains/0 33.21,6.88
|only if not hardcore
step
Follow the path inside the cave |goto Redridge Mountains/0 31.69,12.88 < 20 |walk
Continue following the path |goto Redridge Mountains/0 30.83,14.84 < 10 |walk
Follow the path |goto Redridge Mountains/0 28.45,13.64 < 10 |walk
talk Corporal Keeshan##349
|tip Inside the cave.
|tip This is an escort quest.
|tip If he's not here, someone may be escorting him.
|tip Wait until he respawns. |only if not hardcore
|tip Clear enemies that respawn as this quest can be overwhelming. |only if hardcore
accept Missing In Action##219 |goto Redridge Mountains/0 28.39,12.55 |noautoaccept
|only if not hardcore
step
Watch the dialogue
|tip Follow Corporal Keeshan and protect him as he walks.
|tip He walks out of the cave and all the way back to Lakeshire.
|tip When you reach the exit of the cave, pull the enemies to him, one group at a time.
|tip He eventually walks to this location.
Escort Corporal Keeshan Back to Redridge |q 219/1 |goto Redridge Mountains/0 33.41,48.51 |notravel
|only if not hardcore
step
talk Marshal Marris##382
turnin Missing In Action##219 |goto Redridge Mountains/0 33.51,48.97
|only if not hardcore
step
talk Verner Osgood##415
turnin Howling in the Hills##126 |goto Redridge Mountains/0 30.97,47.27
|only if not hardcore
step
Enter the building |goto Redridge Mountains/0 29.49,46.13 < 10 |walk
talk Bailiff Conacher##900
|tip Inside the building.
turnin Solomon's Law##91 |goto Redridge Mountains/0 29.71,44.27
step
talk Magistrate Solomon##344
|tip Inside the building.
turnin Wanted: Lieutenant Fangore##180 |goto Redridge Mountains/0 29.99,44.46
|only if not hardcore
step
Leave the building |goto Redridge Mountains/0 29.50,46.12 < 10 |walk |only if subzone("Lakeshire Town Hall")
talk Guard Howe##903
turnin Blackrock Bounty##128 |goto Redridge Mountains/0 31.54,57.86
|only if not hardcore
step
talk Guard Berton##859
accept What Comes Around...##386 |goto Redridge Mountains 26.26,46.57
|only if guideflag("Stockflag")
step
Prepare for The Stockades
|tip It will be a good time to start The Stockades soon.
|tip You should run it after turning in quests and training in Stormwind.
|tip Start looking for a group.
|confirm
|only if guideflag("Stockflag")
step
Enter the building |goto Stormwind City 55.29,68.13 < 10 |walk
talk Olivia Burnside##2455
|tip Inside the building.
|tip Put these items in the bank.
bank A Torn Journal Page##916 |goto Stormwind City 57.55,72.43 |q 74 |future |only if haveq(74) or completedq(74)
bank Bottle of Zombie Juice##1451 |goto Stormwind City 57.55,72.43 |q 159 |future |only if haveq(159) or completedq(159)
step
Enter the building |goto Stormwind City 50.95,57.84 < 7 |walk
talk Frederick Stover##1298
buy Sturdy Recurve##11306 |n
|tip If you can afford it.
|tip It may not be available to buy, since it's a limited supply item.
|tip If you have better, skip this step.
Visit the Vendor |vendor Frederick Stover##1298 |goto Stormwind City 49.98,57.64 |q 1078 |future
|only if Hunter and (itemcount(11306) == 0)
step
talk Collin Mauren##4078
accept Retrieval for Mauren##1078 |goto Stormwind City 43.09,80.39
step
Enter the building |goto Stormwind City 29.19,74.12 < 10 |walk
talk Zardeth of the Black Claw##1435
|tip Downstairs inside the building.
turnin A Noble Brew##335 |goto Stormwind City 26.45,78.65
|only if readyq(335)
step
talk Zardeth of the Black Claw##1435
|tip Downstairs inside the building.
accept A Noble Brew##336 |goto Stormwind City 26.45,78.65
|only if completedq(335)
step
Enter the building |goto Stormwind City 43.05,34.48 < 10 |walk
talk Brother Sarno##7917
|tip Inside the building.
accept Tinkmaster Overspark##2923 |goto Stormwind City 40.56,30.91
|only if Hunter or Mage
step
talk Thomas##4982
|tip He runs around inside the cathedral.
accept The Missing Diplomat##1274 |goto Stormwind City 41.26,30.60
|only if level <= 28
step
talk Duthorian Rall##6171
|tip Inside the building.
turnin The Tome of Valor##1652 |goto Stormwind City 39.81,29.80
|only if Paladin
step
talk Bishop Farthing##1212
|tip Inside the building.
turnin Seeking Wisdom##269 |goto Stormwind City 39.13,27.90
accept The Doomed Fleet##270 |goto Stormwind City 39.13,27.90
step
Enter the building |goto Stormwind City 47.89,31.17 < 5 |walk
talk Baros Alexston##1646
turnin The Unsent Letter##373 |goto Stormwind City 49.20,30.28 |only if haveq(373)
accept Bazil Thredd##389 |goto Stormwind City 49.20,30.28
|tip This quest will only be available if you did The Deadmines
|only if guideflag("Stockflag")
step
use An Old History Book##2794
accept An Old History Book##337	|goto Stormwind City 69.09,28.70
|only if itemcount(337) > 0 |goto Stormwind City 69.09,28.70
step
Enter the building |goto Stormwind City 69.09,28.70 < 15 |walk
Follow the path |goto Stormwind City 72.71,25.85 < 10 |walk
talk Lord Baurles K. Wishock##1439
|tip Inside the building.
turnin A Noble Brew##336 |goto Stormwind City 75.23,31.67
|only if haveq(336)
step
Leave the building |goto Stormwind City 43.05,34.48 < 10 |walk |only if subzone("Cathedral of Light")
Enter the building |goto Stormwind City 69.07,28.77 < 15 |walk
Follow the path |goto Stormwind City 77.88,21.14 < 10 |walk
talk Bishop DeLavey##4960
|tip Inside the building.
turnin The Missing Diplomat##1274 |goto Stormwind City 78.30,25.44
accept The Missing Diplomat##1241 |goto Stormwind City 78.30,25.44
step
Leave the Petitioner's Chamber |goto Stormwind City 72.80,26.02 < 10 |walk |only if subzone("Petitioner's Chamber")
Follow the path |goto Stormwind City 72.72,22.92 < 10 |walk
Continue following the path |goto Stormwind City 70.17,11.34 < 10 |walk
talk Milton Sheaf##1440
|tip Inside the building.
turnin An Old History Book##337 |goto Stormwind City 74.17,7.49
accept Southshore##538 |goto Stormwind City 74.17,7.49
|only if haveq(337)
step
Follow the path |goto Stormwind City 77.01,19.25 < 15 |walk |only if subzone("Stormwind Keep")
Leave the building |goto Stormwind City 69.07,28.77 < 10 |walk |only if subzone("Stormwind Keep")
Follow the path |goto Stormwind City 60.27,68.37 < 30 |only if walking
talk Jorgen##4959
turnin The Missing Diplomat##1241 |goto Stormwind City 73.17,78.42
accept The Missing Diplomat##1242 |goto Stormwind City 73.17,78.42
step
talk Jennea Cannon##5497 |only if Mage
talk Einris Brightspear##5515 |only if Hunter
talk Ursula Deline##5495 |only if Warlock
talk Wu Shen##5479 |only if Warrior
talk Osborne the Night Man##918 |only if Rogue
talk Sheldras Moontree##5504 |only if Druid
talk Brother Benjamin##5484 |only if Priest
talk Arthur the Faithful##5491 |only if Paladin
trainer Jennea Cannon##5497 |goto Stormwind City/0 38.62,79.35 |only if Mage |q 1242
trainer Einris Brightspear##5515  |goto Stormwind City/0 61.66,15.30 |only if Hunter |q 1242
trainer Ursula Deline##5495 |goto Stormwind City/0 26.13,77.20 |only if Warlock |q 1242
trainer Wu Shen##5479 |goto Stormwind City/0 78.72,45.77 |only if Warrior |q 1242
trainer Osborne the Night Man##918 |goto Stormwind City/0 74.54,52.80 |only if Rogue |q 1242
trainer Sheldras Moontree##5504 |goto Stormwind City/0 20.92,55.52 |only if Druid |q 1242
trainer Brother Benjamin##5484 |goto Stormwind City/0 41.64,28.98 |only if Priest |q 1242
trainer Arthur the Faithful##5491 |goto Stormwind City/0 38.65,32.80 |only if Paladin |q 1242
|tip Inside the tower. |only if Mage
|tip Inside the building. |only if Hunter or Warrior or Priest or Paladin
|tip He patrols inside. |only if Priest
|tip In the basement. |only if Warlock
|tip Train your spells.
step
talk Nikova Raskol##1721
|tip She walks around this area.
accept The Color of Blood##388 |goto Stormwind City 73.63,46.59
|only if guideflag("Stockflag")
step
Enter the building |goto Stormwind City 42.20,58.77 < 5 |walk
talk Warden Thelwater##1719
|tip Inside the building.
turnin Bazil Thredd##389 |goto Stormwind City 41.10,58.09
accept The Stockade Riots##391 |goto Stormwind City 41.10,58.09
accept Quell The Uprising##387 |goto Stormwind City 41.10,58.09
|only if guideflag("Stockflag")
step
Enter The Stockade Dungeon with Your Group |goto The Stockade/0 0.00,0.00 < 500 |c |q 378
|only if guideflag("Stockflag")
stickystart "Kill_10_Defias_Prisoners"
stickystart "Kill_8_Defias_Convicts"
stickystart "Kill_8_Defias_Insurgents"
stickystart "Collect_10_Red_Wool_Bandanas"
step
_Inside The Stockade Dungeon:_
kill Targorr the Dread##1696
|tip He is the first boss of the dungeon.
|tip He should be in one of the side rooms at the start of the dungeon or the single room straight to the north.
collect Head of Targorr##3630 |q 386/1
|only if guideflag("Stockflag")
step
_Inside The Stockade Dungeon:_
kill Bazil Thredd##1716
|tip He is the fourth boss of the dungeon.
|tip Follow the east path all the way to the end.
collect Head of Bazil Thredd##2926 |q 391/1
|only if guideflag("Stockflag")
step
_Inside The Stockade Dungeon:_
kill Dextren Ward##1663
|tip He is the fifth boss of the dungeon.
|tip Follow the west path all the way to the end.
collect Hand of Dextren Ward##3628 |q 377/1
|only if guideflag("Stockflag")
step
label "Kill_10_Defias_Prisoners"
_Inside The Stockade Dungeon:_ |notinsticky
kill 10 Defias Prisoner##1706 |q 387/1
|only if guideflag("Stockflag")
step
label "Kill_8_Defias_Convicts"
_Inside The Stockade Dungeon:_ |notinsticky
kill 8 Defias Convict##1711 |q 387/2
|only if guideflag("Stockflag")
step
label "Kill_8_Defias_Insurgents"
_Inside The Stockade Dungeon:_ |notinsticky
kill 8 Defias Insurgent##1715 |q 387/3
|only if guideflag("Stockflag")
step
label "Collect_10_Red_Wool_Bandanas"
_Inside The Stockade Dungeon:_ |notinsticky
Kill Defias enemies around this area
collect 10 Red Wool Bandana##2909 |q 388/1
|only if guideflag("Stockflag")
step
talk Warden Thelwater##1719
|tip Inside the building.
turnin The Stockade Riots##391 |goto Stormwind City 41.10,58.09
turnin Quell The Uprising##387 |goto Stormwind City 41.10,58.09
accept The Curious Visitor##392 |goto Stormwind City 41.10,58.09
|only if guideflag("Stockflag")
step
_Note_
|tip The Seal of Wrynn questline is too difficult to solo at this level.
|tip However, most groups stick around to do it together after running Stockades.
|tip Ask if your group wants to do the chain together and follow them if so.
|tip Otherwise abandon "The Curious Visitor" for now and we'll do it around level 31.
Click Here To Continue |confirm
|only if guideflag("Stockflag")
step
Leave the building |goto Stormwind City 42.25,58.86 < 5 |walk
talk Nikova Raskol##1721
|tip She walks around this area.
turnin The Color of Blood##388 |goto Stormwind City 73.39,50.69
|only if guideflag("Stockflag")
step
Leave the building |goto Stormwind City 43.05,34.48 < 10 |walk |only if subzone("Cathedral of Light")
talk Tinkmaster Overspark##7944
turnin Tinkmaster Overspark##2923 |goto Ironforge 69.54,50.32
|only if Hunter or Mage
step
Run up the stairs and enter the building |goto Ironforge 61.33,88.20 < 7 |walk
talk Buliwyf Stonehand##11865
|tip Inside the building.
|tip This will allow you to equip two-handed axes.
Train Two-Handed Axes |complete weaponskill("TH_AXE") > 0 |goto Ironforge 61.17,89.52
|only if Hunter
step
talk Bixi Wobblebonk##13084
|tip Inside the building.
|tip This will allow you to equip crossbows.
Train Crossbows |complete weaponskill("CROSSBOW") > 0 |goto Ironforge 62.23,89.62
|only if Hunter
step
Enter the building |goto Ironforge 30.43,26.37 < 7 |walk
talk Ginny Longberry##5151
|tip Inside the building.
|tip If you can afford it.
|tip Stock up on a couple of Runes of Teleportation to use to travel faster while leveling.
Visit the Vendor |vendor Ginny Longberry##5151 |goto Ironforge 31.32,27.79 |q 289 |future
|only if Mage
step
Enter the building |goto Ironforge 53.24,7.33 < 7 |walk
talk Jubahl Corpseseeker##6382
|tip Inside the building.
|tip If you can afford them.
|tip Buy all of the Grimoires for spells that are upgrades for the spells you use with your pet.
|tip After buying them, make sure to use them in your bags to learn the spells.
Visit the Vendor |vendor Jubahl Corpseseeker##6382 |goto Ironforge 52.70,6.08 |q 289 |future
|only if Warlock
step
talk Jasper Fel##1325
|tip Inside the building.
|tip Stock up on poisons if needed.
|tip Skip this step if you don' tneed to.
|tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Jasper Fel##1325 |goto Stormwind City/0 78.32,58.97
|only if Rogue
step
_NOTE:_
Save Cloth in Your Bank as You Level
|tip Once you are close to reaching level 60, you will need 240 of each type of cloth.
|tip As you level and collect Silk Cloth naturally from killing enemies while following the guide, make sure you deposit the cloth into a bank whenever you are near one.
|tip This will give you about 40,000 quick and easy xp to help you get to level 60 faster in the longer later levels.
Click Here to Continue |confirm
|only if level < 60
step
talk First Mate Fitzsimmons##1239
accept The Cursed Crew##289 |goto Wetlands 10.89,59.67
|tip This requires you to complete "The Third Fleet" quest found the "Wetlands (24-25)" guide.
step
Enter the building |goto Wetlands 10.79,59.76 < 10 |walk
talk Glorin Steelbrow##1217
|tip Inside the building.
turnin The Doomed Fleet##270 |goto Wetlands 10.59,60.59
step
talk Innkeeper Helbrek##1464
|tip He walks around inside the building.
home Deepwater Tavern |goto Wetlands 10.70,60.96
step
talk Archaeologist Flagongut##2911
|tip Upstairs inside the building.
accept The Absent Minded Prospector##943 |goto Wetlands 10.84,60.43
|tip You won't be able to accept this quest if you skipped any of the previous quests in the chain. |only if hardcore
step
Leave the building |goto Wetlands 10.79,59.76 < 10 |walk |only if subzone("Deepwater Tavern")
talk Harlo Barnaby##2097
accept Fall of Dun Modr##472 |goto Wetlands 10.85,55.90
step
Enter the building |goto Wetlands 10.30,56.30 < 15 |walk
Run up the stairs |goto Wetlands 9.80,57.77 < 7 |walk
talk Captain Stoutfist##2104
|tip Upstairs inside the building, in the large room.
accept War Banners##464 |goto Wetlands 9.86,57.49
step
Leave the building |goto Wetlands 10.29,56.31 < 15 |walk |only if subzone("Menethil Keep")
talk Tarrel Rockweaver##2096
|tip He walks around this area.
accept In Search of The Excavation Team##305 |goto Wetlands 11.50,52.14
step
click Damaged Crate##261
|tip Watch for murloc patrols in the area. |only if hardcore
|tip Enemies near the buildings tend to pull in groups so be careful. |only if hardcore
turnin Reclaiming Goods##281 |goto Wetlands 13.51,41.38
accept The Search Continues##284 |goto Wetlands 13.51,41.38
step
click Sealed Barrel##142151
|tip Watch for murloc patrols in the area. |only if hardcore
|tip Enemies near the buildings tend to pull in groups so be careful. |only if hardcore
turnin The Search Continues##284 |goto Wetlands 13.61,38.21
accept Search More Hovels##285 |goto Wetlands 13.61,38.21
step
click Half-buried Barrel##259
|tip Watch for murloc patrols in the area. |only if hardcore
|tip Enemies near the buildings tend to pull in groups so be careful. |only if hardcore
turnin Search More Hovels##285 |goto Wetlands 13.95,34.81
accept Return the Statuette##286 |goto Wetlands 13.95,34.81
stickystart "Kill_Cursed_Marines"
stickystart "Kill_Cursed_Sailors"
step
Enter the hole in the side of the ship |goto Wetlands 14.05,30.54 < 10 |walk
kill First Mate Snellig##1159
|tip Underwater, inside the sunken ship.
|tip This area is dangerous due to occasionally fast respawn rates and large aggro radius. |only if hardcore
|tip Try to pull mobs from nearby to avoid having to deal with multiple at once. |only if hardcore
|tip He's level 29, but you should be able to kill him at this level.
|tip If you have trouble, try to get someone to help you.
collect Snellig's Snuffbox##3619 |q 289/3 |goto Wetlands 14.08,30.01
step
label "Kill_Cursed_Marines"
kill 5 Cursed Marine##1158 |q 289/2 |goto Wetlands 14.22,28.53
|tip Enemies around this area are in close quarters, so plan for adds when fighting. |only if hardcore |notinsticky
You can find more around [14.82,24.62]
step
label "Kill_Cursed_Sailors"
kill 13 Cursed Sailor##1157 |q 289/1 |goto Wetlands 14.22,28.53
|tip Enemies around this area are in close quarters, so plan for adds when fighting. |only if hardcore |notinsticky
You can find more around [14.82,24.62]
step
kill Giant Wetlands Crocolisk##2089+
collect 6 Giant Crocolisk Skin##3348 |q 471/1 |goto Wetlands 16.57,28.25
You can find more around: |notinsticky
[20.92,21.92]
[27.08,21.65]
step
Kill Mosshide enemies around this area
|tip Enemies tend to pull in groups when around encampment like areas. |only if hardcore
|tip Watch for respawns while here. |only if hardcore
collect 9 Crude Flint##2611 |q 277/1 |goto Wetlands 31.41,31.20
You can find more around: |notinsticky
[36.76,28.88]
[45.65,33.83]
step
Enter Whelgar's Excavation Site |goto Wetlands 34.19,41.09 < 20 |only if walking
Follow the path up |goto Wetlands 37.11,42.98 < 20 |only if walking
talk Ormer Ironbraid##1078
|tip He walks around this area.
accept Ormer's Revenge##294 |goto Wetlands 38.18,50.89
step
Enter the cave |goto Wetlands 38.32,51.59 < 15 |walk
talk Merrin Rockweaver##1076
|tip Inside the cave.
turnin In Search of The Excavation Team##305 |goto Wetlands 38.91,52.34
accept In Search of The Excavation Team##306 |goto Wetlands 38.91,52.34
step
click Flagongut's Fossil##9630
|tip Inside the cave.
collect Flagongut's Fossil##5234 |q 943/2 |goto Wetlands 38.86,52.21
stickystart "Kill_Mottled_Screechers"
stickystart "Collect_Stone_Of_Relu"
step
Follow the path down |goto Wetlands 37.10,47.90 < 20 |only if walking and subzone("Whelgar's Excavation Site")
Leave Whelgar's Excavation Site |goto Wetlands 34.02,40.85 < 20 |only if walking and subzone("Whelgar's Excavation Site")
kill 10 Mottled Raptor##1020 |q 294/1 |goto Wetlands 29.12,44.15
|tip Watch for respawns while in the area. |only if hardcore |notinsticky
You can find more around: |notinsticky
[25.11,47.95]
[22.90,53.35]
step
label "Kill_Mottled_Screechers"
kill 10 Mottled Screecher##1021 |q 294/2 |goto Wetlands 29.12,44.15
|tip These enemies call for help with their health is low. |only if hardcore |notinsticky
|tip Pull them back away from other raptors when possible. |only if hardcore |notinsticky
|tip Watch for respawns while in the area. |only if hardcore |notinsticky
You can find more around: |notinsticky
[25.11,47.95]
[22.90,53.35]
step
Enter Whelgar's Excavation Site |goto Wetlands 34.19,41.09 < 20 |only if walking
Follow the path up |goto Wetlands 37.11,42.98 < 20 |only if walking
talk Ormer Ironbraid##1078
|tip He walks around this area.
turnin Ormer's Revenge##294 |goto Wetlands 38.18,50.89
accept Ormer's Revenge##295 |goto Wetlands 38.18,50.89
stickystop "Collect_Stone_Of_Relu"
step
Enter the cave |goto Wetlands 38.32,51.59 < 15 |walk
talk Prospector Whelgar##1077
|tip Inside the cave.
accept Uncovering the Past##299 |goto Wetlands 38.81,52.39
stickystart "Collect_Golm_Fragment"
stickystart "Collect_Modr_Fragment"
stickystart "Collect_Ados_Fragment"
stickystart "Kill_Mottled_Scytheclaws"
stickystart "Kill_Mottled_Razormaws"
stickystart "Collect_Stone_Of_Relu"
step
click Loose Soil##331
|tip It looks like a large pile of dark brown dirt on the ground.
|tip It randomly spawns in multiple locations around this area.
|tip It can also spawn up on the cliff next to the higher level Sarltooth raptor.
|tip If it does, try to get someone to help you, if you can't solo him.
collect Neru Fragment##2661 |q 299/4 |goto Wetlands 36.51,42.11
Also check: |notinsticky
Around [34.73,45.31]
Around [32.82,48.77]
Around [35.30,49.72]
Up the path at [31.90,50.17]
step
label "Collect_Golm_Fragment"
click Ancient Relic##333
|tip It looks like a large wide yellow vase sitting upright on the ground.
|tip It randomly spawns in multiple locations around this area. |notinsticky
|tip It can also spawn up on the cliff next to the higher level Sarltooth raptor. |notinsticky
|tip If it does, try to get someone to help you, if you can't solo him. |notinsticky
collect Golm Fragment##2660 |q 299/3 |goto Wetlands 36.51,42.11
Also check: |notinsticky
Around [34.73,45.31]
Around [32.82,48.77]
Around [35.30,49.72]
Up the path at [31.90,50.17]
step
label "Collect_Modr_Fragment"
click Ancient Relic##333
|tip It looks like a large tall red vase sitting upright on the ground.
|tip It randomly spawns in multiple locations around this area. |notinsticky
|tip It can also spawn up on the cliff next to the higher level Sarltooth raptor. |notinsticky
|tip If it does, try to get someone to help you, if you can't solo him. |notinsticky
collect Modr Fragment##2659 |q 299/2 |goto Wetlands 36.51,42.11
Also check: |notinsticky
Around [34.73,45.31]
Around [32.82,48.77]
Around [35.30,49.72]
Up the path at [31.90,50.17]
step
label "Collect_Ados_Fragment"
click Ancient Relic##333
|tip It looks like a large stone box container on the ground.
|tip It randomly spawns in multiple locations around this area. |notinsticky
|tip It can also spawn up on the cliff next to the higher level Sarltooth raptor. |notinsticky
|tip If it does, try to get someone to help you, if you can't solo him. |notinsticky
collect Ados Fragment##2658 |q 299/1 |goto Wetlands 36.51,42.11
Also check: |notinsticky
Around [34.73,45.31]
Around [32.82,48.77]
Around [35.30,49.72]
Up the path at [31.90,50.17]
step
label "Kill_Mottled_Scytheclaws"
kill 10 Mottled Scytheclaw##1022 |q 295/1 |goto Wetlands 34.73,45.31
|tip Watch for respawns while in the area. |only if hardcore |notinsticky
[32.82,48.77]
[35.30,49.72]
step
label "Kill_Mottled_Razormaws"
kill 10 Mottled Razormaw##1023 |q 295/2 |goto Wetlands 34.73,45.31
|tip Watch for respawns while in the area. |only if hardcore |notinsticky
[32.82,48.77]
[35.30,49.72]
step
Follow the path up |goto Wetlands 37.11,42.98 < 20 |only if walking
talk Ormer Ironbraid##1078
|tip He walks around this area.
turnin Ormer's Revenge##295 |goto Wetlands 38.18,50.89
accept Ormer's Revenge##296 |goto Wetlands 38.18,50.89
step
Enter the cave |goto Wetlands 38.32,51.59 < 15 |walk
talk Prospector Whelgar##1077
|tip Inside the cave.
turnin Uncovering the Past##299 |goto Wetlands 38.81,52.39
step
Follow the path down |goto Wetlands 37.10,47.90 < 20 |only if walking
Follow the path up |goto Wetlands 31.89,48.63 < 10 |only if walking
Continue up the path |goto Wetlands 31.90,50.17 < 15 |only if walking
kill Sarltooth##1353
|tip Up on the cliff.
|tip He looks like a level 29 blue raptor.
|tip He sometimes walks around in the valley below, with the other raptors, so if he's not here, check around.
collect Sarltooth's Talon##3638 |q 296/1 |goto Wetlands 33.26,51.52
step
Follow the path up |goto Wetlands 37.11,42.98 < 20 |only if walking
talk Ormer Ironbraid##1078
|tip He walks around this area.
turnin Ormer's Revenge##296 |goto Wetlands 38.18,50.89
|tip The Excavation Rod is a decent wand.	|only if Priest
step
label "Collect_Stone_Of_Relu"
Kill Mottled enemies around this area
|tip They look like raptors. |notinsticky
|tip Watch for respawns while in the area. |only if hardcore |notinsticky
collect Stone of Relu##5233 |q 943/1 |goto Wetlands 34.73,45.31
[32.82,48.77]
[35.30,49.72]
step
Leave Whelgar's Excavation Site |goto Wetlands 34.02,40.85 < 20 |only if walking and subzone("Whelgar's Excavation Site")
Kill Dragonmaw enemies around this area
collect 8 Dragonmaw War Banner##3337 |q 464/1 |goto Wetlands 42.95,41.12
You can find more around [45.71,44.48]
step
talk Rethiel the Greenwarden##1244
turnin Fire Taboo##277 |goto Wetlands 56.37,40.40
accept Blisters on The Land##275 |goto Wetlands 56.37,40.40
step
kill 12 Fen Creeper##1040 |q 275/1 |goto Wetlands 55.06,37.24 |count 6 |noordinal
|tip They are stealthed, usually near or in the water around this area.
|tip You will kill more of these later.
You can find more around: |notinsticky
[53.31,36.23]
[47.69,32.72]
[46.82,34.61]
[47.43,35.97]
[48.92,37.46]
[53.96,41.25]
[54.98,46.16]
step
click Musquash Root
collect Musquash Root##2784 |q 335/2 |goto Wetlands 64.76,75.29
step
talk Glorin Steelbrow##1217
|tip Inside the building.
accept Lightforge Iron##321 |goto Wetlands 10.59,60.59
|tip You may not be able to accept this quest if you skipped an earlier quest in the chain. |only if hardcore
step
talk Archaeologist Flagongut##2911
|tip Upstairs inside the building.
turnin The Absent Minded Prospector##943 |goto Wetlands 10.84,60.43
step
Leave the building |goto Wetlands 10.79,59.77 < 10 |walk |only if subzone("Deepwater Tavern")
talk First Mate Fitzsimmons##1239
turnin The Cursed Crew##289 |goto Wetlands 10.89,59.67
accept Lifting the Curse##290 |goto Wetlands 10.89,59.67
step
talk Karl Boran##1242
|tip He walks around this area.
turnin Return the Statuette##286 |goto Wetlands 8.31,58.54
step
talk James Halloran##2094
|tip He walks around this area.
turnin Apprentice's Duties##471 |goto Wetlands 8.51,55.71
step
Enter the building |goto Wetlands 10.30,56.30 < 15 |walk
Run up the stairs |goto Wetlands 9.80,57.77 < 7 |walk
talk Captain Stoutfist##2104
|tip Upstairs inside the building, in the large room.
turnin War Banners##464 |goto Wetlands 9.86,57.49
accept Nek'rosh's Gambit##465 |goto Wetlands 9.86,57.49 |only if not hardcore
step
Leave the building |goto Wetlands 10.30,56.30 < 15 |walk |only if subzone("Menethil Keep")
click Waterlogged Chest
turnin Lightforge Iron##321 |goto Wetlands 12.10,64.17
accept The Lost Ingots##324 |goto Wetlands 12.10,64.17
|tip You may not be able to accept this quest if you skipped an earlier quest in the chain. |only if hardcore
step
kill Bluegill Raider##1418+
|tip Underwater and on the land around this area.
collect 5 Lightforge Ingot##2702 |q 324/1 |goto Wetlands 11.19,64.73
You can find more around [9.28,70.11]
step
Enter the building |goto Wetlands 10.79,59.76 < 10 |walk
talk Glorin Steelbrow##1217
|tip Inside the building.
turnin The Lost Ingots##324 |goto Wetlands 10.59,60.59
accept Blessed Arm##322 |goto Wetlands 10.59,60.59
|tip You may not be able to accept this quest if you skipped an earlier quest in the chain. |only if hardcore
step
_Note_
This questing area is one of the slower ones.
|tip There are not many better quests right now that are safe to do.
|tip This is one of the few times dungeons are faster than questing.
|tip It is acceptable to do dungeons until level 30.50 and skip this guide, there are no important chains missed.
|tip If you skip ahead, your next guide is Wetlands (30-31)
Click Here to Continue |confirm
step
talk Keeper Albagorm##3994
accept Reclaiming the Charred Vale##1057 |goto Stonetalon Mountains 37.10,8.10
stickystart "Kill_Bloodfury_Ambushers"
stickystart "Kill_Bloodfury_Slayers"
stickystart "Kill_Bloodfury_Roguefeathers"
stickystart "Collect_Crystalized_Scales"
step
Leave Stonetalon Peak |goto Stonetalon Mountains 41.61,15.98 < 30 |only if walking and subzone("Stonetalon Peak")
Follow the path into the Charred Vale |goto Stonetalon Mountains 42.57,42.44 < 30 |only if walking and not subzone("The Charred Vale")
kill 7 Bloodfury Harpy##4022 |q 1057/1 |goto Stonetalon Mountains 34.51,62.27
You can find more around: |notinsticky
[32.26,60.12]
[32.44,65.30]
step
label "Kill_Bloodfury_Ambushers"
kill 7 Bloodfury Ambusher##4025 |q 1057/2 |goto Stonetalon Mountains 30.24,62.84
|tip These share spawns with other harpies in the area.
|tip Watch for patrols and respawns in the area.	|only if hardcore |notinsticky
|tip Patrols move quickly here, so pay attention.	|only if hardcore |notinsticky
You can find more around: |notinsticky
[34.51,62.27]
[32.44,65.30]
step
label "Kill_Bloodfury_Slayers"
kill 7 Bloodfury Slayer##4024 |q 1057/3 |goto Stonetalon Mountains 35.96,68.52
|tip These share spawns with other harpies in the area.
|tip Watch for patrols and respawns in the area.	|only if hardcore |notinsticky
|tip Patrols move quickly here, so pay attention.	|only if hardcore |notinsticky
|tip Be careful of Sister Riven, she is an elite in this area |only if hardcore
You can find more around [28.83,69.50]
step
label "Kill_Bloodfury_Roguefeathers"
kill 7 Bloodfury Roguefeather##4023 |q 1057/4 |goto Stonetalon Mountains 35.96,68.52
|tip These share spawns with other harpies in the area.
|tip Watch for patrols and respawns in the area.	|only if hardcore |notinsticky
|tip Patrols move quickly here, so pay attention.	|only if hardcore |notinsticky
You can find more around [28.83,69.50]
step
label "Collect_Crystalized_Scales"
Kill Basilisk enemies around this area
'|kill Blackened Basilisk##4044, Scorched Basilisk##4041, Singed Basilisk##4042
|tip They look like lizard beasts with six legs.
|tip This area is the most common place for them to spawn consistently. |notinsticky
|tip Run up and down this path that leads into the Charred Vale, and grind on the other enemies that appear as well. |notinsticky
|tip You can also find a few in the Charred Vale valley, but they're more rare. |notinsticky
collect 8 Crystalized Scales##5675 |q 1078/1 |goto Stonetalon Mountains 37.02,50.10
step
Follow the path up |goto Stonetalon Mountains 30.22,75.85 < 20 |only if walking and not zone("Desolace")
Follow the road to this path and run up the path to enter Nijel's Point |goto Desolace 67.49,15.76 < 20 |only if walking and not subzone("Nijel's Point")
talk Baritanas Skyriver##6706
fpath Nijel's Point |goto Desolace 64.66,10.54
step
talk Keeper Albagorm##3994
turnin Reclaiming the Charred Vale##1057 |goto Stonetalon Mountains 37.10,8.10
accept Reclaiming the Charred Vale##1059 |goto Stonetalon Mountains 37.10,8.10
step
talk Shindrell Swiftfire##3845
accept Kayneth Stillwind##4581 |goto Ashenvale 34.67,48.84
step
talk Fahran Silentblade##3969
|tip Inside the building.
|tip Stock up on poisons.
|tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Fahran Silentblade##3969 |goto Ashenvale 36.49,49.46 |q 1024 |future
|only if Rogue
step
talk Raene Wolfrunner##3691
|tip Inside the building.
accept Raene's Cleansing##1024 |goto Ashenvale 36.62,49.58
|tip This quest is grey, but the many followups will be yellow/green, and give a lot of xp.
step
talk Sentinel Melyria Frostshadow##3880
accept The Howling Vale##1022 |goto Ashenvale 22.23,52.98
step
talk Illiyana##3901
accept Vile Satyr! Dryads in Danger!##1021 |goto Ashenvale 21.73,53.35
step
Enter the building |goto Ashenvale 37.19,51.86 < 10 |walk
talk Pelturas Whitemoon##3894
|tip Inside the building.
accept Fallen Sky Lake##1035 |goto Ashenvale 37.37,51.79
|tip This requires a questline that is completed in the Ashenvale (22-23) guide.
step
Follow the road to this path |goto Ashenvale 50.22,56.23 < 40 |only if walking
Continue following the path |goto Ashenvale 51.80,45.73 < 30 |only if walking
talk Shael'dryn##3916
|tip She walks around this area.
turnin Raene's Cleansing##1024 |goto Ashenvale 53.54,46.29
accept Raene's Cleansing##1026 |goto Ashenvale 53.54,46.29
step
Follow the path around the mountain |goto Ashenvale 50.61,46.04 < 50 |only if walking and not subzone("Nightsong Woods")
Follow the path through the forest |goto Ashenvale 53.06,54.53 < 40 |only if walking and not subzone("Nightsong Woods")
Continue following the path through the forest |goto Ashenvale 58.01,56.00 < 40 |only if walking and not subzone("Nightsong Woods")
Kill Ancient enemies around this area
|tip They look like walking trees.
collect Wooden Key##5475 |goto Ashenvale 61.60,43.79 |q 1026
You can find more around: |notinsticky
[58.22,41.41]
[60.11,38.71]
[57.67,32.39]
[54.97,34.00]
step
Follow the path up |goto Ashenvale 54.56,34.55 < 20 |only if walking
click Worn Chest##19022
collect Iron Shaft##5464 |q 1026/1 |goto Ashenvale 54.41,35.39
step
Follow the path up |goto Ashenvale 54.17,32.34 < 20 |only if walking and not subzone("The Howling Vale")
Run through the tunnel to enter the Howling Vale |goto Ashenvale 52.92,37.64 < 15 |only if walking and not subzone("The Howling Vale")
|tip Watch for patrols and respawns while in the area. |only if hardcore
click Tome of Mel'Thandris##19027
View the Tome of Mel'Thandris |q 1022/1 |goto Ashenvale 50.49,39.13
step
Run through the tunnel to leave the Howling Vale |goto Ashenvale 51.33,38.20 < 15 |only if walking and subzone("The Howling Vale")
Follow the path up |goto Ashenvale 63.56,43.87 < 30 |only if walking and not subzone("Xavian")
Follow the path through the forest |goto Ashenvale 67.32,49.70 < 40 |only if walking and not subzone("Xavian")
talk Anilia##3920
turnin Vile Satyr! Dryads in Danger!##1021 |goto Ashenvale 78.32,44.82
accept The Branch of Cenarius##1031 |goto Ashenvale 78.32,44.82
step
kill Geltharis##4619
|tip He is level 32, so be careful.  If you don't feel comfortable, or don't have someone to help you, skip the quest and grind more later to make up for it. |only if hardcore
|tip If you skip it, abandon the quest "The Brand of Cenarius".
|tip Xavian Hellcallers are ranged attackers that deal heavy damage and may aggro from quite a range. |only if hardcore
|tip Enemies tend to be close together in this area. |only if hardcore
collect Branch of Cenarius##5461 |q 1031/1 |goto Ashenvale 78.00,42.42
step
talk Kayneth Stillwind##3848
turnin Kayneth Stillwind##4581 |goto Ashenvale 85.24,44.71
accept Forsaken Diseases##1011 |goto Ashenvale 85.24,44.71
step
talk Sentinel Melyria Frostshadow##3880
turnin The Howling Vale##1022 |goto Ashenvale 22.23,52.98
accept Velinde Starsong##1037 |goto Ashenvale 22.23,52.98
step
talk Illiyana##3901
turnin The Branch of Cenarius##1031 |goto Ashenvale 21.73,53.35
accept Satyr Slaying!##1032 |goto Ashenvale 21.73,53.35
step
Follow the road to this path |goto Ashenvale 50.22,56.23 < 40 |only if walking
Continue following the path |goto Ashenvale 51.80,45.73 < 30 |only if walking
talk Shael'dryn##3916
|tip She walks around this area.
turnin Raene's Cleansing##1026 |goto Ashenvale 53.54,46.29
accept Raene's Cleansing##1027 |goto Ashenvale 53.54,46.29
step
Follow the path back to the road |goto Ashenvale 50.61,46.04 < 50 |only if walking and not subzone("Nightsong Woods")
kill Shadethicket Oracle##3931
collect Fallen Moonstone##5508 |q 1035/1 |goto Ashenvale 66.68,82.19
step
kill Rotting Slime##3928+
click Rusty Chest+
|tip They sometimes appear on the ground after you kill the Rotting Slimes.
collect Iron Pommel##5519 |q 1027/1 |goto Ashenvale 70.95,74.87
You can find more around: |notinsticky
[74.24,76.26]
[73.50,73.46]
[74.39,69.78]
step
click Bottle of Disease
|tip This camp is surrounded by stealthed enemies.
|tip Kill them before running into the camp.
|tip There are stealthed alliance guards in the area as well.
|tip If you find one, you can drag enemies to them and they will help you fight.
collect Bottle of Disease##5440 |q 1011/1 |goto Ashenvale 75.29,72.22
step
Follow the road back to Forest Song |goto Ashenvale 73.90,66.81 < 40 |only if walking and subzone("The Dor'Danil Barrow Den")
talk Kayneth Stillwind##3848
turnin Forsaken Diseases##1011 |goto Ashenvale 85.24,44.71
step
talk Jarrodenus##12577
|tip This step is necessary to access some flight paths to Ratchet.
|tip Stick to the road, and don't worry about the patrolling orc outrider. They do not aggro.
fpath Talrendis Point |goto Azshara 11.90,77.59
stickystart "Collect_Satyr_Horns"
step
click Circle of Imprisonment##19901
|tip Watch for patrols and respawns while in the area. |only if hardcore
|tip Enemies tend to pull together in this area, so be careful. |only if hardcore
Free the Highborne Soul in Satyrnaar |q 1140/2 |goto Ashenvale 81.60,48.58
step
Follow the path up out of Satyrnaar |goto Ashenvale 80.02,48.17 < 20 |only if walking and not subzone("Night Run")
Cross the river |goto Ashenvale 77.52,46.23 < 40 |only if walking and not subzone("Night Run")
Follow the path |goto Ashenvale 68.75,52.75 < 50 |only if walking
click Circle of Imprisonment##19901
|tip Watch for patrols and respawns while in the area. |only if hardcore
|tip Enemies tend to pull together in this area, so be careful. |only if hardcore
Free the Highborne Soul in Night Run |q 1140/1 |goto Ashenvale 66.63,56.98
step
label "Collect_Satyr_Horns"
Kill enemies around this area
|tip They look like satyrs.
|tip Some of them are stealthed, so be careful.
|tip Remember to use Banish if you get overwhelmed |only if Warlock
|tip Watch for patrols and respawns while in the area. |only if hardcore
collect 16 Satyr Horns##5481 |q 1032/1 |goto Ashenvale 66.73,54.98
step
Jump down while avoiding getting stuck on a tree and follow the road |goto Ashenvale 63.92,52.01 < 50 |only if walking and subzone("Night Run")
Follow the path through the forest |goto Ashenvale 60.84,55.89 < 40 |only if walking
Continue following the path through the forest |goto Ashenvale 57.36,56.02 < 40 |only if walking
Continue following the path through the forest |goto Ashenvale 51.07,52.24 < 40 |only if walking
Follow the path to the moonwell |goto Ashenvale 51.62,45.58 < 30 |only if walking
talk Shael'dryn##3916
|tip She walks around this area.
turnin Raene's Cleansing##1027 |goto Ashenvale 53.54,46.21
step
Watch the dialogue
talk Shael'dryn##3916
|tip She walks around this area.
accept Raene's Cleansing##1028 |goto Ashenvale 53.54,46.21
step
Follow the path around the mountain |goto Ashenvale 50.68,46.06 < 40 |only if walking
Follow the path |goto Ashenvale 52.99,54.46 < 40 |only if walking
Follow the winding dirt path up to the shrine |goto Ashenvale 56.04,51.28 < 20 |only if walking
Continue up the winding dirt path |goto Ashenvale/0 56.92,52.15 < 10 |only if walking
Continue following the path |goto Ashenvale/0 57.11,50.35 < 10 |only if walking
click Hidden Shrine##19024
|tip At the end of the path.
turnin Raene's Cleansing##1028 |goto Ashenvale/0 56.38,49.23
accept Raene's Cleansing##1055 |goto Ashenvale/0 56.38,49.23
step
Jump down and follow the path through the forest |goto Ashenvale/0 52.65,54.46 < 40 |only if walking
Follow the path around the mountain to the moonwell |goto Ashenvale/0 51.62,45.58 < 30 |only if walking
talk Shael'dryn##3916
|tip She walks around this area.
turnin Raene's Cleansing##1055 |goto Ashenvale/0 53.54,46.21
accept Raene's Cleansing##1029 |goto Ashenvale/0 53.54,46.21
step
Follow the road back to Astranaar |goto Ashenvale/0 49.28,57.13 < 50 |only if walking
Enter the building |goto Ashenvale/0 37.19,51.87 < 10 |walk
talk Pelturas Whitemoon##3894
|tip Inside the building.
turnin Fallen Sky Lake##1035 |goto Ashenvale/0 37.36,51.79
step
talk Raene Wolfrunner##3691
|tip Inside the building.
turnin Raene's Cleansing##1029 |goto Ashenvale/0 36.62,49.58
accept Raene's Cleansing##1030 |goto Ashenvale/0 36.62,49.58
step
Follow the path down |goto Ashenvale/0 51.21,58.32 < 30 |only if walking
use Dartol's Rod of Transformation##5462
|tip Use it at this location.
Gain Furbolg Form |havebuff Furbolg Form##6405 |goto Ashenvale/0 54.00,72.61 |q 1030
step
Follow the path up |goto Ashenvale/0 53.85,73.90 < 20 |only if walking
talk Krolg##3897
turnin Raene's Cleansing##1030 |goto Ashenvale/0 50.85,75.07
accept Raene's Cleansing##1045 |goto Ashenvale/0 50.85,75.07
stickystart "Kill_Bloodtooth_Guards"
step
Follow the path up |goto Ashenvale/0 55.35,75.83 < 40 |only if walking
kill Ran Bloodtooth##3696 |q 1045/1 |goto Ashenvale/0 54.74,79.61
|tip Clear enemies carefully around here. |only if hardcore
|tip Enemies tend to pull together. |only if hardcore
|tip Destroy totems as they are summoned. |only if hardcore
collect Ran Bloodtooth's Skull##5388 |goto Ashenvale/0 54.74,79.61 |q 1046 |future
step
label "Kill_Bloodtooth_Guards"
kill 4 Bloodtooth Guard##3932 |q 1045/2 |goto Ashenvale/0 54.56,79.12
|tip Clear enemies carefully around here. |only if hardcore |notinsticky
|tip Enemies tend to pull together. |only if hardcore |notinsticky
|tip Destroy totems as they are summoned. |only if hardcore |notinsticky
step
use Dartol's Rod of Transformation##5462
|tip Use it at this location.
Gain Furbolg Form |havebuff Furbolg Form##6405 |goto Ashenvale/0 53.67,74.00 |q 1045
step
talk Krolg##3897
turnin Raene's Cleansing##1045 |goto Ashenvale/0 50.85,75.07
accept Raene's Cleansing##1046 |goto Ashenvale/0 50.85,75.07
step
_NOTE:_
Make a Choice
|tip If you turn in the "Raene's Cleansing" quest in the next step, you will get 3,050 xp, but you will lose Dartol's Rod of Transformation.
|tip This item allows you to transform into a furbolg for 3 minutes, and the item lasts forever in your bags.
|tip If you want to keep the item, abandon the "Raene's Cleansing" quest now.
|tip If you don't care about the transformation item, and want the xp instead, turn in the quest in the next guide step.
Click Here to Continue |confirm |q 1046
step
talk Raene Wolfrunner##3691
|tip Inside the building.
turnin Raene's Cleansing##1046 |goto Ashenvale/0 36.62,49.58
step
talk Innkeeper Kimlya##6738
|tip Inside the building.
home Astranaar |goto Ashenvale/0 36.99,49.22
step
talk Illiyana##3901
turnin Satyr Slaying!##1032 |goto Ashenvale/0 21.73,53.34
step
Follow the path up and follow the road to Maestra's Post |goto Ashenvale/0 25.37,48.35 < 30 |only if walking
talk Delgren the Purifier##3663
turnin The Tower of Althalaxx##1140 |goto Ashenvale/0 26.19,38.70
step
cast Teleport: Moonglade##18960
trainer Loganaar##12042 |goto Moonglade/0 52.50,40.54 |q 1037
|tip Go to Moonglade and train your spells, then hearth once it is off cooldown.
|only if Druid and C_Container.GetItemCooldown(6948) <= 100
step
talk Thyn'tel Bladeweaver##8026
turnin Velinde Starsong##1037 |goto Darnassus 61.78,39.19
accept Velinde's Effects##1038 |goto Darnassus 61.78,39.19
step
Run up the ramp |goto Darnassus 56.05,79.18 < 10 |only if walking
Cross the bridge |goto Darnassus 57.63,77.23 < 7 |only if walking
click Velinde's Locker
|tip Upstairs inside the building.
collect Velinde's Journal##5520 |q 1038/1 |goto Darnassus 62.29,83.24
step
talk Thyn'tel Bladeweaver##8026
turnin Velinde's Effects##1038 |goto Darnassus 61.78,39.19
accept The Barrens Port##1039 |goto Darnassus 61.78,39.19
step
Run up the ramp |goto Darnassus 67.55,61.15 < 10 |only if walking
talk Merelyssa##4171
|tip Inside the building.
buy Broadsword##2520 |n
|tip If you can afford it.
|tip You will use it when you reach level 31.
|tip If you have better, skip this step.
Visit the Vendor |vendor Geoffrey Hartwell##4600 |goto Darnassus 65.36,59.74 |q 306
|only if Rogue and itemcount(2520) == 0
step
talk Kyrai##3561
|tip Upstairs inside the building.
|tip Stock up on poisons.
|tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Kyrai##3561 |goto Darnassus 32.55,19.74 |q 306
|only if Rogue
step
Run up the stairs and enter the building |goto Ironforge 23.09,17.43 < 7 |walk
talk Harick Boulderdrum##5133
|tip Downstairs inside the building.
buy Pestilent Wand##5347 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Harick Boulderdrum##5133 |goto Ironforge 23.13,15.94 |q 306
|only if Priest and itemcount(5347) == 0
step
Enter the building |goto Darnassus 39.04,76.75 < 15 |walk
talk Elissa Dumas##4165
|tip Inside the building.
learnspell Teleport: Darnassus##3565 |goto Darnassus 40.60,82.13
|only if Mage
step
talk Dink##7312 |only if Mage
talk Regnus Thundergranite##5117 |only if Hunter
talk Briarthorn##5172 |only if Warlock
talk Bilban Tosslespanner##5114 |only if Warrior
talk Toldren Deepiron##5143 |only if Priest
talk Brandur Ironhammer##5149 |only if Paladin
talk Fenthwick##5167 |only if Rogue
trainer Dink##7312 |goto Ironforge/0 27.10,8.49 |only if Mage |q 306
trainer Regnus Thundergranite##5117 |goto Ironforge/0 69.86,82.94 |only if Hunter |q 306
trainer Briarthorn##5172 |goto Ironforge/0 50.33,5.70 |only if Warlock |q 306
trainer Bilban Tosslespanner##5114 |goto Ironforge/0 65.92,88.39 |only if Warrior |q 306
trainer Fenthwick##5167 |goto Ironforge/0 51.49,15.33 |only if Rogue |q 306
trainer Toldren Deepiron##5143 |goto Ironforge/0 25.19,10.76 |only if Priest |q 306
trainer Brandur Ironhammer##5149 |goto Ironforge/0 23.11,6.14 |only if Paladin |q 306
|tip Inside the building.
|tip Train your spells.
step
talk Tarrel Rockweaver##2096
|tip He walks around this area.
turnin In Search of The Excavation Team##306 |goto Wetlands 11.50,52.14
step
Run up the ramp to board the ship |goto Wetlands 16.01,23.09 < 7 |only if walking
kill Captain Halyndor##1160
|tip On the deck of the ship.
|tip You can body aggro him from the ramp on leading to the ship to avoid adds. |only if hardcore
|tip He periodically casts Spell Reflect, be careful. |only if Mage or Warlock or Priest
collect Intrepid Strongbox Key##2629 |q 290/1 |goto Wetlands 15.45,23.61
step
Swim underwater through the hole in the bottom of the ship |goto Wetlands 14.35,23.68 < 7 |walk
|tip Turn on enemy name plates with "CTRL+V" so you can see the enemies underwater. |only if hardcore
|tip Try to pull them one at a time until they cleared before entering the boat. |only if hardcore
|tip Fight enemies outside of the water so you reduce the chance of drowning. |only if hardcore
click Intrepid's Locked Strongbox##112948
|tip Underwater, at the bottom of the ship.
turnin Lifting the Curse##290 |goto Wetlands 14.37,24.02
accept The Eye of Paleth##292 |goto Wetlands 14.37,24.02
step
Swim out of the hole in the ship |goto Wetlands 14.31,23.69 < 7 |walk |only if subzone("The Lost Fleet")
kill 12 Fen Creeper##1040 |q 275/1 |goto Wetlands 18.45,27.72 |count 12 |noordinal
|tip They are stealthed, usually near or in the water around this area.
You can find more around: |notinsticky
[20.83,28.59]
[22.56,30.11]
[23.49,32.06]
[25.93,31.76]
[27.45,32.68]
[27.49,37.05]
[27.24,38.82]
step
Enter Whelgar's Excavation Site |goto Wetlands 34.19,41.09 < 20 |only if walking
Kill enemies around this area
|tip You should already be pretty close to reaching level 31.						|only if not  hardcore
|tip You are about to complete some difficult quests, where you have to kill 2 elite enemies.		|only if not  hardcore
|tip Being a level higher will help.									|only if not  hardcore
|tip You are about to skip a few quests, because they're too dangerous to solo.				|only if hardcore
|tip We are grinding to level 31 here to keep you on track.						|only if hardcore
ding 30,42000 |goto Wetlands 34.73,45.31										|only if not hardcore
ding 31 |goto Wetlands 34.73,45.31										|only if hardcore
[32.82,48.77]
[35.30,49.72]
step
Leave Whelgar's Excavation Site |goto Wetlands 34.02,40.85 < 20 |only if walking and subzone("Whelgar's Excavation Site")
Follow the path up |goto Wetlands 42.87,40.78 < 50 |only if walking
click Dragonmaw Catapult##1609
|tip Clear the enemies around the catapult before attempting to interact with it. |only if hardcore
|tip Be careful, a group of 6 enemies will appear and attack you.
|tip Run away immediately after turning in the quest.
turnin Nek'rosh's Gambit##465 |goto Wetlands 47.40,46.90
|only if not hardcore
step
talk Rethiel the Greenwarden##1244
turnin Blisters on The Land##275 |goto Wetlands 56.38,40.40
step
talk Longbraid the Grim##1071
turnin Fall of Dun Modr##472 |goto Wetlands 49.80,18.26
step
Optional Route Change
|tip You can opt to do Gnomeregan soon instead of grinding.
|tip This will mean slower leveling but it will be more fun and potentially give you gear upgrades.
|tip If you choose to do Gnomeregan, we will say when to accept and turnin dungeon quests that are worth doing in your route.
|tip We will also say when it is a good time to do the dungeon.
_Note_
|tip This feature is currently experimental and may result in a full quest log. If this happens, please submit a feedback report so we can fix it!
|tip If you have a full quest log, we recommend abandoning any dungeon quests that can be shared by your party members later.
Click Here if you'd like to run Gnomeregan later |confirm Gnomerflag
Click Here if you'd prefer to grind |confirm
step
talk Rhag Garmason##1075
accept The Thandol Span##631 |goto Wetlands 49.92,18.21
|only if not hardcore
step
Walk onto the bridge |goto Wetlands 51.06,11.72 < 30 |only if walking
Enter the building and run down the stairs |goto Wetlands 51.36,8.11 < 7 |walk
click Ebenezer Rustlocke's Corpse
|tip Downstairs inside the building.
|tip There are 2 elite enemies inside the building, but you can fight them individually.
|tip You should be able to kill them by yourself, if you're careful.
|tip Be sure to regularly heal up when possible. |only if hardcore
|tip You will be attacked by two non-elite enemies after turning in the quest.
|tip If you have trouble, try to find someone to help you.
turnin The Thandol Span##631 |goto Wetlands 51.28,7.95
accept The Thandol Span##632 |goto Wetlands 51.28,7.95
|only if not hardcore
step
Run up the stairs |goto Wetlands 51.04,8.28 < 7 |c |q 632
|only if not hardcore
step
Run up the stairs and leave the building |goto Wetlands 50.69,8.00 < 7 |walk
talk Rhag Garmason##1075
turnin The Thandol Span##632 |goto Wetlands 49.92,18.22
accept The Thandol Span##633 |goto Wetlands 49.92,18.22
|only if not hardcore
step
Cross the bridge |goto Wetlands 51.11,11.58 < 30 |only if walking
Cross the hanging bridge |goto Arathi Highlands 45.96,88.11 < 15 |only if walking
click Cache of Explosives
Destroy the Cache of Explosives |q 633/1 |goto Arathi Highlands 48.73,88.05
|only if not hardcore
step
Cross the hanging bridge |goto Arathi Highlands 48.14,88.11 < 15 |only if walking
Cross the bridge |goto Arathi Highlands 45.47,89.24 < 30 |only if walking
talk Rhag Garmason##1075
turnin The Thandol Span##633 |goto Wetlands 49.92,18.22
accept Plea To The Alliance##634 |goto Wetlands 49.92,18.22
|only if not hardcore
step
talk Captain Nials##2700
turnin Plea To The Alliance##634 |goto Arathi Highlands 45.83,47.55
|only if not hardcore
step
talk Cedrik Prose##2835
fpath Refuge Pointe |goto Arathi Highlands 45.70,46.09
step
Follow the road and enter Hillsbrad Foothills |goto Arathi Highlands 20.17,29.54 < 40 |only if walking and not zone("Hillsbrad Foothills")
talk Darla Harris##2432
fpath Southshore |goto Hillsbrad Foothills 49.34,52.27
step
Prepare for Gnomeregan
|tip It will be a good time to start Gnomeregan soon.
|tip You should run it after arriving in Ironforge and getting all the quests, roughly 20 minutes.
|tip Start looking for a group.
|confirm
|only if guideflag("Gnomerflag")
step
Enter the building |goto Wetlands 10.79,59.77 < 10 |walk
talk Glorin Steelbrow##1217
|tip Inside the building.
turnin The Eye of Paleth##292 |goto Wetlands 10.58,60.59
accept Cleansing the Eye##293 |goto Wetlands 10.58,60.59
step
talk Shoni the Shilent##6579
accept Gyrodrillmatic Excavationators##2928 |goto Stormwind City 55.51,12.50
|only if guideflag("Gnomerflag")
step
talk Klockmort Spannerspan##6169
accept Essential Artificials##2924  |goto Ironforge 67.98,46.13
|only if guideflag("Gnomerflag")
step
talk Tinkmaster Overspark##7944
turnin Tinkmaster Overspark##2923 |goto Ironforge 69.56,50.32 |only if haveq(2923)
accept Save Techbot's Brain!##2922 |goto Ironforge 69.56,50.32
|only if guideflag("Gnomerflag")
step
talk Gnoarn##6569
accept The Day After##2927 |goto Ironforge 69.18,50.56
|only if guideflag("Gnomerflag")
step
talk Master Mechanic Castpipe##7950
accept Data Rescue##2930 |goto Ironforge 69.82,48.08
|only if guideflag("Gnomerflag")
step
talk High Tinker Mekkatorque##7937
accept The Grand Betrayal##2929 |goto Ironforge 68.76,48.96
|only if guideflag("Gnomerflag")
step
Run up the stairs and enter the building |goto Ironforge 44.78,8.50 < 7 |walk
talk Hjoldir Stoneblade##5170
|tip Downstairs inside the building.
buy Flamberge##2521 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Hjoldir Stoneblade##5170 |goto Ironforge 44.99,6.79 |q 322
|only if Paladin and itemcount(2521) == 0
step
Enter the building |goto Dun Morogh 45.97,48.83 < 5 |walk
talk Ozzie Togglevolt##1268
|tip Inside the building.
turnin The Day After##2927 |goto Dun Morogh 45.88,49.38
accept Gnogaine##2926 |goto Dun Morogh 45.88,49.38
|only if guideflag("Gnomerflag")
stickystart "LeadenCollection"
step
Enter the building |goto Dun Morogh/0 24.29,39.77 < 7 |walk
Ride the elevator down |goto Dun Morogh/0 23.41,39.21 < 10 |walk
Follow the path |goto Dun Morogh/0 21.98,36.73 < 10 |walk
Kill Addled enemies around this area with your group
collect White Punch Card##9279 |goto Gnomeregan/0 43.27,52.87 |q 2930 |future
|only if guideflag("Gnomerflag")
step
kill Techbot##6231
collect Techbot's Memory Core##9277 |q 2922/1 |goto Gnomeregan/0 43.11,52.81
|only if guideflag("Gnomerflag")
step
Run up the stairs |goto Gnomeregan/0 43.20,52.87 < 7 |only if walking
Cross the bridge |goto Gnomeregan/0 43.38,53.01 < 10 |only if walking
click Matrix Punchograph 3005-A
Choose _"Acquire Higher Level Access Card"_
collect Yellow Punch Card##9280 |goto Gnomeregan/0 43.37,52.89 |q 2930 |future
|only if guideflag("Gnomerflag")
step
label "LeadenCollection"
use the Empty Leaden Collection Phial##9283
|tip Use it on Irradiated Invaders or Irradiated Pillagers.
collect Full Leaden Collection Phial##9284 |q 2926/1 |goto Gnomeregan/0 43.38,53.23
You can find more around [43.08,53.54]
|only if guideflag("Gnomerflag")
step
_Note_
|tip Some groups do not want to run all the way back to turn this quest in.
|tip It is okay to skip this step if so, the quest does not have good rewards or experience.
|tip We will turn in Gnogaine later.
Enter the building |goto Dun Morogh 45.97,48.83 < 5 |walk
talk Ozzie Togglevolt##1268
|tip Inside the building.
turnin Gnogaine##2926 |goto Dun Morogh 45.88,49.38
accept The Only Cure is More Green Glow##2962 |goto Dun Morogh 45.88,49.38
|only if guideflag("Gnomerflag")
step
Enter the building |goto Dun Morogh/0 24.29,39.77 < 7 |walk
Ride the elevator down |goto Dun Morogh/0 23.41,39.21 < 10 |walk
Follow the path |goto Dun Morogh/0 21.98,36.73 < 10 |walk
Follow the path |goto Dun Morogh/0 19.93,36.02 < 10 |walk
Enter the Gnomeregan Dungeon with Your Group |goto Gnomeregan/0 0.00,0.00 < 500 |c |q 2928
|only if guideflag("Gnomerflag")
stickystart "Collect_24_Robo-Mechanical_Guts"
stickystart "Collect_12_Essential_Artificial"
step
_Inside the Gnomeregan Dungeon:_
click Matrix Punchograph 3005-B
|tip Stay on the upper levels of The Hall of Gears and follow the path around to the southwest to enter The Dormitory.
|tip After entering The Dormitory, follow the path around to the left to continue to The Dormitory's lower level.
|tip It is up against the wall in the lowest level of The Dormitory area.
Choose _"Acquire Higher Level Access Card"_
collect Blue Punch Card##9282 |q 2930 |future
|only if guideflag("Gnomerflag")
step
_Inside the Gnomeregan Dungeon:_
kill Viscous Fallout##7079
|tip It is the first boss of the dungeon.
|tip It is in the lower level of the Hall of Gears.
|tip Leave The Dormitory and reenter The Hall of Gears and then jump down to the lower level.
use the Heavy Leaden Collection Phial##9364
|tip Use it on a living Irradiated Slime.
collect High Potency Radioactive Fallout##9365 |q 2962/1
|only if guideflag("Gnomerflag")
step
_Inside the Gnomeregan Dungeon:_
kill Electrocutioner 6000##6235
|tip He is the third boss of the dungeon.
|tip He is in the center of the upper level of the Launch Bay.
|tip Follow the west path from The Hall of Gears to enter the Launch Bay.
collect Workshop Key##6893 |q 2930 |future
|only if guideflag("Gnomerflag")
step
_Inside the Gnomeregan Dungeon:_
click Matrix Punchograph 3005-C
|tip It's up in the Launch Bay platform, with Electrocutioner 6000.
Choose _"Acquire Higher Level Access Card"_
collect Red Punch Card##9281 |q 2930 |future
|only if guideflag("Gnomerflag")
step
_Inside the Gnomeregan Dungeon:_
click Miatrix Punchograph 3005-D
|tip It is found in the lower level of the Engineering Labs, along with Crowd Pummeler 9-60.
|tip Stay on the upper level of the Launch Bay and follow the southeast path to reach the Engineering Labs.
|tip After entering the Engineering Labs, go left and follow it a short distance to ride an elevator down to the lower level.
|tip It is on the opposite side of the large structure in the center of the room after getting off the elevator.
Choose _"Acquire Higher Level Access Card"_
collect Prismatic Punch Card##9316 |q 2930/1
|only if guideflag("Gnomerflag")
step
label "Collect_24_Robo-Mechanical_Guts"
_Inside the Gnomeregan Dungeon:_ |notinsticky
Kill enemies around this area
collect 24 Robo-mechanical Guts##9309 |q 2928/1
|only if guideflag("Gnomerflag")
step
label "Collect_12_Essential_Artificial"
_Inside the Gnomeregan Dungeon:_ |notinsticky
click Artificial Extrapolator##142344+
|tip They look like square upright machines scattered all over the instance.
collect 12 Essential Artificial##9278 |q 2924/1
|only if guideflag("Gnomerflag")
step
_Inside the Gnomeregan Dungeon:_
kill Mekgineer Thermaplugg##7800 |q 2929/1
|tip He is the last boss of the dungeon.
|tip Leave the Engineering Labs through the lower level and follow the southwest path up and out, then continue west after the path splits.
|only if guideflag("Gnomerflag")
step
use Grime-Encrusted Ring##9326
accept Grime-Encrusted Ring##2945
|only if itemcount(9326) > 0
step
click The Sparklematic 5200##142487
|tip Head back to the Dormatory.
|tip You may have to click on multiple Sparklematics to get the quest.
turnin Grime-Encrusted Ring##2945 |only if haveq(2945)
accept Return of the Ring##2947 |only if completedq(2945)
accept The Sparklematic 5200!##2952 |instant
|only if guideflag("Gnomerflag")
step
Leave the Gnomeregan Dungeon
Click Here to Continue |confirm |q 2928
|only if guideflag("Gnomerflag")
step
Enter the building |goto Dun Morogh 45.97,48.83 < 5 |walk
talk Ozzie Togglevolt##1268
|tip Inside the building.
turnin Gnogaine##2926 |goto Dun Morogh 45.88,49.38 |only if readyq(2926)
turnin The Only Cure is More Green Glow##2962 |goto Dun Morogh 45.88,49.38 |only if readyq(2962)
|only if guideflag("Gnomerflag")
step
collect Silver Bar##2842 |q 2948/2 |goto Ironforge 24.16,74.67 |future
collect Moss Agate##1206 |q 2948/3 |goto Ironforge 24.16,74.67 |future
|tip You can buy these items from the Auction House
|only if guideflag("Gnomerflag") and haveq(2947)
step
talk Talvash del Kissel##6826
turnin Return of the Ring##2947 |goto Ironforge/0 36.35,3.61
accept Gnome Improvement##2948 |goto Ironforge/0 36.35,3.61
turnin Gnome Improvement##2948 |goto Ironforge/0 36.35,3.61
|only if completedq(2945)
step
talk Klockmort Spannerspan##6169
turnin Essential Artificials##2924 |goto Ironforge 67.98,46.13
|only if guideflag("Gnomerflag")
step
talk Tinkmaster Overspark##7944
turnin Save Techbot's Brain!##2922 |goto Ironforge 69.56,50.32
|only if guideflag("Gnomerflag")
step
talk Master Mechanic Castpipe##7950
turnin Data Rescue##2930 |goto Ironforge 69.82,48.08
|only if guideflag("Gnomerflag")
step
talk High Tinker Mekkatorque##7937
turnin The Grand Betrayal##2929 |goto Ironforge 68.76,48.96
|only if guideflag("Gnomerflag")
step
Enter the building |goto Ironforge 66.36,82.45 < 10 |walk
talk Pilot Longbeard##2092
|tip Inside the building.
accept The Brassbolts Brothers##1179 |goto Ironforge 72.73,94.01
step
Enter the building |goto Ironforge 30.43,26.37 < 7 |walk
talk Ginny Longberry##5151
|tip Inside the building.
|tip If you can afford it.
|tip Stock up on a couple of Runes of Teleportation to use to travel faster while leveling.
Visit the Vendor |vendor Ginny Longberry##5151 |goto Ironforge 31.32,27.79 |q 322
|only if Mage
step
talk Shoni the Shilent##6579
turnin Gyrodrillmatic Excavationators##2928 |goto Stormwind City 55.51,12.50
|only if guideflag("Gnomerflag")
step
Enter the building |goto Stormwind City 51.82,13.27 < 10 |walk
talk Grimand Elmore##1416
|tip Inside the building.
turnin Blessed Arm##322 |goto Stormwind City 51.76,12.06
accept Armed and Ready##325 |goto Stormwind City 51.76,12.06
|tip You may not be able to accept this quest if you skipped previous quests in the chain.
step
Enter the building |goto Stormwind City 43.05,34.48 < 10 |walk
talk Archbishop Benedictus##1284
|tip Inside the building.
turnin Cleansing the Eye##293 |goto Stormwind City 39.59,27.25
step
talk Thomas##4982
|tip He walks around this area inside the building.
accept The Missing Diplomat##1274 |goto Stormwind City 40.37,29.40
step
Leave the building |goto Stormwind City 43.05,34.48 < 10 |walk |only if subzone("Cathedral of Light")
Enter the building |goto Stormwind City 69.07,28.77 < 15 |walk
Follow the path |goto Stormwind City 77.88,21.14 < 10 |walk
talk Bishop DeLavey##4960
|tip Inside the building.
turnin The Missing Diplomat##1274 |goto Stormwind City 78.30,25.44
accept The Missing Diplomat##1241 |goto Stormwind City 78.30,25.44
step
Follow the path |goto Stormwind City 77.01,19.25 < 15 |walk |only if subzone("Stormwind Keep")
Leave the building |goto Stormwind City 69.07,28.77 < 10 |walk |only if subzone("Stormwind Keep")
Follow the path |goto Stormwind City 60.27,68.37 < 30 |only if walking
talk Jorgen##4959
turnin The Missing Diplomat##1241 |goto Stormwind City 73.17,78.42
accept The Missing Diplomat##1242 |goto Stormwind City 73.17,78.42
step
Enter the building |goto Stormwind City 56.65,57.72 < 7 |walk
talk Woo Ping##11867
|tip This will allow you to equip two-handed swords.
Train Two-Handed Swords |complete weaponskill("TH_SWORD") > 0 |goto Stormwind City 57.13,57.71
|only if Hunter
step
talk Marda Weller##1287
buy Heavy Quiver##7371 |n
|tip If you can afford it.
Visit the Vendor |vendor Marda Weller##1287 |goto Stormwind City 57.38,56.77 |q 1242
|only if Hunter and itemcount(7371) == 0
step
talk Marda Weller##1287
buy Heavy Crossbow##15809 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Marda Weller##1287 |goto Stormwind City 57.38,56.77 |q 1242
|only if Hunter and itemcount(15809) == 0
step
Enter the building |goto Stormwind City 59.96,64.19 < 10 |walk
talk Elling Trias##482
|tip Upstairs inside the building.
turnin The Missing Diplomat##1242 |goto Stormwind City 59.91,64.17
accept The Missing Diplomat##1243 |goto Stormwind City 59.91,64.17
step
Enter the building |goto Stormwind City 55.30,68.13 < 10 |walk
talk Olivia Burnside##2455
|tip Inside the building.
|tip Deposit these items into the bank.
bank Crate of Crash Helmets##5849 |goto Stormwind City 57.66,72.78 |q 1179 |future |only if haveq(1179) or completedq(1179)
bank Musquash Root##2784 |goto Stormwind City 57.66,72.78 |q 335 |future |only if haveq(335) or completedq(335)
step
talk Olivia Burnside##2455
|tip Inside the building.
|tip Collect these items from the bank.
collect A Torn Journal Page##916 |goto Stormwind City 57.66,72.78 |q 74 |only if haveq(74) or completedq(74)
collect Bottle of Zombie Juice##1451 |goto Stormwind City 57.66,72.78 |q 159 |only if haveq(159) or completedq(159)
step
talk Collin Mauren##4078
turnin Retrieval for Mauren##1078 |goto Stormwind City 43.09,80.39
step
talk Malissa##3135
|tip Walking around here.
|tip Stock up on poisons.
|tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Malissa##3135 |goto Duskwood 79.44,44.44 |q 181 |future
|only if Rogue
step
Enter the building |goto Duskwood 79.79,47.69 < 10 |walk
talk Viktori Prism'Antras##276
|tip Inside the building.
accept Look To The Stars##181 |goto Duskwood 79.80,48.02
step
talk Calor##663
|tip He walks around this area in front of the building.
accept Worgen in the Woods##173 |goto Duskwood 75.30,48.05
step
talk Commander Althea Ebonlocke##264
|tip She walks around this area.
accept The Night Watch##58 |goto Duskwood 73.60,46.90
step
Enter the building |goto Duskwood 73.83,46.02 < 10 |walk
talk Innkeeper Trelayne##6790
|tip Inside the building.
home Darkshire |goto Duskwood 73.87,44.41
step
Leave the building |goto Duskwood 73.83,46.02 < 10 |c |q 1243
|only if subzone("Scarlet Raven Tavern")
step
map Duskwood
path follow strictbounce; loop off; ants straight; dist 30; markers none
path	74.82,44.16	74.53,41.22	73.87,39.60	72.74,38.35	72.28,37.28
path	72.24,35.19	72.58,33.53	73.31,32.54
talk Watcher Backus##840
|tip He walks back and forth along this road.
turnin The Missing Diplomat##1243
accept The Missing Diplomat##1244
step
kill 6 Nightbane Shadow Weaver##533 |q 173/1 |goto Duskwood 61.99,40.65
|tip These share a spawn with other Nightbane enemies around this area. |only if hardcore
You can find more around [64.69,46.79]
step
talk Calor##663
|tip He walks around this area in front of the building.
turnin Worgen in the Woods##173 |goto Duskwood 75.30,48.05
accept Worgen in the Woods##221 |goto Duskwood 75.30,48.05
stickystart "Kill_Nightbane_Dark_Runners"
step
Kill Nightbane enemies around this area
|tip They look like worgen.
collect An Old History Book##2794 |goto Duskwood 61.76,41.04 |q 337 |future
You can find more around [63.76,50.90]
step
use An Old History Book##2794
accept An Old History Book##337	|goto Duskwood 61.76,41.04
|only if itemcount(337) > 0
step
label "Kill_Nightbane_Dark_Runners"
kill 12 Nightbane Dark Runner##205 |q 221/1 |goto Duskwood 61.76,41.04
|tip These share a spawn with other Nightbane enemies around this area. |only if hardcore
You can find more around [63.76,50.90]
step
talk Marshal Haggard##294
turnin The Legend of Stalvan##74 |goto Elwynn Forest 84.61,69.38
accept The Legend of Stalvan##75 |goto Elwynn Forest 84.61,69.38
step
Enter the building |goto Elwynn Forest 85.12,69.70 < 10 |walk
click Marshal Haggard's Chest
|tip Upstairs inside the building.
|tip You will be attacked.
collect A Faded Journal Page##921 |q 75/1 |goto Elwynn Forest 85.69,69.55
step
Leave the building |goto Elwynn Forest 85.11,69.71 < 10 |walk |only if subzone("Eastvale Logging Camp") and _G.IsIndoors()
talk Marshal Haggard##294
turnin The Legend of Stalvan##75 |goto Elwynn Forest 84.61,69.38
accept The Legend of Stalvan##78 |goto Elwynn Forest 84.61,69.38
step
talk Abercrombie##289
|tip Inside the building.
turnin Juice Delivery##159 |goto Duskwood 28.11,31.47
accept Ghoulish Effigy##133 |goto Duskwood 28.11,31.47
|tip This is part of a questline that starts in the "Duskwood (25-27)" guide.
stickystart "Kill_Plague_Spreaders"
step
Kill enemies around this area
|tip Inside and outside the crypt.
|tip Only enemies that look like ghouls will drop the quest item.
collect 7 Ghoul Rib##884 |q 133/1 |goto Duskwood 23.63,34.92
step
Kill enemies around this area
|tip Only enemies that look like ghouls will drop the quest item.
collect 10 Ghoul Fang##1129 |q 101/1 |goto Duskwood 23.63,34.92
|tip Watch for respawns while in the area. |only if hardcore
You can find more inside the crypt at [23.59,34.89]
step
label "Kill_Plague_Spreaders"
kill 20 Plague Spreader##604 |q 58/1 |goto Duskwood 23.63,34.92
|tip Inside and outside the crypt. |notinsticky
|tip They share spawn points with the other ghouls inside the crypt, so kill those too, if you can't find any.
step
Leave the crypt |goto Duskwood 23.63,34.92 < 15 |walk |only if subzone("Dawning Wood Catacombs") and _G.IsIndoors()
talk Abercrombie##289
|tip Inside the building.
turnin Ghoulish Effigy##133 |goto Duskwood 28.11,31.47
accept Ogre Thieves##134 |goto Duskwood 28.11,31.47
step
Enter the building |goto Duskwood 23.88,71.75 < 10 |walk
click Defias Strongbox##21052
|tip Inside the building.
collect Defias Docket##5947 |q 1244/1 |goto Duskwood 23.93,72.07
step
click Abercrombie's Crate##119
collect Abercrombie's Crate##1349 |q 134/1 |goto Duskwood 33.42,76.34
step
Enter the cave |goto Duskwood 34.08,77.02 < 15 |walk
Follow the path |goto Duskwood 36.78,77.62 < 10 |walk
Continue following the path |goto Duskwood 36.83,81.89 < 10 |walk
kill Zzarc' Vul##300
|tip Inside the cave.
|tip He can spawn in multiple locations inside the cave, so if he's not here, search around.
|tip Watch out for casters aggroing from far away as well as inconsistent respawns. |only if hardcore
collect Ogre's Monocle##1968 |q 181/1 |goto Duskwood 36.81,83.79
step
Leave the cave |goto Duskwood 34.08,77.02 < 15 |walk |only if subzone("Vul'Gol Ogre Mound") and _G.IsIndoors()
Follow the path up to leave the ogre area |goto Duskwood 31.34,67.17 < 20 |only if walking and subzone("Vul'Gol Ogre Mound")
talk Abercrombie##289
|tip Inside the building.
turnin Ogre Thieves##134 |goto Duskwood 28.11,31.47
accept Note to the Mayor##160 |goto Duskwood 28.11,31.47
step
click A Weathered Grave##61
|tip Leave the crypt, if you went inside there in the previous step.
accept The Weathered Grave##225 |goto Duskwood 17.72,29.08
step
talk Sven Yorgen##311
turnin Armed and Ready##325 |goto Duskwood 7.78,34.07
step
Kill enemies around this area
|tip Inside and outside the crypt.
|tip Getting this far into level 31 will allow you to reach level 32 after turning in quests soon.
|tip You will be hearthing back to Darkshire in the next step, so it doesn't matter where you end up completing this step.
ding 31,39000 |goto Duskwood 23.63,34.92
step
Enter the building |goto Duskwood 75.57,45.37 < 10 |walk
talk Madame Eva##265
|tip She walks around this area inside the building.
turnin The Totem of Infliction##101 |goto Duskwood 75.81,45.29
|only if readyq(101)
step
talk Tavernkeep Smitts##273
|tip He walks around this area inside the building.
turnin The Legend of Stalvan##78 |goto Duskwood 73.78,44.48
accept The Legend of Stalvan##79 |goto Duskwood 73.78,44.48
step
Leave the building |goto Duskwood 73.83,46.01 < 10 |walk |only if subzone("Scarlet Raven Tavern")
talk Commander Althea Ebonlocke##264
|tip She walks around this area.
turnin The Night Watch##58 |goto Duskwood 73.59,46.89
turnin The Legend of Stalvan##79 |goto Duskwood 73.59,46.89
accept The Legend of Stalvan##80 |goto Duskwood 73.59,46.89
step
Enter the building |goto Duskwood 72.92,46.81 < 10 |walk
talk Clerk Daltry##267
|tip He walks around this area inside the building.
turnin The Legend of Stalvan##80 |goto Duskwood 72.52,46.85
accept The Legend of Stalvan##97 |goto Duskwood 72.52,46.85
step
talk Sirra Von'Indi##268
|tip Inside the building.
turnin The Weathered Grave##225 |goto Duskwood 72.64,47.62
accept Morgan Ladimore##227 |goto Duskwood 72.64,47.62
step
talk Lord Ello Ebonlocke##263
|tip Inside the building.
turnin Note to the Mayor##160 |goto Duskwood 71.93,46.42
accept Translate Abercrombie's Note##251 |goto Duskwood 71.93,46.42
step
talk Sirra Von'Indi##268
|tip He walks around inside the building.
turnin Translate Abercrombie's Note##251 |goto Duskwood 72.64,47.62
accept Wait for Sirra to Finish##401 |goto Duskwood 72.64,47.62
step
Watch the dialogue
talk Sirra Von'Indi##268
|tip He walks around inside the building.
turnin Wait for Sirra to Finish##401 |goto Duskwood 72.64,47.62
accept Translation to Ello##252 |goto Duskwood 72.64,47.62
step
talk Lord Ello Ebonlocke##263
|tip Inside the building.
turnin Translation to Ello##252 |goto Duskwood 71.93,46.42
step
_Destroy This Item:_
|tip It is no longer needed.
trash Translated Letter from The Embalmer##3248	|goto Duskwood 72.93,46.80
step
Leave the building |goto Duskwood 72.93,46.80 < 10 |walk |only if subzone("Darkshire Town Hall")
talk Commander Althea Ebonlocke##264
|tip She walks around this area.
turnin The Legend of Stalvan##97 |goto Duskwood 73.59,46.89
accept The Legend of Stalvan##98 |goto Duskwood 73.59,46.89
turnin Morgan Ladimore##227 |goto Duskwood 73.59,46.89
step
_Destroy This Item:_
|tip It is no longer needed.
trash The Story of Morgan Ladimore##2154 |goto Duskwood 75.30,48.05
step
talk Calor##663
|tip He walks around this area in front of the building.
turnin Worgen in the Woods##221 |goto Duskwood 75.30,48.05
accept Worgen in the Woods##222 |goto Duskwood 75.30,48.05
step
map Duskwood
path follow strictbounce; loop off; ants straight; dist 30; markers none
path	74.82,44.16	74.53,41.22	73.87,39.60	72.74,38.35	72.28,37.28
path	72.24,35.19	72.58,33.53	73.31,32.54
talk Watcher Backus##840
|tip He walks back and forth along this road.
turnin The Missing Diplomat##1244
accept The Missing Diplomat##1245
step
kill Stalvan Mistmantle##315
|tip Inside, or just outside, the building.
collect Mistmantle Family Ring##3629 |q 98/1 |goto Duskwood 77.35,36.19
step
click Tear of Tilloa##321
collect Tear of Tilloa##2779 |q 335/1 |goto Duskwood 78.35,35.95
step
Enter the building |goto Duskwood 75.55,45.37 < 10 |walk
talk Madame Eva##265
|tip She walks around this area inside the building.
turnin The Legend of Stalvan##98 |goto Duskwood 75.82,45.29
step
Enter the building |goto Duskwood 79.79,47.69 < 10 |walk
talk Viktori Prism'Antras##276
|tip Inside the building.
turnin Look To The Stars##181 |goto Duskwood 79.80,48.02
stickystart "Kill_Nightbane_Vile_Fangs"
step
kill 8 Nightbane Tainted One##920 |q 222/2 |goto Duskwood 73.03,75.08
|tip Inside the mine.
|tip Try to stay near the entrance. |only if hardcore
|tip Watch for patrols and respawns while in the area. |only if hardcore
step
label "Kill_Nightbane_Vile_Fangs"
kill 8 Nightbane Vile Fang##206 |q 222/1 |goto Duskwood 72.57,71.13
|tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
|tip Outside the mine.
step
Follow the path up to the Rebel Camp |goto Stranglethorn Vale 39.05,5.20 < 20 |only if walking
talk Private Thorsen##738
|tip He periodically (around every 30 minutes) walks along the path to the south, from the Rebel Camp.
|tip If he's here, wait for him to start walking, and follow him.
|tip He will eventually get attacked by two Kurzen enemies.
|tip Help him kill the enemies and he will offer you a quest.
|tip It may take a while for him to start walking, but you have to wait for your hearthstone to cooldown anyway.
accept Jungle Secrets##215 |goto Stranglethorn Vale 37.98,3.41
Also check around [Stranglethorn Vale 40.34,8.44]
step
talk Barnil Stonepot##716
accept Welcome to the Jungle##583 |goto Stranglethorn Vale 35.66,10.53
step
talk Hemet Nesingwary##715
turnin Welcome to the Jungle##583 |goto Stranglethorn Vale 35.66,10.81
step
talk Ajeck Rouack##717
accept Tiger Mastery##185 |goto Stranglethorn Vale 35.61,10.62
step
talk Sir S. J. Erlgadin##718
accept Panther Mastery##190 |goto Stranglethorn Vale 35.55,10.55
stickystart "Kill_Young_Stranglethorn_Tigers"
step
Follow the path up |goto Stranglethorn Vale 30.71,8.28 < 30 |c |q 185
|only if Hunter
step
_NOTE:_
Tame a Stranglethorn Tiger
|tip Use your "Tame Beast" ability on a Stranglethorn Tiger.
|tip They look like orange tigers around this area.
|tip Make sure to tame a level 32 Stranglethorn Tiger.
|tip You can abandon your pet right before taming a Stranglethorn Tiger.
|tip This will be your new permanent pet.
|tip You will gain the "Dash" pet ability.
Train Your Pet
|tip Be sure to train your new pet with the highest ranks of Growl and Bite you currently have.
Click Here to Continue |confirm |goto Stranglethorn Vale 29.44,9.80 |q 185
|only if Hunter
step
label "Kill_Young_Stranglethorn_Tigers"
kill 10 Young Stranglethorn Tiger##681 |q 185/1 |goto Stranglethorn Vale 35.23,12.83
You can find more around: |notinsticky
[Stranglethorn Vale 33.42,11.47]
[Stranglethorn Vale 31.79,9.19]
step
kill 10 Young Panther##683 |q 190/1 |goto Stranglethorn Vale 41.70,12.28
You can find more around: |notinsticky
[42.40,10.56]
[41.06,8.26]
step
Follow the path up to the Rebel Camp |goto Stranglethorn Vale 39.05,5.20 < 20 |only if walking
talk Lieutenant Doren##469
turnin Jungle Secrets##215 |goto Stranglethorn Vale 38.04,3.01
step
talk Ajeck Rouack##717
turnin Tiger Mastery##185 |goto Stranglethorn Vale 35.61,10.62
step
talk Sir S. J. Erlgadin##718
turnin Panther Mastery##190 |goto Stranglethorn Vale 35.55,10.55
step
Kill enemies around this area
|tip Grind enemies until your Hearthstone is ready to use.
|tip You will be hearthing back to Darkshire.
|tip The guide doesn't take into account this grind, so any extra xp you get now will put you a little bit ahead, and reduce any grinding you have to do later.
|tip This step will complete when your Hearthstone is ready to use.
Grind XP Until You Can Hearth to Darkshire |complete C_Container.GetItemCooldown(6948) == 0 |q 222
step
talk Malissa##3135
|tip Walking around here.
|tip Stock up on poisons.
|tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Malissa##3135 |goto Duskwood 79.44,44.44 |q 222
|only if Rogue
step
talk Calor##663
|tip He walks around this area in front of the building.
turnin Worgen in the Woods##222 |goto Duskwood 75.30,48.05
accept Worgen in the Woods##223 |goto Duskwood 75.30,48.05
step
Enter the building |goto Duskwood 75.22,48.25 < 10 |walk
talk Jonathan Carevin##661
|tip He walks around inside the building.
turnin Worgen in the Woods##223 |goto Duskwood 75.32,49.02
|tip The Consecrated Wand reward is the fastest wand in the game and should be held on to. |only if Priest
step
Enter the building |goto Stormwind City 59.96,64.19 < 10 |walk
talk Elling Trias##482
|tip Upstairs inside the building.
turnin The Missing Diplomat##1245 |goto Stormwind City 59.91,64.17
accept The Missing Diplomat##1246 |goto Stormwind City 59.91,64.17
|tip This requires that you complete the "The Missing Diplomat" questline started in the "Duskwood (31-32)" guide.
step
Enter the building |goto Stormwind City 55.29,68.13 < 10 |walk
talk Olivia Burnside##2455
|tip Inside the building.
|tip Collect these items from the bank.
collect Crate of Crash Helmets##5849 |goto Stormwind City 57.66,72.78 |q 1179 |only if haveq(1179) or completedq(1179)
collect Musquash Root##2784 |goto Stormwind City 57.66,72.78 |q 335 |only if haveq(335) or completedq(335)
step
talk Archmage Malin##2708
accept Malin's Request##690 |goto Stormwind City 39.77,81.44
step
Enter the building |goto Stormwind City 39.84,85.21 < 10 |walk
talk Connor Rivers##5081
|tip Inside the building.
accept James Hyal##1301 |goto Stormwind City 40.62,91.83
step
Enter the building |goto Stormwind City 29.19,74.12 < 10 |walk
talk Zardeth of the Black Claw##1435
|tip Downstairs inside the building.
turnin A Noble Brew##335 |goto Stormwind City 26.45,78.65
accept A Noble Brew##336 |goto Stormwind City 26.45,78.65
step
talk Ursula Deline##5495
trainer Ursula Deline##5495 |goto Stormwind City/0 26.13,77.20 |q 1247
|tip Train your spells.
|only if Warlock
step
Leave the building |goto Stormwind City 29.19,74.12 < 10 |c |q 336
|only if subzone("The Slaughtered Lamb")
step
_NOTE:_
Be Prepared to Fight
|tip Dashel Stonefist will attack you after you accept this quest in the next guide step.
|tip Also, two level 25-26 enemies will appear and help him fight.
|tip Ignore the helpers, and just focus on killing Dashel Stonefist as fast as you can.
|tip Once he reaches ~25% health, he will surrender and dismiss the helpers, ending the fight.
Click Here to Continue |confirm |q 1447 |future
step
Enter the alley |goto Stormwind City 70.07,48.07 < 10 |only if walking
talk Dashel Stonefist##4961
turnin The Missing Diplomat##1246 |goto Stormwind City 70.53,44.88
accept The Missing Diplomat##1447 |goto Stormwind City 70.53,44.88
step
kill Dashel Stonefist##4961
|tip Ignore the helpers that appear to help him fight, and just focus on killing Dashel Stonefist as fast as you can.
|tip Once he reaches ~25% health, he will surrender and dismiss the helpers, ending the fight.
Watch the dialogue
Defeat Dashel Stonefist |q 1447/1 |goto Stormwind City 70.53,44.88
step
talk Dashel Stonefist##4961
turnin The Missing Diplomat##1447 |goto Stormwind City 70.53,44.88
accept The Missing Diplomat##1247 |goto Stormwind City 70.53,44.88
step
talk Jennea Cannon##5497 |only if Mage
talk Einris Brightspear##5515 |only if Hunter
talk Wu Shen##5479 |only if Warrior
talk Osborne the Night Man##918 |only if Rogue
talk Sheldras Moontree##5504 |only if Druid
talk Brother Benjamin##5484 |only if Priest
talk Arthur the Faithful##5491 |only if Paladin
trainer Jennea Cannon##5497 |goto Stormwind City/0 38.62,79.35 |only if Mage |q 1247
trainer Einris Brightspear##5515  |goto Stormwind City/0 61.66,15.30 |only if Hunter |q 1247
trainer Wu Shen##5479 |goto Stormwind City/0 78.72,45.77 |only if Warrior |q 1247
trainer Osborne the Night Man##918 |goto Stormwind City/0 74.54,52.80 |only if Rogue |q 1247
trainer Sheldras Moontree##5504 |goto Stormwind City/0 20.92,55.52 |only if Druid |q 1247
trainer Brother Benjamin##5484 |goto Stormwind City/0 41.64,28.98 |only if Priest |q 1247
trainer Arthur the Faithful##5491 |goto Stormwind City/0 38.65,32.80 |only if Paladin |q 1247
|tip Inside the tower. |only if Mage
|tip Inside the building. |only if Hunter or Warrior or Priest or Paladin
|tip He patrols inside. |only if Priest
|tip Train your spells.
step
Follow the path |goto Stormwind City 74.90,51.57 < 10 |only if walking
Enter the building |goto Stormwind City 78.04,47.98 < 10 |walk
talk Wu Shen##5479
|tip Upstairs inside the building.
accept The Islander##1718 |goto Stormwind City 78.68,45.79
|only if Warrior
step
Enter the building |goto Stormwind City 59.96,64.19 < 10 |walk
talk Elling Trias##482
|tip Upstairs inside the building.
turnin The Missing Diplomat##1247 |goto Stormwind City 59.91,64.17
accept The Missing Diplomat##1248 |goto Stormwind City 59.91,64.17
step
Enter the building |goto Stormwind City 69.09,28.70 < 15 |walk
Follow the path |goto Stormwind City 72.71,25.85 < 10 |walk
talk Lord Baurles K. Wishock##1439
|tip Inside the building.
turnin A Noble Brew##336 |goto Stormwind City 75.23,31.67
step
Leave the Petitioner's Chamber |goto Stormwind City 72.80,26.02 < 10 |walk |only if subzone("Petitioner's Chamber")
Follow the path |goto Stormwind City 72.72,22.92 < 10 |walk
Continue following the path |goto Stormwind City 70.17,11.34 < 10 |walk
talk Milton Sheaf##1440
|tip Inside the building.
turnin An Old History Book##337 |goto Stormwind City 74.17,7.49
accept Southshore##538 |goto Stormwind City 74.17,7.49
step
talk Auctioneer Jaxon##15659
|tip Purchase these items from the Auction House
|tip They are used for a quest later.
|tip You can skip this step if you cannot afford it.
collect Bolt of Woolen Cloth##2997 |q 565/1 |future |goto Stormwind City 53.61,59.76
collect Hillman's Cloak##3719 |q 565/3 |future |goto Stormwind City 53.61,59.76
collect 4 Lesser Bloodstone Ore##4278 |q 627 |future |goto Stormwind City 53.61,59.76
|only if not selfmade
step
talk Olivia Burnside##2455
|tip Inside the building.
|tip Deposit these items into the bank.
bank 4 Lesser Bloodstone Ore##4278 |goto Stormwind City 57.66,72.78 |q 627 |future |only if itemcount(4278) >= 4
step
Enter the building |goto Wetlands 10.79,59.77 < 10 |walk
talk Vincent Hyal##5082
|tip Inside the building.
turnin James Hyal##1301 |goto Wetlands 10.81,60.42
accept James Hyal##1302 |goto Wetlands 10.81,60.42
step
_NOTE:_
Be Ready to Attack Tapoke "Slim" Jahn
|tip He is standing inside the building, near the entrance of the inn in Menethil Harbor.
|tip You can see him from where you turn in and accept quests in the next guide step.
|tip Immediately after you accept the quest in the next guide step, Tapoke "Slim" Jahn will stealth and start walking toward the building entrance.
|tip Follow him and attack him after he leaves the inn.
|tip He will summon another enemy to help him fight.
|tip Crowd control or ignore his helper, and just focus on killing Tapoke "Slim" Jahn as quickly as you can.
|tip He will surrender at ~15% health and his helper will disappear.
|tip As a Mage, you can try to Sheep him immediately once he becomes attackable, to prevent him from summoning his helper.		|only if Mage
Click Here to Continue |confirm |q 1249 |future
step
talk Mikhail##4963
|tip Inside the building.
turnin The Missing Diplomat##1248 |goto Wetlands 10.60,60.77
accept The Missing Diplomat##1249 |goto Wetlands 10.60,60.77
step
kill Tapoke "Slim" Jahn##4962
|tip He stealths inside the inn and walks out of the building to this location.
|tip He unstealths and tries to run away, so you will have to attack him.
|tip He will summon another enemy to help him fight.
|tip Crowd control or ignore his helper, and just focus on killing Tapoke "Slim" Jahn as quickly as you can.
|tip He will surrender at ~15% health and his helper will disappear.
|tip As a Mage, you can try to Sheep him immediately once he becomes attackable, to prevent him from summoning his helper.		|only if Mage
|tip If you have trouble, try to find someone to help you.
Defeat Tapoke Jahn |q 1249/1 |goto Wetlands 10.79,59.60
step
Enter the building |goto Wetlands 10.79,59.77 < 10 |walk
talk Mikhail##4963
|tip Inside the building.
turnin The Missing Diplomat##1249 |goto Wetlands 10.60,60.77
step
talk Tapoke "Slim" Jahn##4962
|tip Inside the building.
accept The Missing Diplomat##1250 |goto Wetlands 10.54,60.26
step
talk Mikhail##4963
|tip Inside the building.
turnin The Missing Diplomat##1250 |goto Wetlands 10.60,60.77
accept The Missing Diplomat##1264 |goto Wetlands 10.60,60.77
step
talk Innkeeper Helbrek##1464
|tip Inside the building.
home Deepwater Tavern |goto Wetlands 10.70,60.95
step
Leave the building |goto Wetlands 10.79,59.77 < 10 |walk |only if subzone("Deepwater Tavern")
talk Bethaine Flinthammer##10046
|tip Stable your permanent pet.
|tip You are about to tame a temporary pet soon, so you can learn "Bite 5".
Click Here to Continue |confirm |goto Wetlands 10.53,59.73 |q 564 |future
|only if Hunter
step
_NOTE:_
Tame a Plains Creeper
|tip Use your "Tame Beast" ability on a Plains Creeper.
|tip They look like grey spiders around this area.
|tip Make sure to tame a level 32 Plains Creeper.
Learn the "Bite 5" Pet Ability
|tip Kill enemies around this area until you see a message in your chat saying you learned "Bite 5".
|tip You will teach "Bite 5" to your permanent pet soon.
Click Here to Continue |confirm |goto Arathi Highlands 42.24,58.83 |q 564 |future
|only if Hunter
step
talk Darren Malvew##2382
accept Costly Menace##564 |goto Hillsbrad Foothills 52.42,55.96
step
talk Loremaster Dibbs##2277
turnin Southshore##538 |goto Hillsbrad Foothills 50.57,57.09
step
talk Wesley##9978
|tip Abandon your temporary pet and get your permanent pet from the stable.
|tip Teach "Bite 5" to your permanent pet.
Click Here to Continue |confirm |goto Hillsbrad Foothills 50.42,58.80 |q 536 |future
|only if Hunter
step
Enter the building |goto Hillsbrad Foothills 50.45,58.55 < 10 |walk
talk Lieutenant Farren Orinelle##2228
|tip Inside the building.
accept Down the Coast##536 |goto Hillsbrad Foothills 51.46,58.38
step
talk Chef Jessen##2430
|tip Inside the building.
accept Soothing Turtle Bisque##555 |goto Hillsbrad Foothills 51.89,58.68
stickystart "Kill_Torn_Fin_Oracles"
step
Leave the building |goto Hillsbrad Foothills 50.45,58.55 < 10 |walk |only if subzone("Southshore") and _G.IsIndoors()
kill 10 Torn Fin Tidehunter##2377 |q 536/1 |goto Hillsbrad Foothills 46.55,64.38
|tip Enemies near the murloc huts tend to pull in groups. |only if hardcore
|tip Torn Fin Oracles may heal when at low health. |only if hardcore
|tip Torn Fin Tidehunters may root you in place. |only if hardcore
|tip Enemies around this area may run away in fear when at low health. |only if hardcore
|tip You can find more in the water along the shore.
You can find more around: |notinsticky
[43.51,67.70]
[37.04,68.74]
step
label "Kill_Torn_Fin_Oracles"
kill 10 Torn Fin Oracle##2376 |q 536/2 |goto Hillsbrad Foothills 46.55,64.38
|tip You can find more in the water along the shore.
|tip Enemies near the murloc huts tend to pull in groups. |only if hardcore |notinsticky
|tip Torn Fin Oracles may heal when at low health. |only if hardcore |notinsticky
|tip Torn Fin Tidehunters may root you in place. |only if hardcore |notinsticky
|tip Enemies around this area may run away in fear when at low health. |only if hardcore |notinsticky
You can find more around: |notinsticky
[43.51,67.70]
[37.04,68.74]
step
Enter the building |goto Hillsbrad Foothills 50.45,58.55 < 10 |walk
talk Lieutenant Farren Orinelle##2228
|tip Inside the building.
turnin Down the Coast##536 |goto Hillsbrad Foothills 51.46,58.38
accept Farren's Proof##559 |goto Hillsbrad Foothills 51.46,58.38
step
Leave the building |goto Hillsbrad Foothills 50.45,58.55 < 10 |walk |only if subzone("Southshore") and _G.IsIndoors()
Kill Torn Fin enemies around this area
|tip You can find more in the water along the shore.
|tip Enemies near the murloc huts tend to pull in groups. |only if hardcore
|tip Torn Fin Oracles may heal when at low health. |only if hardcore
|tip Torn Fin Tidehunters may root you in place. |only if hardcore
|tip Enemies around this area may run away in fear when at low health. |only if hardcore
collect 10 Murloc Head##3716 |q 559/1 |goto Hillsbrad Foothills 46.55,64.38
You can find more around: |notinsticky
[43.51,67.70]
[37.04,68.74]
step
Enter the building |goto Hillsbrad Foothills 50.45,58.55 < 10 |walk
talk Lieutenant Farren Orinelle##2228
|tip Inside the building.
turnin Farren's Proof##559 |goto Hillsbrad Foothills 51.46,58.38
accept Farren's Proof##560 |goto Hillsbrad Foothills 51.46,58.38
step
Leave the building |goto Hillsbrad Foothills 50.45,58.55 < 10 |walk |only if subzone("Southshore") and _G.IsIndoors()
talk Marshal Redpath##2263
turnin Farren's Proof##560 |goto Hillsbrad Foothills 49.48,58.73
accept Farren's Proof##561 |goto Hillsbrad Foothills 49.48,58.73
step
Enter the building |goto Hillsbrad Foothills 49.00,59.12 < 10 |walk
talk Magistrate Henry Maleb##2276
|tip Inside the building.
accept Syndicate Assassins##505 |goto Hillsbrad Foothills 48.14,59.11
step
Leave the building |goto Hillsbrad Foothills 49.00,59.12 < 10 |walk |only if subzone("Southshore Town Hall")
Enter the building |goto Hillsbrad Foothills 50.45,58.55 < 10 |walk
talk Lieutenant Farren Orinelle##2228
|tip Inside the building.
turnin Farren's Proof##561 |goto Hillsbrad Foothills 51.46,58.38
accept Stormwind Ho!##562 |goto Hillsbrad Foothills 51.46,58.38
stickystart "Kill_Daggerspine_Sirens"
step
Leave the building |goto Hillsbrad Foothills 50.45,58.55 < 10 |walk |only if subzone("Southshore") and _G.IsIndoors()
kill 10 Daggerspine Shorehunter##2369 |q 562/1 |goto Hillsbrad Foothills 53.42,64.21
|tip You can find more in the water along the shore.
|tip Daggerspine enemies may run away in fear when at low health.	|only if hardcore
|tip Daggerspine Siren are ranged attackers that deal heavy damage.	|only if hardcore
|tip Watch for patrols and respawn while in the area.			|only if hardcore
You can find more around: |notinsticky
[57.57,66.32]
[60.95,75.24]
step
label "Kill_Daggerspine_Sirens"
kill 10 Daggerspine Siren##2371 |q 562/2 |goto Hillsbrad Foothills 53.42,64.21
|tip You can find more in the water along the shore.
|tip Daggerspine enemies may run away in fear when at low health.	|only if hardcore |notinsticky
|tip Daggerspine Siren are ranged attackers that deal heavy damage.	|only if hardcore |notinsticky
|tip Watch for patrols and respawn while in the area.			|only if hardcore |notinsticky
You can find more around: |notinsticky
[57.57,66.32]
[60.95,75.24]
step
Kill enemies around this area
|tip You can find more in the water along the shore.
|tip You should already be level 33, or pretty close.
|tip Daggerspine enemies may run away in fear when at low health.	|only if hardcore |notinsticky
|tip Daggerspine Siren are ranged attackers that deal heavy damage.	|only if hardcore |notinsticky
|tip Watch for patrols and respawn while in the area.			|only if hardcore |notinsticky
ding 33 |goto Hillsbrad Foothills 53.42,64.21
You can find more around: |notinsticky
[57.57,66.32]
[60.95,75.24]
step
Enter the building |goto Hillsbrad Foothills 50.45,58.55 < 10 |walk
talk Lieutenant Farren Orinelle##2228
|tip Inside the building.
turnin Stormwind Ho!##562 |goto Hillsbrad Foothills 51.46,58.38
accept Reassignment##563 |goto Hillsbrad Foothills 51.46,58.38
step
Leave the building |goto Hillsbrad Foothills 50.45,58.55 < 10 |walk |only if subzone("Southshore") and _G.IsIndoors()
talk Bartolo Ginsetti##2438
accept Bartolo's Yeti Fur Cloak##565 |goto Hillsbrad Foothills 49.60,55.80
step
Leave the building |goto Hillsbrad Foothills 50.45,58.55 < 10 |walk |only if subzone("Southshore") and _G.IsIndoors()
Enter the building |goto Hillsbrad Foothills 49.31,55.49 < 10 |walk
talk Micha Yance##2381
|tip Inside the building.
buy Soothing Spices##3713 |q 555/2 |goto Hillsbrad Foothills 48.94,55.03
buy Fine Thread##2321 |q 565/2 |goto Hillsbrad Foothills 48.94,55.03
|tip Be careful not to accidentally sell this to a vendor.
step
_NOTE:_
Incoming Cave Step
|tip The next step has you venturing into a cave.
|tip While inside, there are constant patrols and inconsistent respawns of the yetis.
|tip The quest is optional.
|tip If you end up skipping, abandon the quest "A King's Tribute".
|tip You will also need to grind 2,500 xp.
Click Here to Continue |confirm |q 689 |future
|only if hardcore
stickystart "Collect_YetiFur"
step
Leave the building |goto Hillsbrad Foothills 49.31,55.49 < 10 |walk |only if subzone("Southshore") and _G.IsIndoors()
click Alterac Granite##2714+
|tip They look like flat grey stones standing upright near the walls inside the cave.
|tip Watch for patrols and respawns while inside the cave. |only if hardcore
collect 5 Alterac Granite##4521 |q 689/1 |goto Hillsbrad Foothills 46.18,31.83
step
label "Collect_YetiFur"
Kill Yetis in the area
collect 10 Yeti Fur##3720 |q 565/4 |goto Hillsbrad Foothills 46.18,31.83
stickystart "Kill_Hulking_Mountain_Lions"
step
Leave the cave |goto Hillsbrad Foothills 46.18,31.83 < 15 |walk |only if subzone("Darrow Hill") and _G.IsIndoors()
kill 8 Mountain Lion##2406 |q 564/1 |goto Alterac Mountains 43.94,77.87
You can find more around: |notinsticky
[Alterac Mountains 37.69,85.48]
[Alterac Mountains 32.86,83.10]
stickystart "Kill_Syndicate_Thieves"
stickystart "Kill_Syndicate_Footpads"
step
click Syndicate Documents##1738
|tip Be careful, the enemies in these camps respawn pretty quickly.
|tip If you have trouble, try to find someone to help you.
accept Foreboding Plans##510 |goto Alterac Mountains 47.91,82.13
accept Encrypted Letter##511 |goto Alterac Mountains 47.91,82.13
If it's not here, check the other camp at [58.32,67.92]
step
label "Kill_Syndicate_Thieves"
Follow the path up |goto Alterac Mountains 53.84,65.36 < 30 |only if walking and not subzone("Sofera's Naze")
kill 8 Syndicate Thief##2241 |q 505/2 |goto Alterac Mountains 58.32,67.92
|tip Focus on killing them in this camp. |notinsticky
|tip The next step in the guide is nearby this camp. |notinsticky
|tip Watch for patrols and respawns while in the area.		|only if hardcore |notinsticky
|tip Enemies near the camp tend to pull in a group.		|only if hardcore |notinsticky
step
label "Kill_Syndicate_Footpads"
Follow the path up |goto Alterac Mountains 53.84,65.36 < 30 |only if walking and not subzone("Sofera's Naze")
kill 12 Syndicate Footpad##2240 |q 505/1 |goto Alterac Mountains 58.32,67.92
|tip Focus on killing them in this camp. |notinsticky
|tip The next step in the guide is nearby this camp. |notinsticky
|tip Watch for patrols and respawns while in the area.		|only if hardcore |notinsticky
|tip Enemies near the camp tend to pull in a group.		|only if hardcore |notinsticky
step
label "Kill_Hulking_Mountain_Lions"
kill 10 Hulking Mountain Lion##2407 |q 564/2 |goto Alterac Mountains 43.94,77.87
You can find more around: |notinsticky
[37.69,85.48]
[32.86,83.10]
step
kill Snapjaw##2408+
collect 10 Turtle Meat##3712 |q 555/1 |goto Hillsbrad Foothills 70.16,11.90
|tip Be careful not to accidentally sell these to a vendor.
|tip There may be a patrolling elite enemy in the area.
You can find more around: |notinsticky
[Alterac Mountains 73.90,66.37]
[Alterac Mountains 80.00,58.78]
[Alterac Mountains 84.47,51.55]
[Alterac Mountains 89.72,47.03]
step
Follow the path north to the road |goto Alterac Mountains 80.36,53.97 < 100 |only if walking and not zone("Western Plaguelands")
Follow the road |goto Alterac Mountains 80.02,42.29 < 40 |only if walking and not zone("Western Plaguelands")
talk Bibilfaz Featherwhistle##12596
fpath Chillwind Camp |goto Western Plaguelands 42.93,85.06
step
talk Darren Malvew##2382
turnin Costly Menace##564 |goto Hillsbrad Foothills 52.42,55.96
step
talk Bartolo Ginsetti##2438
turnin Bartolo's Yeti Fur Cloak##565 |goto Hillsbrad Foothills 49.60,55.80
step
talk Loremaster Dibbs##2277
turnin Encrypted Letter##511 |goto Hillsbrad Foothills 50.57,57.09
accept Letter to Stormpike##514 |goto Hillsbrad Foothills 50.57,57.09
step
Enter the building |goto Hillsbrad Foothills 50.45,58.55 < 10 |walk
talk Chef Jessen##2430
|tip Inside the building.
turnin Soothing Turtle Bisque##555 |goto Hillsbrad Foothills 51.89,58.68
step
Leave the building |goto Hillsbrad Foothills 50.45,58.55 < 10 |walk |only if subzone("Southshore") and _G.IsIndoors()
talk Phin Odelic##2711
accept Hints of a New Plague?##659 |goto Hillsbrad Foothills 50.34,59.05
step
Enter the building |goto Hillsbrad Foothills 49.02,59.12 < 10 |walk
talk Magistrate Henry Maleb##2276
|tip Inside the building.
turnin Syndicate Assassins##505 |goto Hillsbrad Foothills 48.14,59.11
turnin Foreboding Plans##510 |goto Hillsbrad Foothills 48.14,59.11
step
talk Captain Nials##2700
accept Northfold Manor##681 |goto Arathi Highlands 45.83,47.55
step
talk Skuerto##2789
turnin Malin's Request##690 |goto Arathi Highlands 46.65,47.01
step
Leave Refuge Pointe |goto Arathi Highlands 48.35,44.93 < 40 |only if walking and subzone("Refuge Pointe")
talk Quae##2712
turnin Hints of a New Plague?##659 |goto Arathi Highlands 60.19,53.85
accept Hints of a New Plague?##658 |goto Arathi Highlands 60.19,53.85
stickystart "Kill_Syndicate_Highwaymen"
step
kill 6 Syndicate Mercenary##2589 |q 681/2 |goto Arathi Highlands 32.67,29.22
|tip They are also inside the buildings.					|only if not hardcore
|tip They can also be found inside buildings, but it's dangerous to enter.	|only if hardcore
|tip Enemies tend to be bunched together inside buildings. |only if hardcore
step
label "Kill_Syndicate_Highwaymen"
kill 10 Syndicate Highwayman##2586 |q 681/1 |goto Arathi Highlands 32.67,29.22
|tip They are usually stealthed, so be careful.
|tip They are also inside the buildings. |notinsticky
|tip You can find more stealted along the small hill ridges surrounding this village.
step
talk Captain Nials##2700
turnin Northfold Manor##681 |goto Arathi Highlands 45.83,47.55
step
talk Vikki Lonsav##2808
|tip Buy enough ammo to fill your ammo bag, plus 10-12 extra stacks.
|tip You will be out questing for a while without access to an arrow vendor.
Visit the Vendor |vendor Vikki Lonsav##2808 |goto Arathi Highlands 46.45,47.60 |q 658
|only if Hunter
step
talk Baldruc##4321
fpath Theramore |goto Dustwallow Marsh 67.48,51.30
step
Enter the building |goto Dustwallow Marsh 66.12,51.56 < 10 |walk
talk Helenia Olden##4897
|tip Inside the building.
buy 3 Soothing Spices##3713 |goto Dustwallow Marsh 66.44,51.46 |q 1218 |future
|tip Be careful not to accidentally sell these to a vendor.
step
Enter the building |goto Dustwallow Marsh 65.99,45.20 < 10 |walk
talk Fiora Longears##4456
|tip Inside the building.
accept Highperch Venom##1135 |goto Dustwallow Marsh/0 66.46,45.15
step
talk Innkeeper Janene##6272
|tip Inside the building.
home Theramore Isle |goto Dustwallow Marsh/0 66.59,45.22
step
Leave the building |goto Dustwallow Marsh/0 65.99,45.20 < 10 |walk |only if subzone("Theramore Isle") and _G.IsIndoors()
Enter the building |goto Dustwallow Marsh/0 67.81,47.69 < 15 |walk
Run up the stairs |goto Dustwallow Marsh/0 68.17,48.77 < 7 |walk
talk Clerk Lendry##5083
|tip Upstairs inside the building.
turnin James Hyal##1302 |goto Dustwallow Marsh/0 67.88,48.24
step
talk Commander Samaul##4964
|tip Upstairs inside the building.
turnin The Missing Diplomat##1264 |goto Dustwallow Marsh/0 68.02,48.71
accept The Missing Diplomat##1265 |goto Dustwallow Marsh/0 68.02,48.71
step
Leave the building |goto Dustwallow Marsh/0 67.81,47.69 < 15 |walk |only if subzone("Foothold Citadel")
Leave Theramore Isle and follow the road |goto Dustwallow Marsh/0 64.82,46.60 < 40 |only if walking and subzone("Theramore Isle")
talk "Swamp Eye" Jarl##4792
accept Soothing Spices##1218 |goto Dustwallow Marsh/0 55.44,26.27
step
talk "Swamp Eye" Jarl##4792
turnin Soothing Spices##1218 |goto Dustwallow Marsh/0 55.44,26.27
step
click Loose Dirt
accept The Orc Report##1219 |goto Dustwallow Marsh/0 55.44,25.93
step
talk Mudcrush Durtfeet##4503
|tip Follow the road to this location.
|tip Be careful to avoid Brackenwall Village and enemies along the way.
|tip The enemies in this zone are a good bit higher level than you.
accept Hungry!##1177 |goto Dustwallow Marsh/0 35.15,38.25
step
click Suspicious Hoofprint
accept Suspicious Hoofprints##1284 |goto Dustwallow Marsh/0 29.70,47.63
|tip This requires that you complete the "James Hyal" questline started in the "Stranglethorn Vale (32-32)" guide.
step
click Theramore Guard Badge
|tip It looks like a tiny metal object on the floor.
accept Lieutenant Paval Reethe##1252 |goto Dustwallow Marsh/0 29.83,48.24
|tip This requires that you complete the "James Hyal" questline started in the "Stranglethorn Vale (32-32)" guide.
step
click Black Shield
accept The Black Shield##1253 |goto Dustwallow Marsh/0 29.63,48.59
|tip This requires that you complete the "James Hyal" questline started in the "Stranglethorn Vale (32-32)" guide.
step
Ride an elevator down |goto Thousand Needles 31.72,23.63 < 30 |only if walking
click Henrig Lonebrow's Journal
|tip It looks like a small brown book in a dead dwarf's hand.
|tip If someone looted it recently, it can take a few minutes to reappear.
|tip Don't worry, the horde NPCs won't attack you. |only if hardcore
collect Henrig Lonebrow's Journal##5791 |goto Thousand Needles 30.73,24.35 |q 1100 |future
step
use Henrig Lonebrow's Journal##5791
accept Lonebrow's Journal##1100
step
talk Thyssiana##4319
fpath Thalanaar |goto Feralas 89.50,45.85
step
talk Falfindel Waywarder##4048
turnin Lonebrow's Journal##1100 |goto Feralas 89.64,46.56
turnin Reclaiming the Charred Vale##1059 |goto Feralas 89.64,46.56
step
Follow the path up |goto Thousand Needles 14.00,32.15 < 20 |only if walking and not subzone("Highperch")
Kill Highperch enemies around this area
|tip They look like wyverns.
|tip Watch for patrols and respawns while in the area. |only if hardcore
collect 10 Highperch Venom Sac##5809 |q 1135/1 |goto Thousand Needles 11.09,35.88
step
Leave Highperch |goto Thousand Needles 13.79,33.69 < 20 |only if walking and subzone("Highperch")
talk Kravel Koalbeard##4452
|tip Avoid Freewind Post while you travel here.
accept Rocket Car Parts##1110 |goto Thousand Needles 77.79,77.27
step
talk Fizzle Brassbolts##4454
accept Salt Flat Venom##1104 |goto Thousand Needles 78.06,77.13
step
talk Wizzle Brassbolts##4453
turnin The Brassbolts Brothers##1179 |goto Thousand Needles 78.14,77.12
accept Hardened Shells##1105 |goto Thousand Needles 78.14,77.12
step
talk Pozzik##4630
accept Load Lightening##1176 |goto Thousand Needles 80.18,75.89
step
talk Trackmaster Zherin##4629
accept A Bump in the Road##1175 |goto Thousand Needles 81.64,77.95
stickystart "Collect_Rocket_Car_Parts"
stickystart "Kill_Saltstone_Crystalhides"
step
kill 6 Saltstone Gazer##4150 |q 1175/3 |goto Thousand Needles 77.51,87.20
|tip You can back away from their gaze cast to not be stunned. |only if hardcore
stickystart "Collect_Hollow_Vulture_Bones"
stickystart "Collect_Hardened_Tortoise_Shells"
stickystart "Collect_Salty_Scorpid_Venom"
stickystart "Kill_Saltstone_Basilisks"
step
label "Collect_Hollow_Vulture_Bones"
Kill Salt Flats enemies around this area
|tip They look like vultures.
|tip You can rarely find individual ones all around Shimmering Flats.
|tip However, this is the only location where there are multiple of them.
collect 10 Hollow Vulture Bone##5848 |q 1176/1 |goto Thousand Needles 87.45,65.73
|tip Work on other quests in the northern part of Shimmering Flats, and keep revisiting this area until you have them all.
step
label "Collect_Salty_Scorpid_Venom"
Kill Scorpid enemies around this area
'|kill Scorpid Reaver##4140, Scorpid Terror##4139, Vile Sting##5937
|tip They look like scorpions.
|tip These should be your second priority, the drop rate is rather low.
collect 6 Salty Scorpid Venom##5794 |q 1104/1 |goto Thousand Needles 71.60,73.80
You can find more around: |notinsticky
[77.95,53.29]
[73.56,56.98]
[71.30,66.70]
[77.61,68.70]
step
label "Collect_Hardened_Tortoise_Shells"
Kill Sparkleshell enemies around this area
|tip They look like turtles.
|tip Save your Turtle Meat for a future quest.
collect 9 Hardened Tortoise Shell##5795 |q 1105/1 |goto Thousand Needles 82.53,55.37
You can find more around: |notinsticky
[77.41,53.72]
[73.05,56.51]
[74.82,63.33]
step
label "Kill_Saltstone_Basilisks"
kill 10 Saltstone Basilisk##4147 |q 1175/1 |goto Thousand Needles 77.73,59.22
|tip These are primarily found around the crater.
You can find more around: |notinsticky
[73.41,57.27]
[70.97,66.69]
[77.48,52.40]
step
label "Kill_Saltstone_Crystalhides"
kill 10 Saltstone Crystalhide##4151 |q 1175/2 |goto Thousand Needles 77.51,87.20
step
label "Collect_Rocket_Car_Parts"
click Rocket Car Rubble##19868+
|tip They look like various machine parts scattered on the ground.
|tip You can find them all throughout the Shimmering Flats.
collect 30 Rocket Car Parts##5798 |q 1110/1 |goto Thousand Needles 83.06,61.38
You can find more around: |notinsticky
[77.95,53.29]
[73.56,56.98]
[71.30,66.70]
[77.61,68.70]
step
talk Kravel Koalbeard##4452
|tip Avoid Freewind Post while you travel here.
turnin Rocket Car Parts##1110 |goto Thousand Needles 77.79,77.27
accept Wharfmaster Dizzywig##1111 |goto Thousand Needles 77.79,77.27
accept Hemet Nesingwary##5762 |goto Thousand Needles 77.79,77.27
step
talk Fizzle Brassbolts##4454
turnin Salt Flat Venom##1104 |goto Thousand Needles 78.06,77.13
step
talk Wizzle Brassbolts##4453
turnin Hardened Shells##1105 |goto Thousand Needles 78.14,77.12
step
talk Pozzik##4630
turnin Load Lightening##1176 |goto Thousand Needles 80.18,75.88
accept Goblin Sponsorship##1178 |goto Thousand Needles 80.18,75.88
step
talk Trackmaster Zherin##4629
turnin A Bump in the Road##1175 |goto Thousand Needles 81.63,77.95
step
talk Bera Stonehammer##7823
fpath Gadgetzan |goto Tanaris 51.01,29.34
step
talk Fiora Longears##4456
|tip Inside the building.
turnin Highperch Venom##1135 |goto Dustwallow Marsh/0 66.46,45.15
step
Leave the building |goto Dustwallow Marsh/0 65.99,45.20 < 10 |walk |only if subzone("Theramore Isle") and _G.IsIndoors()
talk Theramore Lieutenant##4947
turnin The Orc Report##1219 |goto Dustwallow Marsh/0 65.07,47.13
accept Captain Vimes##1220 |goto Dustwallow Marsh/0 65.07,47.13
step
Enter the building |goto Dustwallow Marsh/0 67.78,47.59 < 15 |walk
Run up the stairs |goto Dustwallow Marsh/0 68.17,48.76 < 10 |walk
talk Captain Garran Vimes##4944
|tip Upstairs inside the building.
turnin Captain Vimes##1220 |goto Dustwallow Marsh/0 68.21,48.62
turnin Suspicious Hoofprints##1284 |goto Dustwallow Marsh/0 68.21,48.62
turnin Lieutenant Paval Reethe##1252 |goto Dustwallow Marsh/0 68.21,48.62
accept Lieutenant Paval Reethe##1259 |goto Dustwallow Marsh/0 68.21,48.62
turnin The Black Shield##1253 |goto Dustwallow Marsh/0 68.21,48.62
accept The Black Shield##1319 |goto Dustwallow Marsh/0 68.21,48.62
step
talk Adjutant Tesoran##4948
|tip Upstairs inside the building.
turnin Lieutenant Paval Reethe##1259 |goto Dustwallow Marsh/0 68.05,48.11
accept Daelin's Men##1285 |goto Dustwallow Marsh/0 68.05,48.11
step
talk Captain Garran Vimes##4944
|tip Upstairs inside the building.
turnin Daelin's Men##1285 |goto Dustwallow Marsh/0 68.21,48.62
step
Leave the building |goto Dustwallow Marsh/0 67.78,47.59 < 15 |walk |only if subzone("Foothold Citadel")
Follow the road and enter the building |goto Dustwallow Marsh/0 64.69,49.97 < 10 |walk
talk Caz Twosprocket##4941
|tip Inside the building.
turnin The Black Shield##1319 |goto Dustwallow Marsh/0 64.75,50.43
accept The Black Shield##1320 |goto Dustwallow Marsh/0 64.75,50.43
step
Follow the road and enter the building |goto Dustwallow Marsh/0 67.78,47.59 < 15 |walk
Run up the stairs |goto Dustwallow Marsh/0 68.17,48.76 < 7 |walk
talk Captain Garran Vimes##4944
|tip Upstairs inside the building.
turnin The Black Shield##1320 |goto Dustwallow Marsh/0 68.21,48.62
step
Run up the ramp and jump over the wall to leave Theramore Isle |goto Dustwallow Marsh 65.64,45.37 < 10 |only if walking and subzone("Theramore Isle")
Follow the beach north to reach Ratchet in the Barrens |goto Dustwallow Marsh 64.60,39.77 < 40 |only if walking and zone("Dustwallow Marsh")
Avoid the murloc islands |goto Dustwallow Marsh 59.97,14.53 < 40 |only if walking and zone("Dustwallow Marsh")
Avoid the murloc islands and follow the path north toward Ratchet |goto The Barrens 64.04,58.31 < 40 |only if walking and zone("Dustwallow Marsh")
talk Klannoc Macleod##6236
turnin The Islander##1718 |goto The Barrens 68.62,49.17
accept The Affray##1719 |goto The Barrens 68.62,49.17
|only if Warrior
step
Step on the Grate to Begin the Affray |q 1719/1 |goto The Barrens 68.61,48.72
|only if Warrior
step
kill Affray Challenger##6240+
|tip You will have to kill six of them before Big Will will appear.
|tip You will fight them one at a time.
kill Big Will##6238 |q 1719/2 |goto The Barrens 68.61,48.72
|tip It may take a while before he appears.
|only if Warrior
step
talk Klannoc Macleod##6236
|tip You will learn Berserker Stance from completing this quest.
turnin The Affray##1719 |goto The Barrens 68.62,49.17
accept The Windwatcher##1791 |goto The Barrens 68.62,49.17
|only if Warrior
step
Run up the ramp and jump over the wall to leave Theramore Isle |goto Dustwallow Marsh 65.64,45.37 < 10		|only if walking and subzone("Theramore Isle")
Follow the beach north to reach Ratchet in the Barrens |goto Dustwallow Marsh 64.60,39.77 < 40			|only if walking and zone("Dustwallow Marsh")
Avoid the murloc islands |goto Dustwallow Marsh 59.97,14.53 < 40						|only if walking and zone("Dustwallow Marsh")
Avoid the murloc islands and follow the path north toward Ratchet |goto The Barrens 64.04,58.31 < 40		|only if walking and zone("Dustwallow Marsh") |notravel
talk Fuzruckle##3496
|tip Deposit these items into the bank.
bank Alterac Granite##4521 |goto The Barrens 62.64,37.42 |q 689 |future
|tip You should have 5 of these.
bank Cleverly Encrypted Letter##3521 |goto The Barrens 62.64,37.42 |q 514 |future
bank Farren's Report##3721 |goto The Barrens 62.64,37.42 |q 563 |future
step
talk Bragok##16227
fpath Ratchet |goto The Barrens 63.09,37.16
step
Enter the building |goto The Barrens 62.89,36.52 < 10 |walk
talk Gazlowe##3391
|tip Upstairs inside the building.
turnin Goblin Sponsorship##1178 |goto The Barrens 62.68,36.23
accept Goblin Sponsorship##1180 |goto The Barrens 62.68,36.23
step
talk Wharfmaster Dizzywig##3453
turnin The Barrens Port##1039 |goto The Barrens 63.35,38.45
accept Passage to Booty Bay##1040 |goto The Barrens 63.35,38.45
turnin Wharfmaster Dizzywig##1111 |goto The Barrens 63.35,38.45
accept Parts for Kravel##1112 |goto The Barrens 63.35,38.45
step
talk Wharfmaster Lozgil##4631
turnin Goblin Sponsorship##1180 |goto Stranglethorn Vale 26.35,73.56
accept Goblin Sponsorship##1181 |goto Stranglethorn Vale 26.35,73.56
|tip This requires that you complete the "Load Lightening" questline started in the "Thousand Needles (33-34)" guide.
step
talk Caravaneer Ruzzgot##3945
turnin Passage to Booty Bay##1040 |goto Stranglethorn Vale 27.37,74.08
|tip This quest is received in the Dustwallow Marsh (34-34) guide.
accept The Caravan Road##1041 |goto Stranglethorn Vale 27.37,74.08
step
Enter the building |goto Stranglethorn Vale 28.11,74.98 < 10 |walk
talk Zarena Cromwind##2482
|tip Inside the building.
buy Big Stick##12251 |n
|tip If you can afford it.
|tip It may not be available to buy, since it's a limited supply item.
|tip If you have better, skip this step.
Visit the Vendor |vendor Zarena Cromwind##2482 |goto Stranglethorn Vale 28.34,75.46 |q 605 |future
|only if Warrior and itemcount(12251) == 0
step
Enter the building |goto Stranglethorn Vale 27.08,77.62 < 7 |walk |only if not subzone ("The Salty Sailor Tavern")
talk Innkeeper Skindle##6807
|tip Inside the building.
home Booty Bay |goto Stranglethorn Vale 27.04,77.31
step
talk Crank Fizzlebub##2498
|tip Inside the building.
accept Singing Blue Shards##605 |goto Stranglethorn Vale 27.12,77.21
step
talk Ian Strom##1411
trainer Ian Strom##1411 |goto Stranglethorn Vale/0 26.82,77.16 |q 605
|tip He is on the second floor of the inn, in a back room.
|tip Train your spells.
|only if Rogue
step
talk Krazek##773
|tip Upstairs inside the building, on the top floor.
accept Investigate the Camp##201 |goto Stranglethorn Vale 26.94,77.21
accept Supplies to Private Thorsen##198 |goto Stranglethorn Vale 26.94,77.21
accept The Haunted Isle##616 |goto Stranglethorn Vale 26.94,77.21
step
talk Kebok##737
|tip Upstairs inside the building, on the top floor.
accept Hostile Takeover##213 |goto Stranglethorn Vale 27.00,77.12
step
talk Baron Revilgaz##2496
|tip Upstairs on the balcony of the building.
turnin The Haunted Isle##616 |goto Stranglethorn Vale 27.23,76.87
accept The Stone of the Tides##578 |goto Stranglethorn Vale 27.23,76.87
turnin Goblin Sponsorship##1181 |goto Stranglethorn Vale 27.23,76.87
accept Goblin Sponsorship##1182 |goto Stranglethorn Vale 27.23,76.87
step
_Destroy This Item:_
|tip It is no longer needed.
trash Library Scrip##3898 |goto Stranglethorn Vale 26.54,76.57
step
talk Viznik Goldgrubber##2625
|tip Deposit these items into the bank.
bank Kravel's Parts##5800 |goto Stranglethorn Vale 26.54,76.57 |q 1112 |future
step
Run up the ramp |goto Stranglethorn Vale 27.85,76.76 < 10 |only if walking
Cross the bridge |goto Stranglethorn Vale 28.15,76.52 < 10 |only if walking
Enter the building |goto Stranglethorn Vale 28.21,77.33 < 7 |walk
talk Drizzlik##2495
|tip Inside the building.
accept Supply and Demand##575 |goto Stranglethorn Vale 28.29,77.59
step
Enter the building and run up the stairs |goto Stranglethorn Vale 27.52,77.86 < 7 |only if walking
talk Gyll##2859
|tip Upstairs on the balcony of the building.
fpath Booty Bay |goto Stranglethorn Vale 27.53,77.79
step
Follow the path up into the Rebel Camp |goto Stranglethorn Vale 39.05,5.20 < 20 |only if walking
talk Private Thorsen##738
|tip He periodically walks along the path to the south, from the Rebel Camp.
|tip If he's not here, skip this step, you'll have another chance to turn in this quest later.
turnin Supplies to Private Thorsen##198 |goto Stranglethorn Vale 37.98,3.42
step
talk Sergeant Yohwa##733
accept The Second Rebellion##203 |goto Stranglethorn Vale 38.02,3.33
accept Bad Medicine##204 |goto Stranglethorn Vale 38.02,3.33
step
Leave the Rebel Camp |goto Stranglethorn Vale 39.29,5.56 < 30 |only if walking and subzone("Rebel Camp")
Locate the Hunters' Camp |q 201/1 |goto Stranglethorn Vale 35.55,10.55
step
talk Hemet Nesingwary##715
turnin Hemet Nesingwary##5762 |goto Stranglethorn Vale 35.66,10.81
accept Raptor Mastery##194 |goto Stranglethorn Vale 35.66,10.81
step
talk Ajeck Rouack##717
accept Tiger Mastery##186 |goto Stranglethorn Vale 35.61,10.62
step
talk Sir S. J. Erlgadin##718
accept Panther Mastery##191 |goto Stranglethorn Vale 35.55,10.55
stickystart "Kill_Stranglethorn_Tigers"
step
Follow the path up |goto Stranglethorn Vale 30.79,8.27 < 20 |only if walking
kill 10 Panther##736 |q 191/1 |goto Stranglethorn Vale 30.02,10.56
You can find more around: |notinsticky
[28.35,12.13]
[28.55,16.11]
[30.33,15.29]
step
label "Kill_Stranglethorn_Tigers"
kill 10 Stranglethorn Tiger##682 |q 186/1 |goto Stranglethorn Vale 30.02,10.56
You can find more around: |notinsticky
[28.35,12.13]
[28.55,16.11]
[30.33,15.29]
step
kill 10 Stranglethorn Raptor##685 |q 194/1 |goto Stranglethorn Vale 26.04,16.19
step
kill Crystal Spine Basilisk##689+
collect 10 Singing Crystal Shard##3918 |q 605/1 |count 5 |goto Stranglethorn Vale 27.06,18.51
|tip You don't need to finish this quest now.
You can find more around [25.11,17.42]
step
Kill enemies around this area
|tip You should already be level 35, or pretty close.
|tip You will be completing some difficult quest soon, so being a level higher will help.
ding 35 |goto Stranglethorn Vale 27.06,18.51
You can find more around [25.11,17.42]
step
Locate the Haunted Island |q 578/1 |goto Stranglethorn Vale 21.33,21.93
step
talk Hemet Nesingwary##715
turnin Raptor Mastery##194 |goto Stranglethorn Vale 35.66,10.81
accept Raptor Mastery##195 |goto Stranglethorn Vale 35.66,10.81
step
talk Ajeck Rouack##717
turnin Tiger Mastery##186 |goto Stranglethorn Vale 35.61,10.62
accept Tiger Mastery##187 |goto Stranglethorn Vale 35.61,10.62
step
talk Sir S. J. Erlgadin##718
turnin Panther Mastery##191 |goto Stranglethorn Vale 35.55,10.55
accept Panther Mastery##192 |goto Stranglethorn Vale 35.55,10.55
step
map Stranglethorn Vale
path follow strictbounce; loop off; ants straight; dist 70; markers none
path	32.29,7.85	33.67,8.61	35.19,9.28	36.74,9.43	37.75,10.14
path	39.11,11.77	40.34,13.97
kill River Crocolisk##1150+
|tip On the shore along the river around this area.
|tip They can be on both sides of the river.
collect 2 Large River Crocolisk Skin##4053 |q 575/1
stickystart "Collect_Jungle_Remedies"
stickystart "Kill_Kurzen_Jungle_Fighters"
step
Follow the path |goto Stranglethorn Vale 40.33,8.32 < 40 |only if walking and not subzone("Kurzen's Compound")
click Kurzen Supplies##264
|tip In front of the building.
|tip Be careful to stay out of sight of the enemies near the doorway inside the building.
collect Venom Fern Extract##2634 |q 204/2 |goto Stranglethorn Vale 44.10,9.56
step
label "Collect_Jungle_Remedies"
kill Kurzen Medicine Man##940+
|tip Try to interrupt their spell casts, or drain their mana if you can.
|tip They can heal themselves and other enemies.
collect 7 Jungle Remedy##2633 |q 204/1 |goto Stranglethorn Vale 43.88,10.71
step
label "Kill_Kurzen_Jungle_Fighters"
kill 15 Kurzen Jungle Fighter##937 |q 203/1 |goto Stranglethorn Vale 43.88,10.71
|tip If you don't have help, stay on western outskirts, around this area, and just wait for the enemies to respawn.
|tip They respawn pretty quickly.
step
kill Crystal Spine Basilisk##689+
|tip They spawn all along the mountain here.
collect 10 Singing Crystal Shard##3918 |q 605/1 |goto Stranglethorn Vale 48.20,8.20
stickystart "Collect_Tumbled_Crystals"
step
Follow the path up |goto Stranglethorn Vale 42.25,18.10 < 10 |only if walking
kill Foreman Cozzle##4723
|tip Inside the building at the top of the platform.
|tip He's level 38, but you should be able to kill him at this level.
|tip Be careful not to accidentally aggro him while killing other enemies near the building.
|tip If you have trouble, try to find someone to help you.
|tip Skip this step if you're worried, you'll have another chance later. |only if hardcore
collect Cozzle's Key##5851 |goto Stranglethorn Vale 42.65,18.35 |q 1182
step
Enter the building |goto Stranglethorn Vale 43.45,20.36 < 10 |walk
click Cozzle's Footlocker##20691
|tip Inside the building.
collect Fuel Regulator Blueprints##5852 |q 1182/1 |goto Stranglethorn Vale 43.34,20.34
step
label "Collect_Tumbled_Crystals"
kill Venture Co. Geologist##1096+
collect 8 Tumbled Crystal##4106 |q 213/1 |goto Stranglethorn Vale 44.63,21.45
|tip These are ranged attackers that deal heavy damage.			|only if hardcore |notinsticky
|tip Enemies around this area may run away in fear when at low health.	|only if hardcore |notinsticky
step
Follow the path up into the Rebel Camp |goto Stranglethorn Vale 39.05,5.20 < 20 |only if walking
talk Sergeant Yohwa##733
turnin The Second Rebellion##203 |goto Stranglethorn Vale 38.02,3.33
turnin Bad Medicine##204 |goto Stranglethorn Vale 38.02,3.33
step
talk Corporal Kaleb##770
accept Krazek's Cookery##210 |goto Stranglethorn Vale 37.74,3.30
step
talk Crank Fizzlebub##2498
|tip Inside the building.
turnin Singing Blue Shards##605 |goto Stranglethorn Vale 27.12,77.21
step
talk Viznik Goldgrubber##2625
|tip Withdraw these items from the bank.
collect 4 Lesser Bloodstone Ore##4278 |goto Stranglethorn Vale 26.54,76.57 |q 627 |future
step
talk Krazek##773
|tip Upstairs inside the building, on the top floor.
turnin Investigate the Camp##201 |goto Stranglethorn Vale 26.94,77.21
turnin Krazek's Cookery##210 |goto Stranglethorn Vale 26.94,77.21
step
talk Krazek##773
|tip Upstairs inside the building, on the top floor.
accept Favor for Krazek##627 |goto Stranglethorn Vale 26.94,77.21
|only if itemcount(4278) >= 4
step
talk Krazek##773
|tip Upstairs inside the building, on the top floor.
turnin Favor for Krazek##627 |goto Stranglethorn Vale 26.94,77.21
accept Return to Corporal Kaleb##622 |goto Stranglethorn Vale 26.94,77.21
step
talk Kebok##737
|tip Upstairs inside the building, on the top floor.
turnin Hostile Takeover##213 |goto Stranglethorn Vale 27.00,77.12
step
talk Baron Revilgaz##2496
|tip Upstairs on the balcony of the building.
turnin Goblin Sponsorship##1182 |goto Stranglethorn Vale 27.23,76.87
accept Goblin Sponsorship##1183 |goto Stranglethorn Vale 27.23,76.87
turnin The Stone of the Tides##578 |goto Stranglethorn Vale 27.23,76.87
step
talk Viznik Goldgrubber##2625
|tip Collect these items from the bank.
collect 5 Alterac Granite##4521 |goto Stranglethorn Vale 26.54,76.57 |q 689
collect Cleverly Encrypted Letter##3521 |goto Stranglethorn Vale 26.54,76.57 |q 514
collect Farren's Report##3721 |goto Stranglethorn Vale 26.54,76.57 |q 563
step
Run up the ramp and cross the bridge |goto Stranglethorn Vale 28.15,76.52 < 10 |only if walking
Enter the building |goto Stranglethorn Vale 28.21,77.33 < 7 |walk
talk Drizzlik##2495
|tip Inside the building.
turnin Supply and Demand##575 |goto Stranglethorn Vale 28.29,77.59
step
Enter the building |goto Stranglethorn Vale 28.11,74.98 < 10 |walk
talk Zarena Cromwind##2482
|tip Inside the building.
buy Big Stick##12251 |n
|tip If you can afford it.
|tip It may not be available to buy, since it's a limited supply item.
|tip If you have better, skip this step.
Visit the Vendor |vendor Zarena Cromwind##2482 |goto Stranglethorn Vale 28.34,75.46 |q 1183
|only if Warrior and itemcount(12251) == 0
step
talk Malissa##3135
|tip Walking around here.
|tip Stock up on poisons.
|tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Malissa##3135 |goto Duskwood 79.44,44.44 |q 1041
|only if Rogue
step
Enter the building |goto Duskwood 72.92,46.81 < 10 |walk
talk Clerk Daltry##267
|tip Inside the building.
turnin The Caravan Road##1041 |goto Duskwood 72.53,46.85
accept The Carevin Family##1042 |goto Duskwood 72.53,46.85
|only if haveq(1041)
step
Enter the building |goto Duskwood 75.23,48.25 < 10 |walk
talk Jonathan Carevin##661
|tip Inside the building.
turnin The Carevin Family##1042 |goto Duskwood 75.32,49.02
accept The Scythe of Elune##1043 |goto Duskwood 75.32,49.02
|only if completedq(1041)
step
Enter the mine |goto Duskwood 73.04,75.09 < 10 |walk
|tip Enemies tend to pull in groups around here. |only if hardcore
click Mound of Dirt##19030
|tip Inside the mine.
|tip Try not to linger around the cave longer than needed as the respawns are inconsistent. |only if hardcore
Find Evidence of the Scythe of Elune |q 1043/1 |goto Duskwood 73.53,79.14
|only if haveq(1043)
step
Leave the mine |goto Duskwood 73.04,75.09 < 10 |walk |only if subzone("Roland's Doom")
Enter the building |goto Duskwood 75.23,48.25 < 10 |walk
talk Jonathan Carevin##661
|tip Inside the building.
turnin The Scythe of Elune##1043 |goto Duskwood 75.32,49.02
|only if haveq(1043)
step
Enter the building |goto Stormwind City 54.08,59.01 < 10 |walk
talk Auctioneer Jaxon##15659
|tip Inside the building.
|tip Buy these items from the auction house.
|tip If they're not available, or you can't afford them, skip this step.
|tip You will be able to kill enemies soon to get them, but it will be slower.
collect 8 Liferoot##3357 |goto Stormwind City 53.61,59.76 |q 1712 |future
|only if Warrior and not selfmade
step
Enter Stormwind Keep |goto Stormwind City 69.08,28.70 < 15 |walk
Follow the path |goto Stormwind City 75.95,17.58 < 10 |walk
talk Major Samuelson##2439
|tip Inside the building.
turnin Reassignment##563 |goto Stormwind City 72.60,15.87
step
talk Jennea Cannon##5497 |only if Mage
talk Einris Brightspear##5515 |only if Hunter
talk Ursula Deline##5495 |only if Warlock
talk Wu Shen##5479 |only if Warrior
talk Osborne the Night Man##918 |only if Rogue
talk Sheldras Moontree##5504 |only if Druid
talk Brother Benjamin##5484 |only if Priest
talk Arthur the Faithful##5491 |only if Paladin
trainer Jennea Cannon##5497 |goto Stormwind City/0 38.62,79.35 |only if Mage |q 689
trainer Einris Brightspear##5515  |goto Stormwind City/0 61.66,15.30 |only if Hunter |q 689
trainer Ursula Deline##5495 |goto Stormwind City/0 26.13,77.20 |only if Warlock |q 689
trainer Wu Shen##5479 |goto Stormwind City/0 78.72,45.77 |only if Warrior |q 689
trainer Osborne the Night Man##918 |goto Stormwind City/0 74.54,52.80 |only if Rogue |q 689
trainer Sheldras Moontree##5504 |goto Stormwind City/0 20.92,55.52 |only if Druid |q 689
trainer Brother Benjamin##5484 |goto Stormwind City/0 41.64,28.98 |only if Priest |q 689
trainer Arthur the Faithful##5491 |goto Stormwind City/0 38.65,32.80 |only if Paladin |q 689
|tip Inside the tower. |only if Mage
|tip Inside the building. |only if Hunter or Warrior or Priest or Paladin
|tip He patrols inside. |only if Priest
|tip In the basement. |only if Warlock
|tip Train your spells.
step
Leave Stormwind Keep |goto Stormwind City 69.08,28.70 < 15 |walk |only if subzone("Stormwind Keep")
Run up the stairs and enter the building |goto Ironforge 38.51,85.81 < 7 |walk
talk Grand Mason Marblesten##2790
|tip He walks around inside the building.
turnin A King's Tribute##689 |goto Ironforge 39.04,88.05
|tip The prerequisite for this quest was accepted in the "Wetlands (24-25)" guide.
step
Watch the dialogue
talk Grand Mason Marblesten##2790
|tip He walks around inside the building.
accept A King's Tribute##700 |goto Ironforge 39.04,88.05
step
Follow the path |goto Ironforge 44.56,49.58 < 10 |walk
talk King Magni Bronzebeard##2784
turnin A King's Tribute##700 |goto Ironforge 39.09,56.20
step
talk Roetten Stonehammer##5637
|tip He walks around inside the building.
accept Reclaimers' Business in Desolace##1453 |goto Ironforge 67.91,17.49
step
talk Prospector Stormpike##1356
|tip Inside the building.
turnin Letter to Stormpike##514 |goto Ironforge 74.64,11.73
step
talk Bath'rah the Windwatcher##6176
|tip Inside the building.
|tip Follow the river north to travel to this location.
|tip Avoid Tarren Mill as you travel here.
turnin The Windwatcher##1791 |goto Alterac Mountains 80.50,66.92
accept Cyclonian##1712 |goto Alterac Mountains 80.50,66.92
|only if Warrior
step
talk Fahran Silentblade##3969
|tip Inside the building.
|tip Stock up on poisons.
|tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Fahran Silentblade##3969 |goto Ashenvale 36.49,49.46 |q 1453
|only if Rogue
step
talk Innkeeper Lyshaerya##11103
|tip Inside the building.
home Nijel's Point |goto Desolace 66.27,6.56
step
talk Brother Anton##1182
|tip Inside the building.
accept Down the Scarlet Path##261 |goto Desolace 66.52,7.91
step
talk Kreldig Ungor##5638
turnin Reclaimers' Business in Desolace##1453 |goto Desolace 66.20,9.63
accept The Karnitol Shipwreck##1454 |goto Desolace 66.20,9.63
accept Reagents for Reclaimers Inc.##1458 |goto Desolace 66.20,9.63
step
talk Captain Pentigast##5396
accept Strange Alliance##1382 |goto Desolace 66.66,10.93
step
talk Corporal Melkins##5752
accept Centaur Bounty##1387 |goto Desolace 66.74,10.87
step
talk Vahlarriel Demonslayer##5642
accept Vahlarriel's Search##1437 |goto Desolace 66.44,11.82
stickystart "Collect_Hatefury_Horns"
step
Follow the path down |goto Desolace 67.05,13.04 < 20 |only if walking and subzone("Nijel's Point")
Kill Hatefury enemies around this area
collect 10 Hatefury Claw##6246 |q 1458/1 |goto Desolace 75.60,23.34
|tip Hatefury Rogues will pop in and out of stealth periodically. |only if hardcore |notinsticky
You can find more around: |notinsticky
[79.65,19.76]
[77.19,15.26]
[72.61,18.28]
step
label "Collect_Hatefury_Horns"
Kill Hatefury enemies around this area |notinsticky
collect 10 Hatefury Horn##6247 |q 1458/2 |goto Desolace 75.60,23.34
|tip Hatefury Rogues will pop in and out of stealth periodically. |only if hardcore |notinsticky
You can find more around: |notinsticky
[79.65,19.76]
[77.19,15.26]
[72.61,18.28]
step
Kill enemies around this area
|tip Getting this far into level 35 will allow you to reach level 36 after turning in quests soon.
|tip Hatefury Rogues will pop in and out of stealth periodically. |only if hardcore |notinsticky
ding 35,64500 |goto Desolace 75.60,23.34
You can find more around: |notinsticky
[79.65,19.76]
[77.19,15.26]
[72.61,18.28]
step
Follow the path up into Nijel's Point |goto Desolace 67.43,15.57 < 20 |only if walking
talk Kreldig Ungor##5638
turnin Reagents for Reclaimers Inc.##1458 |goto Desolace 66.20,9.63
accept Reagents for Reclaimers Inc.##1459 |goto Desolace 66.20,9.63
stickystart "Collect_Aged_Kodo_Hides"
stickystart "Collect_Scorp_Venom"
step
click Malem Chest##50961
turnin Vahlarriel's Search##1437 |goto Desolace 56.54,17.83
accept Vahlarriel's Search##1465 |goto Desolace 56.54,17.83
step
talk Bibbly F'utzbuckle##11438
|tip He walks around this area.
accept Bone Collector##5501 |goto Desolace 62.33,38.98
step
talk Azore Aldamort##11863
accept Sceptre of Light##5741 |goto Desolace 38.88,27.17
stickystop "Collect_Scorp_Venom"
stickystop "Collect_Aged_Kodo_Hides"
step
click Karnitol's Chest##35251
turnin The Karnitol Shipwreck##1454 |goto Desolace 36.11,30.45
accept The Karnitol Shipwreck##1455 |goto Desolace 36.11,30.45
step
click Rackmore's Log##177787
|tip It's a small book on the ground.
accept Claim Rackmore's Treasure!##6161 |goto Desolace 36.07,30.41
step
Kill Drysnap enemies around this area
|tip They look like lobsters underwater around this area.
|tip Pull enemies to the top of the water so your breath meter doesn't deteriorate while fighting. |only if hardcore
collect Rackmore's Silver Key##15878 |q 6161/1 |goto Desolace 32.78,31.37
stickystart "Collect_Aged_Kodo_Hides"
stickystart "Collect_Scorp_Venom"
step
Leave the water |goto Desolace 36.05,31.01 < 40 |only if walking and subzone("Sar'theris Strand")
talk Smeed Scrabblescrew##11596
|tip Avoid Ghost Walker Post as you travel here.
accept Kodo Roundup##5561 |goto Desolace 60.86,61.86
stickystart "Collect_Kodo_Bones"
step
use the Kodo Kombobulator##13892
|tip Use it on Kodo enemies around this area.
|tip You can find more all around this bone graveyard area.
Tame #5# Kodos |q 5561/1 |goto Desolace 54.45,63.19
|tip You must bring them back to Smeed Scrabblescrew to tame them.
|tip Talk to the kodos after you bring them to Smeed Scrabblescrew.
Bring the Kodos back to [60.73,61.96]
Gather more Kodos from here [54.45,63.19]
step
talk Smeed Scrabblescrew##11596
turnin Kodo Roundup##5561 |goto Desolace 60.86,61.86
step
label "Collect_Kodo_Bones"
click Kodo Bones##176751
|tip They look like large white horned animal skulls on the ground around this area.
|tip A Kodo Apparition may appear and attack you.
collect 10 Kodo Bone##13703 |q 5501/1 |goto Desolace 51.31,58.04
step
label "Collect_Aged_Kodo_Hides"
kill Aged Kodo##4700+
collect 3 Aged Kodo Hide##6249 |q 1459/2 |goto Desolace 51.41,58.45
stickystop "Collect_Scorp_Venom"
stickystart "Collect_CentaurEars"
step
label "Reach_Friendly_Reputation_With_The_Gelkis_Clan_Centaur"
Kill Magram enemies around this area
|tip The ones in the outskirts of the village are a bit lower level and easier to grind.
|tip Be careful to avoid the Magram Pack Runners that walk around this area with 2 high level hyena guards.
|tip Magram Stormers are ranged attackers that deal heavy damage.						|only if hardcore
Reach Friendly Reputation with the Gelkis Clan Centaur |q 1382/1 |goto Desolace 70.30,73.77
stickystop "Collect_CentaurEars"
stickystart "Collect_Scorp_Venom"
step
Follow the road |goto Desolace 50.33,75.54 < 30 |only if walking
talk Uthek the Wise##5397
turnin Strange Alliance##1382 |goto Desolace 36.23,79.25
accept Raid on the Kolkar##1384 |goto Desolace 36.23,79.25
step
talk Kreldig Ungor##5638
turnin The Karnitol Shipwreck##1455 |goto Desolace 66.20,9.63
accept The Karnitol Shipwreck##1456 |goto Desolace 66.20,9.63
turnin Reagents for Reclaimers Inc.##1459 |goto Desolace 66.20,9.63
step
talk Corporal Melkins##5752
turnin Centaur Bounty##1387 |goto Desolace 66.74,10.87
step
talk Vahlarriel Demonslayer##5642
turnin Vahlarriel's Search##1465 |goto Desolace 66.44,11.82
accept Vahlarriel's Search##1438 |goto Desolace 66.44,11.82
stickystop "Collect_Scorp_Venom"
stickystart "Collect_CentaurEars"
step
Kill Kolkar enemies around this area
|tip Watch for patrols and respawns here.				|only if hardcore
|tip Kolkar Windchasers are ranged attackers that deal heavy damage.	|only if hardcore
|tip Enemies may run away in fear when at low health.			|only if hardcore
collect 10 Crude Charm##6079 |q 1384/1 |goto Desolace 70.03,41.94
You can find more around: |notinsticky
[72.07,47.01]
[73.61,50.00]
step
label "Collect_CentaurEars"
Kill Centaur enemies around this area. |notinsticky
|tip Watch for patrols and respawns here.	|only if hardcore |notinsticky
|tip Enemies may run away in fear when at low health. |only if hardcore |notinsticky
collect 15 Centaur Ear##6067 |q 1387/1 |goto Desolace 70.03,41.94
stickystart "Collect_Scorp_Venom"
step
talk Bibbly F'utzbuckle##11438
|tip He walks around this area.
turnin Bone Collector##5501 |goto Desolace 62.33,38.98
step
Follow the path |goto Desolace 56.06,29.54 < 10 |only if walking
kill Burning Blade Seer##13019
|tip At the top of the tower.
|tip Watch for patrols and respawns while in the area. |only if hardcore
|tip Burning Blade Adepts/Augurs are ranged attackers that deal heavy damage |only if hardcore
|tip Be careful while traveling through the area. |only if hardcore
|tip Enemies are often hidden around corners resulting in undesirable adds in fights. |only if hardcore
collect Sceptre of Light##15750 |q 5741/1 |goto Desolace 55.17,30.15
stickystop "Collect_Scorp_Venom"
step
Enter the building |goto Desolace 55.48,27.83 < 10 |walk
|tip Watch for the patrol that walks counter clock-wise around this building. |only if hardcore
talk Dalinda Malem##5644
|tip Inside the building.
|tip If she's not here, someone may be escorting her.
|tip Wait until she respawns.
turnin Vahlarriel's Search##1438 |goto Desolace 54.86,26.13
accept Search for Tyranis##1439 |goto Desolace 54.86,26.13
step
Leave the building |goto Desolace 55.48,27.83 < 10 |walk
Enter the building |goto Desolace 53.73,29.42 < 10 |walk
|tip Watch for the patrol that walks clock-wise around this building. |only if hardcore
kill Tyranis Malem##5643
|tip Inside the building.
|tip Try to pull him toward the building entrance, so you don't accidentally aggro other enemies.
collect Tyranis' Pendant##6767 |q 1439/1 |goto Desolace 53.01,29.08
step
Leave the building |goto Desolace 53.73,29.42 < 10 |walk
Enter the building |goto Desolace 55.48,27.83 < 10 |walk
|tip Watch for the patrol that walks counter clock-wise around this building. |only if hardcore
talk Dalinda Malem##5644
|tip Inside the building.
|tip If she's not here, someone may be escorting her.
|tip Wait until she respawns.
|tip Clear enemies inside the building if you end up having to wait. |only if hardcore
turnin Search for Tyranis##1439 |goto Desolace 54.86,26.13
accept Return to Vahlarriel##1440 |goto Desolace 54.86,26.13 |noautoaccept
|tip This is an escort quest.
|tip Kill all enemies in this room before starting the quest.
step
Watch the dialogue
|tip Follow Dalinda Malem and protect her as she walks.
|tip She eventually walks to this location.
Rescue Dalinda Malem |q 1440/1 |goto Desolace 58.26,30.95
step
talk Azore Aldamort##11863
turnin Sceptre of Light##5741 |goto Desolace 38.89,27.17
accept Book of the Ancients##6027 |goto Desolace 38.89,27.17
stickystart "Collect_Karnitols_Satchel"
step
click Serpent Statue
|tip You will be attacked immediately, so make sure you are ready before hand.
kill Lord Kragaru##12369
|tip He's level 38, but you should be able to kill him at this level.
|tip If you have trouble, try to find someone to help you.
collect Book of the Ancients##15803 |q 6027/1 |goto Desolace 28.19,6.62
step
click Rackmore's Chest##177786
|tip On the ground at the base of the tree.
|tip Enemies around this area may run away when at low health.			|only if hardcore
|tip Destroy totems that Slitherblade Oracles summon.				|only if hardcore
|tip Slitherblade Sorceress' are ranged attackers that deal heavy damage.	|only if hardcore
turnin Claim Rackmore's Treasure!##6161 |goto Desolace 30.00,8.70
step
label "Collect_Karnitols_Satchel"
Kill Slitherblade enemies around this area
|tip Only Slitherblade Tidehunters and Slitherblade Sea Witches will drop the quest item.
|tip They share spawn points with other types of naga on this island.
|tip Kill all types of naga on this island, to try to get more to spawn.
|tip This drop rate is very low but it is worth doing, it is not advised to skip this step.
|tip Enemies around this area may run away when at low health.			|only if hardcore |notinsticky
|tip Destroy totems that Slitherblade Oracles summon.				|only if hardcore |notinsticky
|tip Slitherblade Sorceress' are ranged attackers that deal heavy damage.	|only if hardcore |notinsticky
collect Karnitol's Satchel##6245 |q 1456/1 |goto Desolace 28.19,6.62
You can find more underwater around [32.18,9.57]
step
Kill enemies around this area
|tip You should already be pretty close to reaching level 37.
|tip Grinding a bit here will reduce the amount you have to grind all at once later.
|tip Enemies around this area may run away when at low health.			|only if hardcore
|tip Destroy totems that Slitherblade Oracles summon.				|only if hardcore
|tip Slitherblade Sorceress' are ranged attackers that deal heavy damage.	|only if hardcore
ding 37 |goto Desolace 28.92,7.85
step
Kill Slitherblade enemies around this area
|tip Underwater.
|tip Pull enemies to the top of the water so your breath meter doesn't deteriorate while fighting. |only if hardcore
collect Rackmore's Golden Key##15881 |q 6161/2 |goto Desolace 35.20,24.86
step
Follow the path up |goto Desolace 40.99,28.91 < 20 |only if walking
talk Azore Aldamort##11863
turnin Book of the Ancients##6027 |goto Desolace 38.89,27.17
stickystart "Collect_Scorp_Venom"
step
Follow the path through the mountains |goto Desolace 41.53,65.03 < 70 |only if walking and not subzone("Gelkis Village")
talk Uthek the Wise##5397
turnin Raid on the Kolkar##1384 |goto Desolace 36.22,79.25
accept Stealing Supplies##1370 |goto Desolace 36.22,79.25
step
Follow the road |goto Desolace 47.02,75.18 < 40 |only if walking and not subzone("Magram Village")
click Sack of Meat##22245+
|tip They look like tan leather bags on the ground near the buildings around this area.
|tip Not all of the tan bags you see will be clickable.
|tip The ones in the outskirts of the village are a bit lower level and easier to grind.			|notinsticky
|tip Be careful to avoid the Magram Pack Runners that walk around this area with 2 high level hyena guards.	|notinsticky
|tip Magram Stormers are ranged attackers that deal heavy damage.						|only if hardcore |notinsticky
collect 6 Crudely Dried Meat##6069 |q 1370/1 |goto Desolace 70.90,75.47
step
kill 30 Undead Ravager##11561 |q 261/1 |goto Desolace 63.96,91.95
|tip They look like brown skeletons.
|tip This quest can be hard at this level, skip it if you don't feel safe. You will get another chance later. |only if hardcore
|tip We recommend trying to complete this quest now if you want to run Scarlet Monastery at level 39-40. |only if hardcore
|tip Watch for respawns while in the area.	|only if hardcore
You can find more around: |notinsticky
[59.78,89.83]
[64.52,82.42]
step
Follow the road |goto Desolace 48.39,75.67 < 40 |only if walking and not subzone("Gelkis Village")
talk Uthek the Wise##5397
turnin Stealing Supplies##1370 |goto Desolace 36.22,79.25
accept Ongeku##1373 |goto Desolace 36.22,79.25 |only if not hardcore
step
label "Collect_Scorp_Venom"
Kill Scorpashi enemies as you quest.
'|kill Scorpashi Snapper##4696, Scorpashi Lasher##4697, Scorpashi Venomlash##4699
|tip These scorpions share spawn points with basilisk enemies, so kill those too, if you can't find any.
collect 10 Scorpashi Venom##6248 |q 1459/1 |goto Desolace 72.00,31.00
You can find more around: |notinsticky
[65.00,23.00]
[59.00,21.00]
step
talk Kreldig Ungor##5638
turnin The Karnitol Shipwreck##1456 |goto Desolace 66.20,9.63
accept The Karnitol Shipwreck##1457 |goto Desolace 66.20,9.63
turnin Reagents for Reclaimers Inc.##1459 |goto Desolace 66.20,9.63
step
talk Vahlarriel Demonslayer##5642
turnin Return to Vahlarriel##1440 |goto Desolace 66.44,11.82
step
talk Brother Anton##1182
|tip Inside the building.
turnin Down the Scarlet Path##261 |goto Desolace 66.52,7.91
accept Down the Scarlet Path##1052 |goto Desolace 66.52,7.91
step
Enter the building |goto Tanaris 52.21,28.57 < 10 |walk
talk Gimblethorn##7799
|tip Inside the building.
|tip Collect these items from the bank.
collect Kravel's Parts##5800 |goto Tanaris 52.30,28.91 |q 1112
step
talk Gimblethorn##7799
|tip Inside the building.
|tip Deposit these items into the bank.
bank Karnitol's Satchel##6245 |goto Tanaris 52.30,28.91 |q 1457 |future
step
talk Kravel Koalbeard##4452
turnin Parts for Kravel##1112 |goto Thousand Needles 77.79,77.26
step
Watch the dialogue
talk Kravel Koalbeard##4452
accept Delivery to the Gnomes##1114 |goto Thousand Needles 77.79,77.27
step
talk Fizzle Brassbolts##4454
turnin Delivery to the Gnomes##1114 |goto Thousand Needles 78.06,77.12
step
talk Kravel Koalbeard##4452
accept The Rumormonger##1115 |goto Thousand Needles 77.79,77.27
step
talk Pozzik##4630
turnin Goblin Sponsorship##1183 |goto Thousand Needles 80.18,75.88
accept The Eighteenth Pilot##1186 |goto Thousand Needles 80.18,75.88
step
talk Razzeric##4706
turnin The Eighteenth Pilot##1186 |goto Thousand Needles 80.33,76.09
accept Razzeric's Tweaking##1187 |goto Thousand Needles 80.33,76.09
step
Enter the building |goto Stranglethorn Vale 28.11,74.98 < 10 |walk
talk Zarena Cromwind##2482
|tip Inside the building.
buy Big Stick##12251 |n
|tip If you can afford it.
|tip It may not be available to buy, since it's a limited supply item.
|tip If you have better, skip this step.
Visit the Vendor |vendor Zarena Cromwind##2482 |goto Stranglethorn Vale 28.34,75.46 |q 577 |future
|only if Warrior and itemcount(12251) == 0
step
Run up the ramp |goto Stranglethorn Vale 27.85,76.76 < 10 |only if walking
Cross the bridge |goto Stranglethorn Vale 28.15,76.53 < 10 |only if walking
Enter the building |goto Stranglethorn Vale 28.21,77.33 < 7 |walk
talk Drizzlik##2495
|tip Inside the building.
accept Some Assembly Required##577 |goto Stranglethorn Vale 28.29,77.59
step
Enter the building |goto Stranglethorn Vale 27.08,77.62 < 7 |walk
talk Innkeeper Skindle##6807
|tip Inside the building.
home Booty Bay |goto Stranglethorn Vale 27.04,77.31
step
talk Krazek##773
|tip Upstairs inside the building, on the top floor.
turnin The Rumormonger##1115 |goto Stranglethorn Vale 26.94,77.21
step
talk Kebok##737
|tip Upstairs inside the building, on the top floor.
accept Bloodscalp Ears##189 |goto Stranglethorn Vale 27.00,77.12
step
talk Baron Revilgaz##2496
|tip Upstairs on the balcony of the building.
accept Water Elementals##601 |goto Stranglethorn Vale 27.23,76.87
step
Follow the path up into the Rebel Camp |goto Stranglethorn Vale 39.06,5.21 < 20 |only if walking
talk Brother Nimetz##739
accept Kurzen's Mystery##207 |goto Stranglethorn Vale 37.83,3.56
step
talk Sergeant Yohwa##733
accept Special Forces##574 |goto Stranglethorn Vale 38.02,3.33
step
talk Corporal Kaleb##770
turnin Return to Corporal Kaleb##622 |goto Stranglethorn Vale 37.74,3.30
step
talk Lieutenant Doren##469
accept Bookie Herod##200 |goto Stranglethorn Vale 38.04,3.01
|tip This requires you to complete the quest "Jungle Secrets" in the "Stranglethorn Vale (32-32)" guide.
|only if completedq(215)
step
Follow the path |goto Stranglethorn Vale 40.32,8.35 < 50 |only if walking and not subzone("Kurzen's Compound")
Enter the building |goto Stranglethorn Vale 44.02,9.46 < 10 |walk
click Bookie Herod's Records
|tip Upstairs inside the building.
turnin Bookie Herod##200 |goto Stranglethorn Vale 43.67,9.37
accept The Hidden Key##328 |goto Stranglethorn Vale 43.67,9.37
step
label "Collect_Liferoot_Warrior"
kill Kurzen Medicine Man##940+
|tip They share spawn points with the other enemies around this area, so kill those too, if you can't find any.
collect 8 Liferoot##3357 |q 1712/1 |goto Stranglethorn Vale 44.34,10.02
|tip You need these for an important class quest soon.
|tip Be careful not to accidentally sell these to a vendor.
|only if Warrior
stickystart "Collect_Silk_Cloth"
stickystart "Kill_Kurzen_Headshrinkers"
stickystart "Kill_Kurzen_Commandos"
step
Enter the cave |goto Stranglethorn Vale 45.82,8.18 < 40 |walk
Follow the path |goto Stranglethorn Vale 46.65,6.99 < 15 |walk
Follow the path down |goto Stranglethorn Vale 47.78,7.81 < 10 |walk
Follow the path |goto Stranglethorn Vale 48.78,8.64 < 10 |walk
click Bookie Herod's Strongbox##288
|tip Downstairs inside the cave.
|tip Kurzen Headshrinkers are ranged attackers that deal heavy damage.	|only if hardcore
|tip Watch for stealthed Kurzen Commandos while traversing the cave.	|only if hardcore
|tip Enemies may flee when at low health in the cave.			|only if hardcore
turnin The Hidden Key##328 |goto Stranglethorn Vale 49.61,7.57
accept The Spy Revealed!##329 |goto Stranglethorn Vale 49.61,7.57
step
Follow the path up |goto Stranglethorn Vale 48.20,8.53 < 10 |c |q 574
step
label "Collect_Silk_Cloth"
Kill Kurzen enemies around this area |notinsticky
|tip Inside the cave. |notinsticky
|tip Kurzen Headshrinkers will not drop Silk Cloth. |notinsticky
|tip Kurzen Headshrinkers are ranged attackers that deal heavy damage.	|only if hardcore |notinsticky
|tip Watch for stealthed Kurzen Commandos while traversing the cave.	|only if hardcore |notinsticky
|tip Enemies may flee when at low health in the cave.			|only if hardcore |notinsticky
collect 15 Silk Cloth##4306 |goto Stranglethorn Vale 46.48,7.08 |q 4449 |future
|tip Be careful not to accidentally sell these to a vendor.
|tip You will need these for a quest in Searing Gorge later.
step
label "Kill_Kurzen_Headshrinkers"
kill 6 Kurzen Headshrinker##941 |q 574/2 |goto Stranglethorn Vale 46.48,7.08
|tip Inside the cave, on the top level.
|tip Watch for stealthed Kurzen Commandos while traversing the cave.	|only if hardcore |notinsticky
|tip Enemies may flee when at low health in the cave.			|only if hardcore |notinsticky
step
label "Kill_Kurzen_Commandos"
kill 10 Kurzen Commando##938 |q 574/1 |goto Stranglethorn Vale 46.48,7.08
|tip They are stealthed upstairs inside the cave, on the top level.
|tip Kurzen Headshrinkers are ranged attackers that deal heavy damage.	|only if hardcore |notinsticky
|tip Enemies may flee when at low health in the cave.			|only if hardcore |notinsticky
step
Leave the cave |goto Stranglethorn Vale 45.82,8.18 < 40 |walk |only if subzone("The Stockpile")
Follow the path up |goto Stranglethorn Vale 42.25,18.10 < 10 |only if walking
kill Foreman Cozzle##4723
|tip Inside the building at the top of the platform.
|tip Be careful not to accidentally aggro him while killing other enemies near the building.
|tip Try to clear all enemies as you travel up as they can aggro randomly through the floor.
|tip If you have trouble, try to find someone to help you.
collect Cozzle's Key##5851 |goto Stranglethorn Vale 42.65,18.35 |q 1182
|only if hardcore
step
Enter the building |goto Stranglethorn Vale 43.45,20.36 < 10 |walk
click Cozzle's Footlocker##20691
|tip Inside the building.
collect Fuel Regulator Blueprints##5852 |q 1182/1 |goto Stranglethorn Vale 43.34,20.34
|only if hardcore
stickystart "Kill_CrocolisksSTV"
step
kill 10 Shadowmaw Panther##684 |q 192/1 |goto Stranglethorn Vale 49.23,22.66
|tip They are stealthed around this area.
|tip They do not share spawn points with Stranglethorn Tigresses.
|tip When waiting on respawns, go to the coast and kill Crocolisks then return.
|tip Be careful to avoid the level 40 elite non-stealthed black panther, Bhag'thera, if you see him.
You can find more around [46.42,27.34]
step
label "Kill_CrocolisksSTV"
kill Snapjaw Crocolisk##1152+
|tip Underwater and on the shores near the water around this area.
collect 5 Snapjaw Crocolisk Skin##4104 |q 577/1 |goto Stranglethorn Vale 39.28,30.27
You can find more around: |notinsticky
[40.03,24.70]
[41.52,19.48]
step
kill 10 Lashtail Raptor##686 |q 195/1 |goto Stranglethorn Vale 38.29,19.37
You can find more around: |notinsticky
[38.52,26.06]
[35.81,26.67]
[32.72,24.28]
[30.55,24.12]
step
kill 10 Elder Stranglethorn Tiger##1085 |q 187/1 |goto Stranglethorn Vale 34.68,18.95
You can find more around [31.55,19.39]
step
talk Hemet Nesingwary##715
turnin Raptor Mastery##195 |goto Stranglethorn Vale 35.66,10.81
accept Raptor Mastery##196 |goto Stranglethorn Vale 35.66,10.81
step
talk Ajeck Rouack##717
turnin Tiger Mastery##187 |goto Stranglethorn Vale 35.62,10.62
accept Tiger Mastery##188 |goto Stranglethorn Vale 35.62,10.62
step
talk Sir S. J. Erlgadin##718
turnin Panther Mastery##192 |goto Stranglethorn Vale 35.55,10.55
step
kill Sin'Dall##729
|tip He looks like an orange tiger that walks around this area.
|tip He's usually on top of this hill, though.
collect Paw of Sin'Dall##3879 |q 188/1 |goto Stranglethorn Vale 32.21,17.39
stickystart "Collect_Bloodscalp_Ears"
step
click Moon Over the Vale##57
|tip Enemies are close togheter around this area.				|only if hardcore
|tip Try to pull form the North Eastern end of the ruins while clearing.	|only if hardcore
collect The First Troll Legend##2005 |q 207/1 |goto Stranglethorn Vale 29.48,19.15
stickystop "Collect_Bloodscalp_Ears"
step
click Gri'lek the Wanderer##179426
|tip Underwater.
|tip Be careful to avoid the elite murlocs nearby.
|tip Swim down when near the coordinate provided for the step.		|only if hardcore
|tip You should be able to easily avoid the elite enemies if doing so.	|only if hardcore
collect The Second Troll Legend##2006 |q 207/2 |goto Stranglethorn Vale 24.75,22.84
step
kill Lesser Water Elemental##691+
|tip These enemies are immune to frost damage.
collect 6 Water Elemental Bracers##3923 |q 601/1 |goto Stranglethorn Vale 21.13,22.70
stickystart "Collect_Bloodscalp_Ears"
step
Follow the path up |goto Stranglethorn Vale 21.42,10.16 < 15 |only if walking and not subzone("Ruins of Zul'Kunda")
Continue up the path |goto Stranglethorn Vale 23.84,10.65 < 20 |only if walking
click The Emperor's Tomb##54
|tip Watch for patrols and respawns while traveling through this area.					|only if hardcore
|tip Be wary of Bloodscalp Headhunters as they are ranged attackers and may aggro from a distance.	|only if hardcore
|tip Bloodscalp enemies enrage to deal more damage when at low health.					|only if hardcore
collect The Fourth Troll Legend##2008 |q 207/4 |goto Stranglethorn Vale 24.70,8.93
step
Follow the path |goto Stranglethorn Vale 24.51,11.72 < 15 |only if walking
click Fall of Gurubashi##52
|tip Watch for patrols and respawns while traveling through this area.					|only if hardcore
|tip Be wary of Bloodscalp Headhunters as they are ranged attackers and may aggro from a distance.	|only if hardcore
|tip Bloodscalp enemies enrage to deal more damage when at low health.					|only if hardcore
collect The Third Troll Legend##2007 |q 207/3 |goto Stranglethorn Vale 22.95,12.02
stickystart "Collect_Bloodscalp_Tusks_Warrior"
step
label "Collect_Bloodscalp_Ears"
Kill Bloodscalp enemies around this area
|tip Watch for patrols and respawns while traveling through this area.					|only if hardcore |notinsticky
|tip Be wary of Bloodscalp Headhunters as they are ranged attackers and may aggro from a distance.	|only if hardcore |notinsticky
|tip Bloodscalp enemies enrage to deal more damage when at low health.					|only if hardcore |notinsticky
collect 15 Bloodscalp Ear##1519 |q 189/1 |goto Stranglethorn Vale 25.21,11.30
step
label "Collect_Bloodscalp_Tusks_Warrior"
Kill Bloodscalp enemies around this area
collect 9 Bloodscalp Tusk##3901 |q 1712/2 |goto Stranglethorn Vale 25.21,11.30
|only if Warrior
step
Kill enemies around this area
|tip You should already be pretty close to reaching level 38.
|tip Grinding a bit here will reduce the amount you have to grind all at once later.
ding 38 |goto Stranglethorn Vale 28.36,11.33
You can find more around [Stranglethorn Vale 26.26,16.06]
step
talk Ajeck Rouack##717
turnin Tiger Mastery##188 |goto Stranglethorn Vale 35.62,10.62
step
Follow the path up into the Rebel Camp |goto Stranglethorn Vale 39.04,5.19 < 20 |only if walking
talk Brother Nimetz##739
turnin Kurzen's Mystery##207 |goto Stranglethorn Vale 37.83,3.56
accept Troll Witchery##205 |goto Stranglethorn Vale 37.83,3.56
step
talk Lieutenant Doren##469
turnin Special Forces##574 |goto Stranglethorn Vale 38.04,3.01
turnin The Spy Revealed!##329 |goto Stranglethorn Vale 38.04,3.01
accept Patrol Schedules##330 |goto Stranglethorn Vale 38.04,3.01
step
talk Corporal Sethman##1422
turnin Patrol Schedules##330 |goto Stranglethorn Vale 37.66,3.39
accept Report to Doren##331 |goto Stranglethorn Vale 37.66,3.39
step
talk Lieutenant Doren##469
turnin Report to Doren##331 |goto Stranglethorn Vale 38.04,3.01
step
talk Corporal Bluth##734
|tip Buy enough ammo to fill your ammo bag, plus 6-8 extra stacks.
|tip You will be questing and grinding for a while without access to an arrow vendor.
Visit the Vendor |vendor Corporal Bluth##734 |goto Stranglethorn Vale 37.96,2.99 |q 205
|only if Hunter
step
talk Krazek##773
|tip Upstairs inside the building, on the top floor.
accept Dream Dust in the Swamp##1116 |goto Stranglethorn Vale 26.94,77.21
step
talk Kebok##737
|tip Upstairs inside the building, on the top floor.
turnin Bloodscalp Ears##189 |goto Stranglethorn Vale 27.00,77.12
step
talk Baron Revilgaz##2496
|tip Upstairs on the balcony of the building.
turnin Goblin Sponsorship##1182 |goto Stranglethorn Vale 27.23,76.87 |only if hardcore
accept Goblin Sponsorship##1183 |goto Stranglethorn Vale 27.23,76.87 |only if hardcore
turnin Water Elementals##601 |goto Stranglethorn Vale 27.23,76.87
accept Magical Analysis##602 |goto Stranglethorn Vale 27.23,76.87
step
talk Viznik Goldgrubber##2625
|tip Deposit these items into the bank.
bank Bag of Water Elemental Bracers##3960 |goto Stranglethorn Vale 26.54,76.57 |q 602 |future
bank Silk Cloth##4306 |goto Stranglethorn Vale 26.54,76.57 |q 4449 |future
|tip You should have 15 of these.
step
Run up the ramp |goto Stranglethorn Vale 27.85,76.74 < 10 |only if walking
Cross the bridge |goto Stranglethorn Vale 28.15,76.53 < 10 |only if walking
Enter the building |goto Stranglethorn Vale 28.21,77.33 < 7 |walk
talk Drizzlik##2495
|tip Inside the building.
turnin Some Assembly Required##577 |goto Stranglethorn Vale 28.29,77.59
step
Enter the building |goto Stranglethorn Vale 28.11,74.98 < 10 |walk
talk Zarena Cromwind##2482
|tip Inside the building.
buy Big Stick##12251 |n
|tip If you can afford it.
|tip It may not be available to buy, since it's a limited supply item.
|tip If you have better, skip this step.
Visit the Vendor |vendor Zarena Cromwind##2482 |goto Stranglethorn Vale 28.34,75.46 |q 602
|only if Warrior and itemcount(12251) == 0
step
talk Jasper Fel##1325
|tip Inside the building.
|tip Stock up on poisons.
|tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Jasper Fel##1325 |goto Stormwind City/0 78.32,58.97 |q 1448 |future
|only if Rogue
step
Enter the building |goto Stormwind City 63.60,22.83 < 10 |walk
talk Brohann Caskbelly##5384
|tip Inside the building.
accept In Search of The Temple##1448 |goto Stormwind City 64.33,20.66
step
Enter the building |goto Stormwind City 39.84,85.25 < 10 |walk
talk Angus Stern##1141
|tip Inside the building.
accept Morgan Stern##1260 |goto Stormwind City 41.50,89.39
step
Enter the building |goto Stormwind City 50.94,57.84 < 7 |walk
talk Frederick Stover##1298
buy Massive Longbow##11307 |n
|tip If you can afford it.
|tip It's a limited supply item, so it may not be for sale.
|tip You can't use it until level 42, but it's good to have waiting to use, and you can only buy it in Stormwind City and Ironforge.
|tip We will check vendors for it along the way, if it's not here right now.
|tip If you have better, skip this step.
Visit the Vendor |vendor Frederick Stover##1298 |goto Stormwind City 49.98,57.64 |q 1260
|only if Hunter and itemcount(11307) == 0
step
Enter the building |goto Stormwind City 29.14,74.17 < 10 |walk
talk Spackle Thornberry##5520
|tip Downstairs inside the building.
|tip If you can afford them.
|tip Buy all of the Grimoires for spells that are upgrades for the spells you use with your pet.
|tip After buying them, make sure to use them in your bags to learn the spells.
Visit the Vendor |vendor Spackle Thornberry##5520 |goto Stormwind City 25.66,77.66 |q 1260
|only if Warlock
step
Enter the building |goto Duskwood 75.56,45.37 < 10 |walk
talk Alyssa Eva##1673
|tip Inside the building.
|tip If you can afford it.
|tip Stock up on a couple of Runes of Teleportation to use to travel faster while leveling.
Visit the Vendor |vendor Alyssa Eva##1673 |goto Duskwood 76.28,45.27 |q 1260
|only if Mage
step
_Note_
Be very careful to avoid the Stonard Scouts
|tip They are currently bugged and will PvP flag you just for being near them.
|tip This will let horde players attack and kill your character for the next 5 minutes.
Click Here To Confirm |confirm
|only if hardcore
step
Follow the road through Deadwind Pass |goto Duskwood 87.73,40.68 < 40 |only if walking and not zone("Swamp of Sorrows")
Cross the bridge |goto Deadwind Pass/0 41.89,34.66 < 20 |only if walking and not zone("Swamp of Sorrows")
Continue following the road into Swamp of Sorrows |goto Deadwind Pass 52.04,43.41 < 30 |only if walking and not zone("Swamp of Sorrows")
Kill Whelp enemies around this area
|tip They look like tiny flying dragons.
|tip There's not enough whelps here to complete the quest without waiting for respawns.
|tip Kill all of the whelps you can find, then skip to the next step.
|tip We'll come back later to finish up the quest.
collect 10 Speck of Dream Dust##5803 |q 1116/1 |goto Swamp of Sorrows 14.74,60.20
step
Follow the path |goto Swamp of Sorrows 17.74,55.71 < 40 |only if walking and subzone("Itharius's Cave")
talk Watcher Biggs##5476
accept Encroaching Wildlife##1396 |goto Swamp of Sorrows 26.74,59.83
stickystart "Kill_Young_Sawtooth_Crocolisks"
stickystart "Kill_Sorrow_Spinners"
stickystart "Kill_Swamp_Jaguars"
step
path	follow strict;	loop;	ants curved;	dist 30
path	32.39,35.38		33.15,43.58		37.34,46.76		42.24,33.84
path	47.11,38.83		49.86,40.28		54.02,39.21		55.84,35.85
kill Noboru the Cudgel##5477
|tip He looks like a larger Lost One creature that walks around this area with 2 bodyguards.
collect Noboru's Cudgel##6196 |q 1392 |future
step
use Noboru's Cudgel##6196
accept Noboru the Cudgel##1392
step
talk Magtoor##1776
turnin Noboru the Cudgel##1392 |goto Swamp of Sorrows 25.99,31.40
accept Draenethyst Crystals##1389 |goto Swamp of Sorrows 25.99,31.40
step
label "Kill_Young_Sawtooth_Crocolisks"
kill 8 Young Sawtooth Crocolisk##1084 |q 1396/1 |goto Swamp of Sorrows 24.26,41.68
You can find more around: |notinsticky
[26.24,52.44]
[31.68,47.06]
[30.90,39.17]
[35.26,34.86]
step
label "Kill_Sorrow_Spinners"
kill 10 Sorrow Spinner##858 |q 1396/2 |goto Swamp of Sorrows 21.91,40.55
|tip They look like spiders.
You can find more around: |notinsticky
[26.91,46.17]
[24.13,61.24]
[38.10,30.72]
step
label "Kill_Swamp_Jaguars"
kill 10 Swamp Jaguar##767 |q 1396/3 |goto Swamp of Sorrows 22.74,42.75
You can find more around: |notinsticky
[30.59,51.52]
[37.17,47.91]
[43.06,42.32]
[37.77,38.04]
[37.85,31.20]
step
Kill Whelp enemies around this area
|tip They look like tiny flying dragons.
|tip Skip this step once you fully clear the area, we'll come back again.
collect 10 Speck of Dream Dust##5803 |q 1116/1 |goto Swamp of Sorrows 14.74,60.20
step
Follow the path |goto Swamp of Sorrows 17.74,55.71 < 40 |only if walking and subzone("Itharius's Cave")
talk Watcher Biggs##5476
turnin Encroaching Wildlife##1396 |goto Swamp of Sorrows 26.74,59.83
accept The Lost Caravan##1421 |goto Swamp of Sorrows 26.74,59.83
stickystart "Collect_Draenethyst_Crystals"
step
kill Ongeku##5622
|tip He walks around this area, and can spawn in multiple locations.
|tip Watch for enemies around the buildings here as they tend to aggro in groups. |only if hardcore
|tip Pull carefully while in the area. |only if hardcore
|tip Watch for patrols and respawns while in the area. |only if hardcore
collect Draenethyst Shard##6190 |q 1373/1 |goto Swamp of Sorrows 61.31,23.25
Also check around [65.12,22.22]
|only if not hardcore
step
click Caravan Chest##28024
|tip Watch for enemies around the buildings here as they tend to aggro in groups. |only if hardcore
|tip Pull carefully while in the area. |only if hardcore
|tip Watch for patrols and respawns while in the area. |only if hardcore
collect Wizards' Reagents##6170 |q 1421/1 |goto Swamp of Sorrows 64.46,18.34
step
talk Galen Goodward##5391
|tip This is an escort quest.
|tip If he's not here, someone may be escorting him.
|tip Wait until he respawns.
|tip Clear nearby enemies while waiting. |only if hardcore
|tip He walks through enemies to the south, so you may want to clear a path before accepting this quest.
accept Galen's Escape##1393 |goto Swamp of Sorrows 65.41,18.23 |noautoaccept
|only if not hardcore
step
Watch the dialogue
|tip Follow Galen Goodward and protect him as he walks.
|tip He eventually walks to this location.
Escort Galen Out of the Fallow Sanctuary |q 1393/1 |goto Swamp of Sorrows 53.05,29.64
|only if not hardcore
step
label "Collect_Draenethyst_Crystals"
click Draenethyst Crystal##22550+
|tip They look like large clusters of blue crystals on the ground around this area.
|tip Watch for enemies around the buildings here as they tend to aggro in groups. |only if hardcore |notinsticky
|tip Pull carefully while in the area. |only if hardcore |notinsticky
|tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
collect 6 Draenethyst Crystal##6071 |q 1389/1 |goto Swamp of Sorrows 55.74,27.60
You can find more around [63.50,22.72]
step
Search for the Temple of Atal'Hakkar |q 1448/1 |goto Swamp of Sorrows 66.68,49.62
step
click Galen's Strongbox##32569
turnin Galen's Escape##1393 |goto Swamp of Sorrows 47.81,39.76
|only if not hardcore
step
talk Magtoor##1776
turnin Draenethyst Crystals##1389 |goto Swamp of Sorrows 25.99,31.40
step
talk Watcher Biggs##5476
turnin The Lost Caravan##1421 |goto Swamp of Sorrows 26.74,59.83
step
Kill Whelp enemies around this area
|tip They look like tiny flying dragons.
|tip If you don't finish in one clear, grind mobs in the area and come back once the whelps are respawned.
collect 10 Speck of Dream Dust##5803 |q 1116/1 |goto Swamp of Sorrows 14.74,60.20
step
talk Krazek##773
|tip Upstairs inside the building, on the top floor.
turnin Dream Dust in the Swamp##1116 |goto Stranglethorn Vale 26.94,77.21
step
Watch the dialogue
talk Krazek##773
|tip Upstairs inside the building, on the top floor.
accept Rumors for Kravel##1117 |goto Stranglethorn Vale 26.94,77.21
step
Enter the building |goto Stormwind City 50.94,57.84 < 7 |walk
talk Frederick Stover##1298
buy Massive Longbow##11307 |n
|tip If you can afford it.
|tip It's a limited supply item, so it may not be for sale.
|tip You can't use it until level 42, but it's good to have waiting to use, and you can only buy it in Stormwind City and Ironforge.
|tip We will check vendors for it along the way, if it's not here right now.
|tip If you have better, skip this step.
Visit the Vendor |vendor Frederick Stover##1298 |goto Stormwind City 49.98,57.64 |q 1448
|only if Hunter and itemcount(11307) == 0
step
Enter the building |goto Stormwind City 55.30,68.14 < 10 |walk
talk Olivia Burnside##2455
|tip Inside the building.
|tip Collect these items from the bank.
collect Karnitol's Satchel##6245 |goto Stormwind City 57.66,72.78 |q 1457
collect Bag of Water Elemental Bracers##3960 |goto Stormwind City 57.66,72.78 |q 602
step
talk Jasper Fel##1325
|tip Inside the building.
|tip You're about to travel to an area where there aren't poison vendors nearby.
|tip Stock up on poisons.
|tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Jasper Fel##1325 |goto Stormwind City/0 78.32,58.97 |q 1448
|only if Rogue
step
talk Olivia Burnside##2455
|tip Inside the building.
|tip Deposit these items into the bank.
bank Goblin Rumors##5804 |goto Stormwind City/0 57.66,72.78 |q 1117 |future
step
Enter the building |goto Stormwind City/0 54.07,59.02 < 10 |walk
talk Auctioneer Jaxon##15659
|tip Buy these items from the Auction House.
|tip If you can't get them, you can skip this step. They just make some quests easier to do later, but you can still get it done without them.
collect 2 Elixir of Water Breathing##5996 |goto Stormwind City/0 53.61,59.76 |q 668 |future
|only if not (Druid or Warlock)	and not selfmade
step
Enter the building |goto Stormwind City 73.64,43.52 < 10 |walk
talk Heinrich Stone##1324
|tip Inside the building.
buy Rondel##2534 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Heinrich Stone##1324 |goto Stormwind City 74.37,42.56 |q 668 |future
|only if Rogue and itemcount(2534) == 0
step
Enter the building |goto Stormwind City 63.59,22.85 < 10 |walk
talk Brohann Caskbelly##5384
|tip Inside the building.
turnin In Search of The Temple##1448 |goto Stormwind City 64.33,20.66
accept To The Hinterlands##1449 |goto Stormwind City 64.33,20.66
step
Optional Route Change
|tip You can opt to do Scarlet Monastery around level 39 instead of grinding.
|tip This is highly recommended due to weapon upgrades from a quest. |only if Rogue or Warrior
|tip We will do Library, Armory, and Cathedral.
|tip This will mean slower leveling but it will be more fun and potentially give you gear upgrades.
|tip If you choose to do Scarlet Monastery, we will say when to accept and turnin dungeon quests that are worth doing in your route.
|tip We will also say when it is a good time to do the dungeon.
_Note_
|tip This feature is currently experimental and may result in a full quest log. If this happens, please submit a feedback report so we can fix it!
|tip If you have a full quest log, we recommend abandoning any dungeon quests that can be shared by your party members later.
Click Here if you'd like to run Scarlet Monastery later |confirm SMflag
Click Here if you'd prefer to grind |confirm
step
talk Roetten Stonehammer##5637
|tip He walks around inside the building.
turnin The Karnitol Shipwreck##1457 |goto Ironforge 67.91,17.52
step
talk Prospector Stormpike##1356
|tip Inside the building.
accept Further Mysteries##525 |goto Ironforge 74.64,11.74
step
talk Librarian Mae Paledust##3979
accept Mythology of the Titans##1050 |goto Ironforge 74.97,12.46
|only if guideflag("SMflag")
step
Enter the building |goto Ironforge 72.16,67.56 < 7 |walk
talk Skolmin Goldfury##5122
buy Massive Longbow##11307 |n
|tip If you can afford it.
|tip It's a limited supply item, so it may not be for sale.
|tip You can't use it until level 42, but it's good to have waiting to use, and you can only buy it in Stormwind City and Ironforge.
|tip We will check vendors for it along the way, if it's not here right now.
|tip If you have better, skip this step.
Visit the Vendor |vendor Skolmin Goldfury##5122 |goto Ironforge 71.76,66.70 |q 500 |future
|only if Hunter and itemcount(11307) == 0
step
Enter the building |goto Ironforge 26.10,72.19 < 15 |walk
talk Auctioneer Redmuse##8720
|tip Inside the building.
|tip Buy these items from the Auction House.
|tip If you can't get them, you can kill enemies for them later, but it will likely take a long time.
|tip You need these for your Whirlwind weapon class quest, which gives a big weapon upgrade.
collect 8 Thundering Charm##4480 |goto Ironforge 24.16,74.67 |q 1714 |future
collect 8 Burning Charm##4479 |goto Ironforge 24.16,74.67 |q 1714 |future
collect 8 Cresting Charm##4481 |goto Ironforge 24.16,74.67 |q 1714 |future
collect 2 Nature Protection Potion##6052 |goto Ironforge 24.16,74.67 |q 1713 |future
|tip You will have to kill a level 40 elite enemy soon, which hits hard and deals only Nature damage.
|tip These will help you to have more time to kill it to be able to get a big weapon upgrade.
|tip Alternatively, if you can easily get a friend to help you kill it very soon, you can skip buying the potions.
|only if Warrior and not selfmade
step
kill Cresting Exile##2761+
collect 8 Cresting Charm##4481 |goto Arathi Highlands 66.71,30.04 |q 1714 |future
|only if Warrior
step
kill Thundering Exile##2762+
collect 8 Thundering Charm##4480 |goto Arathi Highlands 52.05,50.59 |q 1714 |future
|only if Warrior
step
kill Burning Exile##2760+
|tip Be careful to avoid Refuge Point while traveling here.
collect 8 Burning Charm##4479 |goto Arathi Highlands 25.40,30.28 |q 1714 |future
|only if Warrior
step
Enter the building |goto Hillsbrad Foothills 50.45,58.55 < 10 |walk
talk Innkeeper Anderson##2352
|tip Inside the building.
home Southshore |goto Hillsbrad Foothills 51.17,58.93
step
talk Raleigh the Devout##3980
|tip He's upstairs in the inn.
turnin Down the Scarlet Path##1052 |goto Hillsbrad Foothills 51.40,58.60
accept In the Name of the Light##1053 |goto Hillsbrad Foothills 51.46,58.36 |only if guideflag("SMflag")
step
Prepare for Scarlet Monastery
|tip It will be a good time to start Scarlet Monastery soon.
|tip We will do Library, Armory and Cathedral.
|tip You should run it after finishing the quests from this guide, roughly 45 minutes.
|tip Start looking for a group.
|confirm
|only if guideflag("SMflag")
step
use Assassin's Contract##3668
accept Assassin's Contract##522 |goto Hillsbrad Foothills 48.14,59.11
|only if itemcount(3668) == 1
step
Enter the building |goto Hillsbrad Foothills 49.01,59.12 < 10 |walk
talk Magistrate Henry Maleb##2276
|tip Inside the building.
turnin Further Mysteries##525 |goto Hillsbrad Foothills 48.14,59.11
accept Dark Council##537 |goto Hillsbrad Foothills 48.14,59.11
accept Noble Deaths##512 |goto Hillsbrad Foothills 48.14,59.11
turnin Assassin's Contract##522 |goto Hillsbrad Foothills 48.14,59.11 |only if itemcount(3668) == 1
step
talk Magistrate Henry Maleb##2276
accept Baron's Demise##523 |goto Hillsbrad Foothills 48.14,59.11
|only if completedq(522)
step
Leave the building |goto Hillsbrad Foothills 49.01,59.12 < 10 |walk |only if subzone("Southshore Town Hall")
talk Archmage Ansirem Runeweaver##2543
turnin Magical Analysis##602 |goto Alterac Mountains 18.84,78.49
step
Watch the dialogue
talk Archmage Ansirem Runeweaver##2543
accept Ansirem's Key##603 |goto Alterac Mountains 18.84,78.49
stickystart "Collect_Alterac_Signet_Rings"
step
Follow the past up the coast |goto Alterac Mountains 23.21,51.60 < 70 |only if walking and subzone("Dalaran")
Enter the building |goto Alterac Mountains 39.45,15.38 < 10 |walk
kill Nagaz##2320
|tip Inside the building.
|tip Be careful, some enemies around this area can be stealthed.	|only if not hardcore
|tip There are several enemies between the door and Nagaz.		|only if hardcore
|tip You will almost always aggro another enemy from inside.		|only if hardcore
|tip Enemies may run away in fear when at low health.			|only if hardcore
|tip Clear enemies outside before pulling from inside.			|only if hardcore
|tip Watch for respawns while you are attempting to clear your way.	|only if hardcore
collect Head of Nagaz##3672 |q 537/2 |goto Alterac Mountains 39.22,14.31
step
click Worn Wooden Chest##1765
|tip Inside the building.
|tip Try not to linger while inside the building.	|only if hardcore
|tip Enemies tend to respawn quickly around here.	|only if hardcore
collect Ensorcelled Parchment##3706 |goto Alterac Mountains 39.18,14.66 |q 551 |future
step
use the Ensorcelled Parchment##3706
accept The Ensorcelled Parchment##551
|only if itemcount(3706) > 0
stickystart "Collect_Alterac_Signet_Rings"
stickystart "Kill_Baron_ATM"
step
kill 4 Argus Shadow Mage##2318 |q 537/1 |goto Alterac Mountains 62.31,43.49
|tip Inside the buildings and at the camps around this area.
|tip Be careful to slowly pull enemies one by one, this area can be very dangerous.
|tip These enemies deal a lot of damage.		|only if hardcore
|tip Watch for stealthed enemies.			|only if hardcore
|tip Watch for respawns and patrols around here.	|only if hardcore
You can usually find another one around [57.51,46.13]
step
label "Collect_Alterac_Signet_Rings"
Kill Syndicate enemies around this area
|tip Be careful, some of them can be stealthed.		|notinsticky
|tip These enemies deal a lot of damage.		|only if hardcore |notinsticky
|tip Watch for respawns and patrols around here.	|only if hardcore |notinsticky
collect 7 Alterac Signet Ring##3505 |q 512/1 |goto Alterac Mountains 62.31,43.49
You can find more around [58.20,44.87]
step
label "Kill_Baron_ATM"
kill Baron Vardus##2306
|tip He can spawn at any of the camps in the area
|tip Be careful to slowly pull enemies one by one, this area can be very dangerous. |notinsticky
collect Head of Baron Vardus##3626 |q 523 |goto Alterac Mountains 62.31,43.49
step
use a Nature Protection Potion##6052
|tip You are about to accept a quest soon to kill a level 40 elite enemy.
|tip You will need to use another Nature Protection Potion during the fight, so use one now, and wait until your potion cooldown is finished before accepting the quest in the next step.
|tip The potion lasts 1 hour, so you have plenty of time to get to the quest location in a few steps.
Click Here to Continue |confirm |q 1713 |future
|only if Warrior and itemcount(6052) > 0
step
click Bah'rah's Cauldron
|tip Follow the river north to travel to this location.
|tip Complete the "Essence of the Exile" quest.
collect Essence of the Exile##6851 |q 1712/3 |goto Alterac Mountains 79.32,66.81
|only if Warrior
step
talk Bath'rah the Windwatcher##6176
|tip Inside the building.
turnin Cyclonian##1712 |goto Alterac Mountains 80.50,66.92
accept The Summoning##1713 |goto Alterac Mountains 80.50,66.92 |noautoaccept
|tip Make sure your potion cooldown is finished before accepting this quest.
|only if Warrior
step
Watch the dialogue
|tip Follow Bath'rah the Windwatcher as he walks.
|tip He will summon Cyclonian, a level 40 elite.
kill Cyclonian##6239
|tip Use the other Nature Protection Potion when the effect of the first one ends. |only if itemcount(6052) > 0
|tip If you have trouble, try to find someone to help you.
collect Whirlwind Heart##6894 |q 1713/1 |goto Alterac Mountains 80.60,62.52
|only if Warrior
step
talk Bath'rah the Windwatcher##6176
|tip Inside the building.
turnin The Summoning##1713 |goto Alterac Mountains 80.50,66.92
accept Whirlwind Weapon##1792 |goto Alterac Mountains 80.50,66.92 |instant
|only if Warrior
step
Avoid Tarren Mill and follow the path the Hinterlands |goto Hillsbrad Foothills 84.06,32.80 < 70 |only if walking and not zone("The Hinterlands")
Follow the path up |goto The Hinterlands 13.50,47.99 < 20 |only if walking
talk Falstad Wildhammer##5635
turnin To The Hinterlands##1449 |goto The Hinterlands 11.81,46.76
accept Gryphon Master Talonaxe##1450 |goto The Hinterlands 11.81,46.76
step
talk Guthrum Thunderfist##8018
|tip At the top of the path.
fpath Aerie Peak |goto The Hinterlands 11.07,46.15
step
Enter the building |goto The Hinterlands 11.00,45.67 < 10 |walk
talk Gryphon Master Talonaxe##5636
|tip Inside the building.
turnin Gryphon Master Talonaxe##1450 |goto The Hinterlands 9.76,44.48
accept Rhapsody Shindigger##1451 |goto The Hinterlands 9.76,44.48
step
Follow the path up |goto The Hinterlands 20.81,47.82 < 20 |only if walking
talk Rhapsody Shindigger##5634
turnin Rhapsody Shindigger##1451 |goto The Hinterlands 26.94,48.59
accept Rhapsody's Kalimdor Kocktail##1452 |goto The Hinterlands 26.94,48.59
step
talk Marshal Redpath##2263
turnin Crushridge Bounty##500 |goto Hillsbrad Foothills 49.48,58.73
step
Enter the building |goto Hillsbrad Foothills 49.01,59.12 < 10 |walk
talk Magistrate Henry Maleb##2276
|tip Inside the building.
turnin Dark Council##537 |goto Hillsbrad Foothills 48.14,59.11
turnin Noble Deaths##512 |goto Hillsbrad Foothills 48.14,59.11
step
Leave the building |goto Hillsbrad Foothills 49.01,59.12 < 10 |walk |only if subzone("Southshore Town Hall")
talk Loremaster Dibbs##2277
turnin The Ensorcelled Parchment##551 |goto Hillsbrad Foothills 50.57,57.09
accept Stormpike's Deciphering##554 |goto Hillsbrad Foothills 50.57,57.09
step
Enter the building |goto Tirisfal Glades/0 82.65,32.88 < 7 |walk
Enter the Portal |goto Tirisfal Glades/0 85.33,32.27 < 7 |walk
Enter the Scarlet Monastery - Library Dungeon with Your Group |goto Scarlet Monastery/0 0.00,0.00 < 500 |c |noway |q 1053
|only if guideflag("SMflag")
step
Inside the Scarlet Monastery Library Dungeon:
kill Houndmaster Loksey##3974 |q 1053/4
|tip He is the first boss of the dungeon.
|tip Follow the path to enter Huntsman's Cloister, then continue south to the small room.
|only if guideflag("SMflag")
step
Inside the Scarlet Monastery Library Dungeon:
click Mythology of the Titans##19284
|tip Continue through Huntsman's Cloister to enter the Gallery of Treasures.
|tip Once through the Gallery of Treasures the map will change back to Scarlet Monastery.
|tip It will be on the ground on the left side of the room.
|tip It looks like a small book on the ground below a window.
collect Mythology of the Titans##5536 |q 1050/1
|only if guideflag("SMflag")
step
Leave the Scarlet Monastery Library Dungeon
Click Here to Continue |confirm |q 1050
|only if guideflag("SMflag")
step
click Armory Door |goto Tirisfal Glades/0 85.41,31.59 < 7 |walk
|tip You will need The Scarlet Key from the chest behind Arcanist Doan in the Library to open this.
|tip A rogue with 175 Lockpicking skill can pick it and a Truesilver Key opens it too.
|tip Engineers can also blast the door open.
Enter the Portal |goto Tirisfal Glades/0 85.67,31.76 < 7 |walk
Enter the Scarlet Monastery - Armory Dungeon with Your Group |goto Scarlet Monastery/0 0.00,0.00 < 500 |c |noway |q 1053
|only if guideflag("SMflag")
step
Inside the Scarlet Monastery Armory Dungeon:
kill Herod##3975 |q 1053/3
|tip He is the only boss of the dungeon, found all the way at the end.
|only if guideflag("SMflag")
step
Leave the Scarlet Monastery Armory Dungeon
Click Here to Continue |confirm |q 1053
|only if guideflag("SMflag")
step
click Cathedral Door |goto Tirisfal Glades/0 85.21,30.86 < 7 |walk
|tip You will need The Scarlet Key from the chest behind Arcanist Doan in the Library to open this.
|tip A rogue with 175 Lockpicking skill can pick it and a Truesilver Key opens it too.
|tip Engineers can also blast the door open.
Enter the Portal |goto Tirisfal Glades/0 85.32,30.48 < 7 |walk
Enter the Scarlet Monastery - Cathedral Dungeon with Your Group |goto Scarlet Monastery/0 0.00,0.00 < 500 |c |noway |q 1053
|only if guideflag("SMflag")
step
Inside the Scarlet Monastery Cathedral Dungeon:
kill Scarlet Commander Mograine##3976 |q 1053/2
|tip He is the last boss of the dungeon, found all the way at the end.
|only if guideflag("SMflag")
step
Inside the Scarlet Monastery Cathedral Dungeon:
kill High Inquisitor Whitemane##3977 |q 1053/1
|tip She is the last boss of the dungeon, found all the way at the end.
|only if guideflag("SMflag")
step
Leave the Scarlet Monastery Cathedral Dungeon
Click Here to Continue |confirm |q 1053
|only if guideflag("SMflag")
step
Enter the building |goto Hillsbrad Foothills 50.47,58.56 < 6 |walk
talk Raleigh the Devout##3980
|tip Upstairs inside the building.
turnin In the Name of the Light##1053 |goto Hillsbrad Foothills 51.46,58.36
|only if guideflag("SMflag")
step
_NOTE:_
Save Cloth in Your Bank as You Level
|tip Once you are close to reaching level 60, you will need 240 of each type of cloth.
|tip As you level and collect Mageweave Cloth naturally from killing enemies while following the guide, make sure you deposit the cloth into a bank whenever you are near one.
|tip This will give you about 40,000 quick and easy xp to help you get to level 60 faster in the longer later levels.
Click Here to Continue |confirm
|only if level < 60
step
map Hillsbrad Foothills
path follow strict; loop off; ants straight; dist 40; markers none
path	55.64,19.67	55.67,24.84	55.96,29.02	57.76,36.69	62.45,41.43
path	65.74,42.56	68.19,45.57	72.49,48.23	77.21,53.20	80.37,55.32
path	81.99,56.91
map Arathi Highlands
path	20.22,29.62	21.63,31.75	22.57,34.04	22.76,38.68	23.72,43.33
path	25.44,46.63	26.54,49.19	31.09,51.86	34.82,52.25	38.27,53.51
path	39.53,54.77	43.02,55.12	45.37,58.95	46.82,59.78	48.79,59.23
path	50.81,59.99	52.10,61.37	55.34,62.36	56.58,62.96	57.64,62.70
path	59.19,62.94	60.56,61.21	61.12,59.49	60.24,59.11
kill Forsaken Courier##2714
|tip She walks one-way on the road from Go'Shek Farms in Arathi Highlands to Tarren Mill in Hillsbrad Foothills.
|tip She walks with a group of 4 bodyguards with her.
|tip Kite her away from her bodyguards, so you can fight her alone.
|tip If she makes it to Tarren Mill, she respawns at the small house in Arathi Highlands and starts the walk over again.
|tip If you make it to the small house in Arathi Highlands, and still haven't found her, kill orcs nearby the house until she spawns.
|tip If you have trouble, try to find someone to help you.
|tip The Sealed Folder is not a guaranteed drop, you may need to kill her more than once.
collect Sealed Folder##4482 |q 658/1
step
talk Apprentice Kryten##2788
accept Worth Its Weight in Gold##691 |goto Arathi Highlands 46.20,47.75
step
click Shards of Myzrael##138492
accept The Princess Trapped##642 |goto Arathi Highlands 62.50,33.80
step
Avoid Hammerfall |goto Arathi Highlands 72.95,40.77 < 50 |only if walking
Kill Drywhisker enemies around this area
|tip You can find more in the cave at the top of the path referenced below.
|tip You turn this quest in at the very back of the cave, start clearing your way towards the end once you have 9 of the Motes.
|tip Be mindful of your surroundings. |only if hardcore
|tip Specifically, watch out for Drywhisker Surveyors as they are casters that deal heavy damage. |only if hardcore
collect 12 Mote of Myzrael##4435 |q 642/1 |goto Arathi Highlands 76.13,44.11
You can find more:
Around [78.07,35.28]
Up the path that starts at [80.84,39.91]
step
Follow the path up |goto Arathi Highlands 80.90,39.96 < 10 |only if walking and not _G.IsIndoors()
Enter the cave |goto Arathi Highlands 82.66,36.16 < 15 |walk |only if not _G.IsIndoors()
click Iridescent Shards
|tip Upstairs inside the cave.
|tip Watch for patrols and respawns while in the cave.		|only if hardcore
|tip Drywhisker Surveyors are casters that deal heavy damage.	|only if hardcore
turnin The Princess Trapped##642 |goto Arathi Highlands 84.31,30.92
accept Stones of Binding##651 |goto Arathi Highlands 84.31,30.92
step
Leave the cave |goto Arathi Highlands 82.69,36.21 < 15 |walk |only if subzone("Drywhisker Gorge") and _G.IsIndoors()
Avoid Hammerfall |goto Arathi Highlands 73.48,41.26 < 50 |only if walking and (subzone("Drywhisker Gorge") or subzone("Hammerfall"))
click Stone of East Binding##2691
collect Cresting Key##4484 |q 651/2 |goto Arathi Highlands 66.75,29.75
step
talk Quae##2712
turnin Hints of a New Plague?##658 |goto Arathi Highlands 60.19,53.85
accept Hints of a New Plague?##657 |goto Arathi Highlands 60.19,53.85
step
_NOTE:_
Incoming Escort Quest
|tip This quest has enemies that will ambush you in 2's and 3's.
|tip The difficulty may vary depending on the levels of control your class has.
|tip Skipping this will result in a loss of 6,400 xp.
|tip Be sure to turn in the quest before the escort if you decide not to do the quest.
Click Here to Continue |confirm |q 660 |future
|only if hardcore
step
talk Kinelory##2713
|tip This is an escort quest.
|tip If she's not here, someone may be escorting her.
|tip Wait for her to respawn.
turnin Hints of a New Plague?##657 |goto Arathi Highlands 60.24,53.92
accept Hints of a New Plague?##660 |goto Arathi Highlands 60.24,53.92 |noautoaccept
step
Watch the dialogue
|tip Follow Kinelory and protect her as she walks.
|tip She eventually walks back to this location.
|tip If you have trouble, try to find someone to help you.
Protect Kinelory |q 660/1 |goto Arathi Highlands 60.24,53.92
step
talk Quae##2712
turnin Hints of a New Plague?##660 |goto Arathi Highlands 60.19,53.85
accept Hints of a New Plague?##661 |goto Arathi Highlands 60.19,53.85
stickystart "Collect_Witherbark_Medicine_Pouches"
stickystart "Collect_Witherbark_Tusks"
step
Enter the cave |goto Arathi Highlands 68.32,75.18 < 15 |walk
kill Witherbark Shadow Hunter##2557+
|tip Inside the cave.
|tip These tend to have a low drop rate.
|tip Watch for patrols and respawns while in the cave.		|only if hardcore
|tip Enemies may run away in fear at low health.		|only if hardcore
|tip Destroy totems that Witherbark Witch Doctores create.	|only if hardcore
|tip Witherbark Axe Throwers are ranged attackers.		|only if hardcore
collect Shadow Hunter Knife##5040 |q 691/3 |goto Arathi Highlands 67.59,78.45
|tip Be careful not to accidentally sell this to a vendor.
step
label "Collect_Witherbark_Medicine_Pouches"
Leave the cave |goto Arathi Highlands 68.32,75.18 < 15 |walk |only if subzone("Witherbark Village") and _G.IsIndoors()
kill Witherbark Witch Doctor##2555+
|tip Inside and outside the cave. |notinsticky
|tip Be mindful of your surroundings as it's easy to be overwhelmed. |only if hardcore |notinsticky
|tip Witherbark Witch Doctors, Axe Throwers and Headhunters are all ranged enemies to look out for. |only if hardcore |notinsticky
collect 4 Witherbark Medicine Pouch##4522 |q 691/2 |goto Arathi Highlands 66.66,64.37
You can find more outside the cave around: |notinsticky
[61.45,72.04]
[64.79,72.83]
[70.29,68.39]
[72.11,64.09]
[70.82,60.27]
step
label "Collect_Witherbark_Tusks"
Kill Witherbark enemies around this area |notinsticky
|tip Inside and outside the cave. |notinsticky
|tip Be mindful of your surroundings as it's easy to be overwhelmed. |only if hardcore |notinsticky
|tip Witherbark Witch Doctors, Axe Throwers and Headhunters are all ranged enemies to look out for. |only if hardcore |notinsticky
collect 10 Witherbark Tusk##4503 |q 691/1 |goto Arathi Highlands 66.66,64.37
You can find more outside the cave around: |notinsticky
[61.45,72.04]
[64.79,72.83]
[70.29,68.39]
[72.11,64.09]
[70.82,60.27]
step
click Stone of Outer Binding##2690
collect Thundering Key##4485 |q 651/3 |goto Arathi Highlands 52.04,50.77
step
talk Apprentice Kryten##2788
turnin Worth Its Weight in Gold##691 |goto Arathi Highlands 46.20,47.75
step
talk Skuerto##2789
accept Wand over Fist##693 |goto Arathi Highlands 46.65,47.01
step
Leave Refuge Pointe |goto Arathi Highlands 43.94,50.56 < 30 |only if walking and subzone("Refuge Pointe")
Enter the cave |goto Arathi Highlands 53.75,77.37 < 15 |walk
Follow the path |goto Arathi Highlands 54.63,79.26 < 10 |walk
kill Kor'gresh Coldrage##2793
|tip Inside the cave.
collect Trelane's Wand of Invocation##4525 |q 693/1 |goto Arathi Highlands 54.75,81.87
step
Leave the cave |goto Arathi Highlands 53.68,77.23 < 15 |walk |only if subzone("Boulderfist Hall") and _G.IsIndoors()
Kill enemies around this area
|tip Getting this far into level 39 will allow you to reach level 40 after turning in quests soon.
|tip You are about to have to complete a fairly difficult escort quest, and a handful of quests underwater, so it will help to be a level higher.
ding 39,80000 |goto Arathi Highlands 52.56,75.33
step
Leave the cave |goto Arathi Highlands 53.68,77.23 < 15 |walk |only if subzone("Boulderfist Hall") and _G.IsIndoors()
talk Skuerto##2789
turnin Wand over Fist##693 |goto Arathi Highlands 46.65,47.01
step
talk Vikki Lonsav##2808
|tip Buy enough ammo to fill your ammo bag, plus 4-6 extra stacks.
|tip You will be questing for a while without access to an ammo vendor.
Visit the Vendor |vendor Vikki Lonsav##2808 |goto Arathi Highlands 46.45,47.60 |q 651
|only if Hunter
step
Leave Refuge Pointe |goto Arathi Highlands 43.94,50.56 < 30 |only if walking and subzone("Refuge Pointe")
click Stone of West Binding
collect Burning Key##4483 |q 651/1 |goto Arathi Highlands 25.45,30.16
step
click Stone of Inner Binding##2702
turnin Stones of Binding##651 |goto Arathi Highlands 36.19,57.37
step
Follow the path |goto Arathi Highlands 31.22,65.35 < 30 |only if walking and not subzone("Faldir's Cove")
Enter the tunnel |goto Arathi Highlands 21.58,75.61 < 15 |only if walking and not subzone("Faldir's Cove")
Leave the tunnel |goto Arathi Highlands 22.00,79.55 < 15 |only if walking and not subzone("Faldir's Cove")
talk Lolo the Lookout##2766
|tip He walks around this area.
accept Land Ho!##663 |goto Arathi Highlands 31.78,82.70
step
talk Shakes O'Breen##2610
turnin Land Ho!##663 |goto Arathi Highlands 32.28,81.38
step
talk First Mate Nilzlix##2767
|tip He walks around this area.
accept Deep Sea Salvage##662 |goto Arathi Highlands 32.77,81.47
step
talk Captain Steelgut##2769
accept Drowned Sorrows##664 |goto Arathi Highlands 34.00,80.79
step
talk Professor Phizzlethorpe##2768
|tip This is an escort quest.
|tip If he's not here, someone may be escorting him.
|tip Wait until he respawns.
accept Sunken Treasure##665 |goto Arathi Highlands 33.87,80.55 |noautoaccept
step
Watch the dialogue
|tip Follow Professor Phizzlethorpe as he walks.
|tip He eventually walks back to this location.
Kill the enemies that attack
|tip Two level 40 water elementals will attack.
|tip They will be immune to Frost damage.
|tip If you have trouble, try to find someone to help you.
Defend Professor Phizzlethorpe |q 665/1 |goto Arathi Highlands 33.87,80.55
step
talk Doctor Draxlegauge##2774
turnin Sunken Treasure##665 |goto Arathi Highlands 33.86,80.45
accept Sunken Treasure##666 |goto Arathi Highlands 33.86,80.45
step
Equip the Goggles of Gem Hunting
|tip They should be in your bags.
Click Here After Equipping The Goggles |confirm |q 666
step
use an Elixir of Water Breathing##5996
|tip You should have these from purchasing them earlier in the guide from the auction house in Stormwind City.
Gain Water Breathing |havebuff Water Breathing##7178 |goto Arathi Highlands 28.42,84.79 |q 666
|only if not (Druid or Warlock) and itemcount(5996) > 0 and not selfmade
stickystart "Collect_Elven_Gems"
stickystart "Kill_Daggerspine_Sorceresses"
stickystart "Kill_Daggerspine_Raiders"
step
click Maiden's Folly Log##2709
|tip It looks like a large brown book in a grey metal cauldron.
|tip On the middle floor of the sunken ship.
collect Maiden's Folly Log##4489 |q 662/2 |goto Arathi Highlands 23.41,85.10
step
click Maiden's Folly Charts##2707
|tip It looks like a tan scroll laying flat on a wooden ledge.
|tip On the middle floor of the sunken ship.
collect Maiden's Folly Charts##4487 |q 662/1 |goto Arathi Highlands 23.04,84.51
step
click Spirit of Silverpine Charts##2708
|tip It looks like a tan scroll laying flat on a wooden crate next to a cannon.
|tip On the middle floor of the sunken ship.
collect Spirit of Silverpine Charts##4488 |q 662/3 |goto Arathi Highlands 20.45,85.60
step
click Spirit of Silverpine Log##2710
|tip It looks like an open book laying on the ground.
|tip At the very bottom of the ship.
collect Spirit of Silverpine Log##4490 |q 662/4 |goto Arathi Highlands 20.65,85.10
step
label "Collect_Elven_Gems"
click Calcified Elven Gem##2712+
|tip They look like large gray stones on the ground underwater around this area.
|tip If you are wearing the Goggles of Gem Hunting, they will appear on your minimap as yellow dots.
collect 10 Elven Gem##4492 |q 666/1 |goto Arathi Highlands 25.03,85.70
You can find more around: |notinsticky
[24.65,90.70]
[18.60,90.36]
[19.70,84.18]
step
label "Kill_Daggerspine_Sorceresses"
kill 3 Daggerspine Sorceress##2596 |q 664/2 |goto Arathi Highlands 22.83,87.29
|tip Underwater around this area. |notinsticky
step
label "Kill_Daggerspine_Raiders"
kill 10 Daggerspine Raider##2595 |q 664/1 |goto Arathi Highlands 22.83,87.29
|tip Underwater around this area. |notinsticky
step
talk First Mate Nilzlix##2767
|tip He walks around this area.
turnin Deep Sea Salvage##662 |goto Arathi Highlands 32.80,81.48
step
talk Captain Steelgut##2769
turnin Drowned Sorrows##664 |goto Arathi Highlands 34.00,80.79
step
talk Doctor Draxlegauge##2774
turnin Sunken Treasure##666 |goto Arathi Highlands 33.85,80.45
|tip The Gnomish Zapper reward may be a decent upgrade.	|only if Priest
accept Sunken Treasure##668 |goto Arathi Highlands 33.85,80.45
step
Equip Your Regular Head Armor
Click Here After Equipping Your Regular Head Armor |confirm |q 668
step
talk Shakes O'Breen##2610
turnin Sunken Treasure##668 |goto Arathi Highlands 32.29,81.38
accept Sunken Treasure##669 |goto Arathi Highlands 32.29,81.38
step
talk Phin Odelic##2711
turnin Hints of a New Plague?##661 |goto Hillsbrad Foothills 50.34,59.04
step
_NOTE:_
You Have Access to Stronger Ammo
|tip Now that you're level 40, you can purchase stronger bullets or arrows.
|tip When you restock ammo at vendors, make sure to buy level 40 ammo.
Click Here to Continue |confirm |q 669
|only if Hunter
step
Enter the building |goto Stormwind City 43.02,34.40 < 10 |walk
talk Duthorian Rall##6171
|tip Inside the building.
accept The Tome of Nobility##1661 |goto Stormwind City 39.81,29.80
|only if Paladin
step
talk Duthorian Rall##6171
|tip Inside the building.
turnin The Tome of Nobility##1661 |goto Stormwind City 39.81,29.80
|only if Paladin
step
talk Jennea Cannon##5497 |only if Mage
talk Einris Brightspear##5515 |only if Hunter
talk Ursula Deline##5495 |only if Warlock
talk Wu Shen##5479 |only if Warrior
talk Osborne the Night Man##918 |only if Rogue
talk Sheldras Moontree##5504 |only if Druid
talk Brother Benjamin##5484 |only if Priest
talk Arthur the Faithful##5491 |only if Paladin
trainer Jennea Cannon##5497 |goto Stormwind City/0 38.62,79.35 |only if Mage |q 1286 |future
trainer Einris Brightspear##5515  |goto Stormwind City/0 61.66,15.30 |only if Hunter |q 1286 |future
trainer Ursula Deline##5495 |goto Stormwind City/0 26.13,77.20 |only if Warlock |q 1286 |future
trainer Wu Shen##5479 |goto Stormwind City/0 78.72,45.77 |only if Warrior |q 1286 |future
trainer Osborne the Night Man##918 |goto Stormwind City/0 74.54,52.80 |only if Rogue |q 1286 |future
trainer Sheldras Moontree##5504 |goto Stormwind City/0 20.92,55.52 |only if Druid |q 1286 |future
trainer Brother Benjamin##5484 |goto Stormwind City/0 41.64,28.98 |only if Priest |q 1286 |future
trainer Arthur the Faithful##5491 |goto Stormwind City/0 38.65,32.80 |only if Paladin |q 1286 |future
|tip Inside the tower. |only if Mage
|tip Inside the building. |only if Hunter or Warrior or Priest or Paladin
|tip He patrols inside. |only if Priest
|tip In the basement. |only if Warlock
|tip Train your spells.
|tip This is a good time to go buy your mount. |only if not Paladin or Warlock
step
Enter the building |goto Stormwind City 29.14,74.17 < 10 |walk
talk Spackle Thornberry##5520
|tip Downstairs inside the building.
|tip If you can afford them.
|tip Buy all of the Grimoires for spells that are upgrades for the spells you use with your pet.
|tip After buying them, make sure to use them in your bags to learn the spells.
Visit the Vendor |vendor Spackle Thornberry##5520 |goto Stormwind City 25.66,77.66 |q 669
|only if Warlock
step
talk Librarian Mae Paledust##3979
turnin Mythology of the Titans##1050 |goto Ironforge 74.97,12.46
|only if guideflag("SMflag")
step
talk Pozzik##4630
turnin Goblin Sponsorship##1183 |goto Thousand Needles 80.18,75.88
accept The Eighteenth Pilot##1186 |goto Thousand Needles 80.18,75.88
|only if hardcore
step
talk Razzeric##4706
turnin The Eighteenth Pilot##1186 |goto Thousand Needles 80.33,76.09
accept Razzeric's Tweaking##1187 |goto Thousand Needles 80.33,76.09
|only if hardcore
step
Enter the building |goto Dustwallow Marsh 67.81,47.70 < 15 |walk
Run up the stairs |goto Dustwallow Marsh 68.17,48.76 < 7 |walk
talk Captain Garran Vimes##4944
|tip Upstairs inside the building.
accept The Deserters##1286 |goto Dustwallow Marsh 68.21,48.62
step
Leave the building |goto Dustwallow Marsh 67.81,47.70 < 15 |walk |only if subzone("Foothold Citadel")
Enter the building |goto Dustwallow Marsh 66.00,45.20 < 10 |walk
talk Morgan Stern##4794
|tip Inside the building.
turnin Morgan Stern##1260 |goto Dustwallow Marsh 66.34,45.47
accept Mudrock Soup and Bugs##1204 |goto Dustwallow Marsh 66.34,45.47
step
talk Innkeeper Janene##6272
|tip Inside the building.
home Theramore Isle |goto Dustwallow Marsh 66.59,45.22
step
Leave the building |goto Dustwallow Marsh 66.00,45.20 < 10	|walk |only if subzone("Theramore Isle") and _G.IsIndoors()
Leave Theramore Isle |goto Dustwallow Marsh 64.81,46.60 < 40	|only if walking and subzone("Theramore Isle")
Enter the building |goto Dustwallow Marsh 59.90,40.92 < 10	|walk
Explore Sentry Point |q 1265/1			|goto Dustwallow Marsh 59.66,41.25
step
talk Archmage Tervosh##4967
|tip Inside the building.
|tip If he doesn't appear, walk out of the tower to the main road, then walk back into the tower.
|tip You also may need to check the tower inside of Theramore, but this is a very rare spawn location.
turnin The Missing Diplomat##1265 |goto Dustwallow Marsh 59.66,41.25
accept The Missing Diplomat##1266 |goto Dustwallow Marsh 59.66,41.25
|tip He may also be found at:
[66.40,49.20]
[45.20,24.40]
step
Watch the dialogue
|tip Inside the building.
|tip Archmage Tervosh will give you a defense buff.
Gain the Proudmoore's Defense Buff |havebuff Proudmoore's Defense##7120 |goto Dustwallow Marsh 59.66,41.25
step
|goto Dustwallow Marsh 45,24
confirm always
stickystart "Collect_Mirefin_Heads"
step
Kill Mudrock enemies around this area
|tip They look like tortoises.
|tip You can find more in the water nearby.
|tip Rotate between killing turtles and murlocs as respawns allow for safe pulls.
collect 8 Forked Mudrock Tongue##5883 |q 1204/1 |goto Dustwallow Marsh 64.79,42.00
You can find more around: |notinsticky
[63.08,35.77]
[61.72,30.64]
[61.92,25.24]
[61.52,21.12]
[60.33,18.47]
step
label "Collect_Mirefin_Heads"
Kill Mirefin enemies around this area
collect 12 Mirefin Head##5847 |q 1177/1 |goto Dustwallow Marsh 57.93,15.70
|tip Enemies tend to group up around here, so pull carefully when able. |only if hardcore
You can find more around: |notinsticky
[54.42,15.92]
step
Follow the path up |goto Dustwallow Marsh 57.90,18.51 < 20 |only if walking and subzone("Dreadmurk Shore")
talk "Swamp Eye" Jarl##4792
accept Jarl Needs Eyes##1206 |goto Dustwallow Marsh 55.44,26.27
step
talk "Stinky" Ignatz##4880
|tip Kill the raptors near him before accepting the quest.
|tip This is an escort quest.
|tip If he's not here, someone may be escorting him.
|tip Wait for him to respawn.
accept Stinky's Escape##1222 |goto Dustwallow Marsh 46.88,17.52 |noautoaccept
step
Watch the dialogue
|tip Follow and protect "Stinky" Ignatz as he walks.
|tip He eventually walks to this location.
Help Stinky Find Bogbean Leaves |q 1222/1 |goto Dustwallow Marsh 48.86,24.65
step
talk Private Hendel##4966
turnin The Missing Diplomat##1266 |goto Dustwallow Marsh 45.22,24.64
accept The Missing Diplomat##1324 |goto Dustwallow Marsh 45.22,24.64 |noautoaccept
|tip Private Hendel and the 2 Theramore Sentries nearby will attack you, so be prepared.
|tip Focus on killing Private Hendel.  His helpers will stop attacking once he surrenders.
step
kill Private Hendel##4966
|tip Focus on killing Private Hendel.  His helpers will stop attacking once he surrenders.
|tip He will eventually surrender.
Subdue Private Hendel |q 1324/1 |goto Dustwallow Marsh 45.22,24.64
step
Watch the dialogue
talk Archmage Tervosh##4967
|tip He will appear nearby where Private Hendel surrendered.
turnin The Missing Diplomat##1324 |goto Dustwallow Marsh 45.22,24.64
step
Watch the dialogue
talk Lady Jaina Proudmoore##4968
|tip She will appear nearby where Private Hendel surrendered.
accept The Missing Diplomat##1267 |goto Dustwallow Marsh 45.22,24.24 |instant
step
Kill Darkmist enemies around this area
|tip They look like green spiders.
|tip Inside and outside the mine.							|only if not hardcore
|tip They are inside and outside the mine, but it is safer to be outside of the mine.	|only if hardcore
collect 40 Unpopped Darkmist Eye##5884 |q 1206/1 |goto Dustwallow Marsh 33.22,22.76
step
talk "Swamp Eye" Jarl##4792
turnin Jarl Needs Eyes##1206 |goto Dustwallow Marsh 55.44,26.27
step
_Destroy or Sell These Items:_
|tip They are no longer needed.
trash Unpopped Darkmist Eye##5884 |goto Dustwallow Marsh 35.15,38.25
step
talk Mudcrush Durtfeet##4503
turnin Hungry!##1177 |goto Dustwallow Marsh 35.15,38.25
step
Enter the building |goto Dustwallow Marsh 35.73,53.99 < 10 |walk
talk Balos Jacken##5089
|tip Upstairs inside the building.
|tip He will eventually surrender.
turnin The Deserters##1286 |goto Dustwallow Marsh 36.09,54.30
accept The Deserters##1287 |goto Dustwallow Marsh 36.09,54.30
step
click Gizmorium Shipping Crate##20727
collect Seaforium Booster##5862 |q 1187/1 |goto Dustwallow Marsh 54.07,56.48
step
talk Morgan Stern##4794
|tip Inside the building.
turnin Mudrock Soup and Bugs##1204 |goto Dustwallow Marsh 66.34,45.47
accept ... and Bugs##1258 |goto Dustwallow Marsh 66.34,45.47
turnin Stinky's Escape##1222 |goto Dustwallow Marsh 66.34,45.47
step
Leave the building |goto Dustwallow Marsh 66.00,45.20 < 10 |walk |only if subzone("Theramore Isle") and _G.IsIndoors()
Enter the building |goto Dustwallow Marsh 67.81,47.70 < 15 |walk
Run up the stairs |goto Dustwallow Marsh 68.17,48.76 < 7 |walk
talk Captain Garran Vimes##4944
|tip Upstairs inside the building.
turnin The Deserters##1287 |goto Dustwallow Marsh 68.21,48.62
step
_Note_
The next area is lower xp/hour than most.
|tip It is one of the few times dungeons is more effecient than questing.
|tip It is a good time to start looking for dungeon groups while you travel if you want to run any.
|tip If you run dungeons, try to reach level 41.30. Your next guide will be Badlands (41-42).
Click Here To Confirm |confirm
step
talk Ardwyn Cailen##1312
|tip Inside the building.
buy Blackbone Wand##5239 |n
|tip It costs 3g 48s 58c so don't travel if you don't want to spend the money.
Visit the Vendor |vendor Ardwyn Cailen##1312 |goto Stormwind City 42.80,65.60
|only if Priest
step
talk Innkeeper Lyshaerya##11103
|tip Inside the building.
home Nijel's Point |goto Desolace 66.27,6.55 |q 1467 |future
step
talk Brother Anton##1182
|tip Inside the building.
accept Down the Scarlet Path##261 |goto Desolace 66.52,7.91
step
talk Kreldig Ungor##5638
accept Reagents for Reclaimers Inc.##1466 |goto Desolace 66.20,9.63
step
Avoid Ghost Walker Post and follow the path |goto Desolace 48.99,53.86 < 40 |only if walking
talk Hornizz Brimbuzzle##6019
accept Ghost-o-plasm Round Up##6134 |goto Desolace 47.83,61.82
step
Follow the path up and over the mountain |goto Desolace 46.76,67.06 < 15 |only if walking
talk Uthek the Wise##5397
turnin Ongeku##1373 |goto Desolace 36.22,79.25
accept Khan Jehn##1374 |goto Desolace 36.22,79.25
|only if not hardcore
stickystart "Collect_Nether_Wings"
stickystart "Collect_Felhound_Brains"
step
Follow the road |goto Desolace 46.98,75.20 < 40 |only if walking and not subzone("Mannoroc Coven") and not hardcore
Follow the path up |goto Desolace 52.07,82.38 < 20 |only if walking
kill Doomwarder Captain##4680+
|tip There aren't many available, so you may have to wait for them to respawn.
|tip Work on the other steps around this area while waiting.
|tip Watch for patrols and respawns while in the area.		|only if hardcore |notinsticky
collect 10 Doomwarder Blood##6252 |q 1466/3 |goto Desolace 51.71,83.27
step
label "Collect_Nether_Wings"
Kill Nether enemies around this area
|tip They look like succubi.
|tip Watch for patrols and respawns while in the area.		|only if hardcore |notinsticky
collect 10 Nether Wing##6251 |q 1466/2 |goto Desolace 51.03,71.80
You can find more around: |notinsticky
[49.69,77.79]
[52.10,82.27]
[54.01,77.40]
[54.26,70.63]
step
label "Collect_Felhound_Brains"
Kill enemies around this area
|tip Only enemies that look like felhounds will drop the quest item.
|tip Watch for patrols and respawns while in the area.		|only if hardcore |notinsticky
collect 10 Felhound Brain##6250 |q 1466/1 |goto Desolace 51.06,80.69
You can find more around: |notinsticky
[53.78,84.41]
[53.57,77.87]
[56.41,78.38]
[56.11,72.79]
step
Kill enemies around this area
|tip You should already be level 41, or pretty close.
|tip Watch for patrols and respawns while in the area.		|only if hardcore |notinsticky
ding 41 |goto Desolace 51.03,71.80
You can find more around: |notinsticky
[49.69,77.79]
[52.10,82.27]
[54.01,77.40]
[54.26,70.63]
stickystart "Kill_Undead_Ravagers"
step
Enter the Valley of Bones |goto Desolace 59.06,89.28 < 40 |only if walking
use the Crate of Ghost Magnets##15848
|tip Kill any nearby enemies before using it.
|tip Use it next to the huge bones on the ground around this area.
kill Magrami Spectre##11560+
|tip They continuously walk to the spinning object that appears on the ground.
|tip They will become hostile when they reach the spinning object.
|tip Pull them away from the spinning object to fight them.
|tip They will not aggro in groups if they are still yellow/neutral.
|tip If they are red/hostile, they will pull together.
|tip If you have to wait until they despawn and use the quest item again, that's okay.
|tip Be patient and pull carefully.
|tip Watch for respawns while in the area.	|only if hardcore
collect 8 Ghost-o-plasm##15849 |q 6134/1 |goto Desolace 63.81,91.27
step
label "Kill_Undead_Ravagers"
kill 30 Undead Ravager##11561 |q 261/1 |goto Desolace 63.96,91.95
|tip They look like brown skeletons.
|tip Watch for respawns while in the area.	|only if hardcore |notinsticky
You can find more around: |notinsticky
[59.78,89.83]
[64.52,82.42]
step
Leave the Valley of Bones and follow the path up |goto Desolace 65.27,85.25 < 20 |only if walking and subzone("Valley of Bones")
kill Khan Jehn##5601
|tip He walks in and out of this tent.
collect Khan Jehn's Head##6072 |q 1374/1 |goto Desolace 66.39,80.08
|only if not hardcore
step
talk Hornizz Brimbuzzle##6019
turnin Ghost-o-plasm Round Up##6134 |goto Desolace 47.83,61.83
step
Follow the path up and over the mountain |goto Desolace 46.76,67.06 < 15 |only if walking
talk Uthek the Wise##5397
turnin Khan Jehn##1374 |goto Desolace 36.22,79.25
|only if not hardcore
step
Follow the road into Feralas and run down the path |goto Feralas 47.56,37.72 < 30 |only if walking
Ride the boat or swim across the water |goto Feralas 43.39,42.75 < 40 |only if walking
talk Fyldren Moonfeather##8019
|tip As you travel here, stay on the road and avoid enemies.
|tip They are dangerous to you at this level.
fpath Feathermoon |goto Feralas 30.24,43.25
step
talk Faralorn##7942
|tip Inside the building.
|tip Buy enough ammo to fill your ammo bag, plus 10-12 extra stacks.
|tip You will be questing for a long time without easy access to an ammo vendor.
Visit the Vendor |vendor Faralorn##7942 |goto Feralas 30.65,43.43 |q 261
|only if Hunter
step
talk Antarius##10059
|tip Stable your permanent pet.
|tip You are about to tame a temporary pet, so you can learn "Bite 6".
Click Here to Continue |confirm |goto Feralas 31.47,43.15 |q 261
|only if Hunter
step
_NOTE:_
Tame a Longtooth Runner
|tip Use your "Tame Beast" ability on a Longtooth Runner.
|tip They look like grey wolves around this area.
Learn the "Bite 6" Pet Ability
|tip Kill enemies around this area until you see a message in your chat saying you learned "Bite 6".
|tip You will teach "Bite 6" to your permanent pet soon.
Click Here to Continue |confirm |goto Feralas 29.06,46.80 |q 261
|only if Hunter
step
talk Antarius##10059
|tip Abandon your temporary pet and get your permanent pet from the stable.
|tip Teach "Bite 6" to your permanent pet.
Click Here to Continue |confirm |goto Feralas 31.47,43.15 |q 261
|only if Hunter
step
Enter the building |goto Tanaris 52.21,28.57 < 10 |walk
talk Gimblethorn##7799
|tip Inside the building.
|tip Collect these items from the bank.
collect Goblin Rumors##5804 |goto Tanaris 52.30,28.91 |q 1117
step
talk Gimblethorn##7799
|tip Inside the building.
|tip Deposit these items into the bank.
bank Sample Elven Gem##4502 |goto Tanaris 52.30,28.91 |q 669 |future
step
talk Kravel Koalbeard##4452
turnin Rumors for Kravel##1117 |goto Thousand Needles 77.79,77.27
step
Watch the dialogue
talk Kravel Koalbeard##4452
accept Back to Booty Bay##1118 |goto Thousand Needles 77.79,77.27
step
talk Fizzle Brassbolts##4454
accept Martek the Exiled##1106 |goto Thousand Needles 78.06,77.12
|tip You must have completed "Salt Flat Venom" and "Hardened Shells" from the "Thousand Needles (33-34)" guide.
step
talk Razzeric##4706
turnin Razzeric's Tweaking##1187 |goto Thousand Needles 80.33,76.10
accept Safety First##1188 |goto Thousand Needles 80.33,76.10
step
talk Shreev##4708
turnin Safety First##1188 |goto Tanaris 51.00,27.20
accept Safety First##1189 |goto Tanaris 51.00,27.20
|only if C_Container.GetItemCooldown(6948) >= 300
step
talk Brother Anton##1182
|tip Inside the building.
turnin Down the Scarlet Path##261 |goto Desolace 66.52,7.91
step
talk Kreldig Ungor##5638
turnin Reagents for Reclaimers Inc.##1466 |goto Desolace 66.20,9.63
accept Reagents for Reclaimers Inc.##1467 |goto Desolace 66.20,9.63
step
Run up the stairs and enter the building |goto Ironforge 61.32,88.17 < 7 |walk
talk Brenwyn Wintersteel##5120
buy Falchion##2528 |n
|tip If you can afford it.
|tip You will use it when you reach level 41.
|tip If you have better, skip this step.
Visit the Vendor |vendor Brenwyn Wintersteel##5120 |goto Ironforge 62.37,88.68 |q 1467
|only if Rogue and itemcount(2528) == 0
step
Enter the building |goto Ironforge 34.11,62.34 < 10 |walk
talk Bailey Stonemantle##2461
|tip Inside the building.
|tip Deposit these items into the bank.
bank Kravel's Scheme##5826 |goto Ironforge 35.92,60.14 |q 1118 |future
bank Seaforium Booster##5862 |goto Ironforge 35.92,60.14 |q 1188 |future
step
talk Auctioneer Redmuse##8720
|tip Buy these items from the Auction House.
|tip Each item is for an individual optional quest. If you can't get them it's fine you'll just have to grind more later.
|tip There are more auction steps after this one, skip this step after completeing it and don't run to the mailbox yet. |only if Warrior
collect 1 Gyrochronatom##4389 |goto Ironforge 24.16,74.67 |q 714 |future
collect 1 Frost Oil##3829 |goto Ironforge 24.16,74.67 |q 713 |future
collect 1 Patterned Bronze Bracers##2868 |goto Ironforge 24.16,74.67 |q 716 |future
collect 1 Lesser Invisibility Potion##3823 |goto Ironforge 24.16,74.67 |q 715 |future
collect 1 Healing Potion##929 |goto Ironforge 24.16,74.67 |q 715 |future
collect 9 Blue Pearl##4611 |goto Ironforge 24.16,74.67 |q 705 |future
|tip The Blue Pearls are often expensive, we don't expect you to be able to get these but it is extra experience if they're affordable.
|only if not selfmade
step
talk Tynnus Venomsprout##5169
|tip Stock up on poisons.
|tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Tynnus Venomsprout##5169 |goto Ironforge 52.94,13.66
|only if Rogue
step
talk Roetten Stonehammer##5637
|tip He walks around inside the building.
turnin Reagents for Reclaimers Inc.##1467 |goto Ironforge 67.91,17.52
step
talk Prospector Stormpike##1356
|tip Inside the building.
turnin Stormpike's Deciphering##554 |goto Ironforge 74.64,11.74
accept Ironband Wants You!##707 |goto Ironforge 74.64,11.74
step
Enter the building |goto Ironforge 72.16,67.56 < 7 |walk
talk Skolmin Goldfury##5122
buy Massive Longbow##11307 |n
|tip If you can afford it.
|tip It's a limited supply item, so it may not be for sale.
|tip You can't use it until level 42, but it's good to have waiting to use, and you can only buy it in Stormwind City and Ironforge.
|tip We will check vendors for it along the way, if it's not here right now.
|tip If you have better, skip this step.
Visit the Vendor |vendor Skolmin Goldfury##5122 |goto Ironforge 71.76,66.70 |q 2500 |future
|only if Hunter and itemcount(11307) == 0
step
Run up the stairs and enter the building |goto Ironforge 23.09,17.43 < 7 |walk
talk Harick Boulderdrum##5133
|tip Downstairs inside the building.
buy Blackbone Wand##5239 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Harick Boulderdrum##5133 |goto Ironforge 23.13,15.94 |q 2500 |future
|only if Priest and itemcount(5239) == 0
step
Enter the building |goto Loch Modan 35.23,47.74 < 10 |walk
talk Innkeeper Hearthstove##6734
|tip Inside the building.
home Stoutlager Inn |goto Loch Modan 35.53,48.40
step
Enter the building |goto Loch Modan 36.63,48.52 < 10 |walk
talk Ghak Healtouch##1470
|tip Inside the building.
accept Badlands Reagent Run##2500 |goto Loch Modan 37.07,49.38
step
talk Prospector Ironband##1344
turnin Ironband Wants You!##707 |goto Loch Modan 65.93,65.62
accept Find Agmond##738 |goto Loch Modan 65.93,65.62
stickystart "Collect_Buzzard_Gizzards"
stickystart "Collect_Crag_Coyote_Fangs"
step
Follow the path |goto Badlands 51.77,33.17 < 15 |only if walking
click Crumpled Map##2868
|tip It is under a table in the tent.
accept A Sign of Hope##720 |goto Badlands 53.03,33.93
step
Leave Hammertoe's Digsite |goto Badlands 51.48,33.23 < 20 |only if walking and subzone("Hammertoe's Digsite")
talk Prospector Ryedol##2910
turnin A Sign of Hope##720 |goto Badlands 53.42,43.40
accept A Dwarf and His Tools##719 |goto Badlands 53.42,43.40
step
talk Sigrun Ironhew##2860
accept Mirages##718 |goto Badlands 53.80,43.31
step
Kill Shadowforge enemies around this area
|tip They look like dwarves.
collect Ryedol's Lucky Pick##4616 |q 719/1 |goto Badlands 52.59,32.20
step
click Excavation Supply Crate##2867
|tip It looks like a wooden crate.
|tip It may spawn in other locations in this camp.
|tip Watch for patrols and respawns while in the area.	|only if hardcore
collect Supply Crate##4629 |q 718/1 |goto Badlands 66.61,22.02
step
Follow the path |goto Badlands 56.21,27.40 < 50 |only if walking and subzone("Camp Kosh")
talk Prospector Ryedol##2910
turnin A Dwarf and His Tools##719 |goto Badlands 53.42,43.40
step
talk Sigrun Ironhew##2860
turnin Mirages##718 |goto Badlands 53.80,43.31
accept Scrounging##733 |goto Badlands 53.80,43.31
step
talk Rigglefuzz##2817
accept Barbecued Buzzard Wings##703 |goto Badlands 42.39,52.93
accept Pearl Diving##705 |goto Badlands 42.39,52.93 |only if itemcount(4611) >= 9
step
talk Rigglefuzz##2817
turnin Pearl Diving##705 |goto Badlands 42.39,52.93
|only if itemcount(4611) >= 9
step
talk Martek the Exiled##4618
turnin Martek the Exiled##1106 |goto Badlands 42.22,52.69
accept Indurium##1108 |goto Badlands 42.22,52.69
stickystart "Collect_Buzzard_Wings"
step
click Battered Dwarven Skeleton##2875
|tip Watch for patrols and respawns while in the area.	|only if hardcore
turnin Find Agmond##738 |goto Badlands 50.89,62.41
accept Murdaloc##739 |goto Badlands 50.89,62.41
stickystop "Collect_Buzzard_Wings"
stickystop "Collect_Buzzard_Gizzards"
stickystop "Collect_Crag_Coyote_Fangs"
stickystart "Kill_Stonevault_Bonesnapper"
stickystart "Collect_Iridium_Flakes"
step
kill Murdaloc##2945 |q 739/1 |goto Badlands 49.63,66.30
|tip He walks around this area.
step
label "Kill_Stonevault_Bonesnapper"
kill 12 Stonevault Bonesnapper##2893 |q 739/2 |goto Badlands 50.51,69.96
|tip Watch for respawns while in the area. |only if hardcore |notinsticky
step
label "Collect_Iridium_Flakes"
Kill Stonevault enemies around this area
|tip Watch for respawns while in the area. |only if hardcore |notinsticky
collect 10 Indurium Flake##5797 |q 1108/1 |goto Badlands 50.51,69.96
You can find more around [64.40,43.22]
stickystart "Collect_Buzzard_Wings"
stickystart "Collect_Buzzard_Gizzards"
stickystart "Collect_Crag_Coyote_Fangs"
step
talk Martek the Exiled##4618
turnin Indurium##1108 |goto Badlands 42.21,52.70
step
Watch the dialogue
talk Martek the Exiled##4618
accept News for Fizzle##1137 |goto Badlands 42.21,52.70
step
talk Lotwil Veriatus##2921
accept Study of the Elements: Rock##710 |goto Badlands 25.95,44.87
stickystart "Collect_Small_Stone_Shards"
step
Kill Rock Elemental enemies around this area
collect 5 Rock Elemental Shard##7848 |q 2500/3 |goto Badlands 19.46,43.02
You can find more around [13.98,39.71]
step
label "Collect_Small_Stone_Shards"
kill Lesser Rock Elemental##2735+ |notinsticky
|tip This quest can take multiple laps. Farm coyotes and vultures while waiting on respawns.
collect 10 Small Stone Shard##4626 |q 710/1 |goto Badlands 19.46,43.02
You can find more around [13.98,39.71]
step
talk Lotwil Veriatus##2921
turnin Study of the Elements: Rock##710 |goto Badlands 25.95,44.87
accept Study of the Elements: Rock##711 |goto Badlands 25.95,44.87
step
kill Rock Elemental##92+
collect 3 Large Stone Slab##4627 |q 711/1 |goto Badlands 15.60,32.60
You can find more around [43.56,84.04]
step
talk Lotwil Veriatus##2921
turnin Study of the Elements: Rock##711 |goto Badlands 25.95,44.87
accept Study of the Elements: Rock##712 |goto Badlands 25.95,44.87
stickystart "Collect_Scrap_Metal"
stickystop "Collect_Buzzard_Wings"
stickystop "Collect_Buzzard_Gizzards"
stickystop "Collect_Crag_Coyote_Fangs"
step
kill Greater Rock Elemental##2736+
|tip If you have trouble, try to find someone to help you.
|tip This quest is especially worth doing if you purchased the items from the Auction House earlier. |only if not selfmade
|tip These enemies can be tough, and are a bit higher level. |only if hardcore
|tip If you'd rather not risk it, skip this step and abandon the "Study of the Elements: Rock" quest. |only if hardcore
collect 5 Bracers of Rock Binding##4628 |q 712/1 |goto Badlands 5.40,76.83
You can find more up the path that starts at [13.20,83.27]
step
label "Collect_Scrap_Metal"
Kill Dustbelcher enemies around this area
|tip Watch for patrols and respawns here.	|only if hardcore
collect 7 Scrap Metal##4630 |q 733/1 |goto Badlands 11.29,75.60
stickystart "Collect_Buzzard_Wings"
stickystart "Collect_Buzzard_Gizzards"
stickystart "Collect_Crag_Coyote_Fangs"
step
talk Lotwil Veriatus##2921
turnin Study of the Elements: Rock##712 |goto Badlands 25.95,44.87
accept Gyro... What?##714 |goto Badlands 25.95,44.87 |only if itemcount(4389) > 0
accept Coolant Heads Prevail##713 |goto Badlands 25.95,44.87 |only if itemcount(3829) > 0
step
talk Lotwil Veriatus##2921
turnin Gyro... What?##714 |goto Badlands 25.95,44.87 |only if itemcount(4389) > 0
turnin Coolant Heads Prevail##713 |goto Badlands 25.95,44.87 |only if itemcount(3829) > 0
|only if itemcount(4389) > 0 or itemcount(3829)
step
talk Lucien Tosselwrench##2920
accept Liquid Stone##715 |goto Badlands 25.95,44.67 |only if itemcount(3823) > 0 and itemcount(929) > 0
accept Stone Is Better than Cloth##716 |goto Badlands 25.95,44.67 |only if itemcount(2868) > 0
|only if (itemcount(3823) > 0 and itemcount(929) > 0) or itemcount(2868) > 0
step
talk Lucien Tosselwrench##2920
turnin Liquid Stone##715 |goto Badlands 25.95,44.67 |only if itemcount(3823) > 0 and itemcount(929) > 0
turnin Stone Is Better than Cloth##716 |goto Badlands 25.95,44.67 |only if itemcount(2868) > 0
|only if (itemcount(3823) > 0 and itemcount(929) > 0) or itemcount(2868) > 0
step
label "Collect_Buzzard_Gizzards"
Kill Buzzard enemies around this area
collect 5 Buzzard Gizzard##7847 |q 2500/1 |goto Badlands 16.82,59.84
You can find more around: |notinsticky
[12.45,69.20]
[17.43,48.90]
[25.63,62.04]
[33.36,59.65]
[28.67,72.03]
[24.51,74.45]
[18.90,77.65]
step
label "Collect_Buzzard_Wings"
Kill Buzzard enemies around this area
collect 4 Buzzard Wing##3404 |q 703/1 |goto Badlands 16.82,59.84
|tip Be careful to not accidentally sell these to a vendor.
You can find more around: |notinsticky
[12.45,69.20]
[17.43,48.90]
[25.63,62.04]
[33.36,59.65]
[28.67,72.03]
[24.51,74.45]
[18.90,77.65]
step
label "Collect_Crag_Coyote_Fangs"
Kill Coyote enemies around this area
collect 10 Crag Coyote Fang##7846 |q 2500/2 |goto Badlands 23.75,55.12
You can find more around: |notinsticky
[14.18,65.72]
[31.58,65.16]
step
Kill enemies around this area
|tip Grinding a bit here will reduce the amount you have to grind all at once later.
|tip Don't turn in quests yet, unless you don't mind grinding more later. You will turn in quests after grinding.
ding 42 |goto Badlands 30.24,59.90
You can sell items at [42.47,52.50]
|tip Make sure not to accidentally sell Buzzard Wings if you sell items.
step
talk Rigglefuzz##2817
turnin Barbecued Buzzard Wings##703 |goto Badlands 42.39,52.93
step
_Destroy or Sell These Items:_
|tip They are no longer needed.
trash Buzzard Wing##3404 |goto Badlands 53.80,43.31
step
talk Sigrun Ironhew##2860
turnin Scrounging##733 |goto Badlands 53.80,43.31
step
Allow Enemies to Kill You
|tip Make sure to die around this location.
|tip We are going to get the Thorium Point flight path in Searing Gorge.
|tip Don't worry about the resurrection sickness, you will be traveling around a bit.
|tip By the time you need to kill enemies again, it will be gone.
Die on Purpose |complete isdead |goto Searing Gorge 67.82,51.45 |q 2500
|only if not hardcore
step
talk Spirit Healer##6491
Select _"Return me to life."_
Resurrect at the Spirit Healer |complete not isdead |goto Searing Gorge 35.50,22.79 |q 2500 |zombiewalk
|only if not hardcore
step
talk Lanie Reed##2941
fpath Thorium Point |goto Searing Gorge 37.94,30.86
|only if not hardcore
step
Leave the building |goto Loch Modan 35.23,47.74 < 10 |walk |only if subzone("Stoutlager Inn")
Enter the building |goto Loch Modan 36.63,48.52 < 10 |walk
talk Ghak Healtouch##1470
|tip Inside the building.
turnin Badlands Reagent Run##2500 |goto Loch Modan 37.07,49.38
step
talk Prospector Ironband##1344
turnin Murdaloc##739 |goto Loch Modan 65.93,65.62
step
Enter the building |goto Stormwind City 50.94,57.84 < 7 |walk
talk Frederick Stover##1298
buy Massive Longbow##11307 |n
|tip If you can afford it.
|tip It's a limited supply item, so it may not be for sale.
|tip You can't use it until level 42, but it's good to have waiting to use, and you can only buy it in Stormwind City and Ironforge.
|tip We will check vendors for it along the way, if it's not here right now.
|tip If you have better, skip this step.
Visit the Vendor |vendor Frederick Stover##1298 |goto Stormwind City 49.98,57.64 |q 1363 |future
|only if Hunter and itemcount(11307) == 0
step
talk Jasper Fel##1325
|tip Inside the building.
|tip Stock up on poisons.
|tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Jasper Fel##1325 |goto Stormwind City/0 78.32,58.97 |q 669
|only if Rogue
step
Enter the building |goto Stormwind City 55.29,68.12 < 10 |walk
talk Olivia Burnside##2455
|tip Inside the building.
|tip Collect these items from the bank.
collect Sample Elven Gem##4502 |goto Stormwind City 57.66,72.78 |q 669
collect Kravel's Scheme##5826 |goto Stormwind City 57.66,72.78 |q 1118
step
Enter the building |goto Stormwind City 41.16,63.63 < 10 |walk
talk Mazen Mac'Nadir##338
|tip Inside the building.
accept Mazen's Behest##1363 |goto Stormwind City 41.52,64.38
step
talk Acolyte Dellis##5386
|tip Upstairs inside the building.
turnin Mazen's Behest##1363 |goto Stormwind City 40.97,63.83
accept Mazen's Behest##1364 |goto Stormwind City 40.97,63.83
step
Run up the ramp and enter the building |goto Stormwind City 39.32,81.50 < 10 |only if walking
talk High Sorcerer Andromath##5694
|tip Upstairs inside the building.
accept Vital Supplies##1477 |goto Stormwind City 37.52,81.67
step
talk Kebok##737
|tip Upstairs inside the building, on the top floor.
accept Skullsplitter Tusks##209 |goto Stranglethorn Vale 27.00,77.13
step
talk Fleet Master Seahorn##2487
|tip Upstairs on the balcony of the building, on the top floor.
turnin Sunken Treasure##669 |goto Stranglethorn Vale 27.17,77.01
step
Enter the building |goto Stranglethorn Vale 27.08,77.62 < 7 |walk |only if not subzone("The Salty Sailor Tavern")
talk Crank Fizzlebub##2498
|tip Inside the building, on the bottom floor.
turnin Back to Booty Bay##1118 |goto Stranglethorn Vale 27.12,77.21
step
Watch the dialogue
talk Crank Fizzlebub##2498
|tip Inside the building, on the bottom floor.
accept Venture Company Mining##600 |goto Stranglethorn Vale 27.12,77.21
step
talk Innkeeper Skindle##6807
|tip Inside the building, on the bottom floor.
home Booty Bay |goto Stranglethorn Vale 27.04,77.31
step
talk Catelyn the Blade##2542
|tip Upstairs inside the building, on the middle floor.
turnin Ansirem's Key##603 |goto Stranglethorn Vale 27.28,77.53
accept "Pretty Boy" Duncan##610 |goto Stranglethorn Vale 27.28,77.53
step
Enter the building |goto Stranglethorn Vale 27.64,77.09 < 7 |walk
talk "Sea Wolf" MacKinley##2501
|tip Inside the building.
accept Scaring Shaky##606 |goto Stranglethorn Vale 27.78,77.07
step
Run up the ramp and cross the bridge |goto Stranglethorn Vale 28.16,76.54 < 10 |only if walking
Enter the building |goto Stranglethorn Vale 28.21,77.32 < 7 |walk
talk Drizzlik##2495
|tip Inside the building.
accept Excelsior##628 |goto Stranglethorn Vale 28.29,77.59
step
talk First Mate Crazz##2490
accept The Bloodsail Buccaneers##595 |goto Stranglethorn Vale 28.10,76.22
step
Enter the tunnel to leave Booty Bay |goto Stranglethorn Vale 28.00,73.46 < 15 |only if walking and subzone("Booty Bay")
kill "Pretty Boy" Duncan##2545
|tip Watch for respawns while you make you way here.	|only if hardcore
|tip Enemies tend to be bunched up at the camp.		|only if hardcore
collect Catelyn's Blade##4027 |q 610/1 |goto Stranglethorn Vale 27.38,69.41
step
click Bloodsail Correspondence##2083
turnin The Bloodsail Buccaneers##595 |goto Stranglethorn Vale 27.28,69.52
accept The Bloodsail Buccaneers##597 |goto Stranglethorn Vale 27.28,69.52
step
Enter the tunnel to enter Booty Bay |goto Stranglethorn Vale 29.56,72.51 < 15 |only if walking and not subzone("Booty Bay")
talk First Mate Crazz##2490
turnin The Bloodsail Buccaneers##597 |goto Stranglethorn Vale 28.10,76.21
accept The Bloodsail Buccaneers##599 |goto Stranglethorn Vale 28.10,76.21
step
Enter the building |goto Stranglethorn Vale 27.08,77.62 < 7 |walk
talk Catelyn the Blade##2542
|tip Upstairs inside the building, on the middle floor.
turnin "Pretty Boy" Duncan##610 |goto Stranglethorn Vale 27.28,77.53
accept The Curse of the Tides##611 |goto Stranglethorn Vale 27.28,77.53
step
talk Fleet Master Seahorn##2487
|tip Upstairs on the balcony of the building, on the top floor.
turnin The Bloodsail Buccaneers##599 |goto Stranglethorn Vale 27.17,77.01
step
Enter the tunnel to leave Booty Bay |goto Stranglethorn Vale 28.00,73.46 < 15 |only if walking and subzone("Booty Bay")
kill Elder Mistvale Gorilla##1557+
collect 5 Mistvale Giblets##3919 |q 606/1 |goto Stranglethorn Vale 31.72,67.03
You can find more around: |notinsticky
[33.79,64.66]
[32.18,59.97]
step
Follow the road to this location and follow the path |goto Stranglethorn Vale 38.57,40.68 < 100 |only if walking
kill 10 Jungle Stalker##687 |q 196/1 |goto Stranglethorn Vale 33.70,38.83
|tip Be careful to avoid Tethis.
|tip He looks like a level 43 elite blue raptor that walks around this area.
You can find more around: |notinsticky
[31.79,41.74]
[28.91,44.29]
[27.19,49.65]
step
Kill Venture Co. enemies around this area
|tip This area is dangerous.						|only if hardcore
|tip Venture Co. Tinkerers are ranged attackers that deal heavy damage.	|only if hardcore
|tip They also  may summon a companion to fight at their side.		|only if hardcore
|tip Enemies may run away in fear at low health here.			|only if hardcore
collect 10 Singing Blue Crystal##3917 |q 600/1 |goto Stranglethorn Vale 41.22,43.95
stickystart "Collect_Skullsplitter_Tusks"
step
Kill Skullspliter enemies around this area
|tip Only the Mystics and Witch Doctors will drop these.
|tip Watch for patrols and respawns while here.					|only if hardcore |notinsticky
|tip Skullsplitter Mystics are ranged attackers that may heal at low health.	|only if hardcore |notinsticky
|tip Enemies tend to bunch together.						|only if hardcore |notinsticky
|tip Enemies around here may run away in fear when at low health.		|only if hardcore |notinsticky
collect 4 Skullsplitter Fetish##2466 |q 205/1 |goto Stranglethorn Vale 42.69,36.60
You can find more around: |notinsticky
[45.93,32.79]
[47.39,39.42]
[45.33,42.07]
step
label "Collect_Skullsplitter_Tusks"
Kill Skullspliter enemies around this area
|tip Avoid the eastern-most area, it is much higher level.
|tip Watch for patrols and respawns while here.					|only if hardcore |notinsticky
|tip Skullsplitter Mystics are ranged attacks that may heal at low health.	|only if hardcore |notinsticky
|tip Enemies tend to bunch together.						|only if hardcore |notinsticky
|tip Enemies around here may run away in fear when at low health.		|only if hardcore |notinsticky
collect 18 Skullsplitter Tusk##1524 |q 209/1 |goto Stranglethorn Vale 42.69,36.60
You can find more around: |notinsticky
[45.93,32.79]
[47.39,39.42]
[45.33,42.07]
step
Follow the path up into the Rebel Camp |goto Stranglethorn Vale 39.04,5.15 < 30 |only if walking and not subzone("Rebel Camp")
talk Brother Nimetz##739
turnin Troll Witchery##205 |goto Stranglethorn Vale 37.83,3.56
step
Leave the Rebel Camp |goto Stranglethorn Vale 39.28,5.59 < 40 |only if walking and subzone("Rebel Camp")
talk Sir S. J. Erlgadin##718
accept Panther Mastery##193 |goto Stranglethorn Vale 35.55,10.55
|only if not hardcore
step
talk Hemet Nesingwary##715
turnin Raptor Mastery##196 |goto Stranglethorn Vale 35.66,10.81
accept Raptor Mastery##197 |goto Stranglethorn Vale 35.66,10.81 |only if not hardcore
step
kill Elder Saltwater Crocolisk##2635
|tip They are level 38 elites, but you should be able to kill one at this level.
|tip They share spawns with Saltwater Crocolisks, so kill those also, if you can't find any.
|tip If you have trouble, try to find someone to help you.
collect Elder Crocolisk Skin##4105 |q 628/1 |goto Stranglethorn Vale 29.86,25.63
Also check around: |notinsticky
[29.29,22.16]
[25.39,19.18]
step
_NOTE:_
Incoming Underwater Quest
|tip The quest has you going underwater in an area surrounded by elites.
|tip While it is easy to avoid them, they may still aggro.
|tip You may want to skip this quest if you don't have a potion of water breathing to use for it.
|tip If you do skip the next step, you will need to grind 3,150 xp to make up for it.
Click Here to Continue |confirm |q 611 |future
step
click Altar of the Tides##2576
|tip It's important to pay attention to your breath during this step.
|tip It looks like a stone table underwater.
|tip Try to swim down directly on top of the stone table to avoid aggroing the elite murlocs nearby.
|tip If you can't do it without aggroing any murlocs, you should be able to kill them one at a time at this level.
|tip If you have trouble, try to find someone to help you, or skip the quest and abandon it.
kill Gazban##2624
|tip He looks like a level 40 (non-elite) goblin that appears after you click the altar.
|tip Try to pull him away to fight him on the surface of the water, away from the elite murlocs.
collect Stone of the Tides##4034 |q 611/1 |goto Stranglethorn Vale 24.96,23.58
step
talk Crank Fizzlebub##2498
|tip Inside the building, on the bottom floor.
turnin Venture Company Mining##600 |goto Stranglethorn Vale 27.12,77.21
step
talk Krazek##773
|tip Upstairs inside the building, on the top floor.
accept Tran'rek##2864 |goto Stranglethorn Vale 26.94,77.21
step
talk Kebok##737
|tip Upstairs inside the building, on the top floor.
turnin Skullsplitter Tusks##209 |goto Stranglethorn Vale 27.00,77.13
step
talk Baron Revilgaz##2496
|tip Upstairs, on the balcony of the building, on the top floor.
turnin The Curse of the Tides##611 |goto Stranglethorn Vale 27.23,76.87
step
Run up the ramp and cross the bridge |goto Stranglethorn Vale 28.15,76.52 < 10 |only if walking
Enter the building |goto Stranglethorn Vale 28.21,77.33 < 7 |walk
talk Drizzlik##2495
|tip Inside the building.
turnin Excelsior##628 |goto Stranglethorn Vale 28.29,77.59
step
Enter the building |goto Stranglethorn Vale 28.11,75.00 < 10 |walk
talk Haren Kanmae##2839
|tip Inside the building.
|tip Buy enough ammo to fill your ammo bag, plus 8-10 extra stacks.
|tip You are about to have a long grind.
Visit the Vendor |vendor Haren Kanmae##2839 |goto Stranglethorn Vale 28.31,74.56 |q 606
|only if Hunter
step
talk "Shaky" Phillipe##2502
turnin Scaring Shaky##606 |goto Stranglethorn Vale 26.90,73.59
accept Return to MacKinley##607 |goto Stranglethorn Vale 26.90,73.59
step
Enter the tunnel to leave Booty Bay |goto Stranglethorn Vale 28.00,73.46 < 15 |only if walking and subzone("Booty Bay")
Kill enemies around this area
|tip This is a bit longer grind, but grinding some now will reduce the amount you have to grind all at once later.
|tip The next few levels will have a lot of grinding in them, so if you prefer, you could run dungeons to get to level 47, and then you shouldn't need to grind.
ding 43 |goto Stranglethorn Vale 31.72,67.03
You can find more around: |notinsticky
[33.79,64.66]
[32.18,59.97]
step
Enter the tunnel to enter Booty Bay |goto Stranglethorn Vale 29.56,72.51 < 15 |only if walking and not subzone("Booty Bay")
Enter the building |goto Stranglethorn Vale 27.64,77.09 < 7 |walk
talk "Sea Wolf" MacKinley##2501
|tip Inside the building.
turnin Return to MacKinley##607 |goto Stranglethorn Vale 27.78,77.07
step
talk Malissa##3135
|tip Walking around here.
|tip Stock up on poisons.
|tip Open your poison crafting window and purchase the ingredients you need.
|tip Buy enough your journey to Tanaris.
Visit the Vendor |vendor Malissa##3135 |goto Duskwood 79.44,44.44 |q 1477
|only if Rogue
step
talk Watchmaster Sorigal##5464
turnin Vital Supplies##1477 |goto Duskwood 75.77,46.15
step
_Note_
Be very careful to avoid the Stonard Scouts
|tip They are currently bugged and will PvP flag you just for being near them.
|tip This will let horde players attack and kill your character for the next 5 minutes.
Click Here To Confirm |confirm
|only if hardcore
step
Cross the bridge and follow the road |goto Deadwind Pass 41.83,34.69 < 30 |only if walking and not zone("Swamp of Sorrows")
Follow the road into Swamp of Sorrows |goto Deadwind Pass 52.29,43.58 < 40 |only if walking and not zone("Swamp of Sorrows")
talk Watcher Biggs##5476
accept Driftwood##1398 |goto Swamp of Sorrows 26.74,59.83
stickystart "Collect_Khadgar_Essay"
stickystart "Collect_Pristine_Crawler_Legs"
step
click Sundried Driftwood##24798+
|tip They look like wooden logs on the ground around this area.
|tip You can find them along this entire coast.
|tip Avoid Stonard as you travel here.					|only if not subzone("Misty Reed Strand")
|tip Murlocs at the Misty Reed Strand may run away in fear when at low health.	|only if hardcore
collect 8 Sundried Driftwood##6146 |q 1398/1 |goto Swamp of Sorrows 92.69,66.61
You can find more around: |notinsticky
[94.31,56.26]
[87.05,79.49]
[82.89,91.19]
step
label "Collect_Pristine_Crawler_Legs"
Kill Crawler enemies around this area
|tip They look like crabs.
|tip Silt Crawlers have a higher drop rate than Monstrous Crawlers.
|tip You can find more in the water along the shore.
|tip Avoid Stonard as you travel here. |notinsticky			|only if not subzone("Misty Reed Strand")
|tip Murlocs at the Misty Reed Strand may run away in fear when at low health.	|only if hardcore |notinsticky
collect 12 Pristine Crawler Leg##5938 |q 1258/1 |goto Swamp of Sorrows 84.82,85.11
You can find more around: |notinsticky
[87.37,78.50]
[94.25,58.94]
[94.49,45.41]
[90.25,26.39]
[81.33,10.31]
step
talk Watcher Biggs##5476
|tip Avoid Stonard as you travel here.
turnin Driftwood##1398 |goto Swamp of Sorrows 26.74,59.83
accept Deliver the Shipment##1425 |goto Swamp of Sorrows 26.74,59.83
step
label "Collect_Khadgar_Essay"
Kill Swamp Elementals around this zone
|tip This is a very low drop rate, prioritizing killing elementals while traveling the zone.
collect Khadgar's Essays on Dimensional Convergence##6065 |q 1364/1 |goto Swamp of Sorrows 13.02,35.77
step
Follow the path |goto Blasted Lands 53.29,12.23 < 40 |only if walking and not subzone("Nethergarde Keep")
Enter Nethergarde Keep |goto Blasted Lands 62.61,19.83 < 30 |only if walking
Enter the building |goto Blasted Lands 66.38,18.99 < 10 |walk
talk Watcher Mahar Ba##5385
|tip Inside the tower, at the top.
turnin Mazen's Behest##1364 |goto Blasted Lands 67.65,19.16
step
Leave the building |goto Blasted Lands 66.38,18.99 < 10 |walk |only if subzone("Nethergarde Keep") and _G.IsIndoors()
talk Quartermaster Lungertz##5393
turnin Deliver the Shipment##1425 |goto Blasted Lands 66.52,21.38
step
talk Alexandra Constantine##8609
|tip On top of the wooden platform, outside behind the building.
fpath Nethergarde Keep |goto Blasted Lands 65.54,24.33
step
talk Watchmaster Sorigal##5464
|tip This quest is timed, so we will accept it now and quickly fly back to Nethergarde Keep to turn it in.
accept Supplies for Nethergarde##1395 |goto Duskwood 75.77,46.15
step
talk Quartermaster Lungertz##5393
turnin Supplies for Nethergarde##1395 |goto Blasted Lands 66.52,21.38
step
_Note_
There is a long grind step towards the end of this guide.
|tip We recommend looking for a dungeon group at some point during this guide to make it less tedious.
|tip If you don't wish to do a dungeon, go out of your way to kill mobs between quests.
Click Here To Confirm |confirm
step
Enter the building |goto Stranglethorn Vale 27.64,77.09 < 7 |walk
talk "Sea Wolf" MacKinley##2501
|tip Inside the building.
accept Stoley's Debt##2872 |goto Stranglethorn Vale  27.78,77.07
step
Enter the building |goto Dustwallow Marsh 66.00,45.20 < 10 |walk
talk Morgan Stern##4794
|tip Inside the building.
turnin ... and Bugs##1258 |goto Dustwallow Marsh 66.34,45.47
step
Enter the building |goto Tanaris 52.21,28.57 < 10 |walk
talk Gimblethorn##7799
|tip Inside the building.
|tip Collect these items from the bank.
collect Seaforium Booster##5862 |goto Tanaris 52.30,28.91 |q 1188
step
talk Shreev##4708
turnin Safety First##1188 |goto Tanaris 50.96,27.24
accept Safety First##1189 |goto Tanaris 50.96,27.24
step
talk Tran'rek##7876
turnin Tran'rek##2864 |goto Tanaris 51.57,26.76
step
talk Fizzle Brassbolts##4454
turnin News for Fizzle##1137 |goto Thousand Needles 78.06,77.13
step
talk Razzeric##4706
turnin Safety First##1189 |goto Thousand Needles 80.33,76.09
step
talk Pozzik##4630
accept Keeping Pace##1190 |goto Thousand Needles 80.18,75.88
|tip You must have completed "Salt Flat Venom" and "Hardened Shells" from the "Thousand Needles (33-34)" guide.
|tip This also requires completing "Martek the Exiled" and "Indurium" from the "Desolace (40-41)" and Badlands (41-42) guides.
step
talk Zamek##4709
|tip Click "Complete Quest" to complete "Zamek's Distraction".
Click Here After Completing Zamek's Distraction |confirm |goto Thousand Needles 79.81,77.02 |q 1190
step
Enter the building |goto Thousand Needles 77.52,77.60 < 10 |walk
click Rizzle's Unguarded Plans##20805
|tip Inside the building.
|tip Wait for Rizzle Brassbolts to run out of the building.
turnin Keeping Pace##1190 |goto Thousand Needles 77.22,77.42
accept Rizzle's Schematics##1194 |goto Thousand Needles 77.22,77.42
step
talk Pozzik##4630
turnin Rizzle's Schematics##1194 |goto Thousand Needles 80.18,75.88
step
_Destroy This Item:_
|tip It is no longer needed.
trash Sample of Indurium Ore##5866 |goto Tanaris 52.48,28.44
step
talk Spigot Operator Luglunket##7408
accept Water Pouch Bounty##1707 |goto Tanaris 52.48,28.44
step
talk Chief Engineer Bilgewhizzle##7407
accept Wastewander Justice##1690 |goto Tanaris 52.46,28.51
step
talk Senior Surveyor Fizzledowser##7724
accept Gadgetzan Water Survey##992 |goto Tanaris 50.21,27.48
|only if not hardcore
step
Kill Roc enemies around this area
|tip They look like red birds.
|tip Skip this step if you run out of birds to kill at this location.
|tip You will finish the quest later.
collect 3 Roc Gizzard##6257 |q 1452/1 |goto Tanaris 49.47,35.83
step
use the Untapped Dowsing Widget##8584
|tip Avoid the elite enemies nearby this location while traveling here.
|tip Use it in the water.
|tip Once you get the Tapped Dowsing Widget, run away to safety immediately.
|tip Multiple higher level enemies appear after using the item.
collect Tapped Dowsing Widget##8585 |q 992/1 |goto Tanaris 39.09,29.17
|only if not hardcore
step
talk Senior Surveyor Fizzledowser##7724
turnin Gadgetzan Water Survey##992 |goto Tanaris 50.21,27.48
|only if not hardcore
stickystart "Collect_Wastewander_Water_Pouches"
stickystart "Kill_Wastewander_Bandits"
stickystart "Kill_Wastewander_Thives"
step
talk Yeh'kinya##8579
accept Screecher Spirits##3520 |goto Tanaris 66.99,22.36
stickystop "Collect_Wastewander_Water_Pouches"
stickystop "Kill_Wastewander_Bandits"
stickystop "Kill_Wastewander_Thives"
step
Enter the building |goto Tanaris 66.99,23.87 < 10 |walk
talk Stoley##7881
|tip Inside the building.
turnin Stoley's Debt##2872 |goto Tanaris 67.11,23.98
stickystart "Kill_Wastewander_Bandits"
stickystart "Kill_Wastewander_Thives"
step
label "Collect_Wastewander_Water_Pouches"
Kill Wastewander enemies around this area
collect 10 Wastewander Water Pouch##8483 |goto Tanaris 59.82,24.34
|tip Be careful not to accidentally sell these to a vendor.
|tip You are gathering extra of these, so you can turn in multiple quests at the same time.
You can find more around [63.51,30.31]
|only if haveq(1707) or haveq(379)
step
label "Kill_Wastewander_Bandits"
kill 10 Wastewander Bandit##5618 |q 1690/1 |goto Tanaris 59.82,24.34
|tip They may run away in fear at low health.	|only if hardcore |notinsticky
You can find more around [63.51,30.31]
step
label "Kill_Wastewander_Thives"
kill 10 Wastewander Thief##5616 |q 1690/2 |goto Tanaris 59.82,24.34
|tip They may run away in fear at low health.	|only if hardcore |notinsticky
You can find more around [63.51,30.31]
step
Kill Roc enemies around this area
|tip They look like red birds.
|tip They share spawn points with hyenas, so kill those too, if you can't find any.
collect 3 Roc Gizzard##6257 |q 1452/1 |goto Tanaris 49.47,35.83
step
talk Chief Engineer Bilgewhizzle##7407
turnin Wastewander Justice##1690 |goto Tanaris 52.46,28.51
step
talk Spigot Operator Luglunket##7408
turnin Water Pouch Bounty##1707 |goto Tanaris 52.48,28.44
step
Enter the building |goto Tanaris 52.21,28.57 < 10 |walk
talk Gimblethorn##7799
|tip Inside the building.
|tip Deposit these items into the bank.
bank Yeh'kinya's Bramble##10699 |goto Tanaris 52.30,28.91 |q 3520 |future
bank Roc Gizzard##6257 |goto Tanaris 52.30,28.91 |q 1452 |future
|tip You should have 3 of these.
step
Kill Wastewander enemies around this area
|tip You are about to have to complete some difficult quests in Stranglethorn Vale soon, so this level and the next level will have a lot of grinding to get you to level 45, to make the quests more manageable.
|tip Alternatively, you could run some dungeons instead, if you prefer.
|tip Wastelander Assassins can execute, be very careful when low health against these enemies. |only if hardcore
|tip Wastelander Rogues may be stealthed.						|only if hardcore
|tip Watch for patrols and respawns while around here.					|only if hardcore
collect Wastewander Water Pouch##8483+ |n
|tip You can turn in stacks of 5 water pouches in Gadgetzan for 380 xp.
|tip Collect enough stacks of them so that when you turn them in after grinding, you will hit level 44.
|tip If you need to sell items while grinding, kill enemies as you walk to and from Gadgetzan.
ding 44 |goto Tanaris 62.72,36.93
You can find more around:
[60.32,37.26]
[63.92,29.67]
[61.06,32.82]
[63.51,32.92]
Turn the Water Pouches in at [52.49,28.45]
You can sell items in Gadgetzan at [51.46,28.81]
You can buy arrows at [67.01,21.99] |only if hunter
step
Enter the building |goto Stranglethorn Vale 27.64,77.09 < 7 |walk
talk "Sea Wolf" MacKinley##2501
|tip Inside the building.
accept Voodoo Dues##609 |goto Stranglethorn Vale 27.78,77.07
step
Enter the building |goto Stranglethorn Vale 27.08,77.62 < 7 |walk
talk Whiskey Slim##2491
|tip Inside the building, on the bottom floor.
accept Whiskey Slim's Lost Grog##580 |goto Stranglethorn Vale 27.13,77.45
step
talk Crank Fizzlebub##2498
|tip Inside the building, on the bottom floor.
accept Zanzil's Secret##621 |goto Stranglethorn Vale 27.12,77.21
step
talk Ian Strom##1411
trainer Ian Strom##1411 |goto Stranglethorn Vale/0 26.82,77.16 |q 621
|tip He is on the second floor of the inn, in a back room.
|tip Train your spells.
|only if Rogue
step
talk Deeg##2488
|tip Upstairs inside the building, on the top floor.
accept Up to Snuff##587 |goto Stranglethorn Vale 26.92,77.35
step
talk Fleet Master Seahorn##2487
|tip Upstairs on the balcony of the building, on the top floor.
accept The Bloodsail Buccaneers##604 |goto Stranglethorn Vale 27.17,77.01
step
talk Privateer Bloads##2494
|tip He walks around this area.
accept Akiris by the Bundle##617 |goto Stranglethorn Vale 26.76,76.38
He sometimes walks to [27.43,76.78]
step
Run up the ramp and follow the path |goto Stranglethorn Vale 28.07,76.49 < 10 |only if walking
talk Dizzy One-Eye##2493
|tip Outside, next to the building.
accept Keep An Eye Out##576 |goto Stranglethorn Vale 28.59,75.90
stickystart "Collect_Snuff"
stickystart "Collect_Dizzys_Eye"
stickystart "Kill_Bloodsail_Swashbucklers"
step
Enter the tunnel to leave Booty Bay |goto Stranglethorn Vale 28.00,73.46 < 15 |only if walking and subzone("Booty Bay")
Follow the path |goto Stranglethorn Vale 32.89,73.75 < 40 |only if walking and not subzone("Wild Shore")
click Bloodsail Charts##2086
|tip It looks like a brown piece of paper.
|tip It can spawn on any of the objects in these 2 small camps.
collect Bloodsail Charts##3920 |q 604/2 |goto Stranglethorn Vale 29.59,80.83
Also check around: |notinsticky
[27.15,82.69]
[27.74,83.13]
step
click Bloodsail Orders##2087
|tip It looks like a white unrolled scroll.
|tip It can spawn on any of the objects in these 2 small camps.
|tip Enemies tend to bunch together around here.				|only if hardcore |notinsticky
|tip Bloodsail Warlocks are ranged attackers with pets that deal heavy damage.	|only if hardcore |notinsticky
collect Bloodsail Orders##3921 |q 604/3 |goto Stranglethorn Vale 29.59,80.80
Also check around: |notinsticky
[27.18,82.66]
[27.74,83.13]
step
label "Collect_Snuff"
Kill Bloodsail enemies around this area
|tip Enemies tend to bunch together around here.				|only if hardcore |notinsticky
|tip Bloodsail Warlocks are ranged attackers with pets that deal heavy damage.	|only if hardcore |notinsticky
collect 15 Snuff##3910 |q 587/1 |goto Stranglethorn Vale 27.07,82.90
You can find more around: |notinsticky
[29.78,81.38]
[32.96,73.85]
step
label "Collect_Dizzys_Eye"
Kill Bloodsail enemies around this area
|tip Enemies tend to bunch together around here.				|only if hardcore |notinsticky
|tip Bloodsail Warlocks are ranged attackers with pets that deal heavy damage.	|only if hardcore |notinsticky
collect Dizzy's Eye##3897 |q 576/1 |goto Stranglethorn Vale 27.07,82.90
You can find more around: |notinsticky
[29.78,81.38]
[32.96,73.85]
step
label "Kill_Bloodsail_Swashbucklers"
kill 10 Bloodsail Swashbuckler##1563 |q 604/1 |goto Stranglethorn Vale 27.07,82.90
|tip Enemies tend to bunch together around here.				|only if hardcore |notinsticky
|tip Bloodsail Warlocks are ranged attackers with pets that deal heavy damage.	|only if hardcore |notinsticky
You can find more around: |notinsticky
[29.78,81.38]
[32.96,73.85]
step
Follow the path |goto Stranglethorn Vale 32.75,73.68 < 40 |only if walking and subzone("Wild Shore")
Enter the tunnel to enter Booty Bay |goto Stranglethorn Vale 29.56,72.51 < 15 |only if walking and not subzone("Booty Bay")
talk Dizzy One-Eye##2493
|tip Outside, next to the building.
turnin Keep An Eye Out##576 |goto Stranglethorn Vale 28.59,75.90
step
Enter the building |goto Stranglethorn Vale 27.08,77.62 < 7 |walk |only if not subzone("The Salty Sailor Tavern")
talk Innkeeper Skindle##6807
|tip Inside the building, on the bottom floor.
home Booty Bay |goto Stranglethorn Vale 27.04,77.31
step
talk Deeg##2488
|tip Upstairs inside the building, on the top floor.
turnin Up to Snuff##587 |goto Stranglethorn Vale 26.92,77.35
step
talk Fleet Master Seahorn##2487
|tip Upstairs on the balcony of the building.
turnin The Bloodsail Buccaneers##604 |goto Stranglethorn Vale 27.17,77.01
accept The Bloodsail Buccaneers##608 |goto Stranglethorn Vale 27.17,77.01 |only if not hardcore
step
Enter the tunnel to leave Booty Bay |goto Stranglethorn Vale 28.00,73.46 < 15 |only if walking and subzone("Booty Bay")
kill Naga Explorer##1907+
|tip Watch for patrols and respawns while in the area.	|only if hardcore
collect 10 Akiris Reed##4029 |q 617/1 |goto Stranglethorn Vale 27.88,62.75
You can find more around: |notinsticky
[27.00,63.02]
[25.43,62.88]
[26.04,60.45]
stickystart "Collect_Zanzils_Mixture"
step
Cross the bridge |goto Stranglethorn Vale 27.20,58.95 < 20 |only if walking and subzone("Southern Savage Coast")
kill Jon-Jon the Crow##2536
|tip There may be 2 adds around him that will pull if you attack him.	|only if hardcore
|tip Clear the area before attempting to kill.				|only if hardcore
collect Jon-Jon's Golden Spyglass##3925 |q 609/2 |goto Stranglethorn Vale 34.93,51.85
step
kill Maury "Club Foot" Wilkins##2535
|tip There may be 2 adds around him that will pull if you attack him.	|only if hardcore
|tip Clear the area before attempting to kill.				|only if hardcore
collect Maury's Clubbed Foot##3924 |q 609/1 |goto Stranglethorn Vale 35.25,51.26
step
Follow the path |goto Stranglethorn Vale 33.73,53.77 < 30 |only if walking and not subzone("Ruins of Aboraz")
kill Chucky "Ten Thumbs"##2537
collect Chucky's Huge Ring##3926 |q 609/3 |goto Stranglethorn Vale 40.00,58.24
step
label "Collect_Zanzils_Mixture"
Kill Zanzil enemies around this area
|tip The respawns here can be slow, rotate between the two locations as needed.
|tip Be careful to not attack Zanzil the Outcast in the ruins.	|only if subzone("Ruins of Aboraz")
|tip He summons a lot of enemies.				|only if subzone("Ruins of Aboraz")
|tip If you accidentally pull him, you can run in the water to evade him. |only if subzone("Ruins of Aboraz")
collect 12 Zanzil's Mixture##4016 |q 621/1 |goto Stranglethorn Vale 40.00,58.24
You can find more around [34.12,51.96]
step
Follow the path back to the road |goto Stranglethorn Vale 37.84,56.28 < 20 |only if walking and subzone("Ruins of Aboraz")
Follow the road to this location and follow the path |goto Stranglethorn Vale 38.57,40.68 < 100 |only if walking
kill Tethis##730
|tip He looks like a blue raptor that walks around this area.
|tip Be sure to clear non-elite enemies nearby before pulling.
|tip He is a level 43 elite, but you should be able to kill him at this level.
|tip If you have trouble, try to find someone to help you.
|tip If you don't want to risk trying to kill him, skip the quest and abandon "Raptor Mastery". |only if hardcore
collect Talon of Tethis##3877 |q 197/1 |goto Stranglethorn Vale 32.22,40.89
You can also find him around: |notinsticky
[31.17,43.40]
[28.74,44.84]
|only if haveq(197)
step
kill Bhag'thera##728
|tip He looks like an unstealthed black panther.
|tip Be sure to clear non-elite enemies nearby before pulling.
|tip He is a level 40 elite, so you should be able to kill him pretty easily.
|tip If you have trouble, try to find someone to help you.
|tip He can spawn in multiple locations.
|tip If you don't want to risk trying to kill him, skip the quest and abandon "Panther Mastery". |only if hardcore
collect Fang of Bhag'thera##3876 |q 193/1 |goto Stranglethorn Vale 46.37,29.05
Cross this tree bridge to get to the other locations: [48.92,28.04]
You can also find him around: |notinsticky
[49.60,24.03]
[48.99,20.20]
|only if haveq(193)
step
talk Hemet Nesingwary##715
turnin Raptor Mastery##197 |goto Stranglethorn Vale 35.66,10.81
|only if haveq(197)
step
talk Sir S. J. Erlgadin##718
turnin Panther Mastery##193 |goto Stranglethorn Vale 35.55,10.55
|only if haveq(193)
step
talk Crank Fizzlebub##2498
|tip Inside the building, on the bottom floor.
turnin Zanzil's Secret##621 |goto Stranglethorn Vale 27.12,77.21
step
talk Privateer Bloads##2494
|tip He walks around this area.
turnin Akiris by the Bundle##617 |goto Stranglethorn Vale 26.76,76.38
accept Akiris by the Bundle##623 |goto Stranglethorn Vale 26.76,76.38
He sometimes walks to [27.43,76.78]
step
Enter the building |goto Stranglethorn Vale 27.64,77.09 < 7 |walk
talk "Sea Wolf" MacKinley##2501
|tip Inside the building.
turnin Voodoo Dues##609 |goto Stranglethorn Vale 27.78,77.07
step
Enter the building |goto Stranglethorn Vale 28.10,75.00 < 15 |walk
talk Haren Kanmae##2839
|tip Inside the building.
|tip Buy enough ammo to fill your ammo bag, plus 10-12 extra stacks.
|tip You are around to have a long grind.
Visit the Vendor |vendor Haren Kanmae##2839 |goto Stranglethorn Vale 28.31,74.56 |q 623
|only if Hunter
step
Enter the tunnel to leave Booty Bay |goto Stranglethorn Vale 28.00,73.46 < 15 |only if walking and subzone("Booty Bay")
Kill enemies around this area
|tip This is a longer grind, but you are about to have to complete some difficult quests on the boats south of Booty Bay, so being a level higher will help. |only if not hardcore
|tip Grinding now will also reduce the amount you have to grind all at once later.
|tip Alternatively, you could run a dungeon, if you prefer.
ding 45 |goto Stranglethorn Vale 31.72,67.03
You can find more around: |notinsticky
[Stranglethorn Vale 33.79,64.66]
[Stranglethorn Vale 32.18,59.97]
step
Enter the tunnel to enter Booty Bay |goto Stranglethorn Vale 29.56,72.51 < 15 |only if walking
Enter Booty Bay |complete subzone("Booty Bay") |goto Stranglethorn Vale 24.70,75.54 |q 1119 |future
|only if not subzone("Booty Bay")
step
Swim out of Booty Bay |goto Stranglethorn Vale 24.70,75.54 < 40 |only if walking and subzone("Booty Bay")
Run up the ramp to board the ship |goto Stranglethorn Vale 29.89,89.33 < 10 |only if walking
kill Captain Keelhaul##2548 |q 608/2 |goto Stranglethorn Vale 29.20,88.34
|tip He walks around this area, downstairs inside the ship.
|tip On the middle floor.
|tip If you have trouble, try to find someone to help you.
|only if not hardcore
step
click Cortello's Riddle##2554
|tip It looks like a white rolled up scroll.
|tip It can spawn in multiple locations on any floor downstairs inside the ship.
collect Cortello's Riddle##4056 |goto Stranglethorn Vale 29.20,88.60 |q 624 |future |or
|tip
Click Here if the Scroll is Not On This Ship |confirm |or
|only if not (haveq(624) or completedq(624)) and not hardcore
step
Run up the ramp to board the ship |goto Stranglethorn Vale 30.17,89.43 < 10 |only if walking
kill Fleet Master Firallon##2546 |q 608/3 |goto Stranglethorn Vale 30.58,90.64
|tip Downstairs inside the ship.
|tip On the middle floor.
|tip He's level 48, but you should be able to kill him at this level.
|tip If you have trouble, try to find someone to help you.
|only if not hardcore
step
click Cortello's Riddle
|tip It looks like a white rolled up scroll.
|tip It can spawn in multiple locations on any floor downstairs inside the ship.
collect Cortello's Riddle##4056 |goto Stranglethorn Vale 30.64,90.17 |q 624 |future |or
|tip
Click Here if the Scroll is Not On This Ship |confirm |or
|only if not (haveq(624) or completedq(624)) and not hardcore
step
Run up the ramp to board the ship |goto Stranglethorn Vale 33.66,87.48 < 10 |only if walking
kill Captain Stillwater##2550 |q 608/1 |goto Stranglethorn Vale 32.87,88.20
|tip Downstairs inside the ship.
|tip On the middle floor.
|tip If you have trouble, try to find someone to help you.
|only if not hardcore
step
click Cortello's Riddle
|tip It looks like a white rolled up scroll.
|tip It can spawn in multiple locations on any floor downstairs inside the ship.
collect Cortello's Riddle##4056 |goto Stranglethorn Vale 33.39,88.17 |q 624 |future
|tip If you still can't find it, skip the quest.
|only if not (haveq(624) or completedq(624)) and not hardcore
step
use Cortello's Riddle##4056
accept Cortello's Riddle##624
|only if itemcount(4056) > 0
step
cast Teleport: Moonglade##18960
trainer Loganaar##12042 |goto Moonglade/0 52.50,40.54 |q 608
|tip Go to Moonglade and train your spells, then hearth once it is off cooldown.
|only if Druid and C_Container.GetItemCooldown(6948) <= 100
step
use the Hearthstone##6948
Hearth to Booty Bay |goto Stranglethorn Vale 27.07,77.28 < 30 |noway |c |q 608
|only if subzone("Wild Shore")
step
_WARNING:_
|tip Do NOT accept the quest in the next step, if you are not planning to continue for at least 1 hour more.
|tip The quest has a time limit of 2 hours to complete, and it continues counting down even when you're logged out.
|tip You will turn the quest in fairly soon, so you shouldn't need the full 2 hours.
Click Here to Continue |confirm |q 1119 |future
step
talk Crank Fizzlebub##2498
|tip Inside the building, on the bottom floor.
accept Zanzil's Mixture and a Fool's Stout##1119 |goto Stranglethorn Vale 27.12,77.21
step
talk Fleet Master Seahorn##2487
|tip Upstairs, on the balcony of the building.
turnin The Bloodsail Buccaneers##608 |goto Stranglethorn Vale 27.17,77.00
|only if not hardcore
step
click A Soggy Scroll##2553
|tip Underwater, under the bridge.
turnin Cortello's Riddle##624 |goto Swamp of Sorrows 22.86,48.19
accept Cortello's Riddle##625 |goto Swamp of Sorrows 22.86,48.19
|only if haveq(624)
step
talk Jennea Cannon##5497 |only if Mage
talk Einris Brightspear##5515 |only if Hunter
talk Ursula Deline##5495 |only if Warlock
talk Wu Shen##5479 |only if Warrior
talk Sheldras Moontree##5504 |only if Druid
talk Brother Benjamin##5484 |only if Priest
talk Arthur the Faithful##5491 |only if Paladin
trainer Jennea Cannon##5497 |goto Stormwind City/0 38.62,79.35 |only if Mage |q 623
trainer Einris Brightspear##5515  |goto Stormwind City/0 61.66,15.30 |only if Hunter |q 623
trainer Ursula Deline##5495 |goto Stormwind City/0 26.13,77.20 |only if Warlock |q 623
trainer Wu Shen##5479 |goto Stormwind City/0 78.72,45.77 |only if Warrior |q 623
trainer Sheldras Moontree##5504 |goto Stormwind City/0 20.92,55.52 |only if Druid |q 623
trainer Brother Benjamin##5484 |goto Stormwind City/0 41.64,28.98 |only if Priest |q 623
trainer Arthur the Faithful##5491 |goto Stormwind City/0 38.65,32.80 |only if Paladin |q 623
|tip Inside the tower. |only if Mage
|tip Inside the building. |only if Hunter or Warrior or Priest or Paladin
|tip He patrols inside. |only if Priest
|tip In the basement. |only if Warlock
|tip Train your spells.
step
talk Privateer Groy##2616
|tip He walks around this area.
turnin Akiris by the Bundle##623 |goto Dustwallow Marsh 68.84,53.22
Also check around [Dustwallow Marsh 68.02,51.44]
step
Enter the cave |goto Dustwallow Marsh 31.71,65.74 < 15 |walk
click Musty Scroll##2555
|tip Inside the cave.
turnin Cortello's Riddle##625 |goto Dustwallow Marsh 31.10,66.15
accept Cortello's Riddle##626 |goto Dustwallow Marsh 31.10,66.15
|only if haveq(625)
step
talk Kravel Koalbeard##4452
turnin Zanzil's Mixture and a Fool's Stout##1119 |goto Thousand Needles 77.79,77.27
step
Watch the dialogue
talk Kravel Koalbeard##4452
accept Get the Gnomes Drunk##1120 |goto Thousand Needles 77.79,77.27
step
talk Gnome Pit Boss##4495
turnin Get the Gnomes Drunk##1120 |goto Thousand Needles 77.56,76.94
step
talk Kravel Koalbeard##4452
accept Report Back to Fizzlebub##1122 |goto Thousand Needles 77.79,77.27
step
Optional Route Change
|tip You can opt to do Zul'Farrak around level 47 instead of grinding.
|tip This will mean slower leveling but it will be more fun and potentially give you gear upgrades.
|tip If you choose to do Zul'Farrak, we will say when to accept and turnin dungeon quests that are worth doing in your route.
|tip We will also say when it is a good time to do the dungeon.
_Note_
|tip This feature is currently experimental and may result in a full quest log. If this happens, please submit a feedback report so we can fix it!
|tip If you have a full quest log, we recommend abandoning any dungeon quests that can be shared by your party members later.
Click Here if you'd like to run Zul'Farrak later |confirm ZFflag
Click Here if you'd prefer to grind |confirm
step
talk Curgle Cranklehop##7763
accept Handle With Care##3022 |goto Tanaris 52.35,26.91
step
Enter the building |goto Tanaris 52.21,28.57 < 10 |walk
talk Gimblethorn##7799
|tip Inside the building.
|tip Collect these items from the bank.
collect Yeh'kinya's Bramble##10699 |goto Tanaris 52.30,28.91 |q 3520
step
talk Gimblethorn##7799
|tip Inside the building.
|tip Deposit these items into the bank.
bank Fool's Stout Report##5807 |goto Tanaris 52.30,28.91 |q 1122 |future
step
talk Pratt McGrubben##7852
accept The Mark of Quality##2821 |goto Feralas 30.63,42.71
step
talk Innkeeper Shyria##7736
|tip Inside the building.
home Feathermoon Stronghold |goto Feralas 30.97,43.49
step
Enter the building |goto Feralas 30.77,45.23 < 15 |walk
talk Latronicus Moonspear##7877
|tip Inside the building.
accept The Missing Courier##4124 |goto Feralas 30.38,46.17
step
talk Shandris Feathermoon##3936
|tip Inside the building.
accept The Ruins of Solarsal##2866 |goto Feralas 30.28,46.17
step
talk Troyas Moonbreeze##7764
|tip Inside the building.
accept In Search of Knowledge##2939 |goto Feralas 31.78,45.50
step
talk Angelas Moonbreeze##7900
|tip Inside the building.
accept The High Wilderness##2982 |goto Feralas 31.83,45.61
step
talk Ginro Hearthkindle##7880
|tip Upstairs inside the building.
turnin The Missing Courier##4124 |goto Feralas 31.86,45.13
accept The Missing Courier##4125 |goto Feralas 31.86,45.13
step
click Solarsal Gazebo##142179
|tip You have to be standing inside of it to be able to click it.
turnin The Ruins of Solarsal##2866 |goto Feralas 26.32,52.34
accept Return to Feathermoon Stronghold##2867 |goto Feralas 26.32,52.34
step
talk Shandris Feathermoon##3936
|tip Inside the building.
turnin Return to Feathermoon Stronghold##2867 |goto Feralas 30.28,46.17
accept Against the Hatecrest##3130 |goto Feralas 30.28,46.17
step
talk Latronicus Moonspear##7877
|tip Inside the building.
turnin Against the Hatecrest##3130 |goto Feralas 30.38,46.17
accept Against the Hatecrest##2869 |goto Feralas 30.38,46.17
step
Kill Hatecrest enemies around this area
|tip Hatecrest Screamers's may heal during fighting.	|only if hardcore
|tip Hatecrest Sirens are ranged attackers.		|only if hardcore
|tip Enemies may run away in fear at low health here.	|only if hardcore
collect 10 Hatecrest Naga Scale##9247 |q 2869/1 |goto Feralas 28.66,53.05
You can find more around [26.21,51.95]
step
talk Latronicus Moonspear##7877
|tip Inside the building.
turnin Against the Hatecrest##2869 |goto Feralas 30.38,46.17
accept Against Lord Shalzaru##2870 |goto Feralas 30.38,46.17
step
talk Faralorn##7942
|tip Inside the building.
|tip Buy enough ammo to fill your ammo bag, plus 15-20 extra stacks.
|tip You have a long grind soon.
Visit the Vendor |vendor Faralorn##7942 |goto Feralas 30.65,43.43 |q 2870
|only if Hunter
step
_NOTE:_
Incoming Cave Step
|tip The cave you're about to be sent into has inconsistent spawn rates.
|tip Over all it's pretty dangerous.
|tip The quest is optional.
|tip If you do skip you will need to grind 6,800 xp.
Click Here to Continue |confirm |q 2870 |future
|only if hardcore
step
Follow the path |goto Feralas 25.48,64.99 < 20 |only if walking
Enter the cave |goto Feralas 26.09,67.26 < 20 |walk
kill Lord Shalzaru##8136
|tip Inside the cave.
|tip This cave is dangerous. |only if hardcore
|tip It's easy to be overwhelmed by patrolling or casting enemies. |only if hardcore
|tip Be mindful while you progress through the cave. |only if hardcore
|tip If you have trouble, try to find someone to help you.
collect Mysterious Relic##9248 |q 2870/1 |goto Feralas 28.49,70.45
stickystart "Accept_Find_OOX_22"
step
Leave the cave |goto Feralas 26.09,67.26 < 20 |walk |only if subzone("Shalzaru's Lair")
Kill enemies around this area
|tip You will need to go to higher level zones soon, and there's not enough quests to get you to a high enough level.
|tip We are grinding for a while now, to reduce the amount you have to grind all at once later.
|tip If you prefer, you can run dungeons until you reach level 46.
ding 46 |goto Feralas 26.39,54.22
You can buy arrows at [30.65,43.43]				|only if Hunter
|only if hardcore
step
_NOTE:_
During the Next Step
|tip You will be swimming to a sunken boat on the shore on the other side of the water.
|tip You will get fatigued while swimming and may get very close to dying, if you're not careful.
|tip If you want to be safer while swimming, look at your world map and only swim in the sections of water with lines in it.
|tip Doing this will prevent fatigue, or greatly reduce the amount you experience, making the swim much safer.
Click to Continue |confirm |q 4125
|only if hardcore
step
Leave the cave |goto Feralas 26.09,67.26 < 20 |walk |only if subzone("Shalzaru's Lair")
click Wrecked Row Boat##164909
|tip Underwater.
|tip You can ride the boat and follow the coast or swim across. |only if hardcore
|tip Swimming across takes you through a fatigue zone which can be dangerous. |only if hardcore
|tip Use a healing potion when you're low health from the Fatigue from swimming across.
|tip You will make it out of the Fatigue zone shortly after.
|tip Be careful of the elementals and giants near the boat. |only if hardcore
|tip You will be hearthing back to Feathermoon Stronghold after this step is finished.
turnin The Missing Courier##4125 |goto Feralas 45.45,64.97
accept Boat Wreckage##4127 |goto Feralas 45.45,64.97
step
talk Faralorn##7942
|tip Inside the building.
|tip Buy enough ammo to fill your ammo bag, plus 6-8 extra stacks.
|tip You will be questing a while.
Visit the Vendor |vendor Faralorn##7942 |goto Feralas 30.65,43.43 |q 2870
|only if Hunter
step
talk Ginro Hearthkindle##7880
|tip Upstairs inside the building.
turnin Boat Wreckage##4127 |goto Feralas 31.86,45.13
accept The Knife Revealed##4129 |goto Feralas 31.86,45.13
step
Enter the building |goto Feralas 30.77,45.23 < 15 |walk
talk Latronicus Moonspear##7877
|tip Inside the building.
turnin Against Lord Shalzaru##2870 |goto Feralas 30.38,46.17
accept Delivering the Relic##2871 |goto Feralas 30.38,46.17
step
talk Vestia Moonspear##7878
|tip Inside the building.
turnin Delivering the Relic##2871 |goto Feralas 30.08,45.06
step
Enter the building |goto Feralas 32.34,43.69 < 10 |walk
talk Quintis Jonespyre##7879
|tip Upstairs inside the building.
turnin The Knife Revealed##4129 |goto Feralas 32.45,43.79
step
Watch the dialogue
talk Quintis Jonespyre##7879
|tip Upstairs inside the building.
accept Psychometric Reading##4130 |goto Feralas 32.45,43.79
step
talk Ginro Hearthkindle##7880
|tip Upstairs inside the building.
turnin Psychometric Reading##4130 |goto Feralas 31.86,45.13
accept The Woodpaw Gnolls##4131 |goto Feralas 31.86,45.13
step
Run onto the dock and ride the boat or swim across the water |goto Feralas 31.03,39.92 < 40 |only if walking and subzone("Feathermoon Stronghold")
Kill Screecher enemies around this area
|tip Vale Screechers and Rogue Vale Screechers will count for the quest.
|tip They look like thin flying dragons.
use Yeh'kinya's Bramble##10699
|tip Use it on their corpses.
talk Screecher Spirit##8612+
|tip They appear after using Yeh'kinya's Bramble on the corpses.
Collect #3# Screecher Spirits |q 3520/1 |goto Feralas 46.26,40.14
You can find more around: |notinsticky
[45.86,37.59]
[44.46,36.19]
[42.49,36.47]
stickystart "Collect_Thick_Yeti_Hides"
step
use the OOX-22/FE Distress Beacon##8705
accept Find OOX-22/FE!##2766 |goto Feralas 53.35,55.70
|only if itemcount(8705) == 1
step
Follow the path up |goto Feralas 47.11,44.49 < 30 |only if walking and subzone("The Forgotten Coast")
Run through the tunnel |goto Feralas 55.15,56.36 < 15 |only if walking
talk Homing Robot OOX-22/FE##7807
|tip This NPC offers an escort quest.
|tip If it's not here, someone may be escorting it.
|tip Wait until it respawns.
turnin Find OOX-22/FE!##2766 |goto Feralas 53.35,55.70
|tip You will complete the escort quest later when you're higher level, to make it easier.
step
label "Collect_Thick_Yeti_Hides"
Kill Feral Scar enemies around this area
|tip They look like yetis.
|tip Watch for patrols and respawns while here.	|only if hardcore
collect 10 Thick Yeti Hide##8973 |q 2821/1 |goto Feralas 56.20,57.02
You can find more through the tunnel at [55.14,56.36]
stickystart "Collect_Ironfur_Livers"
stickystart "Collect_Groddoc_Livers"
step
Follow the path up |goto Feralas 54.10,68.24 < 40 |only if walking and not subzone("Frayfeather Highlands")
click Hippogryph Egg##141931
|tip They are found in nests on the hill.
collect Hippogryph Egg##8564 |goto Feralas 56.66,75.90 |q 2741 |future
|tip You will use this for a future quest.
|tip Be careful not to accidentally sell this to a vendor.
You can find more around: |notinsticky
[58.49,76.10]
[57.99,76.30]
[58.27,76.72]
[57.30,77.37]
[57.02,78.21]
stickystart "Kill_Gordunni_Warlocks"
step
kill 8 Gordunni Shaman##5236 |q 2982/2 |goto Feralas 59.67,66.85
|tip They share spawn points with the other ogres, so kill those too, if you can't find any.
|tip Prioritize these where possible. You can find Warlocks and Brutes up north.
|tip Watch for patrols and respawn while in the area.	|only if hardcore
stickystart "Kill_Gordunni_Brutes"
step
label "Kill_Gordunni_Warlocks"
kill 8 Gordunni Warlock##5240 |q 2982/1 |goto Feralas 59.22,64.15
|tip Watch for patrols and respawn while in the area.	|only if hardcore |notinsticky
You can find more around [61.03,55.64]
step
label "Kill_Gordunni_Brutes"
kill 8 Gordunni Brute##5232 |q 2982/3 |goto Feralas 61.00,55.61
|tip Watch for patrols and respawn while in the area.	|only if hardcore |notinsticky
You can find more around [59.28,63.51]
step
label "Collect_Ironfur_Livers"
kill Ironfur Bear##5268+
|tip They look like bears.
collect 3 Ironfur Liver##6258 |q 1452/2 |goto Feralas 60.27,60.56
You can find more around: |notinsticky
[58.52,60.59]
[57.74,56.51]
step
label "Collect_Groddoc_Livers"
kill Groddoc Ape##5260+
|tip They look like gorillas.
|tip They share spawn points with Ironfur Bears, so kill those too, if you can't find any.
collect 3 Groddoc Liver##6259 |q 1452/3 |goto Feralas 60.27,60.56
You can find more around: |notinsticky
[58.52,60.59]
[57.74,56.51]
step
Prepare for Zul'Farrak
|tip It will be a good time to start Zul'Farrak soon.
|tip You should run it after the next few quests, roughly 30 minutes.
|tip Start looking for a group.
|confirm
|only if guideflag("ZFflag")
step
Cross the bridge and follow the road |goto Feralas 63.40,52.43 < 20 |only if walking and not subzone("Grimtotem Compound")
Kill enemies around this area
|tip Clear the area around the large cage, to make the next step easier.
Click Here After You Clear the Enemies |confirm |goto Feralas 66.69,46.57 |q 2969 |future
step
Follow the path up |goto Feralas 65.66,46.77 < 10 |only if walking
talk Kindal Moonweaver##7956
accept Freedom for All Creatures##2969 |goto Feralas 65.94,45.65
step
click Cage Door
|tip Follow the Captured Sprite Darters and protect them.
|tip You have to make sure at least 6 of them survive.
|tip HURRY!  You must complete the quest and turn it in before the timer ends.
|tip Watch for patrols and respawn while in the area.	|only if hardcore
Save at Least 6 Sprite Darters from Capture |q 2969/1 |goto Feralas 66.67,46.75
step
Follow the path up |goto Feralas 65.66,46.77 < 10 |only if walking
talk Kindal Moonweaver##7956
|tip HURRY!  You must turn it in before the timer ends.
|tip If you're very quick, she may need a moment to respawn. Don't panic.
turnin Freedom for All Creatures##2969 |goto Feralas 65.94,45.65
step
talk Jer'kai Moonweaver##7957
accept Doling Justice##2970 |goto Feralas 65.95,45.61
stickystart "Kill_Grimtotem_Raiders"
stickystart "Kill_Grimtotem_Naturalists"
step
kill 6 Grimtotem Shaman##7727 |q 2970/3 |goto Feralas 66.89,46.43
|tip Watch for patrols and respawn while in the area.	|only if hardcore |notinsticky
|tip Grimtotem Shaman may heal when at low health.	|only if hardcore |notinsticky
|tip Enemies may run away in fear at low health.	|only if hardcore |notinsticky
You can find more: |notinsticky
Around [68.71,47.04]
Around [69.59,39.44]
Up the path at [68.26,39.25]
step
label "Kill_Grimtotem_Raiders"
kill 10 Grimtotem Raider##7725 |q 2970/2 |goto Feralas 66.89,46.43
|tip Watch for patrols and respawn while in the area.	|only if hardcore |notinsticky
|tip Grimtotem Shaman may heal when at low health.	|only if hardcore |notinsticky
|tip Enemies may run away in fear at low health.	|only if hardcore |notinsticky
You can find more: |notinsticky
Around [68.71,47.04]
Around [69.59,39.44]
Up the path at [68.26,39.25]
step
label "Kill_Grimtotem_Naturalists"
kill 12 Grimtotem Naturalist##7726 |q 2970/1 |goto Feralas 66.89,46.43
|tip Watch for patrols and respawn while in the area.	|only if hardcore |notinsticky
|tip Grimtotem Shaman may heal when at low health.	|only if hardcore |notinsticky
|tip Enemies may run away in fear at low health.	|only if hardcore |notinsticky
You can find more: |notinsticky
Around [68.71,47.04]
Around [69.59,39.44]
Up the path at [68.26,39.25]
step
Follow the path up |goto Feralas 65.66,46.77 < 10 |only if walking
talk Jer'kai Moonweaver##7957
turnin Doling Justice##2970 |goto Feralas 65.95,45.61
accept Doling Justice##2972 |goto Feralas 65.95,45.61
step
click Large Leather Backpacks##164953
|tip Clear Woodpaw enemies around the area before attempting to gather.	|only if hardcore
turnin The Woodpaw Gnolls##4131 |goto Feralas 73.31,56.31
accept The Writhing Deep##4135 |goto Feralas 73.31,56.31
step
use the Undelivered Parcel##11463
accept Thalanaar Delivery##4281
step
_NOTE:_
Incoming Cave Step
|tip The next step has you traveling into a cave with enemies that run away in fear quickly when at low health.
|tip Zukk'ash Stingers patrol the tunnels and may deal heavy damage upon death.
|tip Enemies also have larger than normal aggro radius, so it may require careful navigation as well.
|tip Not completing the quest will make it impossible to complete a few other quests in the guide.
|tip It will also end up making you need to grind 13,560 xp to catch up.
Click Here to Continue |confirm |q 4265 |future
|only if hardcore
step
Follow the path up |goto Feralas 72.11,62.68 < 40 |only if walking
Enter the cave at the bottom of the path |goto Feralas 73.17,63.88 < 7 |walk
Follow the path down |goto Feralas 72.69,64.56 < 7 |walk
click Zukk'ash Pod##164954
|tip Inside the cave.
|tip Watch for patrols and respawns while in the area.			|only if hardcore
|tip Enemies may run away in fear at low health.			|only if hardcore
|tip Zukk'ash Stingers deal heavy damage when they are about to die.	|only if hardcore
turnin The Writhing Deep##4135 |goto Feralas 72.08,63.75
accept Freed from the Hive##4265 |goto Feralas 72.08,63.75
step
Watch the dialogue
|tip Inside the cave.
|tip Watch for patrols and respawns while in the area.			|only if hardcore
|tip Enemies may run away in fear at low health.			|only if hardcore
|tip Zukk'ash Stingers deal heavy damage when they are about to die.	|only if hardcore
Free Raschal |q 4265/1 |goto Feralas 72.08,63.81
step
talk Faralorn##7942
|tip Inside the building.
|tip Buy enough ammo to fill your ammo bag, plus 10-12 extra stacks.
|tip You have a longer grind coming up soon.
Visit the Vendor |vendor Faralorn##7942 |goto Feralas 30.65,43.43 |q 2821
|only if Hunter
step
talk Pratt McGrubben##7852
turnin The Mark of Quality##2821 |goto Feralas 30.63,42.71
step
talk Angelas Moonbreeze##7900
|tip Inside the building.
turnin The High Wilderness##2982 |goto Feralas 31.83,45.61
accept The Sunken Temple##3445 |goto Feralas 31.83,45.61
step
talk Ginro Hearthkindle##7880
|tip Upstairs inside the building.
turnin Freed from the Hive##4265 |goto Feralas 31.86,45.13
accept A Hero's Welcome##4266 |goto Feralas 31.86,45.13
step
Enter the building |goto Feralas 30.76,45.23 < 15 |walk
talk Shandris Feathermoon##3936
|tip Inside the building.
turnin A Hero's Welcome##4266 |goto Feralas 30.28,46.17
accept Rise of the Silithid##4267 |goto Feralas 30.28,46.17
step
talk Yeh'kinya##8579
turnin Screecher Spirits##3520 |goto Tanaris 66.98,22.36
accept The Prophecy of Mosh'aru##3527 |goto Tanaris 66.98,22.36
|only if guideflag("ZFflag")
step
talk Chief Engineer Bilgewhizzle##7407
accept Divino-matic Rod##2768 |goto Tanaris 52.46,28.51
|only if guideflag("ZFflag")
step
talk Tran'rek##7876
accept Scarab Shells##2865 |goto Tanaris 51.57,26.76
|only if guideflag("ZFflag")
step
talk Trenton Lighthammer##7804
accept Troll Temper##3042 |goto Tanaris 51.42,28.75
|only if guideflag("ZFflag")
step
Enter the Zul'Farrak Dungeon with Your Group |goto Zul'Farrak/0 0.00,0.00 < 555 |c |q 3042
|only if guideflag("ZFflag")
stickystart "Collect_5_Uncracked_Scarab_Shell"
stickystart "Collect_20_Troll_Temper"
step
Inside the Zul'Farrak Dungeon:
kill Theka the Martyr##7272
|tip He is the second boss of the dungeon.
|tip Follow the path north and then go right when the path splits.
|tip Quickly go left afterwards and then north.
collect First Mosh'aru Tablet##10660 |q 3527/1
|only if guideflag("ZFflag")
step
label "Collect_Divino-matic_Rod"
Inside the Zul'Farrak Dungeon: |notinsticky
kill Sergeant Bly##7604
|tip He will be killable after you release them from captivity and clear the temple event.
collect Divino-matic Rod##8548 |q 2768/1
|only if guideflag("ZFflag")
step
Inside the Zul'Farrak Dungeon:
kill Hydromancer Velratha##7795
|tip Follow the path southeast to reach the large room with a pool in the center.
|tip She walks around this area.
collect Tiara of the Deep##9234 |q 2846/1 |only if haveq(2846)
collect Second Mosh'aru Tablet##10661 |q 3527/2
|only if guideflag("ZFflag")
step
Inside the Zul'Farrak Dungeon:
use the Mallet of Zul'Farrak##9240
|tip Clear the room.
|tip Use it near the gong atop the pool of water.
kill Gahz'rilla##7273
collect Gahz'rilla's Electrified Scale##8707 |q 2770/1
|only if guideflag("ZFflag") and haveq(2770)
step
label "Collect_5_Uncracked_Scarab_Shell"
Inside the Zul'Farrak Dungeon: |notinsticky
kill Scarab##7269+
|tip They are found all around the instance, but mostly in the scarab room with Theka the Martyr.
collect 5 Uncracked Scarab Shell##9238 |q 2865/1
|only if guideflag("ZFflag")
step
label "Collect_20_Troll_Temper"
Inside the Zul'Farrak Dungeon: |notinsticky
Kill enemies around this area
|tip These drop from troll enemies inside of Zul'Farrak.
|tip It will likely take multiple runs to complete.
collect 20 Troll Temper##9523 |q 3042/1
|only if guideflag("ZFflag")
step
Leave the Zul'Farak Dungeon
Click Here to Continue |confirm |q 3042
|only if guideflag("ZFflag")
step
talk Yeh'kinya##8579
turnin The Prophecy of Mosh'aru##3527 |goto Tanaris 66.98,22.36
|only if guideflag("ZFflag")
step
talk Chief Engineer Bilgewhizzle##7407
turnin Divino-matic Rod##2768 |goto Tanaris 52.46,28.51
|only if guideflag("ZFflag")
step
talk Tran'rek##7876
turnin Scarab Shells##2865 |goto Tanaris 51.57,26.76
|only if guideflag("ZFflag")
step
talk Trenton Lighthammer##7804
turnin Troll Temper##3042 |goto Tanaris 51.42,28.75
|only if guideflag("ZFflag")
step
talk Wizzle Brassbolts##4453
turnin Gahz'rilla##2770 |goto Thousand Needles 78.14,77.11
|only if guideflag("ZFflag") and readyq(2770)
step
Kill enemies around this area
|tip Inside and outside the cave.
|tip You will need to go to higher level zones soon, and there's not enough quests to get you to a high enough level.
|tip We are grinding for a while now, to reduce the amount you have to grind all at once later.
|tip If you prefer, you can run dungeons until you reach level 47.
|tip You are about to take a long flight to Darnassus, so grinding now is also to make sure your hearthstone is available to use to return quickly to Feralas afterward.
ding 47 |goto Feralas 26.09,67.26
You can buy arrows at [30.65,43.43]				|only if Hunter
|only if not hardcore
step
Kill enemies around this area
|tip You will need to go to higher level zones soon, and there's not enough quests to get you to a high enough level.
|tip We are grinding for a while now, to reduce the amount you have to grind all at once later.
|tip If you prefer, you can run dungeons until you reach level 47.
ding 47 |goto Feralas 26.39,54.22
You can buy arrows at [30.65,43.43]				|only if Hunter
|only if hardcore
step
label "Accept_Find_OOX_22"
Kill enemies around this area |notinsticky
collect OOX-22/FE Distress Beacon##8705 |n
|tip Any enemy in Feralas can drop this item.
use the OOX-22/FE Distress Beacon##8705
accept Find OOX-22/FE!##2766 |goto Feralas 26.39,54.22
|only if not guideflag("ZFflag")
step
_NOTE:_
Run Back to Feathermoon Stronghold
|tip Do NOT use your hearthstone to return to Feathermoon Stronghold.
|tip You are about to take a long flight to Darnassus, so you'll want to make sure your hearthstone is available to use to return quickly to Feralas afterward.
|tip If you reached level 47 and your hearthstone is still not ready to be used, continue grinding until it's ready.
|tip You have another very long grind when you return from Darnassus, but it is the last long grind you will have to do.
Click Here to Continue |confirm |q 4267
|only if not guideflag("ZFflag")
step
talk Faralorn##7942
|tip Inside the building.
|tip Buy enough ammo to fill your ammo bag, plus 18-20 extra stacks.
|tip You have a long grind coming up soon.
Visit the Vendor |vendor Faralorn##7942 |goto Feralas 30.65,43.43 |q 4267
|only if Hunter
step
talk Erelas Ambersky##7916
|tip Inside the building.
turnin Handle With Care##3022 |goto Teldrassil 55.50,92.05
accept Favored of Elune?##3661 |goto Teldrassil 55.50,92.05
step
talk Daryn Lightwind##7907
|tip Upstairs inside the building.
turnin In Search of Knowledge##2939 |goto Teldrassil 55.41,92.23
step
click Feralas: A History
|tip Upstairs inside the building.
accept Feralas: A History##2940 |goto Teldrassil 55.22,91.46
step
talk Daryn Lightwind##7907
|tip Upstairs inside the building.
turnin Feralas: A History##2940 |goto Teldrassil 55.41,92.23
accept The Borrower##2941 |goto Teldrassil 55.41,92.23
step
talk Kyrai##3561
|tip Upstairs inside the building.
|tip Stock up on poisons.
|tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Kyrai##3561 |goto Darnassus 32.55,19.74 |q 4267
|only if Rogue
step
talk Garryeth##4209
|tip Deposit these items into the bank.
bank A Short Note##9329 |goto Darnassus 39.60,41.98 |q 2941 |future
bank Yeh'kinya's Bramble##10699 |goto Darnassus 39.60,41.98 |q 3520 |future
bank Hippogryph Egg##8564 |goto Darnassus 39.60,41.98 |q 2741 |future
bank Ironfur Liver##6258 |goto Darnassus 39.60,41.98 |q 1452 |future
|tip You should have 3 of these.
bank Groddoc Liver##6259 |goto Darnassus 39.60,41.98 |q 1452 |future
|tip You should have 3 of these.
step
Cross the bridge |goto Darnassus 38.60,48.01 < 30 |only if walking
Enter the building |goto Darnassus 39.06,77.04 < 15 |walk
Run up the ramp |goto Darnassus 40.46,91.67 < 10 |walk
talk Gracina Spiritmight##7740
|tip Upstairs inside the building.
turnin Rise of the Silithid##4267 |goto Darnassus 41.85,85.62
step
talk Tyrande Whisperwind##7999
|tip Upstairs inside the building.
turnin Doling Justice##2972 |goto Darnassus 39.10,81.59
step
talk Jocaste##4146 |only if Hunter
talk Syurna##4163 |only if Rogue
talk Sildanair##4089 |only if Warrior
talk Denatharion##4218 |only if Druid
talk Jandria##4091 |only if Priest
trainer Jocaste##4146 |goto Darnassus/0 40.40,8.58 |only if Hunter |q 1452 |future
trainer Sildanair##4089 |goto Darnassus/0 61.78,42.28 |only if Warrior |q 1452 |future
trainer Syurna##4163 |goto Darnassus/0 36.97,21.86 |only if Rogue |q 1452 |future
trainer Denatharion##4218  |goto Darnassus/0 34.74,7.43 |only if Druid |q 1452 |future
trainer Jandria##4091 |goto Darnassus/0 37.91,82.80 |only if Priest |q 1452 |future
|tip In the basement of the tree. |only if Rogue
|tip Train your spells.
step
Kill enemies around this area
|tip Inside and outside the cave.
|tip You will need to go to higher level zones soon, and there's not enough quests to get you to a high enough level.
|tip We are grinding a lot now to get you to a good level to continue questing the rest of the way to 60.
|tip If you prefer, you can run dungeons.
|tip This is the last very long grind you have to do.
ding 48 |goto Feralas 26.09,67.26				|only if level < 48
ding 48,68000 |goto Feralas 26.09,67.26
You can buy arrows at [30.65,43.43]				|only if Hunter
|only if not hardcore
step
Kill enemies around this area
|tip You will need to go to higher level zones soon, and there's not enough quests to get you to a high enough level.
|tip We are grinding a lot now to get you to a good level to continue questing the rest of the way to 60.
|tip If you prefer, you can run dungeons.
|tip This is the last very long grind you have to do.
ding 48,68000 |goto Feralas 26.39,54.22
You can buy arrows at [30.65,43.43]				|only if Hunter
|only if hardcore
step
talk Falfindel Waywarder##4048
turnin Thalanaar Delivery##4281 |goto Feralas 89.64,46.57
step
talk Marin Noggenfogger##7564
accept The Thirsty Goblin##2605 |goto Tanaris 51.81,28.66
step
Enter the building |goto Tanaris 52.21,28.57 < 10 |walk
talk Gimblethorn##7799
|tip Inside the building.
|tip Collect these items from the bank.
collect A Short Note##9329 |goto Tanaris 52.30,28.91 |q 2941
collect Yeh'kinya's Bramble##10699 |goto Tanaris 52.30,28.91 |q 3520
collect Hippogryph Egg##8564 |goto Tanaris 52.30,28.91 |q 2741 |future
step
talk Chief Engineer Bilgewhizzle##7407
accept More Wastewander Justice##1691 |goto Tanaris 52.46,28.51
step
Enter the building |goto Tanaris 52.38,27.91 < 10 |walk
talk Innkeeper Fizzgrimble##7733
|tip Inside the building.
home Gadgetzan |goto Tanaris 52.51,27.91
step
talk Andi Lynn##11758
accept The Dunemaul Compound##5863 |goto Tanaris 52.82,27.40
step
click Egg-O-Matic##142071
accept The Super Egg-O-Matic##2741 |goto Tanaris 52.37,26.97 |instant
step
_Open This Item:_
|tip Open it for rewards, its no longer needed.
|tip You can turn in the egg for Curgle Cranklehop next to the Egg-o-Matic.
trash Egg Crate##8647 |goto Tanaris/0 52.36,26.90
step
talk Curgle Cranklehop##7763
turnin The Borrower##2941 |goto Tanaris 52.36,26.91
accept The Super Snapper FX##2944 |goto Tanaris 52.36,26.91
step
click Wanted Poster##142122
accept WANTED: Caliph Scorpidsting##2781 |goto Tanaris 51.84,27.02
accept WANTED: Andre Firebeard##2875 |goto Tanaris 51.84,27.02
step
talk Tran'rek##7876
accept Thistleshrub Valley##3362 |goto Tanaris 51.57,26.76
step
talk Senior Surveyor Fizzledowser##7724
accept Gadgetzan Water Survey##992 |goto Tanaris 50.21,27.48
|only if hardcore
step
use the Untapped Dowsing Widget##8584
|tip Avoid the elite enemies nearby this location while traveling here.
|tip Use it in the water.
|tip Two level 48 enemies appear after using the item.
|tip Be ready to run, if you can't kill the enemies.
collect Tapped Dowsing Widget##8585 |q 992/1 |goto Tanaris 39.09,29.17
|only if hardcore
step
talk Senior Surveyor Fizzledowser##7724
turnin Gadgetzan Water Survey##992 |goto Tanaris 50.21,27.48		|only if hardcore
accept Noxious Lair Investigation##82 |goto Tanaris 50.21,27.48
step
talk Haughty Modiste##15165
accept Pirate Hats Ahoy!##8365 |goto Tanaris 66.56,22.27
step
talk Yeh'kinya##8579
turnin Screecher Spirits##3520 |goto Tanaris 66.99,22.36
step
talk Jabbey##8139
|tip Inside the building.
|tip Buy enough ammo to fill your ammo bag, plus 12-15 extra stacks.
|tip You will be questing for a long time without an arrow vendor nearby.
Visit the Vendor |vendor Jabbey##8139 |goto Tanaris 67.01,21.99 |q 8365
|only if Hunter
step
Enter the building |goto Tanaris 66.99,23.87 < 10 |walk
talk Security Chief Bilgewhizzle##7882
|tip Inside the building.
accept Southsea Shakedown##8366 |goto Tanaris 67.06,23.89
step
talk Stoley##7881
|tip Inside the building.
accept Stoley's Shipment##2873 |goto Tanaris 67.11,23.98
stickystart "Kill_Wastewander_Rogues"
stickystart "Kill_Wastewander_Assassins"
stickystart "Kill_Wastewander_Shadow_Mages"
step
path	follow loose;	loop;	ants curved;	dist 40
path	63.84,31.89		63.30,37.23		62.29,37.83		59.52,41.19
path	58.71,38.17		61.87,33.42
kill Caliph Scorpidsting##7847
|tip He walks in a counter-clockwise pattern, so this path will help you find him faster.
|tip He walks with 2 stealthed guards with him, so be careful.
|tip If you have trouble, try to find someone to help you.
collect Caliph Scorpidsting's Head##8723 |q 2781/1
step
label "Kill_Wastewander_Rogues"
kill 8 Wastewander Rogue##5615 |q 1691/1 |goto Tanaris 60.87,32.74
|tip They are stealthed around this area.
|tip Wastelander Shadow Mages are ranged attackers with a minion that must be killed.	|only if hardcore
|tip Watch for patrols and respawns while around here.					|only if hardcore
You can find more around: |notinsticky
[61.84,34.67]
[59.99,37.02]
[58.85,36.63]
[58.81,39.22]
[60.52,39.06]
[63.40,37.65]
[64.43,39.57]
[65.32,36.89]
step
label "Kill_Wastewander_Assassins"
kill 6 Wastewander Assassin##5623 |q 1691/2 |goto Tanaris 60.87,32.74
|tip Wastelander Rogues may be stealthed.						|only if hardcore |notinsticky
|tip Wastelander Shadow Mages are ranged attackers with a minion that must be killed.	|only if hardcore |notinsticky
|tip Watch for patrols and respawns while around here.					|only if hardcore |notinsticky
You can find more around: |notinsticky
[61.84,34.67]
[59.99,37.02]
[58.85,36.63]
[58.81,39.22]
[60.52,39.06]
[63.40,37.65]
[64.43,39.57]
[65.32,36.89]
step
label "Kill_Wastewander_Shadow_Mages"
kill 10 Wastewander Shadow Mage##5617 |q 1691/3 |goto Tanaris 60.87,32.74
|tip Wastelander Rogues may be stealthed.						|only if hardcore |notinsticky
|tip Watch for patrols and respawns while around here.					|only if hardcore |notinsticky
You can find more around: |notinsticky
[61.84,34.67]
[59.99,37.02]
[58.85,36.63]
[58.81,39.22]
[60.52,39.06]
[63.40,37.65]
[64.43,39.57]
[65.32,36.89]
stickystart "Collect_Southsea_Pirate_Hats"
stickystart "Kill_Southsea_Pirates"
stickystart "Kill_Southsea_Freebooters"
stickystart "Kill_Southsea_Dock_Workers"
stickystart "Kill_Southsea_Swashbucklers"
stickystart "Collect_Ship_Schedule"
step
Enter the tunnel |goto Tanaris 68.62,41.46 < 20 |only if walking and not subzone("Lost Rigger Cove")
Enter the building |goto Tanaris 72.61,46.82 < 10 |walk
click Stolen Cargo##142181
|tip Upstairs inside the building.
collect Stoley's Shipment##9244 |q 2873/1 |goto Tanaris 72.19,46.77
step
kill Andre Firebeard##7883
|tip Try to pull him away to fight him alone.
|tip If you have trouble, try to find someone to help you.
collect Firebeard's Head##9246 |q 2875/1 |goto Tanaris 73.37,47.14
step
label "Collect_Southsea_Pirate_Hats"
Kill Southsea enemies around this area
collect 20 Southsea Pirate Hat##20519 |q 8365/1 |goto Tanaris 73.26,46.42
|tip Enemies may will flee when at low health.				|only if hardcore |notinsticky
|tip Avoid entering buildings when possible.				|only if hardcore |notinsticky
|tip Enemies tend to bunch up and pull in groups inside them.		|only if hardcore |notinsticky
You can find more around [72.29,44.64]
step
label "Kill_Southsea_Pirates"
kill 10 Southsea Pirate##7855 |q 8366/1 |goto Tanaris 73.26,46.42
|tip Enemies may will flee when at low health.				|only if hardcore |notinsticky
|tip Avoid entering buildings when possible.				|only if hardcore |notinsticky
|tip Enemies tend to bunch up and pull in groups inside them.		|only if hardcore |notinsticky
You can find more around [72.29,44.64]
step
label "Kill_Southsea_Freebooters"
kill 10 Southsea Freebooter##7856 |q 8366/2 |goto Tanaris 73.26,46.42
|tip Enemies may will flee when at low health.				|only if hardcore |notinsticky
|tip Avoid entering buildings when possible.				|only if hardcore |notinsticky
|tip Enemies tend to bunch up and pull in groups inside them.		|only if hardcore |notinsticky
You can find more around [72.29,44.64]
step
label "Kill_Southsea_Dock_Workers"
kill 10 Southsea Dock Worker##7857 |q 8366/3 |goto Tanaris 73.76,47.42
|tip Enemies may will flee when at low health.				|only if hardcore |notinsticky
|tip Avoid entering buildings when possible.				|only if hardcore |notinsticky
|tip Enemies tend to bunch up and pull in groups inside them.		|only if hardcore |notinsticky
|tip You can find more up on the wooden platforms nearby.
step
label "Kill_Southsea_Swashbucklers"
kill 10 Southsea Swashbuckler##7858 |q 8366/4 |goto Tanaris 75.19,45.96
|tip Enemies may will flee when at low health.				|only if hardcore |notinsticky
|tip Avoid entering buildings when possible.				|only if hardcore |notinsticky
|tip Enemies tend to bunch up and pull in groups inside them.		|only if hardcore |notinsticky
You can find more in the buildings around [72.96,47.07]
step
label "Collect_Ship_Schedule"
Kill Southsea enemies around this area
|tip Enemies will flee when at low health.				|only if hardcore |notinsticky
|tip Avoid entering buildings when possible.				|only if hardcore |notinsticky
|tip Enemies tend to bunch up and pull in groups inside them.		|only if hardcore |notinsticky
collect Pirate's Footlocker##9276 |n
use Pirate's Footlocker##9276+
collect Ship Schedule##9250 |goto Tanaris 73.26,46.42 |q 2876 |future
|tip It may take a long time to get it, but it is a good grind to do to get a lot of extra xp built up.
|tip If you grind over 2 bars of XP and still haven't found it, skip the quest.
You can find more around [72.29,44.64]
step
use the Ship Schedule##9250
accept Ship Schedules##2876
|only if itemcount(9250) > 0
step
talk Chief Engineer Bilgewhizzle##7407
turnin WANTED: Caliph Scorpidsting##2781 |goto Tanaris 52.46,28.51 |only if not hardcore
turnin More Wastewander Justice##1691 |goto Tanaris 52.46,28.51
step
talk Marvon Rivetseeker##7771
turnin The Sunken Temple##3445 |goto Tanaris 52.71,45.93
accept The Stone Circle##3444 |goto Tanaris 52.71,45.93
accept Gahz'ridian##3161 |goto Tanaris 52.71,45.93
step
Kill Centipaar enemies around this area
|tip Centipaar Swarmers summon adds as you fight them.	|only if hardcore
|tip Centipaar Workers run away in fear when at low health.	|only if hardcore
collect 5 Centipaar Insect Parts##8587 |q 82/1 |goto Tanaris 35.74,42.06
stickystart "Kill_Dunemaul_Brutes"
stickystart "Kill_Dunemaul_Enforcers"
step
Enter the cave |goto Tanaris 41.09,57.35 < 20 |walk
kill Gor'marok the Ravager##12046 |q 5863/3 |goto Tanaris 41.50,57.81
|tip Inside the small cave.
step
click Gahz'ridian##140971+
|tip They look like small piles of sand on the ground around this area.
collect 30 Gahz'ridian Ornament##8443 |q 3161/1 |goto Tanaris 40.45,72.67
You can find more around [46.96,65.87]
step
label "Kill_Dunemaul_Brutes"
kill 10 Dunemaul Brute##5474 |q 5863/1 |goto Tanaris 40.45,72.67
You can find more around: |notinsticky
[46.96,65.87]
[40.04,55.70]
step
label "Kill_Dunemaul_Enforcers"
kill 10 Dunemaul Enforcer##5472 |q 5863/2 |goto Tanaris 40.45,72.67
You can find more around: |notinsticky
[46.96,65.87]
[40.04,55.70]
stickystart "Kill_Gnarled_Thistleshrubs"
stickystart "Kill_Thistleshrub_Rootshapers"
step
kill Thistleshrub Dew Collector##5481+
collect Laden Dew Gland##8428 |q 2605/1 |goto Tanaris 29.97,66.48
You can find more around: |notinsticky
[28.18,64.79]
[30.54,64.66]
step
label "Kill_Gnarled_Thistleshrubs"
kill 8 Gnarled Thistleshrub##5490 |q 3362/1 |goto Tanaris 29.97,66.48
You can find more around: |notinsticky
[28.18,64.79]
[30.54,64.66]
step
label "Kill_Thistleshrub_Rootshapers"
kill 8 Thistleshrub Rootshaper##5485 |q 3362/2 |goto Tanaris 29.97,66.48
You can find more around: |notinsticky
[28.18,64.79]
[30.54,64.66]
step
Kill enemies around this area
|tip You should already be level 49, or pretty close.
|tip As you grind, keep an eye out for a turtle named Tooga, who offers a quest.
|tip Make a mental note of where he is, if you see him.  You will be searching for him in the next step.
ding 49 |goto Tanaris 29.97,66.48
You can find more around: |notinsticky
[28.18,64.79]
[30.54,64.66]
step
talk Tooga##5955
|tip He looks like a turtle that walks around this area.
|tip This is an escort quest.
|tip If you can't find him, someone may be escorting him.
|tip Just keep grinding enemies around this area until you find him.
accept Tooga's Quest##1560 |goto Tanaris 28.50,63.10 |noautoaccept
Also check around: |notinsticky
[29.97,66.48]
[30.54,64.66]
[31.79,74.15]
[29.58,74.73]
stickystart "Lead_Tooga_To_Torta"
step
talk Marvon Rivetseeker##7771
turnin Gahz'ridian##3161 |goto Tanaris 52.71,45.93 |notravel |only if haveq(1560)
turnin Gahz'ridian##3161 |goto Tanaris 52.71,45.93 |only if not haveq(1560)
step
label "Lead_Tooga_To_Torta"
Lead Tooga to Torta |q 1560/1 |goto Tanaris 66.57,25.67 |notravel
|tip He will follow you.
|tip Protect Tooga as you walk, and try to stay fairly close to him.
|tip If you get too far away from him, you will fail the quest.
|tip Torta looks like a turtle that walks around this area.
step
talk Torta##6015
|tip She looks like a turtle that walks around this area.
turnin Tooga's Quest##1560 |goto Tanaris 66.57,25.67
step
Enter the building |goto Tanaris 66.99,23.87 < 10 |walk
talk Security Chief Bilgewhizzle##7882
|tip Inside the building.
turnin WANTED: Andre Firebeard##2875 |goto Tanaris 67.06,23.89 |only if not hardcore
turnin Southsea Shakedown##8366 |goto Tanaris 67.06,23.89
turnin Ship Schedules##2876 |goto Tanaris 67.06,23.89
step
talk Stoley##7881
|tip Inside the building.
turnin Stoley's Shipment##2873 |goto Tanaris 67.11,23.97
accept Deliver to MacKinley##2874 |goto Tanaris 67.11,23.97
step
talk Yorba Screwspigot##9706
|tip Inside the building.
accept Yuka Screwspigot##4324 |goto Tanaris 67.03,24.01
step
talk Haughty Modiste##15165
turnin Pirate Hats Ahoy!##8365 |goto Tanaris 66.56,22.27
step
talk Marin Noggenfogger##7564
turnin The Thirsty Goblin##2605 |goto Tanaris 51.81,28.66
accept In Good Taste##2606 |goto Tanaris 51.81,28.66
step
Enter the building |goto Tanaris 52.21,28.57 < 10 |walk
talk Gimblethorn##7799
|tip Inside the building.
|tip Deposit these items into the bank.
bank Stoley's Bottle##9245 |goto Tanaris 52.30,28.91 |q 2874 |future
step
talk Sprinkle##7583
turnin In Good Taste##2606 |goto Tanaris 51.06,26.87
accept Sprinkle's Secret Ingredient##2641 |goto Tanaris 51.06,26.87
step
talk Alchemist Pestlezugg##5594
|tip Inside the building.
turnin Noxious Lair Investigation##82 |goto Tanaris 50.89,26.96
step
talk Senior Surveyor Fizzledowser##7724
accept The Scrimshank Redemption##10 |goto Tanaris 50.21,27.48
step
talk Tran'rek##7876
turnin Thistleshrub Valley##3362 |goto Tanaris 51.57,26.76
step
talk Andi Lynn##11758
turnin The Dunemaul Compound##5863 |goto Tanaris 52.82,27.40
step
use the OOX-17/TN Distress Beacon##8623
accept Find OOX-17/TN!##351
|only if itemcount(8623) > 0
step
talk Homing Robot OOX-17/TN##7784
|tip This NPC offers an escort quest.
|tip If it's not here, someone may be escorting it.
|tip Wait until it appears again.
turnin Find OOX-17/TN!##351 |goto Tanaris 60.23,64.72
step
Follow the path down |goto Tanaris 55.87,70.27 < 30 |only if walking
Enter the cave |goto Tanaris 55.78,68.91 < 10 |c |q 10
step
Follow the path down |goto Tanaris 55.93,68.37 < 7 |walk
Continue following the path down |goto Tanaris 56.17,68.34 < 7 |walk
Follow the path |goto Tanaris 56.55,68.72 < 7 |walk
Follow the path up |goto Tanaris 57.19,70.16 < 7 |walk
Follow the path down |goto Tanaris 57.61,70.67 < 7 |walk
Follow the path |goto Tanaris 57.38,71.30 < 7 |walk
click Scrimshank's Surveying Gear##144053
|tip Inside the cave.
|tip Hazzali Workers run away quickly when low health.		|only if hardcore
|tip Hazzali Swarmers spawn adds while you fight them.		|only if hardcore
|tip Watch for patrols and respawns while in the cave.		|only if hardcore
collect Scrimshank's Surveying Gear##8593 |q 10/1 |goto Tanaris 55.97,71.18
step
use the OOX-17/TN Distress Beacon##8623
accept Find OOX-17/TN!##351
|only if itemcount(8623) > 0
step
talk Homing Robot OOX-17/TN##7784
|tip This NPC offers an escort quest.
|tip If it's not here, someone may be escorting it.
|tip Wait until it appears again.
turnin Find OOX-17/TN!##351 |goto Tanaris/0 60.23,64.72
accept Rescue OOX-17/TN!##648 |goto Tanaris/0 60.23,64.72
step
Escort the OOX-17/TN
|tip This quest can be hard, you regularly have to fight waves of 3-4 enemies.
|tip Often others are looking to complete this escort too.
|tip Don't be afraid to run away or skip this step if it's too hard |only if hardcore
|tip You'll have more chances to do this again at a higher level |only if hardcore
Escort OOX-17/TN to Steamwheedle Port |q 648/1 |goto Tanaris/0 66.99,23.14
step
talk Senior Surveyor Fizzledowser##7724
turnin The Scrimshank Redemption##10 |goto Tanaris 50.21,27.48
accept Insect Part Analysis##110 |goto Tanaris 50.21,27.48
step
talk Alchemist Pestlezugg##5594
|tip Inside the building.
turnin Insect Part Analysis##110 |goto Tanaris 50.89,26.96
accept Insect Part Analysis##113 |goto Tanaris 50.89,26.96
step
talk Senior Surveyor Fizzledowser##7724
turnin Insect Part Analysis##113 |goto Tanaris 50.21,27.48
accept Rise of the Silithid##162 |goto Tanaris 50.21,27.48
step
Enter the building |goto Tanaris 52.21,28.57 < 10 |walk
talk Gimblethorn##7799
|tip Inside the building.
|tip Deposit these items into the bank.
bank Insect Analysis Report##8594 |goto Tanaris 52.30,28.91 |q 162 |future
step
_NOTE:_
Save Cloth in Your Bank as You Level
|tip Once you are close to reaching level 60, you will need 240 of each type of cloth.
|tip As you level and collect Runecloth naturally from killing enemies while following the guide, make sure you deposit the cloth into a bank whenever you are near one.
|tip This will give you about 40,000 quick and easy xp to help you get to level 60 faster in the longer later levels.
Click Here to Continue |confirm
|only if level < 60
step
Optional Route Change
|tip You can opt to do Maraudon soon instead of grinding.
|tip This is highly recommended due to the weapon quest reward. |only if Hunter or Rogue or Warrior
|tip This will mean slower leveling but it will be more fun and potentially give you gear upgrades.
|tip If you choose to do Maraudon, we will say when to accept and turnin dungeon quests that are worth doing in your route.
|tip We will also say when it is a good time to do the dungeon.
_Note_
|tip This feature is currently experimental and may result in a full quest log. If this happens, please submit a feedback report so we can fix it!
|tip If you have a full quest log, we recommend abandoning any dungeon quests that can be shared by your party members later.
Click Here if you'd like to run Maraudon later |confirm Maraflag
Click Here if you'd prefer to grind |confirm
step
Enter the building |goto Tanaris 52.21,28.57 < 10 |walk
talk Gimblethorn##7799
|tip Inside the building.
|tip Collect these items from the bank.
collect 3 Roc Gizzard##6257 |goto Tanaris 52.30,28.91 |q 1452
collect 3 Ironfur Liver##6258 |goto Tanaris 52.30,28.91 |q 1452
collect 3 Groddoc Liver##6259 |goto Tanaris 52.30,28.91 |q 1452
step
click Marvon's Chest##149036
collect Stone Circle##10556 |q 3444/1 |goto The Barrens 62.50,38.54
step
talk Tynnus Venomsprout##5169
|tip Stock up on poisons.
|tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Tynnus Venomsprout##5169 |goto Ironforge 52.94,13.66 |q 2988 |future
|only if Rogue
step
Enter the building |goto Hillsbrad Foothills 49.30,55.47 < 10 |walk
talk Sarah Raycroft##3541
|tip Upstairs inside the building.
|tip Buy enough ammo to fill your ammo bag, plus 12-15 stacks.
|tip You will be questing for a while.
Visit the Vendor |vendor Sarah Raycroft##3541 |goto Hillsbrad Foothills 49.14,55.06 |q 2988 |future
|only if Hunter
step
Enter the building |goto Hillsbrad Foothills 50.45,58.55 < 10 |walk
talk Jaysin Lanyda##3542
|tip Upstairs inside the building.
|tip If you can afford it.
|tip Stock up on a couple of Runes of Teleportation to use to travel faster while leveling.
Visit the Vendor |vendor Jaysin Lanyda##3542 |goto Hillsbrad Foothills 50.82,59.02 |q 2988 |future
|only if Mage
step
Enter the building |goto The Hinterlands 11.00,45.67 < 10 |walk
talk Gryphon Master Talonaxe##5636
|tip Inside the building.
accept Witherbark Cages##2988 |goto The Hinterlands 9.76,44.48
step
Leave the building |goto The Hinterlands 11.00,45.67 < 10 |walk |only if subzone("Aerie Peak") and _G.IsIndoors()
Enter the building |goto The Hinterlands 14.19,45.18 < 30 |walk |only if not subzone("Wildhammer Keep")
talk Fraggar Thundermantle##7884
|tip Inside the building.
accept Troll Necklace Bounty##2880 |goto The Hinterlands 14.83,44.56
stickystart "Collect_Wildkin_Feathers"
step
Leave the building |goto The Hinterlands 14.19,45.18 < 30 |walk |only if subzone("Wildhammer Keep")
Follow the path up |goto The Hinterlands 20.81,47.82 < 30 |only if walking
talk Rhapsody Shindigger##5634
turnin Rhapsody's Kalimdor Kocktail##1452 |goto The Hinterlands 26.94,48.59
step
Watch the dialogue
talk Rhapsody Shindigger##5634
accept Rhapsody's Tale##1469 |goto The Hinterlands 26.94,48.59
stickystart "Collect_Troll_Tribal_Necklaces"
step
click Third Witherbark Cage##144068
|tip Enemies may run away in fear around this area.	|only if hardcore
Check the Third Cage |q 2988/3 |goto The Hinterlands 31.99,57.38
step
click First Witherbark Cage##144066
|tip Enemies may run away in fear around this area.	|only if hardcore
Check the First Cage |q 2988/1 |goto The Hinterlands 23.28,58.75
step
click Second Witherbark Cage##144067
|tip Enemies may run away in fear around this area.	|only if hardcore
Check the Second Cage |q 2988/2 |goto The Hinterlands 23.13,58.76
step
label "Collect_Troll_Tribal_Necklaces"
Kill Witherbark enemies around this area
|tip They look like trolls.
|tip Witherbark enemies may run away in fear around this area.	|only if hardcore
collect 5 Troll Tribal Necklace##9259 |q 2880/1 |goto The Hinterlands 23.73,57.89
|tip Be careful not to accidentally sell these to a vendor.
You can find more around [32.03,58.00]
step
Enter the building |goto The Hinterlands 14.19,45.18 < 30 |walk |only if not subzone("Wildhammer Keep")
talk Fraggar Thundermantle##7884
|tip Inside the building.
turnin Troll Necklace Bounty##2880 |goto The Hinterlands 14.83,44.56
accept Skulk Rock Clean-up##2877 |goto The Hinterlands 14.83,44.56
stickystop "Collect_Wildkin_Feathers"
step
Leave the building |goto The Hinterlands 14.19,45.18 < 30 |walk |only if subzone("Wildhammer Keep")
Follow the path up |goto The Hinterlands 12.95,48.19 < 30 |only if walking
Enter the building at the top of the path |goto The Hinterlands 11.00,45.67 < 10 |walk
talk Gryphon Master Talonaxe##5636
|tip Inside the building.
turnin Witherbark Cages##2988 |goto The Hinterlands 9.76,44.48
accept The Altar of Zul##2989 |goto The Hinterlands 9.76,44.48		|only if not hardcore
stickystart "Collect_Wildkin_Feathers"
step
click Violet Tragan##141853+
|tip They look like large brown and white mushrooms underwater around this area.
|tip Despite how fun the tooltip sounds, don't eat it. It's for a quest.
collect Violet Tragan##8526 |q 2641/1 |goto The Hinterlands 41.01,59.77
step
Run up the stairs |goto The Hinterlands 47.74,66.71 < 30 |only if walking
|tip Clear enemies as you make your way up.	|only if hardcore
Search the Altar of Zul |q 2989/1 |goto The Hinterlands 48.85,68.45
|tip There are elite enemies at the top of the temple.
|tip Complete the quest goal and immediately run away to safety.
|only if not hardcore
stickystart "Kill_Jade_Oozes"
step
kill 10 Green Sludge##2655 |q 2877/1 |goto The Hinterlands 48.95,52.71
You can find more around: |notinsticky
[47.11,41.36]
step
label "Kill_Jade_Oozes"
kill 10 Jade Ooze##2656 |q 2877/2 |goto The Hinterlands 57.60,42.60
|tip These primarily spawn on the northeast hill.
You can find more around: |notinsticky
[47.11,41.36]
step
Kill enemies around this area
|tip Watch for respawns while in the area.	|only if hardcore
collect OOX-09/HL Distress Beacon##8704 |goto The Hinterlands 47.11,41.36 |q 485 |future
|tip If you reach level 50 and still haven't found it, skip the quest.
step
Kill enemies around this area
|tip You should already be pretty close to reaching level 50.
|tip You are about to go to Un'Goro Crater, and it will help to be level 50 already.
|tip If you've fallen behind, it's also fine to do a dungeon after this zone.
ding 50 |goto The Hinterlands 47.11,41.36 |q 2944
step
use the OOX-09/HL Distress Beacon##8704
accept Find OOX-09/HL!##485
|only if itemcount(8704) > 0
step
talk Homing Robot OOX-09/HL##7806
turnin Find OOX-09/HL!##485 |goto The Hinterlands 49.35,37.66
step
label "Collect_Wildkin_Feathers"
click Wildkin Feather##153239+
|tip They look large brown and white feathers on the ground around this area.
|tip They can be found around most of the Hinterlands, except in the eastern part.
|tip If you have trouble seeing them, reduce the "Ground Clutter" setting to "1" in the System > Graphics game settings menu.
collect 15 Wildkin Feather##10819 |q 3661/1 |goto The Hinterlands 15.76,53.78
You can find more around: |notinsticky
[22.17,55.01]
[28.43,54.20]
[33.90,48.74]
[33.03,43.66]
stickystart "Collect_Snapshot_Of_Gammerita"
step
Follow the path down |goto The Hinterlands 71.50,65.09 < 30 |only if walking and not subzone("The Overlook Cliffs")
click Pupellyverbos Port+
|tip They look like small dark blue bottles on the ground around this area.
|tip If you have trouble seeing them, reduce the "Ground Clutter" setting to "0" in the System > Graphics game settings menu.
|tip Be careful to avoid Gammmerita, it's the only turtle that will attack you.
|tip It looks like a blue turtle that walks around this area.
|tip Avoid the guards of the Horde town nearby.
collect 12 Pupellyverbos Port##3900 |q 580/1 |goto The Hinterlands 81.08,55.81
You can find more around: |notinsticky
[79.46,62.41]
[78.49,69.25]
[78.44,75.71]
step
label "Collect_Snapshot_Of_Gammerita"
use the Super Snapper FX##9328
|tip Use it on Gammerita.
|tip It looks like a blue turtle that walks around this area.
|tip Use it as far away from it as you can.
|tip Run away when it attacks you after using the item.
collect Snapshot of Gammerita##9330 |q 2944/1 |goto The Hinterlands 75.62,67.03
You can also find it around: |notinsticky
[75.62,67.03]
[80.79,55.59]
step
click Cortello's Treasure##2556
|tip Underwater, at the bottom of the waterfall.
turnin Cortello's Riddle##626 |goto The Hinterlands 80.81,46.81
|only if haveq(626)
step
Prepare for Maraudon
|tip It will be a good time to start Maraudon soon.
|tip We are heading there after turning in our quests in Tanaris.
|tip Start looking for a group.
|confirm
|only if guideflag("Maraflag")
step
talk Jennea Cannon##5497 |only if Mage
talk Einris Brightspear##5515 |only if Hunter
talk Ursula Deline##5495 |only if Warlock
talk Wu Shen##5479 |only if Warrior
talk Osborne the Night Man##918 |only if Rogue
talk Sheldras Moontree##5504 |only if Druid
talk Brother Benjamin##5484 |only if Priest
talk Arthur the Faithful##5491 |only if Paladin
trainer Jennea Cannon##5497 |goto Stormwind City/0 38.62,79.35 |only if Mage
trainer Einris Brightspear##5515  |goto Stormwind City/0 61.66,15.30 |only if Hunter
trainer Ursula Deline##5495 |goto Stormwind City/0 26.13,77.20 |only if Warlock
trainer Wu Shen##5479 |goto Stormwind City/0 78.72,45.77 |only if Warrior
trainer Osborne the Night Man##918 |goto Stormwind City/0 74.54,52.80 |only if Rogue
trainer Sheldras Moontree##5504 |goto Stormwind City/0 20.92,55.52 |only if Druid
trainer Brother Benjamin##5484 |goto Stormwind City/0 41.64,28.98 |only if Priest
trainer Arthur the Faithful##5491 |goto Stormwind City/0 38.65,32.80 |only if Paladin
|tip Inside the tower. |only if Mage
|tip Inside the building. |only if Hunter or Warrior or Priest or Paladin
|tip He patrols inside. |only if Priest
|tip In the basement. |only if Warlock
|tip Train your spells.
step
talk Sprinkle##7583
turnin Sprinkle's Secret Ingredient##2641 |goto Tanaris 51.06,26.87
step
Watch the dialogue
talk Sprinkle##7583
accept Delivery for Marin##2661 |goto Tanaris 51.06,26.87
step
talk Marin Noggenfogger##7564
turnin Delivery for Marin##2661 |goto Tanaris 51.81,28.66
accept Noggenfogger Elixir##2662 |goto Tanaris 51.81,28.66
step
Watch the dialogue
talk Marin Noggenfogger##7564
turnin Noggenfogger Elixir##2662 |goto Tanaris 51.81,28.66
step
Enter the building |goto Tanaris 52.21,28.57 < 10 |walk
talk Gimblethorn##7799
|tip Inside the building.
|tip Deposit these items into the bank.
bank Super Snapper FX##9328 |goto Tanaris 52.30,28.91 |q 2944 |future
bank Snapshot of Gammerita##9330 |goto Tanaris 52.30,28.91 |q 2944 |future
bank Atal'ai Tablet Fragment##6287 |goto Tanaris 52.30,28.91 |q 1469 |future
bank Pupellyverbos Port##3900 |goto Tanaris 52.30,28.91 |q 580 |future
|tip You should have 12 of these.
bank Wildkin Feather##10819 |goto Tanaris 52.30,28.91 |q 3661 |future
|tip You should have 15 of these.
step
talk Marvon Rivetseeker##7771
turnin The Stone Circle##3444 |goto Tanaris 52.71,45.92
step
talk Innkeeper Lyshaerya##11103
|tip Inside the building.
|tip This will give you an inopportune hearth later in the leveling guide, but will save you a ton of time turning in Maraudon quests.
home Nijel's Point |goto Desolace 66.27,6.56
|only if guideflag("Maraflag")
step
talk Talendria##11715
|tip Upstairs inside the building.
accept Vyletongue Corruption##7041 |goto Desolace 68.50,8.87
|only if guideflag("Maraflag")
step
Run up the ramp |goto Desolace 64.66,9.23 < 10 |only if walking
talk Keeper Marandis##13698
accept Corruption of Earth and Seed##7065 |goto Desolace 63.82,10.66
|only if guideflag("Maraflag")
step
talk Willow##13656
|tip Inside the building.
accept Twisted Evils##7028 |goto Desolace 62.19,39.63
|only if guideflag("Maraflag")
step
talk Centuar Pariah##13717
|tip He walks around this area.
accept The Pariah's Instructions##7067 |goto Desolace 51.47,87.41
You may also find him around: |notinsticky
[48.23,87.69]
[43.95,86.00]
|only if guideflag("Maraflag")
step
Run up the stairs |goto Desolace 29.84,62.54 < 7 |only if walking
click Stone Door
Enter the building |goto Desolace 38.43,57.98 < 5 |q 7067 |future
|only if guideflag("Maraflag")
step
kill The Nameless Prophet##13718
|tip He spawns in multiple locations outside of the Maraudon dungeon.
|tip You may need help with this.
collect Amulet of Spirits##17757 |goto Desolace 38.31,57.96 |q 7067
You may also find him at: |notinsticky
[38.32,58.18]
[38.20,58.05]
[38.39,57.96]
step
Run down the stairs |goto Desolace 38.25,57.99 < 7 |only if walking
Follow the path |goto Desolace 38.43,57.85 < 10 |only if walking
Continue following the path |goto Desolace 38.64,57.71 < 7 |only if walking
Continue following the path |goto Desolace 38.53,57.55 < 10 |only if walking
Continue following the path |goto Desolace 38.48,57.34 < 7 |q 7067
|only if guideflag("Maraflag")
step
Continue following the path |goto Desolace 29.44,57.22 < 7 |only if walking
Jump down here |goto Desolace 28.80,56.17 < 7 |q 7067
|only if guideflag("Maraflag")
step
Enter the cave |goto Desolace 28.71,56.20 < 5 |only if walking
use the Amulet of Spirits##17757
|tip Use it on the Spirit of Gelk.
|tip He walks around this area.
kill Gelk##13741
collect Gem of the Second Khan##17762 |goto Desolace 38.47,57.29 |q 7067
|only if guideflag("Maraflag")
step
Follow the path |goto Desolace 29.58,55.54 < 7 |only if walking
Continue following the path |goto Desolace 29.46,57.25 < 7 |only if walking |q 7067
|only if guideflag("Maraflag")
step
Jump down here |goto Desolace 38.53,57.60 < 5 |only if walking
use the Amulet of Spirits##17757
|tip Use it on the Spirit of Kolk.
kill Kolk##13742
collect Gem of the First Khan##17761 |goto Desolace 38.50,57.72 |q 7067
|only if guideflag("Maraflag")
step
Follow the path |goto Desolace 38.60,57.95 < 10 |only if walking
Continue following the path |goto Desolace 38.44,58.13 < 7 |only if walking
Continue following the path |goto Desolace 38.49,58.22 < 7 |q 7067
|only if guideflag("Maraflag")
step
talk Cavindra##Cavindra
accept Legend of Maraudon##7044	|goto Desolace 38.76,58.13
|only if guideflag("Maraflag")
step
Follow the path |goto Desolace 38.82,58.31 < 7 |only if walking
use Coated Cerulean Vial##17693
collect Filled Cerulean Vial##17696 |q 7041/2 |goto Desolace 38.92,58.36
|only if guideflag("Maraflag")
step
Follow the path |goto Desolace 39.08,58.01 < 10 |only if walking
Continue following the path |goto Desolace 39.35,58.03 < 7 |only if walking
use the Amulet of Spirits##17757
|tip Use it on the Spirit of Magra.
|tip He walks around this area.
kill Magra##13740
collect Gem of the Third Khan##17763 |goto Desolace 39.20,57.68 |q 7067
|only if guideflag("Maraflag")
step
Follow the path |goto Desolace 39.21,57.84 < 10 |only if walking
Continue following the path |goto Desolace 39.35,58.04 < 10 |only if walking
Enter the Maraudon (Foulspore Cavern - Orange) Dungeon with Your Group |goto Maraudon/0 0.00,0.00 < 500 |c |q 7067 |future
|tip Some groups may opt to go into Purple Side first, which will make this guide out of order.
|tip It does not matter which side you enter first.
|only if guideflag("Maraflag")
stickystart "Collect_Gem_of_the_Fifth_Khan"
stickystart "Heal_Vylestem_Vines"
step
Inside the Maraudon Dungeon:
kill Noxxion##13282
|tip It is the first boss on the Orange side of Maraudon.
|tip After entering the dungeon, run up the stairs and follow the path to the right whenever possible.
collect Celebrian Rod##17702 |q 7044/2
|only if guideflag("Maraflag")
step
label "Collect_Gem_of_the_Fifth_Khan"
Inside the Maraudon Dungeon: |notinsticky
use the Amulet of Spirits##17757
|tip Use it on the Spirit of Veng.
|tip He walks around the Orange side of Maraudon.
kill Veng##13738
collect Gem of the Fifth Khan##17765 |q 7067
|only if guideflag("Maraflag")
step
label "Heal_Vylestem_Vines"
Inside the Maraudon Dungeon: |notinsticky
use the Filled Cerulean Vial##17696
|tip While in the Foulspore Cavern, or Orange side of Maraudon, there will be tree stumps with a red top.
|tip You won't be able to target them.
|tip They have five leaves growing out of them.
|tip Use the Filled Cerulean Vial near them and Noxxious Scion will spawn.
kill Noxxious Scion##13696+
Heal 8 Vylestem Vines |q 7041/1
|only if guideflag("Maraflag")
step
Inside the Maraudon Dungeon:
use the Amulet of Spirits##17757
|tip Use it on the Spirit of Maraudos.
|tip He walks around The Wicked Grotto in the Purple side of Maraudon.
kill Maraudos##13739
collect Gem of the Fourth Khan##17764 |q 7067
|only if guideflag("Maraflag")
step
Inside the Maraudon Dungeon:
use the Gem of the Fifth Khan##17765
collect Amulet of Union##17758 |q 7067/1
|only if guideflag("Maraflag")
step
Inside the Maraudon Dungeon:
kill Lord Vyletongue##12236
|tip He is Purple side of Maraudon.
|tip Proceed through The Wicked Grotto and enter the Vyletongue Seat.
|tip He is in a small room on the northern side.
collect Celebrian Diamond##17703 |q 7044/1
|only if guideflag("Maraflag")
step
Inside the Maraudon Dungeon:
kill Celebras the Cursed##12225
|tip He is Purple side of Maraudon.
|tip Continue through the Vyletongue Seat and into the Poison Falls.
|tip Once you reach the Poison Falls, continue working your way west and then south, where he will be on a small island.
talk Celebras the Redeemed##13716
|tip He will appear after you kill Celebras the Cursed.
turnin Legend of Maraudon##7044
accept The Scepter of Celebras##7046
|only if guideflag("Maraflag")
step
Inside the Maraudon Dungeon:
Follow Celebras the Redeemed
|tip Click the stone he leads you to.
click Incantations of Celebras
Watch the Dialogue
Create the Scepter of Celebras |q 7046/1
|only if guideflag("Maraflag")
step
Inside the Maraudon Dungeon:
talk Celebras the Redeemed##13716
turnin The Scepter of Celebras##7046
|only if guideflag("Maraflag")
step
Inside the Maraudon Dungeon:
kill Princess Theradras##12201 |q 7065/1
|tip She is the last boss on the Purple side of Maraudon.
|tip Continue going south and jump down the waterfall.
|tip Continue following the path south through the dungeon to reach Zaetar's Grave.
|tip Princess Theradras is found at the end of Zaetar's Grave.
|only if guideflag("Maraflag")
step
Inside the Maraudon Dungeon:
talk Zaetar's Spirit##12238
|tip He will appear at the center of the room once Princess Theradras is killed.
accept Seed of Life##7066
|only if guideflag("Maraflag")
step
Leave the Maraudon Dungeon
Click Here to Continue |confirm |q 7066
|only if guideflag("Maraflag")
step
talk Centuar Pariah##13717
|tip He walks around this area.
turnin The Pariah's Instructions##7067 |goto Desolace 51.47,87.41
You may also find him around: |notinsticky
[48.23,87.69]
[43.95,86.00]
|only if guideflag("Maraflag")
step
talk Willow##13656
|tip Inside the building.
turnin Twisted Evils##7028 |goto Desolace 62.19,39.63
|only if guideflag("Maraflag")
step
talk Talendria##11715
|tip Upstairs inside the building.
turnin Vyletongue Corruption##7041 |goto Desolace 68.50,8.87
|only if guideflag("Maraflag")
step
Run up the ramp |goto Desolace 64.66,9.23 < 10 |only if walking
talk Keeper Marandis##13698
turnin Corruption of Earth and Seed##7065 |goto Desolace 63.82,10.66
|only if guideflag("Maraflag")
step
Follow the path down into Un'Goro Crater |goto Tanaris 27.04,56.57 < 40 |only if walking and not zone("Un'Goro Crater")
talk Torwa Pathfinder##9619
accept The Apes of Un'Goro##4289 |goto Un'Goro Crater 71.64,75.96
accept The Fare of Lar'korwi##4290 |goto Un'Goro Crater 71.64,75.96
stickystart "Accept_Willidens_Journal"
stickystart "Collect_Power_Crystals"
stickystart "Collect_UnGoro_Soil"
step
click A Wrecked Raft##161505
accept It's a Secret to Everybody##3844 |goto Un'Goro Crater 63.02,68.50
step
click A Small Pack##161504
|tip Underwater.
turnin It's a Secret to Everybody##3844 |goto Un'Goro Crater 63.12,69.02
accept It's a Secret to Everybody##3845 |goto Un'Goro Crater 63.12,69.02
step
click Fresh Threshadon Carcass##166863
|tip Avoid the elite t-rex that sometimes walks near this location.
collect Piece of Threshadon Carcass##11504 |q 4290/1 |goto Un'Goro Crater 68.75,56.66
step
Follow the path up into Marshal's Refuge |goto Un'Goro Crater 46.01,13.45 < 20 |only if walking and not subzone("Marshal's Refuge")
talk Muigin##9119
accept Muigin and Larion##4141 |goto Un'Goro Crater 42.94,9.64
step
Kill Bloodpetal enemies while heading south.
|tip Try to focus on killing the level 48-50 ones, the higher levels are dangerous.
|tip You only need 8 or so Bloodpetals right now. You'll get the rest on the way back.
|tip They look like walking plants.
collect 15 Bloodpetal##11316 |q 4141/1 |count 8 |goto Un'Goro Crater 71.46,38.72
|tip Watch for Devilsaur (large t-rex) patrols while around here.	|only if hardcore
You can find more around: |notinsticky
[66.08,35.13]
[69.26,24.59]
[55.87,34.69]
step
talk Torwa Pathfinder##9619
turnin The Fare of Lar'korwi##4290 |goto Un'Goro Crater 71.64,75.97
accept The Scent of Lar'korwi##4291 |goto Un'Goro Crater 71.64,75.97
step
kill Lar'korwi Mate##9683
|tip Stand on the pile of purple eggs to get it to appear.
collect 2 Ravasaur Pheromone Gland##11509 |q 4291/1 |goto Un'Goro Crater 67.32,73.05
You can find more eggs at: |notinsticky
[62.87,80.48]
[60.92,72.23]
[66.60,66.73]
step
talk Torwa Pathfinder##9619
turnin The Scent of Lar'korwi##4291 |goto Un'Goro Crater 71.63,75.97
accept The Bait for Lar'korwi##4292 |goto Un'Goro Crater 71.63,75.97
step
label "Collect_Power_Crystals"
click Power Crystal+
|tip They look clusters of red, yellow, green, or blue crystals on the ground around this area.
|tip They tend to be around the base of trees, or near the cliffs surrounding Un'Goro Crater.
|tip Kill enemies here and there as you search around, to continue gaining experience.
collect 7 Red Power Crystal##11186 |q 4284 |future |only if itemcount(11186) < 7
collect 7 Yellow Power Crystal##11188 |q 4284 |future |only if itemcount(11188) < 7
collect 7 Green Power Crystal##11185 |q 4284 |future |only if itemcount(11185) < 7
collect 7 Blue Power Crystal##11184 |q 4284 |future |only if itemcount(11184) < 7
|only if (itemcount(11186) < 7) or (itemcount(11188) < 7) or (itemcount(11185) < 7) or (itemcount(11184) < 7)
step
label "Collect_Bloodpetals"
Kill Bloodpetal enemies while heading back towards town.
|tip Try to focus on killing the level 48-50 ones, the higher levels are dangerous.
|tip They look like walking plants.
collect 15 Bloodpetal##11316 |q 4141/1 |goto Un'Goro Crater 71.46,38.72
|tip Watch for Devilsaur (large t-rex) patrols while around here.	|only if hardcore
You can find more around: |notinsticky
[66.08,35.13]
[69.26,24.59]
[55.87,34.69]
step
label "Collect_A_Mangled_Journal"
Kill enemies around this area
|tip Any enemy in Un'Goro Crater can drop the quest item.
|tip Watch for Devilsaur (large t-rex) patrols while around here.	|notinsticky |only if hardcore
collect A Mangled Journal##11116 |goto Un'Goro Crater 71.46,38.72 |q 3884 |future
You can find more around: |notinsticky
[66.08,35.13]
[69.26,24.59]
[55.87,34.69]
step
label "Accept_Willidens_Journal"
use A Mangled Journal##11116
accept Williden's Journal##3884
|only if itemcount(11116) > 0
step
Follow the path up into Marshal's Refuge |goto Un'Goro Crater 46.01,13.45 < 20 |only if walking and not subzone("Marshal's Refuge")
talk Muigin##9119
turnin Muigin and Larion##4141 |goto Un'Goro Crater 42.94,9.64
accept A Visit to Gregan##4142 |goto Un'Goro Crater 42.94,9.64
stickystop "Collect_UnGoro_Soil"
step
use A Small Pack##11107
collect Large Compass##11104 |q 3845/1
collect Curled Map Parchment##11105 |q 3845/2
collect Lion-headed Key##11106 |q 3845/3
step
_Destroy This Item:_
|tip It is no longer needed.
trash Faded Photograph##11108 |goto Un'Goro Crater 44.66,8.11
trash Heavy Throwing Dagger##3108 |goto Un'Goro Crater 44.66,8.11
step
talk Linken##8737
turnin It's a Secret to Everybody##3845 |goto Un'Goro Crater 44.66,8.11
accept It's a Secret to Everybody##3908 |goto Un'Goro Crater 44.66,8.11
step
talk Williden Marshal##9270
turnin Williden's Journal##3884 |goto Un'Goro Crater 43.95,7.14
step
Enter the cave |goto Un'Goro Crater 43.47,6.81 < 15 |walk |only if subzone("Marshal's Refuge") and not _G.IsIndoors()
talk J.D. Collie##9117
|tip Inside the cave.
accept Crystals of Power##4284 |goto Un'Goro Crater 41.92,2.70
step
talk J.D. Collie##9117
|tip Inside the cave.
turnin Crystals of Power##4284 |goto Un'Goro Crater 41.92,2.70
step
_Destroy These Items:_
|tip They are no longer needed.
trash Red Power Crystal##11186 |goto Un'Goro Crater 43.47,6.81
trash Yellow Power Crystal##11188 |goto Un'Goro Crater 43.47,6.81
trash Green Power Crystal##11185 |goto Un'Goro Crater 43.47,6.81
trash Blue Power Crystal##11184 |goto Un'Goro Crater 43.47,6.81
step
Leave the cave |goto Un'Goro Crater 43.47,6.81 < 15 |walk |only if subzone("Marshal's Refuge") and _G.IsIndoors()
talk Gryfe##10583
fpath Marshal's Refuge |goto Un'Goro Crater 45.23,5.84
step
label "Collect_UnGoro_Soil"
click Un'Goro Dirt Pile##157936+
|tip It can appear as a small pile on the ground.
|tip Any enemy in Un'Goro Crater can drop the quest item.
collect 20 Un'Goro Soil##11018 |q 3761 |future
|tip Be careful not to accidentally sell these to a vendor.
|sticky only
step
Enter the building |goto Tanaris 52.21,28.57 < 10 |walk
talk Gimblethorn##7799
|tip Inside the building.
|tip Collect these items from the bank.
collect 15 Silk Cloth##4306 |goto Tanaris 52.30,28.91 |q 4449 |future
collect Fool's Stout Report##5807 |goto Tanaris 52.30,28.91 |q 1122
collect Stoley's Bottle##9245 |goto Tanaris 52.30,28.91 |q 2874
collect Atal'ai Tablet Fragment##6287 |goto Tanaris 52.30,28.91 |q 1469
collect 12 Pupellyverbos Port##3900 |goto Tanaris 52.30,28.91 |q 580
step
talk Gimblethorn##7799
|tip Inside the building.
|tip Deposit these items into the bank.
bank Linken's Training Sword##11133 |goto Tanaris 52.30,28.91 |q 3908 |future
bank Un'Goro Soil##11018 |goto Tanaris 52.30,28.91 |q 3764 |future
|tip As many as you have.
bank Torwa's Pouch##11568 |goto Tanaris 52.30,28.91 |q 4292 |future
bank Bloodpetal##11316 |goto Tanaris 52.30,28.91 |q 4142 |future
step
talk Oglethorpe Obnoticus##7406
|tip In an upstairs building.
turnin Rescue OOX-17/TN!##648 |goto Stranglethorn Vale/0 28.01,76.43 |only if readyq(648)
turnin Rescue OOX-09/HL!##836 |goto Stranglethorn Vale/0 28.01,76.43 |only if readyq(836)
turnin Rescue OOX-22/FE!##2767 |goto Stranglethorn Vale/0 28.01,76.43 |only if readyq(2767)
step
Enter the building |goto Stranglethorn Vale 27.64,77.09 < 7 |walk
talk "Sea Wolf" MacKinley##2501
|tip Inside the building.
turnin Deliver to MacKinley##2874 |goto Stranglethorn Vale 27.78,77.07
step
Enter the building |goto Stranglethorn Vale 27.08,77.62 < 7 |walk
talk Whiskey Slim##2491
|tip Inside the building, on the bottom floor.
turnin Whiskey Slim's Lost Grog##580 |goto Stranglethorn Vale 27.14,77.45
step
talk Crank Fizzlebub##2498
|tip Inside the building, on the bottom floor.
turnin Report Back to Fizzlebub##1122 |goto Stranglethorn Vale 27.12,77.21
step
Enter the building |goto Stormwind City 53.44,64.92 < 10 |walk
talk Innkeeper Allison##6740
|tip Inside the building.
home Stormwind City |goto Stormwind City 52.62,65.70
step
Enter the building |goto Stormwind City 63.60,22.83 < 10 |walk
talk Brohann Caskbelly##5384
|tip Inside the building.
turnin Rhapsody's Tale##1469 |goto Stormwind City 64.33,20.66
step
talk Jasper Fel##1325
|tip Inside the building.
|tip Stock up on poisons.
|tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Jasper Fel##1325 |goto Stormwind City/0 78.32,58.97 |q 7723 |future
|only if Rogue
step
Enter the Badlands |goto Loch Modan 46.94,78.53 < 50 |only if walking and hardcore and not zone("Searing Gorge")
Follow the path up into Thorium Point |goto Searing Gorge 31.51,33.47 < 60 |only if walking and hardcore and not zone("Searing Gorge")
click Wanted/Missing/Lost & Found##179827
accept STOLEN: Smithing Tuyere and Lookout's Spyglass##7728 |goto Searing Gorge 37.63,26.53
accept JOB OPPORTUNITY: Culling the Competition##7729 |goto Searing Gorge 37.63,26.53
step
talk Hansel Heavyhands##14627
accept Curse These Fat Fingers##7723 |goto Searing Gorge 38.57,27.80
accept Fiery Menace!##7724 |goto Searing Gorge 38.57,27.80
accept Incendosaurs? Whateverosaur is More Like It##7727 |goto Searing Gorge 38.57,27.80
step
talk Lanie Reed##2941
fpath Thorium Point |goto Searing Gorge 37.94,30.86
|only if hardcore
step
talk Kalaran Windblade##8479
accept Divine Retribution##3441 |goto Searing Gorge 39.05,38.99
step
talk Kalaran Windblade##8479
Select _"Tell me what drives this vengeance?"_
Listen to Kalaran's Story |q 3441/1 |goto Searing Gorge 39.05,38.99
step
talk Kalaran Windblade##8479
turnin Divine Retribution##3441 |goto Searing Gorge 39.05,38.99
accept The Flawless Flame##3442 |goto Searing Gorge 39.05,38.99
stickystart "Collect_Smithing_Lookout"
stickystart "Collect_Grimesilt_Outhouse_Key"
stickystart "Collect_Golem_Oil"
stickystart "Collect_Hearts_Of_Flame"
stickystart "Kill_Greater_Lava_Spiders"
stickystart "Kill_Heavy_War_Golems"
step
label "Collect_Smithing_Tuyere"
kill Dark Iron Steamsmith##5840+
|tip Prioritize this step heavily.
|tip They have a roughly 5 minute respawn time and a low drop rate.
|tip Work on the other quests around this area while waiting for them to respawn.
collect Smithing Tuyere##18959 |q 7728/1 |goto Searing Gorge 39.13,49.64
You can find more around [42.86,51.59]
step
label "Collect_Smithing_Lookout"
kill Dark Iron Lookout##8566+
|tip They are around the watch towers on the cliff surrounding the huge pit.
|tip There are not many of these and should be your second priority for clears after Steamsmiths.
collect Lookout's Spyglass##18960 |q 7728/2 |goto Searing Gorge 33.03,53.44
You can find more around: |notinsticky
[35.40,59.82]
[43.47,63.52]
[52.47,57.97]
step
label "Collect_Golem_Oil"
Kill enemies around this area
|tip Only Tempered War Golems, Heavy War Golems, and Magma Elementals will drop the quest item.
|tip Prioritize Magma elementals where possible. |notinsticky
collect 4 Golem Oil##10511 |q 3442/2 |goto Searing Gorge 48.59,38.32
You can find more around: |notinsticky
[43.27,39.20]
[36.56,40.58]
[32.26,46.19]
[25.43,53.98]
[31.52,72.23]
step
label "Collect_Hearts_Of_Flame"
Kill Elemental enemies around this area
|tip Heavy War Golems will not drop this quest item.
|tip Prioritize Magma elementals where possible. |notinsticky
collect 4 Heart of Flame##10509 |q 3442/1 |goto Searing Gorge 42.58,38.58
You can find more around: |notinsticky
[39.22,41.58]
[31.18,43.67]
[25.43,53.98]
[31.52,72.23]
step
talk Kalaran Windblade##8479
turnin The Flawless Flame##3442 |goto Searing Gorge 39.05,38.99
accept Forging the Shaft##3443 |goto Searing Gorge 39.05,38.99
stickystart "Collect_Thorium_Plated_Daggers"
step
label "Kill_Greater_Lava_Spiders"
kill 20 Greater Lava Spider##5858 |q 7724/1 |goto Searing Gorge 28.78,44.44
You can find more around: |notinsticky
[29.23,55.00]
[29.51,72.50]
step
label "Kill_Heavy_War_Golems"
kill 20 Heavy War Golem##5854 |q 7723/1	|goto Searing Gorge 32.42,49.43
You can find more around: |notinsticky
[37.02,42.98]
[47.99,38.64]
step
Jump down onto the metal walkway here |goto Searing Gorge 49.32,43.74 < 15 |only if walking
Enter the cave |goto Searing Gorge 49.58,45.49 < 10 |c |q 7727
|only if not (subzone("The Slag Pit") and _G.IsIndoors())
stickystop "Collect_Thorium_Plated_Daggers"
step
Jump down from the bridge inside the cave here |goto Searing Gorge 47.73,41.92 < 10 |walk
kill 20 Incendosaur##9318 |q 7727/1 |goto Searing Gorge 51.73,37.16
|tip Inside the cave.
You can find more around: |notinsticky
[50.37,24.75]
[45.03,21.73]
stickystart "Kill_Dark_Iron_Taskmasters"
stickystart "Kill_Dark_Iron_Slavers"
step
label "Collect_Thorium_Plated_Daggers"
Follow the path |goto Searing Gorge 50.14,38.78 < 15 |walk
Continue following the path |goto Searing Gorge 47.13,43.05 < 15 |walk
Leave the cave |goto Searing Gorge 47.52,46.46 < 15 |walk
Enter the cave at the other entrance |goto Searing Gorge 49.60,45.50 < 15 |walk
Kill Dark Iron enemies around this area
|tip They look like dwarves.
|tip Inside the cave, all throughout. |notinsticky
|tip Watch out for patrols and respawns.	|only if hardcore |notinsticky
collect 8 Thorium Plated Dagger##10551 |q 3443/1 |goto Searing Gorge 43.38,34.94
step
label "Kill_Dark_Iron_Taskmasters"
kill 15 Dark Iron Taskmaster##5846 |q 7729/1 |goto Searing Gorge 43.38,34.94
|tip Inside the cave, all throughout. |notinsticky
|tip Watch out for patrols and respawns.	|only if hardcore |notinsticky
|tip You can also find some outside, near Thorium Point. |notinsticky
step
label "Kill_Dark_Iron_Slavers"
kill 15 Dark Iron Slaver##5844 |q 7729/2 |goto Searing Gorge 43.38,34.94
|tip Inside the cave, all throughout. |notinsticky
|tip Watch out for patrols and respawns.	|only if hardcore |notinsticky
|tip You can also find some outside, near Thorium Point. |notinsticky
step
label "Collect_Grimesilt_Outhouse_Key"
use the Grimesilt Outhouse Key##11818
accept The Key to Freedom##4451
|only if itemcount(11818) > 0
step
Leave the cave |goto Searing Gorge 49.58,45.49 < 10 |c |only if (subzone("The Slag Pit") and _G.IsIndoors())
talk Hansel Heavyhands##14627
turnin Curse These Fat Fingers##7723 |goto Searing Gorge 38.59,27.81
turnin Fiery Menace!##7724 |goto Searing Gorge 38.59,27.81
turnin Incendosaurs? Whateverosaur is More Like It##7727 |goto Searing Gorge 38.59,27.81
step
talk Taskmaster Scrange##14626
turnin STOLEN: Smithing Tuyere and Lookout's Spyglass##7728 |goto Searing Gorge 38.98,27.51
turnin JOB OPPORTUNITY: Culling the Competition##7729 |goto Searing Gorge 38.98,27.51
step
talk Kalaran Windblade##8479
turnin Forging the Shaft##3443 |goto Searing Gorge 39.06,38.99
accept The Flame's Casing##3452 |goto Searing Gorge 39.06,38.99 |only if not hardcore
step
Kill enemies around this area
|tip You should already be pretty close to reaching level 51.
|tip You are about to have to kill a bunch of elite enemies for a quest, so being a level higher will help.
|tip The quest leads to many other quests that give a lot of xp, so it's important to get done.
|tip Watch of patrols and respawns while around the area.	|only if hardcore
ding 51 |goto Searing Gorge 39.13,49.64 |q 4451 |future
You can find more around: |notinsticky
[42.59,50.65]
[43.93,40.43]
step
Kill Twilight enemies around this area
|tip They are elite enemies, so you may need help with this.
|tip If you have trouble, try to find someone to help you.
|tip Doing this quest unlocks more quests that give easy experience, so it's important to get it done.
collect Symbol of Ragnaros##10552 |q 3452/1 |goto Searing Gorge 24.62,35.13
You can find more inside the cave at [21.89,36.36]
You can find more up the path that starts at [24.23,33.12]
|only if not hardcore
step
talk Kalaran Windblade##8479
turnin The Flame's Casing##3452 |goto Searing Gorge 39.05,38.99
accept The Torch of Retribution##3453 |goto Searing Gorge 39.05,38.99
|only if not hardcore
step
Watch the dialogue
Witness the Creation of the Torch |q 3453/1 |goto Searing Gorge 39.05,38.99
|only if not hardcore
step
talk Kalaran Windblade##8479
turnin The Torch of Retribution##3453 |goto Searing Gorge 39.05,38.99
accept The Torch of Retribution##3454 |goto Searing Gorge 39.05,38.99
|only if not hardcore
step
click Torch of Retribution##149047
turnin The Torch of Retribution##3454 |goto Searing Gorge 39.06,39.06
|only if not hardcore
step
talk Kalaran Windblade##8479
accept Squire Maltrake##3462 |goto Searing Gorge 39.05,39.00
|only if not hardcore
step
talk Squire Maltrake##8509
turnin Squire Maltrake##3462 |goto Searing Gorge 39.16,38.99
accept Set Them Ablaze!##3463 |goto Searing Gorge 39.16,38.99
|only if not hardcore
step
Run up the ramp |goto Searing Gorge 33.50,53.64 < 15 |only if walking
click Sentry Brazier##149025
|tip On the metal platform of the tower.
|tip You have to equip the Torch of Retribution.
|tip Remember to re-equip your normal weapon after.
Set the Northern Tower Ablaze |q 3463/4 |goto Searing Gorge 33.31,54.49
|only if not hardcore
step
Run up the ramp |goto Searing Gorge 35.92,59.85 < 15 |only if walking
click Sentry Brazier##149025
|tip On the metal platform of the tower.
|tip You have to equip the Torch of Retribution.
|tip Remember to re-equip your normal weapon after.
Set the Western Tower Ablaze |q 3463/1 |goto Searing Gorge 35.67,60.68
|only if not hardcore
step
Follow the path |goto Searing Gorge 35.00,72.13 < 50 |only if walking
Run up the ramp |goto Searing Gorge 44.10,61.85 < 15 |only if walking
click Sentry Brazier##149025
|tip On the metal platform of the tower.
|tip You have to equip the Torch of Retribution.
|tip Remember to re-equip your normal weapon after.
Set the Southern Tower Ablaze |q 3463/2 |goto Searing Gorge 44.03,60.91
|only if not hardcore
step
Cross the hanging bridge |goto Searing Gorge 52.48,57.95 < 15 |only if walking
Run up the ramp |goto Searing Gorge 50.19,55.61 < 15 |only if walking
click Sentry Brazier##149025
|tip On the metal platform of the tower.
|tip You have to equip the Torch of Retribution.
|tip Remember to re-equip your normal weapon after.
Set the Eastern Tower Ablaze |q 3463/3 |goto Searing Gorge 50.06,54.74
|only if not hardcore
step
click Wooden Outhouse##173265
turnin The Key to Freedom##4451 |goto Searing Gorge 65.53,62.23
accept Caught!##4449 |goto Searing Gorge 65.54,62.24
step
Kill Dark Iron enemies around this area
|tip Kill all of the Dark Iron dwarves in this camp.
|tip You need to kill 8 Dark Iron Geologists for the quest, but there's not enough to kill, without waiting for respawns.
|tip The Geologists share spawn points with the Watchmen, so kill those too.
|tip We will clear the camp now, and come back to kill the rest soon, after completing another quest nearby.
|tip Continue to the next guide step after you clear the camp of dwarves.
Click Here to Continue |confirm |goto Searing Gorge 63.13,60.28 |q 4449
step
Follow the path up |goto Searing Gorge 67.59,70.55 < 20 |c |q 3181 |future
step
map Searing Gorge
path follow strictbounce; loop off; ants straight; dist 30; markers none
path	69.89,76.37	70.62,74.78	70.52,73.19	68.80,71.78	73.37,73.97
path	73.26,76.28	72.73,78.31	72.96,80.31	73.48,82.34
kill Margol the Rager##5833
|tip It's a level 48 elite, but you should be able to kill it at this level.
|tip Clear enemies around the area before attempting to kill it.
|tip It looks like a blue dinosaur that walks on the path around this area.
|tip If you have trouble, try to find someone to help you.
collect Margol's Horn##10000 |q 3181 |future
step
use Margol's Horn##10000
accept The Horn of the Beast##3181
step
kill 8 Dark Iron Geologist##5839 |q 4449/1 |goto Searing Gorge 63.13,60.28
|tip They share spawn points with the Dark Iron Watchmen, so kill those too, if you can't find any.
|tip Enemies tend to bunch together so be prepared for adds.	|only if hardcore
step
click Wooden Outhouse##173265
|tip You should have the Silk Cloth already from a previous guide.
turnin Caught!##4449 |goto Searing Gorge 65.54,62.24
step
talk Dorius Stonetender##8284
|tip This is an escort quest.
|tip If he's not here, someone may be escorting him.
|tip Wait until he respawns.
accept Suntara Stones##3367 |goto Searing Gorge 63.92,60.98 |noautoaccept
step
Watch the dialogue
|tip Follow Dorius Stonetender and protect him as he walks.
|tip You will be attacked by groups of enemies along the way, so be ready.
|tip He eventually walks to this location.
Escort Dorius |q 3367/1 |goto Searing Gorge 74.42,19.41
step
click Singed Letter
turnin Suntara Stones##3367 |goto Searing Gorge 74.45,19.29
accept Suntara Stones##3368 |goto Searing Gorge 74.45,19.29
step
Follow the path |goto Searing Gorge 67.18,34.60 < 50 |only if walking and subzone("Dustfire Valley")
talk Squire Maltrake##8509
turnin Set Them Ablaze!##3463 |goto Searing Gorge 39.17,39.00
|only if not hardcore
step
_Destroy This Item:_
|tip It is no longer needed.
trash Torch of Retribution##10515 |goto Searing Gorge 38.86,38.99
|only if not hardcore
step
Watch the dialogue
click Hoard of the Black Dragonflight
accept Trinkets...##3481 |goto Searing Gorge 38.86,38.99
|only if not hardcore
step
click Hoard of the Black Dragonflight
turnin Trinkets...##3481 |goto Searing Gorge 38.86,38.99
|only if not hardcore
step
use the Hoard of the Black Dragonflight##10569
collect Black Dragonflight Molt##10575 |q 4022 |future
|tip Keep this, you'll need it for a future quest.
|only if not hardcore
step
Follow the path up into Thorium Point |goto Searing Gorge 31.51,33.47 < 20 |only if walking and zone("Searing Gorge")
talk Master Smith Burninate##14624
|tip Buy enough ammo to fill your ammo bag, plus 6-8 extra stacks.
|tip You will be questing a while.
Visit the Vendor |vendor Master Smith Burninate##14624 |goto Searing Gorge 38.80,28.49 |q 2783 |future
|only if Hunter
step
Follow the path up into Thorium Point |goto Searing Gorge 31.51,33.47 < 20 |only if walking and zone("Searing Gorge")
talk Mountaineer Pebblebitty##3836
turnin The Horn of the Beast##3181 |goto Loch Modan 18.19,84.00
accept Proof of Deed##3182 |goto Loch Modan 18.19,84.00
step
Enter the building |goto Blasted Lands 66.40,18.98 < 10 |walk
talk Ambassador Ardalan##7826
|tip Inside the building, at the top.
accept Petty Squabbles##2783 |goto Blasted Lands 67.57,19.29
step
Leave the building |goto Blasted Lands 66.40,18.98 < 10 |walk |only if subzone("Nethergarde Keep") and _G.IsIndoors()
Leave Nethergarde Keep |goto Blasted Lands 62.83,19.77 < 30 |only if walking and subzone("Nethergarde Keep")
talk Fallen Hero of the Horde##7572
turnin Petty Squabbles##2783 |goto Swamp of Sorrows 34.29,66.13
accept A Tale of Sorrow##2801 |goto Swamp of Sorrows 34.29,66.13
step
talk Fallen Hero of the Horde##7572
Select _"Please continue, Hero..."_
Listen to a Tale of Sorrow |q 2801/1 |goto Swamp of Sorrows 34.29,66.13
step
talk Fallen Hero of the Horde##7572
turnin A Tale of Sorrow##2801 |goto Swamp of Sorrows 34.29,66.13
step
_Note_
Keep an eye out while in this zone!
|tip Teremus the Devourer is a level 60 dragon boss that patrols this zone.
|tip Regularly spin your camera around to check for him.
|tip If he aggros you it is near guaranteed death.
Click Here To Confirm |confirm
|only if hardcore
step
talk Bloodmage Drazial##7505
accept Snickerfang Jowls##2581 |goto Blasted Lands 50.55,14.21
accept A Boar's Vitality##2583 |goto Blasted Lands 50.55,14.21
accept The Decisive Striker##2585 |goto Blasted Lands 50.55,14.21
step
talk Bloodmage Lynnore##7506
accept The Basilisk's Bite##2601 |goto Blasted Lands 50.64,14.30
accept Vulture's Vigor##2603 |goto Blasted Lands 50.64,14.30
stickystart "Collect_Blasted_Boar_Lungs"
stickystart "Collect_Scorpok_Pincers"
stickystart "Collect_Basilisk_Brains"
stickystart "Collect_Vulture_Gizzards"
stickystart "Collect_Snickerfang"
step
label "Collect_Vulture_Gizzards"
kill Black Slayer##5982+
|tip Bonepickers will also drop the quest item.
|tip They look like vultures.
|tip You will collect enough of these to turn in all 5 quests at once. |notinsticky
|tip These usually take the longest to collect, by far.
|tip Go out of your way to camp the vulture spawns and kill other mobs while they respawn.
|tip You can try to buy them from the auction house, if you don't want to spend the time to collect them. |only if not selfmade
collect 14 Vulture Gizzard##8396 |goto Blasted Lands 48.50,19.78 |q 2603
You can find more around: |notinsticky
[45.45,35.25]
[53.42,37.61]
[55.04,43.80]
[59.33,42.05]
[56.46,36.51]
[58.82,27.97]
[62.28,26.43]
step
label "Collect_Basilisk_Brains"
Kill Redstone enemies around this area
|tip They look like basilisks.
|tip These should be your second priority after vultures.
|tip They share spawn locations with other enemies. |notinsticky
|tip They share spawns with the boars. |notinsticky
|tip You will collect enough of these to turn in all 5 quests at once. |notinsticky
collect 11 Basilisk Brain##8394 |goto Blasted Lands 55.08,28.94 |q 2601
You can find more around: |notinsticky
[61.75,27.98]
[59.71,43.76]
step
label "Collect_Blasted_Boar_Lungs"
Kill Boar enemies around this area
|tip They share spawn locations with the basilisks. |notinsticky
|tip If you can't find any at these locations, kill other enemies to get them to spawn. |notinsticky
|tip You will collect enough of these to turn in all 5 quests at once. |notinsticky
collect 6 Blasted Boar Lung##8392 |goto Blasted Lands 57.51,28.74 |q 2583
You can find more around: |notinsticky
[61.82,28.49]
[59.11,35.83]
[59.52,43.48]
step
label "Collect_Snickerfang"
Kill Snickerfang enemies around this area
|tip They look like hyenas.
|tip They share spawn locations with the scorpions. |notinsticky
|tip If you can't find any at these locations, kill other enemies to get them to spawn.
|tip You will collect enough of these to turn in all 5 quests at once. |notinsticky
collect 5 Snickerfang Jowl##8391 |goto Blasted Lands 47.21,21.18 |q 2581
You can find more around: |notinsticky
[44.82,24.87]
[45.44,35.35]
[50.96,38.09]
step
label "Collect_Scorpok_Pincers"
kill Scorpok Stinger##5988+
|tip They look like scorpions.
|tip They share spawn locations with the hyenas. |notinsticky
|tip If you can't find any at these locations, kill other enemies to get them to spawn. |notinsticky
|tip You will collect enough of these to turn in all 5 quests at once. |notinsticky
collect 6 Scorpok Pincer##8393 |goto Blasted Lands 49.10,18.12 |q 2585
You can find more around: |notinsticky
[45.29,21.33]
[44.61,29.11]
[52.04,30.03]
[56.81,21.17]
step
talk Kum'isha the Collector##7363
|tip He walks around this area.
accept Everything Counts In Large Amounts##3501 |goto Blasted Lands 51.80,35.64
|only if itemcount(10593) > 0
step
talk Kum'isha the Collector##7363
|tip He walks around this area.
turnin Everything Counts In Large Amounts##3501 |goto Blasted Lands 51.80,35.64
|only if haveq(3501) or completedq(3501)
step
talk Bloodmage Lynnore##7506
turnin The Basilisk's Bite##2601 |goto Blasted Lands 50.64,14.30
turnin Vulture's Vigor##2603 |goto Blasted Lands 50.64,14.30
step
talk Bloodmage Drazial##7505
turnin Snickerfang Jowls##2581 |goto Blasted Lands 50.55,14.21
turnin A Boar's Vitality##2583 |goto Blasted Lands 50.55,14.21
turnin The Decisive Striker##2585 |goto Blasted Lands 50.55,14.21
step
talk Curator Thorius##8256
|tip He walks around this area inside the building.
turnin Proof of Deed##3182 |goto Ironforge 72.01,15.53
turnin Suntara Stones##3368 |goto Ironforge 72.01,15.53
accept At Last!##3201 |goto Ironforge 72.01,15.53
step
talk Laris Geardawdle##9616
|tip Inside the building.
accept A Little Slime Goes a Long Way##4512 |goto Ironforge 75.77,23.37
step
talk Historian Karnik##2916
|tip Inside the building.
accept Passing the Burden##3448 |goto Ironforge 77.53,11.83
step
Enter the building |goto Ironforge 53.24,7.33 < 7 |walk
talk Jubahl Corpseseeker##6382
|tip Inside the building.
|tip If you can afford them.
|tip Buy all of the Grimoires for spells that are upgrades for the spells you use with your pet.
|tip After buying them, make sure to use them in your bags to learn the spells.
Visit the Vendor |vendor Jubahl Corpseseeker##6382 |goto Ironforge 52.70,6.08 |q 3448
|only if Warlock
step
Run up the stairs and enter the building |goto Ironforge 32.02,5.49 < 7 |walk
talk Tymor##8507
|tip Inside the building.
turnin Passing the Burden##3448 |goto Ironforge 30.96,4.82
accept Arcane Runes##3449 |goto Ironforge 30.96,4.82
accept An Easy Pickup##3450 |goto Ironforge 30.96,4.82
step
Enter the building |goto Ironforge 20.65,53.22 < 7 |walk
talk Innkeeper Firebrew##5111
|tip Inside the building.
home Ironforge |goto Ironforge 18.16,51.46
step
Enter the building |goto Ironforge 26.18,72.17 < 15 |walk
talk Auctioneer Redmuse##8720
|tip Inside the building.
|tip Buy it from the Auction House.
|tip It is needed for a quest in Un'Goro Crater.
|tip If you can't get one, it's okay, but you will need to skip a quest later.
collect Mithril Casing##10561 |goto Ironforge 24.16,74.67 |q 4244 |future
|only if not selfmade
step
Enter the building |goto Ironforge 66.40,82.48 < 10 |walk
talk Xiggs Fuselighter##8517
|tip Inside the building.
turnin An Easy Pickup##3450 |goto Ironforge 70.88,94.55
accept Signal for Pickup##3451 |goto Ironforge 70.88,94.55
step
talk Xiggs Fuselighter##8517
|tip Inside the building.
turnin Signal for Pickup##3451 |goto Ironforge 70.88,94.55
step
map Ironforge
path	follow strict;	loop on;	ants curved;	dist 30;	markers none
path	57.32,78.92		50.14,81.06		39.59,79.17		34.35,74.44
path	24.69,55.32		24.38,38.36		27.70,25.23		32.24,22.90
path	34.74,33.94		40.38,37.68		48.22,31.09		55.91,35.09
path	57.34,48.56		48.22,57.86		46.33,47.76		39.94,44.41
path	38.43,38.33		34.49,32.86		33.42,21.18		39.45,12.40
path	44.31,10.79		53.02,10.57		58.98,13.76		70.47,33.88
path	71.16,44.77		70.12,55.01		67.38,65.14
talk Courier Hammerfall##10877
|tip He looks like a dwarf that walks in a counter-clockwise path around Ironforge.
|tip This step's path will take you clockwise to help you find him faster.
accept A Call to Arms: The Plaguelands!##5090
step
Enter the building |goto Ironforge 34.09,62.38 < 10 |walk
talk Bailey Stonemantle##2461
|tip Inside the building.
|tip Deposit these items into the bank.
bank Mithril Casing##10561 |goto Ironforge 35.92,60.14 |q 4244 |future
bank Black Dragonflight Molt##10575 |goto Ironforge 35.92,60.14 |q 4022 |future
bank Drawing Kit##10445 |goto Ironforge 35.92,60.14 |q 3449 |future
bank Standard Issue Flare Gun##10444 |goto Ironforge 35.92,60.14 |q 3449 |future
step
talk Bailey Stonemantle##2461
|tip Inside the building.
|tip Collect these items from the bank.
collect Super Snapper FX##9328 |goto Ironforge 35.92,60.14 |q 2944
collect Snapshot of Gammerita##9330 |goto Ironforge 35.92,60.14 |q 2944
collect 15 Wildkin Feather##10819 |goto Ironforge 35.92,60.14 |q 3661
step
talk Tynnus Venomsprout##5169
|tip Stock up on poisons.
|tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Tynnus Venomsprout##5169 |goto Ironforge 52.94,13.66 |q 3201
|only if Rogue
step
talk Mountaineer Pebblebitty##3836
turnin At Last!##3201 |goto Loch Modan 18.19,84.00
step
Enter the building |goto The Hinterlands 11.00,45.67 < 10 |walk
talk Gryphon Master Talonaxe##5636
|tip Inside the building.
turnin The Altar of Zul##2989 |goto The Hinterlands 9.76,44.48
|only if not hardcore
step
Leave the building |goto The Hinterlands 11.00,45.67 < 10 |walk |only if subzone("Aerie Peak") and _G.IsIndoors()
Enter the building |goto The Hinterlands 14.19,45.18 < 30 |walk |only if not subzone("Wildhammer Keep")
talk Fraggar Thundermantle##7884
|tip Inside the building.
turnin Skulk Rock Clean-up##2877 |goto The Hinterlands 14.83,44.56
step
talk Commander Ashlam Valorfist##10838
turnin A Call to Arms: The Plaguelands!##5090 |goto Western Plaguelands 42.70,84.03
accept Clear the Way##5092 |goto Western Plaguelands 42.70,84.03
stickystart "Kill_Slavering_Ghouls"
step
kill 10 Skeletal Flayer##1783 |q 5092/1 |goto Western Plaguelands 48.51,81.13
|tip Watch for respawns while in the area.	|only if hardcore
You can find more around [50.64,77.01]
step
label "Kill_Slavering_Ghouls"
kill 10 Slavering Ghoul##1791 |q 5092/2 |goto Western Plaguelands 48.51,81.13
|tip Watch for respawns while in the area.	|only if hardcore |notinsticky
You can find more around [50.64,77.01]
step
Kill enemies around this area
|tip You should already be pretty close to reaching level 52.
|tip Getting this far into level 51 will allow you to reach level 52 after turning in quests soon.
|tip Watch for respawns while in the area.	|only if hardcore
ding 51,149000 |goto Western Plaguelands 48.51,81.13
You can find more around [50.64,77.01]
step
talk Commander Ashlam Valorfist##10838
turnin Clear the Way##5092 |goto Western Plaguelands 42.70,84.03
accept The Scourge Cauldrons##5215 |goto Western Plaguelands 42.70,84.03
step
talk High Priestess MacDonnell##11053
turnin The Scourge Cauldrons##5215 |goto Western Plaguelands 42.97,84.50
step
talk Erelas Ambersky##7916
|tip Inside the building.
turnin Favored of Elune?##3661 |goto Teldrassil 55.50,92.05
accept Moontouched Wildkin##978 |goto Teldrassil 55.50,92.05
step
talk Daryn Lightwind##7907
|tip Upstairs inside the building.
turnin The Super Snapper FX##2944 |goto Teldrassil 55.41,92.23
accept Return to Troyas##2943 |goto Teldrassil 55.41,92.23
step
talk Garryeth##4209
|tip Inside the building.
|tip Collect these items from the bank.
collect Insect Analysis Report##8594 |goto Darnassus 39.60,41.98 |q 162
collect Linken's Training Sword##11133 |goto Darnassus 39.60,41.98 |q 3908
collect Bloodpetal##11316 |goto Darnassus 39.60,41.98 |q 4142
step
Enter the building |goto Darnassus 39.04,76.77 < 15 |walk
talk Gracina Spiritmight##7740
|tip Upstairs inside the building.
turnin Rise of the Silithid##162 |goto Darnassus 41.84,85.62
accept March of the Silithid##4493 |goto Darnassus 41.84,85.62
step
talk Innkeeper Shaussiy##6737
|tip Inside the building.
home Auberdine |goto Darkshore 37.04,44.13
step
talk Jarrodenus##12577
fpath Talrendis Point |goto Azshara 11.90,77.59
|only if hardcore
step
talk Loh'atu##11548
accept Spiritual Unrest##5535 |goto Azshara 11.37,78.16
accept A Land Filled with Hatred##5536 |goto Azshara 11.37,78.16
stickystart "Kill_Highborne_Lichlings"
step
Follow the path up |goto Azshara 13.45,73.32 < 30 |only if walking
kill 6 Highborne Apparition##6116 |q 5535/1 |goto Azshara 14.66,72.47
|tip Watch for patrols and respawns while in the area.	|only if hardcore
You can find more around [17.21,68.82]
step
label "Kill_Highborne_Lichlings"
kill 6 Highborne Lichling##6117 |q 5535/2 |goto Azshara 17.21,68.82
|tip Watch for patrols and respawns while in the area.	|only if hardcore |notinsticky
You can find more around [14.66,72.47]
stickystart "Kill_Haldarr_Trickster"
stickystart "Kill_Haldarr_Felsworns"
step
Follow the path up |goto Azshara 19.36,62.52 < 30 |only if walking
kill 6 Haldarr Satyr##6125 |q 5536/1 |goto Azshara 19.82,61.38
|tip Watch for respawns while in the area.	|only if hardcore
step
label "Kill_Haldarr_Trickster"
kill 2 Haldarr Trickster##6126 |q 5536/2 |goto Azshara 19.82,61.38
|tip Watch for respawns while in the area.	|only if hardcore |notinsticky
step
label "Kill_Haldarr_Felsworns"
kill 2 Haldarr Felsworn##6127 |q 5536/3 |goto Azshara 19.82,61.38
|tip Watch for respawns while in the area.	|only if hardcore |notinsticky
step
talk Loh'atu##11548
turnin Spiritual Unrest##5535 |goto Azshara 11.37,78.17
turnin A Land Filled with Hatred##5536 |goto Azshara 11.37,78.17
step
talk Brinna Valanaar##14301
|tip Buy enough ammo to fill your ammo bag, plus 12-15 extra stacks.
|tip You will be questing a while without easy access to an ammo vendor.
Visit the Vendor |vendor Brinna Valanaar##14301 |goto Azshara 12.00,78.38 |q 4101 |future
|only if Hunter
step
talk Arathandris Silversky##9528
|tip She walks around this area.
accept Cleansing Felwood##4101 |goto Felwood 54.15,86.83
step
talk Greta Mosshoof##10922
|tip She walks around this area.
accept Forces of Jaedenar##5155 |goto Felwood 51.21,82.11
step
Enter the building |goto Felwood 51.27,81.69 < 10 |walk
talk Eridan Bluewind##9116
|tip Inside the building.
accept The Corruption of the Jadefire##4421 |goto Felwood 51.35,81.51
step
use the Package of Empty Ooze Containers##11912
collect 6 Empty Cursed Ooze Jar##11914 |q 4512 |goto Felwood 41.22,71.29
collect 6 Empty Tainted Ooze Jar##11948 |q 4512 |goto Felwood 41.22,71.29
step
kill Cursed Ooze##7086+
use the Empty Cursed Ooze Jar##11914+
|tip Use them on their corpses.
collect 6 Filled Cursed Ooze Jar##11947 |q 4512/1 |goto Felwood 41.22,71.29
You can find more around: |notinsticky
[38.97,72.26]
[40.06,67.15]
[41.93,67.38]
stickystart "Kill_Jadefire_Felsworns"
stickystart "Kill_Jadefire_Shadowstalkers"
stickystart "Kill_Jadefire_Rogues"
step
Follow the path |goto Felwood 36.85,66.92 < 30 |only if walking
kill Xavathras##9454 |q 4421/4 |goto Felwood 32.24,67.10
|tip Watch for stealthed enemies in the area.		|only if hardcore
|tip Enemies have abnormal aggro radius around here.	|only if hardcore
step
label "Kill_Jadefire_Felsworns"
kill 11 Jadefire Felsworn##7109 |q 4421/1 |goto Felwood 32.90,66.62
|tip Watch for stealthed enemies in the area.		|only if hardcore |notinsticky
|tip Enemies have abnormal aggro radius around here.	|only if hardcore |notinsticky
You can find more around: |notinsticky
[37.36,67.64]
step
label "Kill_Jadefire_Shadowstalkers"
kill 9 Jadefire Shadowstalker##7110 |q 4421/2 |goto Felwood 32.90,66.62
|tip They are stealthed around this area.
|tip Enemies have abnormal aggro radius around here.	|only if hardcore |notinsticky
You can find more around: |notinsticky
[37.36,67.64]
step
label "Kill_Jadefire_Rogues"
kill 9 Jadefire Rogue##7106 |q 4421/3 |goto Felwood 32.90,66.62
|tip Watch for stealthed enemies in the area.		|only if hardcore |notinsticky
|tip Enemies have abnormal aggro radius around here.	|only if hardcore |notinsticky
You can find more around: |notinsticky
[37.36,67.64]
step
Leave the Ruins of Constellas and follow the road north |goto Felwood 42.64,65.46 < 50 |only if walking and subzone("Ruins of Constellas")
kill Tainted Ooze##7092+
use the Empty Tainted Ooze Jar##11948+
|tip Use them on their corpses.
collect 6 Filled Tainted Ooze Jar##11949 |q 4512/2 |goto Felwood 40.76,59.25
You can find more around [40.28,55.59]
stickystart "Kill_Jaedenar_Guardians"
stickystart "Kill_Jaedenar_Adepts"
stickystart "Kill_Jaedenar_Cultists"
step
kill 4 Jaedenar Hound##7125 |q 5155/1 |goto Felwood 38.87,58.49
|tip You can find more in the caves nearby in this area.
|tip Watch for patrols and respawns while in the area.		|only if hardcore
|tip Watch for Jaedenar Adepts as they are ranged attackers.	|only if hardcore
|tip Enemies may run away in fear when at low health.		|only if hardcore
You can find more around: |notinsticky
[37.87,60.72]
[35.12,60.26]
step
label "Kill_Jaedenar_Guardians"
kill 4 Jaedenar Guardian##7113 |q 5155/2 |goto Felwood 38.87,58.49
|tip You can find more in the caves nearby in this area. |notinsticky
|tip Watch for patrols and respawns while in the area.		|only if hardcore |notinsticky
|tip Watch for Jaedenar Adepts as they are ranged attackers.	|only if hardcore |notinsticky
|tip Enemies may run away in fear when at low health.		|only if hardcore |notinsticky
You can find more around: |notinsticky
[37.87,60.72]
[35.12,60.26]
step
label "Kill_Jaedenar_Adepts"
kill 6 Jaedenar Adept##7115 |q 5155/3 |goto Felwood 38.87,58.49
|tip You can find more in the caves nearby in this area. |notinsticky
|tip Watch for patrols and respawns while in the area.		|only if hardcore |notinsticky
|tip Enemies may run away in fear when at low health.		|only if hardcore |notinsticky
You can find more around: |notinsticky
[37.87,60.72]
[35.12,60.26]
step
label "Kill_Jaedenar_Cultists"
kill 6 Jaedenar Cultist##7112 |q 5155/4 |goto Felwood 38.87,58.49
|tip You can find more in the caves nearby in this area. |notinsticky
|tip Watch for patrols and respawns while in the area.		|only if hardcore |notinsticky
|tip Watch for Jaedenar Adepts as they are ranged attackers.	|only if hardcore |notinsticky
|tip Enemies may run away in fear when at low health.		|only if hardcore |notinsticky
You can find more around: |notinsticky
[37.87,60.72]
[35.12,60.26]
step
Leave Jaedenar and follow the road south |goto Felwood 41.37,57.71 < 50 |only if walking and subzone("Jaedenar")
talk Greta Mosshoof##10922
|tip She walks around this area.
turnin Forces of Jaedenar##5155 |goto Felwood 51.21,82.11
accept Collection of the Corrupt Water##5157 |goto Felwood 51.21,82.11
step
Enter the building |goto Felwood 51.27,81.69 < 10 |walk
talk Eridan Bluewind##9116
|tip Inside the building.
turnin The Corruption of the Jadefire##4421 |goto Felwood 51.35,81.51
accept Further Corruption##4906 |goto Felwood 51.35,81.51
step
talk Taronn Redfeather##10921
|tip Inside the building.
accept Verifying the Corruption##5156 |goto Felwood 50.89,81.62
step
talk Grazle##11554
accept Timbermaw Ally##8460 |goto Felwood 50.93,85.01
stickystart "Kill_Deadwood_Pathfinders"
stickystart "Kill_Deadwood_Gardeners"
step
Follow the path |goto Felwood 49.02,89.29 < 50 |only if walking and not subzone("Deadwood Village")
kill 6 Deadwood Warrior##7153 |q 8460/1 |goto Felwood 48.32,92.99
|tip Watch for enemies grouped at the camps here as they may pull in groups.	|only if hardcore
|tip Deadwood Gardeners may reduce the healing on you.				|only if hardcore
|tip Deadwood Pathfinders are ranged attackers.					|only if hardcore
You can find more around: |notinsticky
[46.51,88.13]
[48.77,89.62]
step
label "Kill_Deadwood_Pathfinders"
kill 6 Deadwood Pathfinder##7155 |q 8460/2 |goto Felwood 48.32,92.99
|tip Watch for enemies grouped at the camps here as they may pull in groups.	|only if hardcore |notinsticky
|tip Deadwood Gardeners may reduce the healing on you.				|only if hardcore |notinsticky
You can find more around: |notinsticky
[46.51,88.13]
[48.77,89.62]
step
label "Kill_Deadwood_Gardeners"
kill 6 Deadwood Gardener##7154 |q 8460/3 |goto Felwood 48.32,92.99
|tip Watch for enemies grouped at the camps here as they may pull in groups.	|only if hardcore |notinsticky
|tip Deadwood Pathfinders are ranged attackers.				|only if hardcore |notinsticky
You can find more around: |notinsticky
[46.51,88.13]
[48.77,89.62]
step
Leave Deadwood Village |goto Felwood 49.56,88.70 < 50 |only if walking and subzone("Deadwood Village")
talk Grazle##11554
turnin Timbermaw Ally##8460 |goto Felwood 50.93,85.02
accept Speak to Nafien##8462 |goto Felwood 50.93,85.02
step
Kill Deadwood enemies around this area
Reach Unfriendly Reputation with the Timbermaw Hold Faction |complete rep('Timbermaw Hold') >= Unfriendly |goto Felwood 48.32,92.99
|tip You are about to go through a long tunnel soon, full of level 52-54 enemies.
|tip If you are not at least Unfriendly with this faction, you will be attacked.
|tip Watch for enemies grouped at the camps here as they may pull in groups.	|only if hardcore
|tip Deadwood Gardeners may reduce the healing on you.				|only if hardcore
|tip Deadwood Pathfinders are ranged attackers.				|only if hardcore
You can find more around: |notinsticky
[46.51,88.13]
[48.77,89.62]
step
Leave Deadwood Village and follow the road north |goto Felwood 51.01,84.64 < 50 |only if walking and subzone("Deadwood Village")
Follow the path into Jaedenar |goto Felwood 38.37,59.85 < 30 |walk
use the Empty Canteen##12922
|tip Watch for patrols and respawns while in the area.		|only if hardcore
|tip Watch for Jaedenar Adepts as they are ranged attackers.	|only if hardcore
|tip Enemies may run away in fear when at low health.		|only if hardcore
collect Corrupt Moonwell Water##12907 |q 5157/1 |goto Felwood 35.20,59.87
stickystart "Kill_Entropic_Beasts"
stickystart "Kill_Entropic_Horrors"
step
Leave Jaedenar and follow the road north |goto Felwood 41.37,57.71 < 50 |only if walking and subzone("Jaedenar")
Explore the Craters in Shatter Scar Vale |q 5156/3 |goto Felwood 41.54,42.98
|tip Be careful to avoid the elite Infernal Sentries around this area.
step
label "Kill_Entropic_Beasts"
kill 2 Entropic Beast##9878 |q 5156/1 |goto Felwood 41.36,41.19
|tip Be careful to avoid the elite Infernal Sentries around this area. |notinsticky
You can find more around [43.63,40.55]
step
label "Kill_Entropic_Horrors"
kill 2 Entropic Horror##9879 |q 5156/2 |goto Felwood 41.36,41.19
|tip Be careful to avoid the elite Infernal Sentries around this area. |notinsticky
You can find more around [43.63,40.55]
step
Follow the path up into Jadefire Run |goto Felwood 43.07,21.32 < 30 |only if walking and not subzone("Jadefire Run")
Follow the path |goto Felwood 39.79,20.32 < 30 |only if walking
kill Xavaric##10648 |q 4906/4 |goto Felwood 39.07,22.35
|tip Watch for enemies near the camps as they tend to pull in groups.	|only if hardcore
|tip He us level 55 with 2 enemies near him.  Try to pull him with only 1 extra enemy.  If you're not confident you can kill him, skip the quest.
collect Flute of Xavaric##11668 |goto Felwood 39.07,22.35 |q 939 |future
step
use the Flute of Xavaric##11668
accept Flute of Xavaric##939
stickystart "Kill_Jadefire_Hellcallers"
stickystart "Kill_Jadefire_Betrayers"
stickystart "Kill_Jadefire_Tricksters"
step
Kill Jadefire enemies around this area
|tip Watch for enemies near the camps as they tend to pull in groups.	|only if hardcore
collect 5 Jadefire Felbind##11674 |q 939/1 |goto Felwood 40.73,19.72
You can find more around: |notinsticky
[42.87,15.21]
[39.10,21.69]
step
label "Kill_Jadefire_Hellcallers"
kill 8 Jadefire Hellcaller##7111 |q 4906/1 |goto Felwood 40.73,19.72
|tip Watch for enemies near the camps as they tend to pull in groups.	|only if hardcore |notinsticky
|tip They share spawn points with the others, so kill those also, if you can't find any. |notinsticky
You can find more around: |notinsticky
[42.87,15.21]
[39.10,21.69]
step
label "Kill_Jadefire_Betrayers"
kill 8 Jadefire Betrayer##7108 |q 4906/2 |goto Felwood 40.73,19.72
|tip Watch for enemies near the camps as they tend to pull in groups.	|only if hardcore |notinsticky
|tip They share spawn points with the others, so kill those also, if you can't find any. |notinsticky
You can find more around: |notinsticky
[42.87,15.21]
step
label "Kill_Jadefire_Tricksters"
kill 8 Jadefire Trickster##7107 |q 4906/3 |goto Felwood 40.73,19.72
|tip Watch for enemies near the camps as they tend to pull in groups.	|only if hardcore |notinsticky
|tip They share spawn points with the others, so kill those also, if you can't find any. |notinsticky
You can find more around: |notinsticky
[42.87,15.21]
step
Kill Warpwood enemies around this area
|tip Inside and outside the cave.
|tip Watch for patrols and respawns while here.	|only if hardcore
collect 15 Blood Amber##11503 |q 4101/1 |goto Felwood 55.78,16.85
step
Leave the cave |goto Felwood 55.88,17.15 < 40 |walk |only if subzone("Irontree Cavern")
Follow the road |goto Felwood 53.91,12.80 < 50 |only if walking and (subzone("Irontree Cavern") or subzone("Irontree Woods"))
Follow the path to Talonbranch Glade |goto Felwood 61.80,16.20 < 70 |only if walking and not subzone("Talonbranch Glade")
talk Mishellena##12578
fpath Talonbranch Glade |goto Felwood 62.49,24.24
step
Follow the road up |goto Felwood 64.61,14.86 < 30 |only if walking
talk Nafien##15395
turnin Speak to Nafien##8462 |goto Felwood 64.77,8.13
step
Enter the tunnel |goto Felwood 65.13,8.01 < 10 |walk |only if not zone("Moonglade")
Run down the stairs and follow the path |goto Felwood 65.36,2.34 < 10 |walk |only if not zone("Moonglade")
Leave the tunnel |goto Moonglade 35.75,72.48 < 10 |walk |only if not zone("Moonglade")
talk Sindrayl##10897
fpath Moonglade |goto Moonglade 48.10,67.34
step
talk Keeper Remulos##11832
turnin Seed of Life##7066 |goto Moonglade 36.18,41.82
|only if readyq(7066)
step
Enter the tunnel |goto Moonglade 35.74,72.49 < 10 |walk |only if not zone("Winterspring")
Follow the path |goto Felwood 66.26,2.90 < 10 |walk |only if not zone("Winterspring")
Leave the tunnel |goto Felwood 68.40,5.84 < 10 |walk |only if not zone("Winterspring")
talk Donova Snowden##9298
turnin It's a Secret to Everybody##3908 |goto Winterspring 31.27,45.16
step
Watch the dialogue
talk Donova Snowden##9298
accept The Videre Elixir##3909 |goto Winterspring 31.27,45.16
step
click Moontouched Feather+
|tip They look like large blue feathers on the ground around this area.
|tip Gather these while heading east to Everlook.
collect 10 Moontouched Feather##12383 |q 978/1 |goto Winterspring 31.35,45.53
You can find more at: |notinsticky
[30.95,47.02]
[29.39,46.67]
[30.18,45.24]
[30.30,44.03]
[31.42,43.31]
[32.02,44.25]
[32.79,44.36]
[33.07,44.01]
[34.85,43.20]
step
talk Azzleby##11119
|tip Avoid higher level enemies while following the road to this location.
|tip Stable your permanent pet.
|tip You are about to tame a temporary pet, so you can learn "Bite 7".
Click Here to Continue |confirm |goto Winterspring 60.39,37.92 |q 978
|only if Hunter
step
talk Maethrya##11138
|tip Avoid higher level enemies while following the road to this location.
fpath Everlook |goto Winterspring 62.33,36.61
step
_NOTE:_
Tame a Felpaw Ravager
|tip Use your "Tame Beast" ability on a Felpaw Ravager.
|tip They look like grey wolves around this area.
Learn the "Bite 7" Pet Ability
|tip Kill enemies around this area until you see a message in your chat saying you learned "Bite 7".
|tip You will teach "Bite 7" to your permanent pet soon.
Click Here to Continue |confirm |goto Felwood 62.21,19.91 |q 978
|only if Hunter
step
talk Azzleby##11119
|tip Abandon your temporary pet and get your permanent pet from the stable.
|tip Teach "Bite 7" to your permanent pet.
Click Here to Continue |confirm |goto Winterspring 60.39,37.92 |q 978
|only if Hunter
step
talk Arathandris Silversky##9528
|tip She walks around this area.
turnin Cleansing Felwood##4101 |goto Felwood 54.15,86.83
step
talk Arathandris Silversky##9528
|tip She walks around this area.
Select _"I need a Cenarion beacon."_
collect Cenarion Beacon##11511 |goto Felwood 54.15,86.83 |q 5882 |future
step
Follow the road south to Emerald Sanctuary |goto Felwood 60.92,15.98 < 50 |only if walking and subzone("Talonbranch Glade")
talk Greta Mosshoof##10922
|tip She walks around this area.
turnin Collection of the Corrupt Water##5157 |goto Felwood 51.21,82.11
accept Seeking Spiritual Aid##5158 |goto Felwood 51.21,82.11
step
Enter the building |goto Felwood 51.26,81.70 < 10 |walk
talk Eridan Bluewind##9116
|tip Inside the building.
turnin Flute of Xavaric##939 |goto Felwood 51.35,81.51
accept Felbound Ancients##4441 |goto Felwood 51.35,81.51
turnin Further Corruption##4906 |goto Felwood 51.35,81.51
step
talk Taronn Redfeather##10921
|tip Inside the building.
turnin Verifying the Corruption##5156 |goto Felwood 50.89,81.62
step
Follow the path |goto Felwood 49.02,89.29 < 50 |only if walking and not subzone("Deadwood Village")
Kill enemies around this area
|tip Watch for enemies grouped at the camps here as they may pull in groups.	|only if hardcore
|tip Deadwood Gardeners may reduce the healing on you.				|only if hardcore
|tip Deadwood Pathfinders are ranged attackers.					|only if hardcore
collect 6 Corrupted Soul Shard##11515 |goto Felwood 48.32,92.99 |q 5882 |future
You can find more around: |notinsticky
[46.51,88.13]
[48.77,89.62]
step
Kill enemies around this area
|tip You should already be pretty close to reaching level 53.
|tip Grinding a bit here will reduce the amount you have to grind all at once later.
|tip Watch for enemies grouped at the camps here as they may pull in groups.	|only if hardcore
|tip Deadwood Gardeners may reduce the healing on you.				|only if hardcore
|tip Deadwood Pathfinders are ranged attackers.					|only if hardcore
ding 53 |goto Felwood 48.32,92.99 |q 5882 |future
You can find more around: |notinsticky
[46.51,88.13]
[48.77,89.62]
step
talk Grazle##11554
|tip Each turnin is 5 feathers, you should have enough to do multiple turnins.
accept Feathers for Grazle##8466 |goto Felwood 51.00,85.00 |instant
|only if itemcount(21377) >= 5
step
Leave Deadwood Village |goto Felwood 49.56,88.70 < 50 |only if walking and subzone("Deadwood Village")
talk Arathandris Silversky##9528
|tip She walks around this area.
|tip This will award you with Cenarion Plant Salve.
|tip You can use these to cleanse 'Corrupted Songflower' around the zone for a large buff.
|tip It is heavily recommended to cleanse one anytime you see it.
accept Salve via Hunting##5882 |goto Felwood 54.15,86.83 |instant
step
talk Fahran Silentblade##3969
|tip Inside the building.
|tip Stock up on poisons.
|tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Fahran Silentblade##3969 |goto Ashenvale 36.49,49.46 |q 2943
|only if Rogue
step
talk Pratt McGrubben##7852
accept Improved Quality##7733 |goto Feralas 30.63,42.71
step
talk Innkeeper Shyria##7736
|tip Inside the building.
home Feathermoon Stronghold |goto Feralas 30.97,43.49
step
talk Troyas Moonbreeze##7764
|tip Inside the building.
turnin Return to Troyas##2943 |goto Feralas 31.78,45.50
step
Watch the dialogue
talk Troyas Moonbreeze##7764
|tip Inside the building.
accept The Stave of Equinex##2879 |goto Feralas 31.78,45.50
step
Run onto the dock and ride the boat or swim across the water |goto Feralas 31.03,39.92 < 40 |only if walking and subzone("Feathermoon Stronghold")
talk Zorbin Fandazzle##14637
accept Zapped Giants##7003 |goto Feralas 44.81,43.42
accept Fuel for the Zapping##7721 |goto Feralas 44.81,43.42
stickystart "Collect_Water_Elemental_Cores"
step
use Zorbin's Ultra-Shrinker##18904
|tip Use it on Wave Striders around this area.
|tip They look like tall green giants that walks on the shore and in the water around this area.
|tip This quest item only lasts for 2 hours.
|tip If you need a new one, abandon the quest and accept it again from the goblin in the previous guide step.
|tip Watch out for the water elementals here as they are immune to frost damage.	|only if hardcore
kill Zapped Wave Strider##14638+
collect 15 Miniaturization Residue##18956 |q 7003/1 |goto Feralas 44.38,50.11
You can find more around: |notinsticky
[46.63,59.79]
[45.36,67.94]
[40.03,37.38]
[36.09,33.74]
step
label "Collect_Water_Elemental_Cores"
Kill Sea enemies around this area
|tip They look like water elementals.
|tip Up and down this whole shore.
|tip They are immune to frost damage.	|only if hardcore
collect 10 Water Elemental Core##18958 |q 7721/1 |goto Feralas 46.73,60.23
You can find more around: |notinsticky
[46.30,52.00]
[40.71,37.59]
step
talk Zorbin Fandazzle##14637
turnin Zapped Giants##7003 |goto Feralas 44.81,43.42
turnin Fuel for the Zapping##7721 |goto Feralas 44.81,43.42
step
_Destroy This Item:_
|tip It is no longer needed.
trash Zorbin's Ultra-Shrinker##18904 |goto Feralas 47.18,44.52
step
Follow the road |goto Feralas 47.18,44.52 < 30 |only if walking and subzone("The Forgotten Coast")
Discover Dire Maul |goto Feralas 59.12,44.62 < 20 |q 5527 |future
|tip Run slightly onto the huge ramp to discover the Dire Maul dungeon.
|tip As soon as you reach the ramp and discover Dire Maul, run away from the ogres and go back to the road.
|tip You need to discover the Dire Maul dungeon to be able to accept a quest later in the guide.
stickystart "Collect_Perfect_Yeti_Hide"
step
Follow the road around and run up the path to the yeti cave |goto Feralas 51.42,32.47 < 20 |only if walking
Kill Rage Scar enemies around this area
|tip Inside and outside the cave.
|tip Watch for patrols and respawns while here.	|only if hardcore
collect 10 Rage Scar Yeti Hide##18947 |q 7733/1 |goto Feralas 53.17,31.82
step
label "Collect_Perfect_Yeti_Hide"
Kill Rage Scar enemies around this area |notinsticky
|tip Inside and outside the cave. |notinsticky
collect Pristine Yeti Hide##18969 |goto Feralas 53.17,31.82 |q 7735 |future
|tip You can also get this item by skinning enemies. |only if skill('Skinning') > 0
step
use Pristine Yeti Hide##18969
accept Pristine Yeti Hide##7735 |goto Feralas 42.38,22.00
step
talk Rockbiter##7765
accept The Giant Guardian##2844 |goto Feralas 42.38,22.00
step
Jump onto this break in the wall from the nearby ledge |goto Feralas 44.62,9.81 < 3 |only if walking
click Evoroot##164798
|tip Inside the building.
collect Evoroot##11242 |goto Feralas 44.55,10.13 |q 3909
step
Jump out of the building |goto Feralas 44.64,9.95 < 7 |only if walking and subzone("Ruins of Ravenwind")
Jump up on the ledge |goto Feralas 40.33,11.04 < 7 |only if walking
Jump across here |goto Feralas 40.59,11.45 < 7 |only if walking
Jump up here |goto Feralas 40.97,11.87 < 7 |only if walking
click Flame of Samha
collect Samha Essence##9257 |goto Feralas 40.54,12.65 |q 2879
step
click Flame of Imbel##142187
|tip Watch for patrols and respawns while in the area.	|only if hardcore
collect Imbel Essence##9256 |goto Feralas 39.93,9.44 |q 2879
step
click Flame of Lahassa##142186
|tip Watch for patrols and respawns while in the area.	|only if hardcore
collect Lahassa Essence##9255 |goto Feralas 37.76,12.17 |q 2879
step
click Flame of Byltan##142185
|tip Watch for patrols and respawns while in the area.	|only if hardcore
collect Byltan Essence##9258 |goto Feralas 38.50,15.80 |q 2879
step
use Troyas' Stave##9263
collect Stave of Equinex##9306 |q 2879/1 |goto Feralas 38.87,13.23
step
click Equinex Monolith##144063
use Stave of Equinex##9306
|tip Watch for patrols and respawns while in the area.	|only if hardcore
turnin The Stave of Equinex##2879 |goto Feralas 38.87,13.23
accept The Morrow Stone##2942 |goto Feralas 38.87,13.23
step
Follow the path up |goto Feralas 39.94,13.34 < 30 |only if walking
talk Shay Leafrunner##7774
|tip Watch for patrols and respawns while in the area.	|only if hardcore
turnin The Giant Guardian##2844 |goto Feralas 38.22,10.30
accept Wandering Shay##2845 |goto Feralas 38.22,10.30
step
click Shay's Chest##144054
|tip Watch for patrols and respawns while in the area.	|only if hardcore
collect Shay's Bell##9189 |q 2845/1 |goto Feralas 38.25,10.29
step
use Shay's Bell##9189
|tip Shay Leafrunner will follow you.
|tip Protect her as you walk.
|tip She will sometimes wander off and stop following you.
|tip You will see a message in your chat when she wanders off.
|tip When this happens, use Shay's Bell to get her to start following you again.
|tip This quest is timed, so try to hurry.
Take Shay Leafrunner to Rockbiter's Camp |q 2845/2 |goto Feralas 42.38,22.00
step
talk Rockbiter##7765
turnin Wandering Shay##2845 |goto Feralas 42.38,22.00
step
talk Gregan Brewspewer##7775
turnin A Visit to Gregan##4142 |goto Feralas 45.12,25.57
step
talk Gregan Brewspewer##7775
|tip Complete the repeatable "The Videre Elixir" quest.
collect Videre Elixir##11243 |q 3909/1 |goto Feralas 45.12,25.57
|tip Do NOT drink the Elixir, it will kill your character.
|tip If you drink it in the Tanaris graveyard it will not kill you on Hardcore Realms |only if hardcore
step
Kill enemies around this area
|tip Grind enemies until your Hearthstone is ready to use.
|tip You will be hearthing back to Feathermoon Stronghold.
|tip The guide doesn't take into account this grind, so any extra xp you get now will put you a little bit ahead, and reduce any grinding you have to do later.
|tip This step will complete when your Hearthstone is ready to use.
Grind XP Until You Can Hearth to Feathermoon Stronghold |complete C_Container.GetItemCooldown(6948) == 0 |goto Feralas 39.46,13.80 |q 2942
step
talk Pratt McGrubben##7852
turnin Improved Quality##7733 |goto Feralas 30.63,42.71
turnin Pristine Yeti Hide##7735 |goto Feralas 30.63,42.71
step
talk Troyas Moonbreeze##7764
|tip Inside the building.
turnin The Morrow Stone##2942 |goto Feralas 31.78,45.50
|tip The Cairnstone Sliver want is a potential upgrade. |only if Priest
step
talk Islen Waterseer##5901
turnin Seeking Spiritual Aid##5158 |goto The Barrens 65.83,43.78
step
Watch the dialogue
talk Islen Waterseer##5901
accept Cleansed Water Returns to Felwood##5159 |goto The Barrens 65.83,43.78
step
Enter the building |goto The Barrens 62.08,39.26 < 15 |walk
talk Innkeeper Wiley##6791
|tip Inside the building.
home Ratchet |goto The Barrens 62.05,39.41
step
Enter the building |goto The Barrens 62.52,38.58 < 10 |walk
talk Liv Rizzlefix##8496
|tip Inside the building.
accept Volcanic Activity##4502 |goto The Barrens 62.45,38.74
step
talk Fuzruckle##3496
|tip Collect these items from the bank.
collect Drawing Kit##10445 |goto The Barrens 62.64,37.42 |q 3449
collect Standard Issue Flare Gun##10444 |goto The Barrens 62.64,37.42 |q 3449
step
talk Fuzruckle##3496
|tip Desposit these items into the bank.
bank Eridan's Vial##11682 |goto The Barrens 62.64,37.42 |q 4441 |future
bank Filled Cursed Ooze Jar##11947 |goto The Barrens 62.64,37.42 |q 4512 |future
|tip You should have 6 of these.
bank Filled Tainted Ooze Jar##11949 |goto The Barrens 62.64,37.42 |q 4512 |future
|tip You should have 6 of these.
bank Moontouched Feather##12383 |goto The Barrens 62.64,37.42 |q 978 |future
|tip You should have 10 of these.
bank Purified Moonwell Water##12906 |goto The Barrens 62.64,37.42 |q 5159 |future
bank Videre Elixir##11243 |goto The Barrens 62.64,37.42 |q 3909 |future
|tip You should have 3 of these.
step
talk Fahran Silentblade##3969
|tip Inside the building.
|tip Stock up on poisons.
|tip Open your poison crafting window and purchase the ingredients you need.
|tip You're about to travel to Un'goro where there aren't any poison vendors nearby.
Visit the Vendor |vendor Fahran Silentblade##3969 |goto Ashenvale 36.49,49.46 |q 3449
|only if Rogue
step
talk Brinna Valanaar##14301
|tip Buy enough ammo to fill your ammo bag, plus 15-20 extra stacks.
|tip You will be questing and grinding a while.
Visit the Vendor |vendor Brinna Valanaar##14301 |goto Azshara 12.00,78.38 |q 3449
|only if Hunter
step
Follow the path |goto Azshara/0 20.32,67.98 < 25 |only if walking
Continue following the path |goto Azshara/0 25.14,60.44 < 25 |only if walking
Continue following the path |goto Azshara/0 29.22,55.93 < 25 |only if walking
Follow the path down |goto Azshara/0 32.50,56.40 < 25 |only if walking
click Rune of Beth'Amara##149481
|tip Spitelash Sirens may heal while fighting.		|only if hardcore
|tip Watch for patrols and respawns while in the area.	|only if hardcore
collect Rubbing: Rune of Beth'Amara##10563 |q 3449/1 |goto Azshara 36.87,53.19
step
click Rune of Markri##149482
|tip Spitelash Sirens may heal while fighting.		|only if hardcore
|tip Watch for patrols and respawns while in the area.	|only if hardcore
collect Rubbing: Rune of Markri##10565 |q 3449/3 |goto Azshara 39.30,55.48
step
click Rune of Sael'hai##149483
|tip Be careful not to run off the cliff, there's not an easy way back up.
|tip Spitelash Sirens may heal while fighting.		|only if hardcore
|tip Watch for patrols and respawns while in the area.	|only if hardcore
collect Rubbing: Rune of Sael'hai##10566 |q 3449/4 |goto Azshara 42.34,64.13
step
click Rune of Jin'yael##149480
|tip Spitelash Sirens may heal while fighting.		|only if hardcore
|tip Watch for patrols and respawns while in the area.	|only if hardcore
collect Rubbing: Rune of Jin'yael##10564 |q 3449/2 |goto Azshara 39.56,50.31
step
Follow the path down |goto Azshara 40.50,47.76 < 30 |only if walking |only if (subzone("Ruins of Eldarath ") or subzone("Temple of Zin-Malor") or subzone("The Shattered Strand")) and walking
Follow the path |goto Azshara 46.94,41.46 < 30 |only if walking |only if walking and (subzone("Ruins of Eldarath ") or subzone("Temple of Zin-Malor") or subzone("The Shattered Strand"))
Follow the path |goto Azshara 45.16,36.79 < 40 |only if walking |only if walking and (subzone("Ruins of Eldarath ") or subzone("Temple of Zin-Malor") or subzone("The Shattered Strand"))
talk Kim'jael##8420
|tip On top of the big hill.
accept Kim'jael Indeed!##3601 |goto Azshara 53.45,21.82
step
click Kim'jael's Equipment##153123
|tip They look like wooden boxes on the ground around this area.
|tip Some of them may be empty.
|tip They respawn very quickly, you can find one safe area and stay at it to complete the quest.
|tip The mobs here are VERY dangerous, don't extend further into the camp than you have to. |only if hardcore
|tip Blood Elf Reclaimers are ranged attackers that deal HEAVY damage.	|only if hardcore
|tip Surveyors have a large aggro radius and do an instant cast fire nova for a large amount of damage |only if hardcore
|tip Enemies may bunch together so be careful.				|only if hardcore
|tip Watch for patrols and respawns while in the area.			|only if hardcore
collect Kim'Jael's Compass##10717 |q 3601/1 |goto Azshara 56.09,30.20
collect Kim'Jael's Scope##10715 |q 3601/2 |goto Azshara 56.09,30.20
collect Kim'Jael's Stuffed Chicken##10722 |q 3601/3 |goto Azshara 56.09,30.20
collect Kim'Jael's Wizzlegoober##10718 |q 3601/4 |goto Azshara 56.09,30.20
You can find more around: |notinsticky
[56.29,28.76]
[57.03,28.30]
[58.55,29.05]
[58.76,28.71]
[59.61,30.93]
step
talk Kim'jael##8420
|tip On top of the big hill.
turnin Kim'jael Indeed!##3601 |goto Azshara 53.45,21.82
accept Kim'jael's "Missing" Equipment##5534 |goto Azshara 53.45,21.82
step
Follow the path down |goto Azshara 45.27,37.16 < 50 |only if walking and not subzone("The Shattered Strand")
Kill Spitelash enemies around this area
|tip Watch for patrols and respawns while in the area.	|only if hardcore
collect Some Rune##13815 |q 5534/1 |goto Azshara 47.65,43.93
You can find more around: |notinsticky
[46.76,53.80]
[48.51,64.11]
step
Follow the path up |goto Azshara 45.95,38.62 < 30 |only if walking and subzone("The Shattered Strand")
talk Kim'jael##8420
|tip On top of the big hill.
turnin Kim'jael's "Missing" Equipment##5534 |goto Azshara 53.45,21.82
step
Kill enemies around this area
|tip You are about to go back to Un'Goro Crater soon, and have to fight higher level enemies, so being a level higher is important.
|tip This is the last long grind you will have to do before reaching level 60.
|tip These Blood Elves drop Runecloth, and you will need 240 Runecloth for cloth turn ins in the major cities, for a quick burst of xp.
|tip If you'd rather run dungeons to reach level 54, skip this step and run dungeons after you hearth back to Ratchet soon.
|tip Blood Elf Reclaimers are ranged attackers that deal heavy damage.	|only if hardcore
|tip Enemies may bunch together so be careful.				|only if hardcore
|tip Watch for patrols and respawns while in the area.			|only if hardcore
ding 54 |goto Azshara 56.94,29.30
It's a long run, but you can get more arrows at [12.00,78.38]		|only if Hunter
|only if not Hardcore
step
Follow the path down to the beach |goto Azshara 45.27,37.16 < 50 |only if walking and not subzone("The Shattered Strand")
use the Standard Issue Flare Gun##10444
|tip Use it on the wooden platform.
|tip Follow the beach/water to this tiny island, avoiding enemies.
|tip If you find it too difficult and dangerous to get to the island, skip the quest. |only if hardcore
talk Pilot Xiggs Fuselighter##8392
|tip He appears nearby.
|tip It takes a little while for him to show up.
turnin Arcane Runes##3449 |goto Azshara 77.80,91.32
accept Return to Tymor##3461 |goto Azshara 77.80,91.32
step
_Destroy This Item:_
|tip It is no longer needed.
trash Standard Issue Flare Gun##10444 |goto The Barrens 62.64,37.42
step
talk Fuzruckle##3496
|tip Deposit these items into the bank.
bank Drawing Kit##10445 |goto The Barrens 62.64,37.42 |q 3461 |future
step
talk Fuzruckle##3496
|tip Collect these items from the bank.
collect Un'Goro Soil##11018 |goto The Barrens 62.64,37.42 |q 3764 |future
|tip As many as you have.
collect Torwa's Pouch##11568 |goto The Barrens 62.64,37.42 |q 4292
collect Mithril Casing##10561 |goto The Barrens 62.64,37.42 |q 4244 |future
step
talk Tran'rek##7876
accept Super Sticky##4504 |goto Tanaris 51.57,26.76
step
talk Alchemist Pestlezugg##5594
|tip Inside the building.
turnin March of the Silithid##4493 |goto Tanaris 50.89,26.96
accept Bungle in the Jungle##4496 |goto Tanaris 50.89,26.96
step
talk Williden Marshal##9270
accept Expedition Salvation##3881 |goto Un'Goro Crater 43.95,7.14
step
talk Hol'anyee Marshal##9271
accept Alien Ecology##3883 |goto Un'Goro Crater 43.89,7.24
step
talk Spark Nilminer##9272
accept Roll the Bones##3882 |goto Un'Goro Crater 43.50,7.42
step
Enter the cave |goto Un'Goro Crater 43.47,6.79 < 15 |walk
talk J.D. Collie##9117
|tip Inside the cave.
accept The Northern Pylon##4285 |goto Un'Goro Crater 41.92,2.70
step
Leave the cave |goto Un'Goro Crater 43.47,6.79 < 15 |walk |only if subzone("Marshal's Refuge") and _G.IsIndoors()
click Beware of Pterrordax##174682
|tip It's a wanted board.
accept Beware of Pterrordax##4501 |goto Un'Goro Crater 43.55,8.42
step
talk Shizzle##9998
accept Shizzle's Flyer##4503 |goto Un'Goro Crater 44.24,11.59
step
talk Karna Remtravel##9618
accept Chasing A-Me 01##4243 |goto Un'Goro Crater 46.38,13.45
stickystart "Collect_UnGoro_Soil"
stickystart "Collect_Webbed_Pterrordax_Scales"
step
Run around the huge tree and follow the path up |goto Un'Goro Crater 54.83,13.49 < 40 |only if walking
click Northern Crystal Pylon##164955
Choose _"I want to examine this pylon."_
Discover and Examine the Northern Crystal Pylon |q 4285/1 |goto Un'Goro Crater 56.48,12.45
step
kill Pterrordax##9166+
|tip Kill all of them around this area.
|tip You will kill more of these later, so you don't need to complete the quest now.
Clike Here to Continue |confirm |goto Un'Goro Crater 56.71,9.55 |q 4501
stickystop "Collect_Webbed_Pterrordax_Scales"
step
Kill Tar enemies around this area
collect 12 Super Sticky Tar##11834 |q 4504/1 |goto Un'Goro Crater 59.96,30.56
You can find more around: |notinsticky
[59.75,24.49]
[63.54,23.41]
stickystart "Collect_UnGoro_Thunderer_Pelts"
stickystart "Collect_UnGoro_Stomper_Pelts"
step
kill Un'Goro Gorilla##6514+
|tip Inside and outside the cave.
|tip The gorillas share spawn points.
|tip They will call for help at low health, which will cause nearby gorillas to come to their aid.	|only if hardcore
|tip If you can't find any more of these, kill the other types of gorillas to get them to spawn.
collect 2 Un'Goro Gorilla Pelt##11478 |q 4289/1 |goto Un'Goro Crater 64.02,16.32
step
label "Collect_UnGoro_Stomper_Pelts"
kill Un'Goro Stomper##6513+
|tip Inside and outside the cave. |notinsticky
|tip The gorillas share spawn points. |notinsticky
|tip Watch for patrols and respawns while in the area.	|only if hardcore |notinsticky
|tip If you can't find any more of these, kill the other types of gorillas to get them to spawn. |notinsticky
collect 2 Un'Goro Stomper Pelt##11479 |q 4289/2 |goto Un'Goro Crater 64.02,16.32
step
label "Collect_UnGoro_Thunderer_Pelts"
kill Un'Goro Thunderer##6516+
|tip Inside and outside the cave. |notinsticky
|tip The gorillas share spawn points. |notinsticky
|tip Be mindful of your surroundings while fighting the Gorillas. |only if hardcore |notinsticky
|tip They can call for help, which will aggro gorillas that are a decent bit away from you. |only if hardcore |notinsticky
|tip If you can't find any more of these, kill the other types of gorillas to get them to spawn. |notinsticky
collect 2 Un'Goro Thunderer Pelt##11480 |q 4289/3 |goto Un'Goro Crater 64.02,16.32
step
Enter the cave |goto Un'Goro Crater 63.88,16.44 < 15 |walk |only if not _G.IsIndoors()
Follow the path inside the cave |goto Un'Goro Crater 65.87,16.75 < 10 |walk
talk A-Me 01##9623
|tip Inside the cave.
|tip She gives an escort quest.
|tip If she's not here, someone may be escorting her.
|tip Wait until she respawns.
|tip If you have to wait, clear enemies between this spot and the cave entrance while waiting. |only if hardcore
turnin Chasing A-Me 01##4243 |goto Un'Goro Crater 67.65,16.76
accept Chasing A-Me 01##4244 |goto Un'Goro Crater 67.65,16.76 |only if (itemcount(10561) > 0) or (haveq(4244) or completedq(4244))
step
_NOTE:_
Grind to Catch Up XP
|tip You don't have the Mithril Casing item, so you're unable to complete 2 quests from A-Me 01.
|tip Grind 12,000 xp on the apes inside and outside this cave to make up for the lost xp.
Click Here to Continue After Grinding |confirm |q 4491 |future
|only if (itemcount(10561) == 0) and (completedq(4243) and not (haveq(4244) or completedq(4244)))
step
talk A-Me 01##9623
|tip Inside the cave.
|tip This is an escort quest.
|tip If she's not here, someone may be escorting her.
|tip Wait until she respawns.
|tip If you are waiting, clear enemies between this spot and the cave entrance while waiting.	|only if hardcore
turnin Chasing A-Me 01##4244 |goto Un'Goro Crater 67.65,16.76
|tip If you don't have the Mithril Casing to complete this quest, abandon the quest and grind 12,000 xp on the apes.  |only if (itemcount(10561) == 0) and not completedq(4244)
|tip This will make up for skipping this quest, and the escort quest followup. |only if (itemcount(10561) == 0) and not completedq(4244)
accept Chasing A-Me 01##4245 |goto Un'Goro Crater 67.65,16.76 |noautoaccept
|only if haveq(4244) or completedq(4244)
step
Watch the dialogue
|tip Follow A-Me 01 and protect her as she walks.
|tip She eventually walks to this location.
Protect A-Me 01 Until You Reach Karna Remtravel |q 4245/1 |goto Un'Goro Crater 46.32,13.68
|only if haveq(4245) or completedq(4245)
step
talk Karna Remtravel##9618
turnin Chasing A-Me 01##4245 |goto Un'Goro Crater 46.38,13.45
|only if haveq(4245) or completedq(4245)
step
Enter the cave |goto Un'Goro Crater 43.47,6.79 < 15 |walk
talk J.D. Collie##9117
|tip Inside the cave.
turnin The Northern Pylon##4285 |goto Un'Goro Crater 41.92,2.70
accept The Eastern Pylon##4287 |goto Un'Goro Crater 41.92,2.70
accept The Western Pylon##4288 |goto Un'Goro Crater 41.92,2.70
stickystart "Collect_Dinosaur_Bones"
stickystart "Collect_Webbed_Diemetradon_Scales"
step
Leave the cave |goto Un'Goro Crater 43.47,6.79 < 15 |walk |only if subzone("Marshal's Refuge") and _G.IsIndoors()
click Crate of Foodstuffs##249
collect Crate of Foodstuffs##11113 |q 3881/1 |goto Un'Goro Crater 68.51,36.54
step
Follow the path up |goto Un'Goro Crater 76.66,48.69 < 20 |only if walking
click Eastern Crystal Pylon##164957
Choose _"I want to examine this pylon."_
Discover and Examine the Eastern Crystal Pylon |q 4287/1 |goto Un'Goro Crater 77.24,49.97
step
use Torwa's Pouch##11568
collect Preserved Threshadon Meat##11569 |q 4292
collect Preserved Pheromone Mixture##11570 |q 4292
step
use the Preserved Threshadon Meat##11569
|tip Use this first.
use the Preserved Pheromone Mixture##11570
|tip Use this second.
kill Lar'korwi##9684
|tip Be sure to heal up before engaging.
|tip He's level 56, but you should be able to kill him at this level.
|tip If you have trouble, try to find someone to help you.
|tip You can do this quest when we return to Un'Goro later if you're worried |only if hardcore
collect Lar'korwi's Head##11510 |q 4292/1 |goto Un'Goro Crater 79.92,49.90
step
talk Torwa Pathfinder##9619
turnin The Apes of Un'Goro##4289 |goto Un'Goro Crater 71.64,75.97
turnin The Bait for Lar'korwi##4292 |goto Un'Goro Crater 71.63,75.96
accept The Mighty U'cha##4301 |goto Un'Goro Crater 71.64,75.97
stickystart "Collect_Webbed_Pterrordax_Scales"
step
Follow the path up |goto Un'Goro Crater 58.01,85.25 < 20 |only if walking
kill 10 Pterrordax##9166 |q 4501/1 |goto Un'Goro Crater 56.23,90.09
You can find more: |notinsticky
Up the path that starts at [51.26,86.64]
Up the path that starts at [45.88,86.65]
stickystop "Collect_Dinosaur_Bones"
stickystop "Collect_Webbed_Pterrordax_Scales"
stickystart "Collect_Gorishi_Scent_Gland"
step
Enter the cave |goto Un'Goro Crater 49.95,81.70 < 10 |walk
Follow the path down |goto Un'Goro Crater 49.48,83.08 < 7 |walk
use the Unused Scraping Vial##11132
|tip Inside the cave.
|tip This cave is dangerous. |only if hardcore
|tip Be mindful of patrolling enemies while you travel through. |only if hardcore
collect Hive Wall Sample##11131 |q 3883/1 |goto Un'Goro Crater 48.74,85.21
step
Leave the cave |goto Un'Goro Crater 49.94,81.65 < 10 |c |q 4496
|only if subzone("The Slithering Scar") and _G.IsIndoors()
step
label "Collect_Gorishi_Scent_Gland"
Kill Gorishi enemies around this area
|tip You can find more inside the insect cave in the ground nearby. |only if not hardcore
|tip There are more inside the cave, but it is safer outside. |only if hardcore
collect Gorishi Scent Gland##11837 |q 4496/1 |goto Un'Goro Crater 50.66,77.01
step
Leave the cave |goto Un'Goro Crater 49.94,81.65 < 10 |only if subzone("The Slithering Scar") and _G.IsIndoors()
click Research Equipment##161521
collect Research Equipment##11112 |q 3881/2 |goto Un'Goro Crater 38.47,66.11
stickystart "Collect_Dinosaur_Bones"
stickystart "Kill_Frenzied_Pterrordax"
step
talk Krakle##10302
accept Finding the Source##974 |goto Un'Goro Crater 30.93,50.43
stickystart "Collect_Webbed_Pterrordax_Scales"
step
Follow the path up |goto Un'Goro Crater 24.20,61.28 < 20 |only if walking
click Western Crystal Pylon##164956
Choose _"I want to examine this pylon."_
Discover and Examine the Western Crystal Pylon |q 4288/1 |goto Un'Goro Crater 23.79,59.19
step
label "Kill_Frenzied_Pterrordax"
kill 15 Frenzied Pterrordax##9167 |q 4501/2 |goto Un'Goro Crater 21.75,59.39
You can find more around: |notinsticky
[23.26,49.89]
[22.81,41.53]
[23.36,41.24]
[39.05,47.06]
[28.28,33.06]
[34.49,37.63]
[31.25,44.33]
step
label "Collect_Webbed_Pterrordax_Scales"
Kill Pterrordax enemies around this area
|tip They look like pterodactyls.
collect 8 Webbed Pterrordax Scale##11831 |q 4503/2 |goto Un'Goro Crater 24.15,38.86
You can find more around: |notinsticky
[39.05,47.06]
[28.28,33.06]
[34.49,37.63]
[31.25,44.33]
step
label "Collect_Webbed_Diemetradon_Scales"
Kill Diemetradon enemies around this area
|tip Be careful, Elder Dimetradon can kick. |only if Paladin or Mage or Priest or Warlock
collect 8 Webbed Diemetradon Scale##11830 |q 4503/1 |goto Un'Goro Crater 59.18,53.99
You can find more around: |notinsticky
[56.74,63.47]
[49.24,61.78]
[50.79,67.25]
[45.26,68.91]
[41.52,56.95]
step
label "Collect_Dinosaur_Bones"
Kill Diemetradon enemies around this area
collect 8 Dinosaur Bone##11114 |q 3882/1 |goto Un'Goro Crater 59.18,53.99
These can be looted from bones on the ground around: |notinsticky
[32.70, 73.50]
[31.50, 68.90]
step
label "Collect_UnGoro_Soil"
click Un'Goro Dirt Pile##157936+
|tip They look like piles of dark brown dirt on the ground around this area.
|tip You can find them all over the entire zone.
Kill enemies around this area
|tip Any enemy in Un'Goro Crater can drop the quest item.
collect 25 Un'Goro Soil##11018 |q 3764 |future
|tip Be careful not to accidentally sell these to a vendor.
step
talk Shizzle##9998
turnin Shizzle's Flyer##4503 |goto Un'Goro Crater 44.23,11.59
step
talk Spraggle Frock##9997
turnin Beware of Pterrordax##4501 |goto Un'Goro Crater 43.62,8.50
accept Lost!##4492 |goto Un'Goro Crater 43.62,8.50
step
talk Spark Nilminer##9272
turnin Roll the Bones##3882 |goto Un'Goro Crater 43.50,7.43
step
talk Hol'anyee Marshal##9271
turnin Alien Ecology##3883 |goto Un'Goro Crater 43.89,7.24
step
talk Williden Marshal##9270
turnin Expedition Salvation##3881 |goto Un'Goro Crater 43.95,7.14
step
Enter the cave |goto Un'Goro Crater 43.47,6.79 < 15 |walk
talk J.D. Collie##9117
|tip Inside the cave.
turnin The Eastern Pylon##4287 |goto Un'Goro Crater 41.92,2.70
turnin The Western Pylon##4288 |goto Un'Goro Crater 41.92,2.70
accept Making Sense of It##4321 |goto Un'Goro Crater 41.92,2.70
step
talk J.D. Collie##9117
|tip Inside the cave.
turnin Making Sense of It##4321 |goto Un'Goro Crater 41.92,2.70
step
_Destroy This Item:_
|tip It is no longer needed.
trash Crystal Pylon User's Manual##11482 |goto Un'Goro Crater 43.47,6.79
stickystart "Collect_UnGoro_Ash"
step
Leave the cave |goto Un'Goro Crater 43.47,6.79 < 15 |walk |only if subzone("Marshal's Refuge") and _G.IsIndoors()
Follow the path up |goto Un'Goro Crater 52.84,42.05 < 20 |only if walking
Follow the path up |goto Un'Goro Crater 52.33,45.52 < 10 |only if walking
Continue up the path |goto Un'Goro Crater 51.18,47.35 < 10 |only if walking
use Krakle's Thermometer##12472
|tip At the top of the mountain.
Find the Hottest Area of Fire Plume Ridge |q 974/1 |goto Un'Goro Crater 49.70,45.74
step
label "Collect_UnGoro_Ash"
Kill enemies around this area
|tip They look like fire elementals on and around this volcano mountain.
|tip Avoid the elite enemy in the cave at the top of the mountain.
collect 9 Un'Goro Ash##11829 |q 4502/1 |goto Un'Goro Crater 50.98,47.18
step
Enter the cave |goto Un'Goro Crater 52.44,51.07 < 15 |walk
talk Ringo##9999
|tip Inside the cave.
|tip This is an escort quest.
|tip If he's not here, someone may be escorting him.
|tip Wait until he respawns.
turnin Lost!##4492 |goto Un'Goro Crater 51.90,49.85
accept A Little Help From My Friends##4491 |goto Un'Goro Crater 51.90,49.85 |noautoaccept
step
Leave the cave |goto Un'Goro Crater 52.50,51.16 < 15 |walk
Follow the path down |goto Un'Goro Crater 54.19,50.77 < 15 |only if walking
Follow the path |goto Un'Goro Crater 56.72,43.18 < 50 |only if walking
Follow the path up |goto Un'Goro Crater 46.04,13.45 < 20 |only if walking
Watch the dialogue
|tip Ringo will follow you, protect him as you walk.
|tip He will faint multiple times as he walks, so make sure he is with you at all times.
|tip You will see a message in your chat when he faints.
use Spraggle's Canteen##11804
|tip Use it on Ringo to revive him when he faints.
Escort Ringo to Spraggle Frock at Marshal's Refuge |q 4491/1 |goto Un'Goro Crater 43.62,8.51
step
Watch the dialogue
talk Spraggle Frock##9997
turnin A Little Help From My Friends##4491 |goto Un'Goro Crater 43.62,8.51
step
_Destroy This Item:_
|tip It is no longer needed.
trash Spraggle's Canteen##11804	|goto Un'Goro Crater 63.94,16.39
step
Enter the cave |goto Un'Goro Crater 63.94,16.39 < 15 |walk
Follow the path |goto Un'Goro Crater 65.98,15.65 < 10 |walk
Continue following the path |goto Un'Goro Crater 69.08,17.63 < 10 |walk
Continue following the path |goto Un'Goro Crater 69.41,16.57 < 10 |walk
Continue following the path |goto Un'Goro Crater 68.61,13.57 < 10 |walk
|tip Un'goro Gorilla will call for support when at low health, aggroing nearby allies onto you.	|only if hardcore
|tip Watch for patrols and respawn while in the area.	|only if hardcore
kill U'cha##9622
|tip Upstairs inside the cave.
collect U'cha's Pelt##11476 |q 4301/1 |goto Un'Goro Crater 68.15,12.58
step
Leave the cave |goto Un'Goro Crater 63.88,16.43 < 15 |walk |only if subzone("Fungal Rock") and _G.IsIndoors()
talk Torwa Pathfinder##9619
turnin The Mighty U'cha##4301 |goto Un'Goro Crater 71.63,75.96
step
talk Krakle##10302
turnin Finding the Source##974 |goto Un'Goro Crater 30.93,50.44
accept The New Springs##980 |goto Un'Goro Crater 30.93,50.44
step
Kill enemies around this area
|tip Getting this far into level 54 will allow you to reach level 55 when turning in quests soon.
|tip You should already be pretty close to reaching level 55.
ding 54,163500 |goto Un'Goro Crater 46.34,17.42
step
talk Tran'rek##7876
turnin Super Sticky##4504 |goto Tanaris 51.57,26.76
step
talk Alchemist Pestlezugg##5594
|tip Inside the building.
turnin Bungle in the Jungle##4496 |goto Tanaris 50.89,26.96
step
Enter the building |goto Tanaris 52.21,28.57 < 10 |walk
talk Gimblethorn##7799
|tip Inside the building.
collect Eridan's Vial##11682 |goto Tanaris 52.30,28.91 |q 4441
collect 10 Moontouched Feather##12383 |goto Tanaris 52.30,28.91 |q 978
collect Purified Moonwell Water##12906 |goto Tanaris 52.30,28.91 |q 5159
collect 3 Videre Elixir##11243 |goto Tanaris 52.30,28.91 |q 3909
step
Enter the building |goto The Barrens 62.52,38.57 < 10 |walk
talk Liv Rizzlefix##8496
|tip Inside the building.
turnin Volcanic Activity##4502 |goto The Barrens 62.45,38.73
step
talk Erelas Ambersky##7916
|tip Inside the building.
turnin Moontouched Wildkin##978 |goto Teldrassil 55.50,92.04
accept Find Ranshalla##979 |goto Teldrassil 55.50,92.04
step
talk Daryn Lightwind##7907
|tip Upstairs inside the building.
accept Starfall##5250 |goto Teldrassil 55.41,92.23
step
map Darnassus
path	follow strict; loop on; ants curved; dist 20; markers none
path	36.00,41.30		38.50,47.91		40.25,73.62		49.94,80.49
path	54.88,74.47		57.42,82.41		67.68,57.45		62.02,52.75
path	61.79,40.59		43.80,41.10		36.79,14.21		39.17,20.89
path	49.77,18.95		52.37,18.62		54.33,10.03		57.70,7.66
path	65.06,16.66		60.60,22.94		61.80,32.53		61.54,40.48
talk Herald Moonstalker##10878
|tip She looks like a night elf that walks in a large path around Darnassus.
|tip She walks clockwise, so run counter clockwise to find her faster.
accept The New Frontier##1047
step
Enter the building |goto Darnassus 39.04,76.76 < 15 |walk
use Eridan's Vial##11682
|tip Inside the building.
collect Vial of Blessed Water##5646 |q 4441/1 |goto Darnassus 39.51,83.92
step
Leave the building |goto Darnassus 39.04,76.76 < 15 |walk |only if subzone("Temple of the Moon")
Enter the building |goto Darnassus 35.52,10.70 < 10 |walk
talk Arch Druid Fandral Staghelm##3516
|tip He walks around inside the building, at the top.
turnin The New Frontier##1047 |goto Darnassus 34.82,9.25
accept The New Frontier##6761 |goto Darnassus 34.82,9.25
accept Un'Goro Soil##3764 |goto Darnassus 34.82,9.25
step
talk Jenal##9047
|tip On the ground, outside the building.
turnin Un'Goro Soil##3764 |goto Darnassus 31.49,8.23
step
_Destroy or Sell These Items:_
|tip They are no longer needed.
trash Un'Goro Soil##11018 |goto Darnassus 35.52,10.70
step
Enter the building |goto Darnassus 35.52,10.70 < 10 |walk
talk Mathrengyl Bearwalker##4217
|tip Upstairs inside the building, on the middle floor.
turnin The New Frontier##6761 |goto Darnassus 35.38,8.40
accept Rabine Saturna##6762 |goto Darnassus 35.38,8.40
step
talk Arch Druid Fandral Staghelm##3516
|tip He walks around inside the building, at the top.
accept Morrowgrain Research##3781 |goto Darnassus 34.80,9.25
step
talk Mathrengyl Bearwalker##4217
|tip Inside the tower, on the middle level.
turnin Morrowgrain Research##3781 |goto Darnassus 35.37,8.40
step
talk Jocaste##4146 |only if Hunter
talk Syurna##4163 |only if Rogue
talk Sildanair##4089 |only if Warrior
talk Denatharion##4218 |only if Druid
talk Jandria##4091 |only if Priest
trainer Jocaste##4146 |goto Darnassus/0 40.40,8.58 |only if Hunter |q 5159
trainer Sildanair##4089 |goto Darnassus/0 61.78,42.28 |only if Warrior |q 5159
trainer Syurna##4163 |goto Darnassus/0 36.97,21.86 |only if Rogue |q 5159
trainer Denatharion##4218  |goto Darnassus/0 34.74,7.43 |only if Druid |q 5159
trainer Jandria##4091 |goto Darnassus/0 37.91,82.80 |only if Priest |q 5159
|tip In the basement of the tree. |only if Rogue
|tip Train your spells.
step
talk Cyroen##4220
|tip Inside the building, on the bottom floor.
|tip If you can afford it.
|tip Stock up on a couple of Runes of Teleportation to use to travel faster while leveling.
Visit the Vendor |vendor Cyroen##4220 |goto Darnassus 33.85,9.51 |q 5159
|only if Mage
step
talk Auctioneer Golothas##8723
|tip Inside the building.
|tip Buy these items from the auction house or collect them from your bank.
|tip You will turn them in for a lot of experience.
|tip If you have any in your bank, get them out before you buy more.
|tip If you can't get them, it's okay, but you may have to grind a bit later to make up for it.
collect 60 Wool Cloth##2592 |goto Darnassus 56.24,54.04 |q 7792 |future
collect 60 Silk Cloth##4306 |goto Darnassus 56.24,54.04 |q 7798 |future
collect 60 Mageweave Cloth##4338 |goto Darnassus 56.24,54.04 |q 7799 |future
collect 60 Runecloth##14047 |goto Darnassus 56.24,54.04 |q 7800 |future
|only if not selfmade
step
Run up the ramp |goto Darnassus 61.25,23.25 < 10 |only if walking
talk Raedon Duskstriker##14725
accept A Donation of Wool##7792 |goto Darnassus 64.02,23.00 |instant
|only if itemcount(2592) >= 60
step
talk Raedon Duskstriker##14725
accept A Donation of Silk##7798 |goto Darnassus 64.02,23.00 |instant
|only if itemcount(4306) >= 60
step
talk Raedon Duskstriker##14725
accept A Donation of Mageweave##7799 |goto Darnassus 64.02,23.00 |instant
|only if itemcount(4338) >= 60
step
talk Raedon Duskstriker##14725
accept A Donation of Runecloth##7800 |goto Darnassus 64.02,23.00 |instant
|only if itemcount(14047) >= 60
step
talk Kyrai##3561
|tip Upstairs inside the building.
|tip Stock up on poisons.
|tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Kyrai##3561 |goto Darnassus 32.55,19.74 |q 5159
|only if Rogue
step
talk Greta Mosshoof##10922
turnin Cleansed Water Returns to Felwood##5159 |goto Felwood 51.21,82.11
accept Dousing the Flames of Protection##5165 |goto Felwood 51.21,82.11
step
Enter the building |goto Felwood 51.26,81.69 < 10 |walk
talk Eridan Bluewind##9116
|tip Inside the building.
turnin Felbound Ancients##4441 |goto Felwood 51.35,81.51
step
Watch the dialogue
talk Eridan Bluewind##9116
|tip Inside the building.
accept Purified!##4442 |goto Felwood 51.35,81.51
step
talk Eridan Bluewind##9116
|tip Inside the building.
turnin Purified!##4442 |goto Felwood 51.35,81.51
step
_Destroy These Items:_
|tip They are no longer needed.
trash Flute of the Ancients##11445 |goto Felwood 38.40,59.74
stickystart "Collect_Blood_Red_Key"
stickystart "Accept_A_Strange_Red_Key"
stickystart "Arko'narin_escort_start"
step
Follow the road to Jaedenar and follow path |goto Felwood 38.40,59.74 < 30 |only if walking and not subzone("Shadow Hold")
Enter the cave |goto Felwood 35.41,58.69 < 10 |walk |only if not subzone("Shadow Hold")
|tip The Shadow Hold is dangerous. |only if hardcore
|tip Keep an eye out for patrolling enemies as well as enemy casters while inside. |only if hardcore
|tip Clear enemies
click Brazier of Pain##176158
|tip Downstairs inside the cave, on the top level.
|tip Watch for patrols and respawns while in the area.	|only if hardcore
Extinguish the Brazier of Pain |q 5165/1 |goto Felwood 36.27,56.29
step
click Brazier of Hatred##176161
|tip Downstairs inside the cave, on the top level.
|tip Watch for patrols and respawns while in the area.	|only if hardcore
Extinguish the Brazier of Hatred |q 5165/4 |goto Felwood 36.48,55.18
step
label "Collect_Blood_Red_Key"
Kill enemies around this area
|tip All around inside the cave, on both levels.
|tip Once you get this item, you will accept a quest from it that you will turn in on the top level of the cave.
|tip Watch for patrols and respawns while in the area.	|only if hardcore |notinsticky
collect Blood Red Key##13140 |goto Felwood 36.29,55.96 |q 5202 |future
step
label "Accept_A_Strange_Red_Key"
use the Blood Red Key##13140
accept A Strange Red Key##5202
|only if itemcount(13140) > 0
step
label "Arko'narin_escort_start"
talk Captured Arko'narin##11016
|tip Inside a yellow wooden cage.
|tip Downstairs inside the cave, on the top level.
turnin A Strange Red Key##5202 |goto Felwood 36.21,55.50
|only if itemcount(13140) > 0
step
talk Captured Arko'narin##11016
|tip Inside a yellow wooden cage.
|tip This will start an escort quest, follow her and activate braziers as she walks.
accept Rescue From Jaedenar##5203 |goto Felwood 36.21,55.50
step
Run around the hole in the floor and follow the path down |goto Felwood 38.25,54.06 < 10 |c |q 5165
step
click Brazier of Suffering##176160
|tip Downstairs inside the cave, on the bottom level.
|tip Watch for patrols and respawns while in the area.	|only if hardcore
Extinguish the Brazier of Suffering |q 5165/3 |goto Felwood 36.73,53.26
step
click Brazier of Malice
|tip Downstairs inside the cave, on the bottom level.
|tip Watch for patrols and respawns while in the area.	|only if hardcore
|tip The escort quest will have 2 Felguards spawn behind you after clicking this brazier.
|tip Let Arko'narin go first to get aggro.
Extinguish the Brazier of Malice |q 5165/2 |goto Felwood 37.68,52.69
step
Protect Arko'narin out of Shadow Hold |q 5203 |goto Felwood 35.41,58.69
|tip As you exit the cave, you will have to fight an elite.
|tip Let Arko'narin attack him first and build up a substantial threat lead so she can tank for you.
|tip It's okay to just stand still for a moment while they fight to make sure you don't pull aggro.
|tip If you don't feel confident, run away and skip this quest. |only if hardcore
step
Follow the path up |goto Felwood 35.94,56.76 < 10 |walk
Leave the cave |complete not subzone("Shadow Hold") |goto Felwood 35.42,58.81 |q 5165
step
Leave Jaedenar and follow the road north |goto Felwood 38.40,59.74 < 30 |only if walking and subzone("Jaedenar")
Follow the road |goto Felwood 64.18,15.20 < 30 |only if walking
talk Nafien##15395
accept Deadwood of the North##8461 |goto Felwood 64.77,8.13
stickystart "Kill_Deadwood_Avengers"
stickystart "Kill_Deadwood_Shamans"
step
kill 6 Deadwood Den Watcher##7156 |q 8461/1 |goto Felwood 63.08,8.82
|tip They will call for help when at low health so pull them away from other Deadwood enemies.	|only if hardcore
|tip Be careful pulling enemies near buildings.							|only if hardcore
|tip Watch for respawns while in the area.							|only if hardcore
You can find more around: |notinsticky
[60.37,8.40]
[60.18,6.14]
[62.67,12.48]
step
label "Kill_Deadwood_Avengers"
kill 6 Deadwood Avenger##7157 |q 8461/2 |goto Felwood 63.08,8.82
|tip Be careful pulling enemies near buildings.	|only if hardcore |notinsticky
|tip Watch for respawns while in the area.	|only if hardcore |notinsticky
You can find more around: |notinsticky
[60.37,8.40]
[60.18,6.14]
[62.67,12.48]
step
label "Kill_Deadwood_Shamans"
kill 6 Deadwood Shaman##7158 |q 8461/3 |goto Felwood 63.08,8.82
|tip Be careful pulling enemies near buildings.	|only if hardcore |notinsticky
|tip Watch for respawns while in the area.	|only if hardcore |notinsticky
You can find more around: |notinsticky
[60.37,8.40]
[60.18,6.14]
[62.67,12.48]
step
Follow the road |goto Felwood 64.18,15.20 < 30 |only if walking
talk Nafien##15395
|tip You may have Deadwood Headdress Feathers from killing Deadwood enemies nearby.
|tip Turn in any feathers you have with the "Feathers for Nafien" repeatable quest.
turnin Deadwood of the North##8461 |goto Felwood 64.77,8.13
accept Speak to Salfa##8465 |goto Felwood 64.77,8.13
step
talk Nafien##15395
|tip Each turnin is 5 feathers, be sure to turn in all the feathers you farmed.
accept Feathers for Nafien##8467 |goto Felwood 64.77,8.13 |instant
|only if itemcount(21377) >= 5
step
Enter the tunnel to leave Felwood |goto Felwood 65.13,8.01 < 10 |walk |only if not zone("Winterspring")
Leave the tunnel to enter Winterspring |goto Felwood 68.40,5.84 < 10 |walk |only if not zone("Winterspring")
talk Salfa##11556
turnin Speak to Salfa##8465 |goto Winterspring 27.74,34.50
step
talk Donova Snowden##9298
turnin The New Springs##980 |goto Winterspring 31.27,45.16
accept Strange Sources##4842 |goto Winterspring 31.27,45.16
turnin The Videre Elixir##3909 |goto Winterspring 31.27,45.16
accept Meet at the Grave##3912 |goto Winterspring 31.27,45.16
accept Threat of the Winterfall##5082 |goto Winterspring 31.27,45.16
stickystart "Kill_Winterfall_Pathfinders"
stickystart "Kill_Winterfall_Den_Watchers"
stickystart "Collect_Empty_Firewater_Flask"
stickystart "Accept_Winterfall_Firewater"
step
kill 8 Winterfall Totemic##7441 |q 5082/3 |goto Winterspring 30.57,37.17
|tip They share spawn points with the other Winterfall enemies.
|tip Kill the other types also, to get more to spawn.
You can find more around: |notinsticky
[39.46,43.70]
[41.78,43.14]
step
label "Kill_Winterfall_Pathfinders"
kill 8 Winterfall Pathfinder##7442 |q 5082/1 |goto Winterspring 30.57,37.17
|tip They share spawn points with the other Winterfall enemies.	|notinsticky
|tip Kill the other types also, to get more to spawn.		|notinsticky
You can find more around: |notinsticky
[39.46,43.70]
[41.78,43.14]
step
label "Kill_Winterfall_Den_Watchers"
kill 8 Winterfall Den Watcher##7440 |q 5082/2 |goto Winterspring 30.57,37.17
|tip They share spawn points with the other Winterfall enemies. |notinsticky
|tip Kill the other types also, to get more to spawn.		|notinsticky
You can find more around: |notinsticky
[39.46,43.70]
[41.78,43.14]
step
label "Collect_Empty_Firewater_Flask"
Kill Winterfall enemies around this area
collect Empty Firewater Flask##12771 |goto Winterspring 30.57,37.17 |q 5083 |future
You can find more around: |notinsticky
[39.46,43.70]
[41.78,43.14]
step
label "Accept_Winterfall_Firewater"
use the Empty Firewater Flask##12771
accept Winterfall Firewater##5083
|only if itemcount(12771) > 0
step
talk Donova Snowden##9298
turnin Threat of the Winterfall##5082 |goto Winterspring 31.27,45.16
turnin Winterfall Firewater##5083 |goto Winterspring 31.27,45.16
accept Falling to Corruption##5084 |goto Winterspring 31.27,45.16 |only if not hardcore
step
Enter the tunnel to leave Winterspring |goto Winterspring 27.89,34.44 < 10 |walk |only if not zone("Felwood")
Leave the tunnel to enter Felwood |goto Felwood 65.13,8.01 < 10 |walk |only if not zone("Felwood")
click Deadwood Cauldron##176091
|tip Try to kite the enemies near the cauldron away one at a time to fight them alone, until you can kill the rest.
|tip If you have trouble, try to find someone to help you.
turnin Falling to Corruption##5084 |goto Felwood 60.20,5.87
accept Mystery Goo##5085 |goto Felwood 60.20,5.87
step
Follow the road |goto Felwood 64.18,15.20 < 30 |only if walking and not zone("Winterspring")
Enter the tunnel to leave Felwood |goto Felwood 65.13,8.01 < 10 |walk |only if not zone("Winterspring")
Leave the tunnel to enter Winterspring |goto Felwood 68.40,5.84 < 10 |walk |only if not zone("Winterspring")
talk Donova Snowden##9298
turnin Mystery Goo##5085 |goto Winterspring 31.27,45.16
accept Toxic Horrors##5086 |goto Winterspring 31.27,45.16
step
use the Videre Elixir##11243
|tip You will die. |only if not hardcore
|tip It will bring you to 1 hp, make sure no other enemies are nearby that could hit you. |only if hardcore
|tip This quest was updated to no longer kill you on Hardcore servers |only if hardcore
Drink the Videre Elixir |complete isdead |goto Tanaris 54.03,28.73 |q 3912
step
talk Gaeriyan##9299
|tip He looks like a human ghost that walks around this small area.
turnin Meet at the Grave##3912 |goto Tanaris 53.93,23.34 |zombiewalk |only if not hardcore
accept A Grave Situation##3913 |goto Tanaris 53.93,23.34 |zombiewalk |only if not hardcore
turnin Meet at the Grave##3912 |goto Tanaris 53.93,23.34 |only if hardcore
accept A Grave Situation##3913 |goto Tanaris 53.93,23.34 |only if hardcore
step
click A Conspicuous Gravestone
turnin A Grave Situation##3913 |goto Tanaris 53.82,29.06
accept Linken's Sword##3914 |goto Tanaris 53.82,29.06
step
talk Linken##8737
turnin Linken's Sword##3914 |goto Un'Goro Crater 44.66,8.10
accept A Gnome's Assistance##3941 |goto Un'Goro Crater 44.66,8.10
step
Enter the cave |goto Un'Goro Crater 43.47,6.79 < 15 |walk
talk J.D. Collie##9117
|tip Inside the cave.
turnin A Gnome's Assistance##3941 |goto Un'Goro Crater 41.92,2.70
step
Watch the dialogue
talk J.D. Collie##9117
|tip Inside the cave.
accept Linken's Memory##3942 |goto Un'Goro Crater 41.92,2.70
step
Leave the cave |goto Un'Goro Crater 43.47,6.79 < 15 |walk |only if subzone("Marshal's Refuge") and _G.IsIndoors()
talk Greta Mosshoof##10922
turnin Dousing the Flames of Protection##5165 |goto Felwood 51.21,82.11
step
talk Jessir Moonbow##11019
turnin Rescue From Jaedenar##5203 |goto Felwood/0 51.35,82.01
step
Enter the building |goto Felwood 51.26,81.70 < 10 |walk
talk Eridan Bluewind##9116
|tip Inside the building.
turnin Linken's Memory##3942 |goto Felwood 51.35,81.51
accept Silver Heart##4084 |goto Felwood 51.35,81.51
stickystart "Collect_Toxic_Horror_Droplets"
stickystart "Collect_Silvery_Claws"
step
Kill Irontree enemies around this area
|tip They look like walking trees with no leaves.
collect Irontree Heart##11173 |q 4084/2 |goto Felwood 51.57,20.70
step
label "Collect_Toxic_Horror_Droplets"
kill Toxic Horror##7132+
|tip All around this green lake.
collect 3 Toxic Horror Droplet##12822 |q 5086/1 |goto Felwood 49.42,23.51
step
label "Collect_Silvery_Claws"
Kill enemies around this area
|tip Only enemies that look like bears and wolves will drop the quest item.
collect 11 Silvery Claws##11172 |q 4084/1 |goto Felwood 53.31,27.49
You can find more around: |notinsticky
[56.10,22.91]
[57.71,18.14]
[61.26,15.96]
step
Follow the road |goto Felwood 64.18,15.20 < 30 |only if walking and not zone("Winterspring")
Enter the tunnel to leave Felwood |goto Felwood 65.13,8.01 < 10 |walk |only if not zone("Winterspring")
Leave the tunnel to enter Winterspring |goto Felwood 68.40,5.84 < 10 |walk |only if not zone("Winterspring")
talk Donova Snowden##9298
turnin Toxic Horrors##5086 |goto Winterspring 31.27,45.16
accept Winterfall Runners##5087 |goto Winterspring 31.27,45.16
|only if not hardcore
step
kill Winterfall Runner##10916+
|tip They look like a group of 3 white furbolgs that walk back and forth along this road.
|tip Check these locations, and if you don't find them, wait at the location in this step closest to Everlook.
|tip They will eventually walk past this location.
collect Winterfall Crate##12829 |q 5087/1 |goto Winterspring 30.04,42.55
You can also find them around: |notinsticky
[46.96,39.54]
[53.55,33.96]
If you don't want to wait for the patrol, there's also usually one in Felwood around [Felwood 60.23,5.75]
|only if not hardcore
step
Follow the path up |goto Winterspring 53.48,28.64 < 50 |only if walking and not subzone("Starfall Village")
Enter the building |goto Winterspring 51.39,29.82 < 15 |only if walking
talk Wynd Nightchaser##11079
|tip Inside the building.
turnin Starfall##5250 |goto Winterspring 51.97,30.39
accept The Ruins of Kel'Theril##5244 |goto Winterspring 51.97,30.39
step
talk Jaron Stoneshaper##10301
|tip Inside the building.
turnin The Ruins of Kel'Theril##5244 |goto Winterspring 52.14,30.43
accept Troubled Spirits of Kel'Theril##5245 |goto Winterspring 52.14,30.43
accept Enraged Wildkin##4861 |goto Winterspring 52.14,30.43
step
click Highborne Relic Fragment##175892
|tip Two enemies will appear and attack you.
|tip If the Water Invasion is up, be very mindful of Princess Tempestra patrolling the lake. She is an elite water elemental. |only if hardcore
collect Second Relic Fragment##12897 |q 5245/2 |goto Winterspring 50.88,41.71
step
click Highborne Relic Fragment##175892
|tip Two enemies will appear and attack you.
|tip If the Water Invasion is up, be very mindful of Princess Tempestra patrolling the lake. She is an elite water elemental. |only if hardcore
collect Fourth Relic Fragment##12899 |q 5245/4 |goto Winterspring 52.42,41.50
step
click Highborne Relic Fragment##175892
|tip Two enemies will appear and attack you.
|tip If the Water Invasion is up, be very mindful of Princess Tempestra patrolling the lake. She is an elite water elemental. |only if hardcore
collect Third Relic Fragment##12898 |q 5245/3 |goto Winterspring 53.31,43.43
step
click Highborne Relic Fragment##175892
|tip Two enemies will appear and attack you.
|tip If the Water Invasion is up, be very mindful of Princess Tempestra patrolling the lake. She is an elite water elemental. |only if hardcore
collect First Relic Fragment##12896 |q 5245/1 |goto Winterspring 55.14,42.98
step
Kill enemies around this area
|tip You should already be pretty close to reaching level 56.
|tip You are about to have to go to an area with higher level enemies, so being a level higher will help.
|tip Watch for respawns while here.	|only if hardcore
|tip If the Water Invasion is up, be very mindful of Princess Tempestra patrolling the lake. She is an elite water elemental. |only if hardcore
ding 56 |goto Winterspring 50.88,41.71
You can find more around: |notinsticky
[52.42,41.50]
[53.31,43.43]
[55.14,42.98]
step
Enter Everlook |goto Winterspring 60.56,38.20 < 10 |only if walking
talk Umi Rumplesnicker##10305
accept Are We There, Yeti?##3783 |goto Winterspring 60.88,37.62
step
Enter the building |goto Winterspring 61.32,38.72 < 10 |walk
talk Innkeeper Vizzie##11118
|tip Inside the building.
home Everlook |goto Winterspring 61.36,38.83
step
Enter the building |goto Winterspring 61.33,37.35 < 10 |walk
talk Izzy Coppergrab##13917
|tip Inside the building.
|tip Deposit these items into the bank.
bank Irontree Heart##11173 |goto Winterspring 61.45,36.98 |q 4084 |only if not hardcore
bank Silvery Claws##11172 |goto Winterspring 61.45,36.98 |q 4084 |only if not hardcore
|tip You should have 11 of these.
bank Jaron's Pick##12891 |goto Winterspring 61.45,36.98 |q 5245
bank First Relic Fragment##12896 |goto Winterspring 61.45,36.98 |q 5245
bank Second Relic Fragment##12897 |goto Winterspring 61.45,36.98 |q 5245
bank Third Relic Fragment##12898 |goto Winterspring 61.45,36.98 |q 5245
bank Fourth Relic Fragment##12899 |goto Winterspring 61.45,36.98 |q 5245
step
Leave Everlook |goto Winterspring 60.56,38.20 < 10 |only if walking and subzone("Everlook")
Kill Ice Thistle enemies around this area
|tip Watch for patrols and respawns while here.	|only if hardcore
|tip Ice Thistle Yeti can stun, be careful. |only if hardcore
collect 10 Thick Yeti Fur##12366 |q 3783/1 |goto Winterspring 66.79,43.34
You can find more inside the cave at [67.65,41.75]
step
Leave the cave |goto Winterspring 67.65,41.75 < 30 |walk |only if subzone("Ice Thistle Hills") and _G.IsIndoors()
click Damaged Crate##175587
turnin Enraged Wildkin##4861 |goto Winterspring 59.00,59.78
accept Enraged Wildkin##4863 |goto Winterspring 59.00,59.78
step
click Jaron's Wagon##175586
turnin Enraged Wildkin##4863 |goto Winterspring 61.41,60.68
accept Enraged Wildkin##4864 |goto Winterspring 61.41,60.68
step
click Jaron's Supplies##175629
|tip It is a small box beside the wagon.
collect Jaron's Supplies##12525 |q 4864/1 |goto Winterspring 61.39,60.73
step
talk Ranshalla##10300
turnin Find Ranshalla##979 |goto Winterspring 63.07,59.47
accept Guardians of the Altar##4901 |goto Winterspring 63.07,59.47
stickystart "Collect_Blue_Feathered_Amulet"
step
Watch the dialogue
|tip Follow Ranshalla and protect her as she walks.
|tip Let her get attacked first, so she will help you fight.
click Fire of Elune+
|tip They look like brown torch poles in each of the caves she walks into.
|tip Click them to get her to start walking again.
click Altar of Elune
|tip It looks like a stone table, at this location, that she eventually walks to.
Discover the Secret of the Altar of Elune |q 4901/1 |goto Winterspring 64.86,63.69
|tip If you have trouble, try to find someone to help you.
step
label "Collect_Blue_Feathered_Amulet"
Kill Owlbeast enemies around this area |notinsticky
|tip Watch for respawns while here.	|only if hardcore|notinsticky
collect Blue-feathered Amulet##12524 |q 4864/2 |goto Winterspring 65.42,60.38
|tip If you have trouble, try to find someone to help you. |notinsticky
step
Cross the bridge |goto Winterspring 62.42,67.44 < 40 |only if walking
Discover Darkwhisper Gorge |q 4842/1 |goto Winterspring 59.84,74.12
step
talk Gregor Greystone##10431
|tip Inside the building.
accept The Everlook Report##6028 |goto Winterspring 61.35,38.97
accept Duke Nicholas Zverenhoff##6030 |goto Winterspring 61.35,38.97
step
talk Jessica Redpath##11629
|tip Inside the building.
accept Sister Pamela##5601 |goto Winterspring 61.28,38.98
step
Enter the building |goto Winterspring 61.33,37.35 < 10 |walk
talk Izzy Coppergrab##13917
|tip Inside the building.
|tip Collect these items from the bank.
collect Black Dragonflight Molt##10575 |goto Winterspring 61.45,36.98 |q 4022 |future |only if not hardcore
collect 6 Filled Cursed Ooze Jar##11947 |goto Winterspring 61.45,36.98 |q 4512
collect 6 Filled Tainted Ooze Jar##11949 |goto Winterspring 61.45,36.98 |q 4512
collect Drawing Kit##10445 |goto Winterspring 61.45,36.98 |q 3461
step
talk Izzy Coppergrab##13917
|tip Inside the building.
|tip Deposit these items into the bank.
bank Studies in Spirit Speaking##15790 |goto Winterspring 61.45,36.98 |q 6030
step
talk Umi Rumplesnicker##10305
turnin Are We There, Yeti?##3783 |goto Winterspring 60.88,37.62
step
Leave Everlook |goto Winterspring 60.56,38.20 < 10 |only if walking and subzone("Everlook")
Follow the path up |goto Winterspring 53.48,28.64 < 50 |only if walking and not subzone("Starfall Village")
Enter the building |goto Winterspring 51.39,29.82 < 15 |only if walking
talk Jaron Stoneshaper##10301
|tip Inside the building.
turnin Enraged Wildkin##4864 |goto Winterspring 52.14,30.43
step
talk Natheril Raincaller##2084
|tip Inside the building.
|tip Buy enough ammo to fill your ammo bag, plus 10-12 extra stacks.
|tip You will be questing a while.
Visit the Vendor |vendor Natheril Raincaller##2084 |goto Winterspring 51.45,30.83 |q 4842
|only if Hunter
step
talk Donova Snowden##9298
turnin Strange Sources##4842 |goto Winterspring 31.27,45.16
turnin Winterfall Runners##5087 |goto Winterspring 31.27,45.16 |only if not hardcore
step
talk Erelas Ambersky##7916
|tip Inside the building.
turnin Guardians of the Altar##4901 |goto Teldrassil 55.50,92.05
accept Wildkin of Elune##4902 |goto Teldrassil 55.50,92.05
step
Enter the building |goto Darnassus 35.52,10.70 < 10 |walk
talk Arch Druid Fandral Staghelm##3516
|tip He walks around inside the building, at the top.
turnin Wildkin of Elune##4902 |goto Darnassus 34.82,9.25
step
talk Kyrai##3561
|tip Upstairs inside the building.
|tip Stock up on poisons.
|tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Kyrai##3561 |goto Darnassus 32.55,19.74 |q 6028
|only if Rogue
step
talk Jennea Cannon##5497 |only if Mage
talk Einris Brightspear##5515 |only if Hunter
talk Ursula Deline##5495 |only if Warlock
talk Wu Shen##5479 |only if Warrior
talk Osborne the Night Man##918 |only if Rogue
talk Sheldras Moontree##5504 |only if Druid
talk Brother Benjamin##5484 |only if Priest
talk Arthur the Faithful##5491 |only if Paladin
trainer Jennea Cannon##5497 |goto Stormwind City/0 38.62,79.35 |only if Mage |q 6028
trainer Einris Brightspear##5515  |goto Stormwind City/0 61.66,15.30 |only if Hunter |q 6028
trainer Ursula Deline##5495 |goto Stormwind City/0 26.13,77.20 |only if Warlock |q 6028
trainer Wu Shen##5479 |goto Stormwind City/0 78.72,45.77 |only if Warrior |q 6028
trainer Osborne the Night Man##918 |goto Stormwind City/0 74.54,52.80 |only if Rogue |q 6028
trainer Sheldras Moontree##5504 |goto Stormwind City/0 20.92,55.52 |only if Druid |q 6028
trainer Brother Benjamin##5484 |goto Stormwind City/0 41.64,28.98 |only if Priest |q 6028
trainer Arthur the Faithful##5491 |goto Stormwind City/0 38.65,32.80 |only if Paladin |q 6028
|tip Inside the tower. |only if Mage
|tip Inside the building. |only if Hunter or Warrior or Priest or Paladin
|tip He patrols inside. |only if Priest
|tip In the basement. |only if Warlock
|tip Train your spells.
step
talk High Priestess MacDonnell##11053
accept Target: Felstone Field##5216 |goto Western Plaguelands 42.97,84.50
step
talk Argent Officer Pureheart##10840
turnin The Everlook Report##6028 |goto Western Plaguelands 42.97,83.55
step
kill Cauldron Lord Bilemaw##11075
collect Felstone Field Cauldron Key##13194 |q 5216/1 |goto Western Plaguelands 37.03,57.11
step
click Scourge Cauldron##176392
turnin Target: Felstone Field##5216 |goto Western Plaguelands 37.19,56.87
accept Return to Chillwind Camp##5217 |goto Western Plaguelands 37.19,56.87
step
Enter the building |goto Western Plaguelands 38.04,54.61 < 10 |walk
talk Janice Felstone##10778
|tip Upstairs inside the building.
accept Better Late Than Never##5021 |goto Western Plaguelands 38.40,54.05
step
Enter the building |goto Western Plaguelands 38.52,55.33 < 10 |walk
click Janice's Parcel##175894
|tip Inside the building.
turnin Better Late Than Never##5021 |goto Western Plaguelands 38.73,55.24
accept Better Late Than Never##5022 |goto Western Plaguelands 38.73,55.24
step
talk High Priestess MacDonnell##11053
turnin Return to Chillwind Camp##5217 |goto Western Plaguelands 42.97,84.50
step
talk Laris Geardawdle##9616
|tip Inside the building.
turnin A Little Slime Goes a Long Way##4512 |goto Ironforge 75.77,23.37
step
Run up the stairs and enter the building |goto Ironforge 32.00,5.50 < 7 |walk
talk Tymor##8507
|tip Inside the building.
turnin Return to Tymor##3461 |goto Ironforge 30.97,4.82
step
Enter the building |goto Ironforge 20.65,53.22 < 7 |walk
talk Innkeeper Firebrew##5111
|tip Inside the building.
home Ironforge |goto Ironforge 18.16,51.46
step
Enter the building |goto Ironforge 34.08,62.40 < 10 |walk
talk Bailey Stonemantle##2461
|tip Inside the building.
|tip Deposit these items into the bank.
bank Janice's Parcel##12724 |goto Ironforge 35.92,60.14 |q 5022
step
Leave the bank |goto Ironforge 34.29,62.11 < 10 |walk |only if subzone("Vault of Ironforge")
Enter the High Seat |goto Ironforge 44.57,49.50 < 10 |walk |only if not subzone("The High Seat")
talk Royal Historian Archesonus##8879
|tip Inside the building.
accept The Smoldering Ruins of Thaurissan##3702 |goto Ironforge 38.37,55.31
step
talk Royal Historian Archesonus##8879
|tip Inside the building.
Select _"I am ready, Historian Archesonus."_
Listen to the Story of Thaurissan |q 3702/1 |goto Ironforge 38.37,55.31
step
talk Royal Historian Archesonus##8879
|tip Inside the building.
turnin The Smoldering Ruins of Thaurissan##3702 |goto Ironforge 38.37,55.31
accept The Smoldering Ruins of Thaurissan##3701 |goto Ironforge 38.37,55.31
step
talk Tynnus Venomsprout##5169
|tip Stock up on poisons.
|tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Tynnus Venomsprout##5169 |goto Ironforge 52.94,13.66 |q 3823 |future
|only if Rogue
step
Follow the path up into Morgan's Vigil |goto Burning Steppes 82.85,63.33 < 20 |only if walking
talk Borgus Stoutarm##2299
fpath Morgan's Vigil |goto Burning Steppes 84.33,68.33
step
talk Oralius##9177
accept Extinguish the Firegut##3823 |goto Burning Steppes 84.56,68.68
accept FIFTY! YEP!##4283 |goto Burning Steppes 84.56,68.68
step
_NOTE:_
Incoming Important Quest
|tip The quest "Dragonkin Menace" is part of a huge chain of quests, but requires that you kill elite enemies.
|tip Skipping the quest will result in needing to grind 20,720 xp.
|tip Try to find help to do this quest, it is HIGHLY recommended.
Click Here to Continue |confirm |q 4182 |future
|only if hardcore
step
talk Helendis Riverhorn##9562
accept Dragonkin Menace##4182 |goto Burning Steppes 85.82,68.94
|tip We are accepting this quest now so you get credit for killing Whelps. |only if hardcore
|tip Skip this if you never intend to find help doing this elite quest. |only if hardcore
stickystart "Kill_Firegut_Brutes"
stickystart "Kill_Firegut_Ogre_Mages"
step
kill 7 Firegut Ogre##7033 |q 3823/2 |goto Burning Steppes 75.39,38.44
|tip You can find more all around on this mountain, and in the caves on the mountain.
|tip Go out of your way to kill Firegut Ogres, they are more rare than the other types.
|tip Watch for patrols and respawns while in the area.	|only if hardcore
step
label "Kill_Firegut_Brutes"
kill 7 Firegut Brute##7035 |q 3823/3 |goto Burning Steppes 75.39,38.44
|tip You can find more all around on this mountain, and in the caves on the mountain. |notinsticky
|tip Watch for patrols and respawns while in the area.	|only if hardcore |notinsticky
step
label "Kill_Firegut_Ogre_Mages"
kill 15 Firegut Ogre Mage##7034 |q 3823/1 |goto Burning Steppes 75.39,38.44
|tip You can find more all around on this mountain, and in the caves on the mountain. |notinsticky
|tip Watch for patrols and respawns while in the area.	|only if hardcore |notinsticky
step
Follow the path up into Morgan's Vigil |goto Burning Steppes 82.85,63.33 < 20 |only if walking
talk Oralius##9177
turnin Extinguish the Firegut##3823 |goto Burning Steppes 84.56,68.68
accept Gor'tesh the Brute Lord##3824 |goto Burning Steppes 84.56,68.68
step
Follow the path up |goto Burning Steppes 63.93,29.93 < 20 |only if walking
talk Tinkee Steamboil##10267
accept Broodling Essence##4726 |goto Burning Steppes 65.24,24.00
step
talk Maxwort Uberglint##9536
accept Tablet of the Seven##4296 |goto Burning Steppes 65.16,23.92
step
Enter the cave |goto Burning Steppes 65.52,23.08 < 15 |walk
talk Yuka Screwspigot##9544
|tip Inside the cave.
turnin Yuka Screwspigot##4324 |goto Burning Steppes 66.06,21.95
stickystart "Kill_Black_Drake"
stickystart "Kill_Black_Wyrmkins"
stickystart "Kill_Black_Dragonspawns"
stickystart "Kill_Black_Broodlings"
step
use the Draco-Incarcinatrix 900##12284
|tip Use it on Broodling enemies around this area.
|tip They look like small flying dragons.
|tip They share spawn points with the scorpids and wolves, so kill those also, if you can't find any.
|tip Use the Draco-Incarcinatrix before pulling the whelp, or when it is casting fireball.
Kill Broodling enemies around this area
click Broodling Essence##175264+
|tip They look like red floating crystals that appear above their corpses after you kill them.
collect 8 Broodling Essence##12283 |q 4726/1 |goto Burning Steppes 72.83,28.41
|tip Be careful, avoid the elite enemies around the area. |only if hardcore
You can find more around: |notinsticky
[80.05,27.94]
[87.34,32.01]
[91.96,35.64]
step
Enter the cave |goto Burning Steppes 94.11,31.92 < 15 |walk
talk Cyrus Therepentous##9459
|tip Inside the cave.
accept A Taste of Flame##4022 |goto Burning Steppes 95.06,31.57
|only if not hardcore
step
talk Cyrus Therepentous##9459
|tip Inside the cave.
Select _"I do not posess proof any proof, Cyrus."_
kill Frenzied Black Drake##9461
|tip This dragon is a 54 elite and will immediately attack you.
|tip You may need help with this.
|tip The molt item is not group loot, so only one person can loot it.
collect Black Dragonflight Molt##10575 |q 4022/1 |goto Burning Steppes 95.06,31.57
|only if not hardcore
step
talk Cyrus Therepentous##9459
|tip Inside the cave.
Select _"I present you with proof of my deeds, Cyrus."_
Present the Proof |q 4022/2 |goto Burning Steppes 95.06,31.57
|only if not hardcore
step
talk Cyrus Therepentous##9459
|tip Inside the cave.
turnin A Taste of Flame##4022 |goto Burning Steppes 95.06,31.57
|only if not hardcore
step
label "Kill_Black_Drake"
kill Black Drake##7044 |q 4182/3 |goto Burning Steppes 86.33,30.69
|tip SKIP THIS STEP IF YOU WERE UNABLE TO FIND HELP |only if hardcore
|tip They look like large red dragons flying low to the ground around this area.
|tip If you have trouble, try to find someone to help you. |notinsticky
|tip It's important to get this quest completed. |notinsticky
Also check around: |notinsticky
[89.89,37.22]
[89.50,56.92]
[81.84,58.36]
step
label "Kill_Black_Wyrmkins"
kill 4 Black Wyrmkin##7041 |q 4182/4 |goto Burning Steppes 84.25,27.76
|tip SKIP THIS STEP IF YOU WERE UNABLE TO FIND HELP |only if hardcore
|tip If you have trouble, try to find someone to help you. |notinsticky
|tip It's important to get this quest completed. |notinsticky
You can find more around: |notinsticky
[88.83,39.34]
[91.82,54.43]
step
label "Kill_Black_Dragonspawns"
kill 10 Black Dragonspawn##7040 |q 4182/2 |goto Burning Steppes 84.25,27.76
|tip SKIP THIS STEP IF YOU WERE UNABLE TO FIND HELP |only if hardcore
|tip If you have trouble, try to find someone to help you. |notinsticky
|tip It's important to get this quest completed. |notinsticky
You can find more around: |notinsticky
[88.83,39.34]
[91.82,54.43]
step
label "Kill_Black_Broodlings"
kill 15 Black Broodling##7047 |q 4182/1 |goto Burning Steppes 72.83,28.41
|tip SKIP THIS STEP IF YOU WERE UNABLE TO FIND HELP |only if hardcore
|tip Be careful, avoid the elite enemies around the area. |only if hardcore |notinsticky
You can find more around: |notinsticky
[80.05,27.94]
[87.34,32.01]
[91.96,35.64]
[89.92,45.69]
[84.65,61.84]
stickystart "Recover_Information"
step
click Tablet of the Seven##169294
Choose _"Transcribe the tablet."_
collect Tablet Transcript##11470 |q 4296/1 |goto Burning Steppes 54.09,40.73
step
label "Recover_Information"
click Thaurissan Relic##153556+
|tip They look like cylindrical grey stones sitting upright on the ground around this area.
Recover #12# Information |q 3701/1 |goto Burning Steppes 68.42,37.33
You can find more around: |notinsticky
[66.04,44.05]
[62.21,40.68]
[58.93,42.59]
[57.80,37.02]
[52.89,35.96]
stickystart "Collect_Blackrock_Medallions"
step
kill Gor'tesh##9176
|tip He walks around this area, in and out of this building.
|tip Be careful.  He hits hard and has a guard that may pull with him.
|tip He hurts VERY hard and does a stun. You likely want to use a health potion and do not be greedy with it incase he stuns you when you're low. |only if hardcore
|tip Skip this step if you're not comfortable. |only if hardcore
|tip Watch for patrols and respawns while in the area.		|only if hardcore
collect Gor'tesh's Lopped Off Head##11080 |q 3824/1 |goto Burning Steppes 39.26,55.36
step
label "Collect_Blackrock_Medallions"
Kill Blackrock enemies around this area
|tip They look like orcs and wolves.
|tip You can find more inside the buildings around this area.
|tip Watch for patrols and respawns while in the area.	|only if hardcore
collect 50 Blackrock Medallion##11467 |q 4283/1 |goto Burning Steppes 39.31,55.42
You can find more around: |notinsticky
[43.90,56.18]
[49.30,55.43]
[52.98,53.87]
step
Follow the path up into Morgan's Vigil |goto Burning Steppes 82.85,63.33 < 20 |only if walking
talk Oralius##9177
turnin Gor'tesh the Brute Lord##3824 |goto Burning Steppes 84.56,68.67
accept Ogre Head On A Stick = Party##3825 |goto Burning Steppes 84.56,68.67
turnin FIFTY! YEP!##4283 |goto Burning Steppes 84.56,68.67
step
_Destroy These Items:_
|tip They are no longer needed.
trash Blackrock Medallion##11467 |goto Burning Steppes 85.82,68.95
step
talk Helendis Riverhorn##9562
turnin Dragonkin Menace##4182 |goto Burning Steppes 85.82,68.95
accept The True Masters##4183 |goto Burning Steppes 85.82,68.95
step
Enter the building |goto Redridge Mountains 29.49,46.11 < 10 |walk
talk Magistrate Solomon##344
|tip Inside the building.
turnin The True Masters##4183 |goto Redridge Mountains 29.99,44.45
accept The True Masters##4184 |goto Redridge Mountains 29.99,44.45
step
Leave the building |goto Redridge Mountains 29.49,46.11 < 10 |walk |only if subzone("Lakeshire Town Hall")
Enter the bank |goto Stormwind City 55.30,68.14 < 10 |walk
talk Olivia Burnside##2455
|tip Inside the building.
|tip Collect these items from the bank.
collect Janice's Parcel##12724 |goto Stormwind City 57.66,72.78 |q 5022
step
Enter the building |goto Stormwind City 47.79,31.24 < 10 |walk
talk Royal Factor Bathrilor##10782
|tip Upstairs inside the building.
turnin Better Late Than Never##5022 |goto Stormwind City 48.47,30.55
accept Good Natured Emma##5048 |goto Stormwind City 48.47,30.55
step
map Stormwind City
path	follow strict;	loop on;	ants curved;	dist 20;	markers none
path	52.46,41.98		48.29,49.03		50.15,51.53		55.04,47.69
path	57.64,47.70		59.73,51.45		57.66,55.16		60.62,60.33
path	57.16,54.48		57.05,54.37		55.65,53.48		52.74,55.15
path	50.88,51.60		49.66,51.59		48.32,48.32
talk Ol' Emma##3520
|tip She looks like an old human woman that walks in a counter-clockwise path around Stormwind City.
|tip This step's path will take you clockwise to help you find her faster.
|tip She sometimes stands upstairs inside the house that this path leads you to.
|tip Keep an eye on your minimap as you walk around, she will show up as a yellow dot.
turnin Good Natured Emma##5048
accept Good Luck Charm##5050
step
Enter Stormwind Keep |goto Stormwind City 69.09,28.71 < 15 |walk
talk Highlord Bolvar Fordragon##1748
|tip Inside the building.
turnin The True Masters##4184 |goto Stormwind City 78.22,17.99			|only if readyq(4184)
accept The True Masters##4185 |goto Stormwind City 78.22,17.99			|only if completedq(4184)
accept The First and the Last##6182 |goto Stormwind City 78.22,17.99
step
talk Lady Katrana Prestor##1749
|tip Inside the building.
Select _"Pardon the intrusion, Lady Prestor, but Highlord Bolvar suggested that I seek your advice."_
Seek Advice from Lady Prestor |q 4185/1 |goto Stormwind City 78.11,17.75
step
talk Highlord Bolvar Fordragon##1748
|tip Inside the building.
|tip He may be bugged if another player has recently completed the Onyxia event.
|tip If so, you can skip this quest but you will need to grind a bit later to make up for skipping a few quests.
turnin The True Masters##4185 |goto Stormwind City 78.22,17.99
accept The True Masters##4186 |goto Stormwind City 78.22,17.99
step
Leave Stormwind Keep |goto Stormwind City 69.01,28.80 < 15 |walk |only if subzone("Stormwind Keep")
Follow the path |goto Stormwind City 74.74,53.71 < 10 |only if walking
Enter the building |goto Stormwind City 77.12,58.01 < 10 |walk
talk Master Mathias Shaw##332
|tip Upstairs inside the building.
turnin The First and the Last##6182 |goto Stormwind City 75.79,59.85
accept Honor the Dead##6183 |goto Stormwind City 75.79,59.85
step
talk Master Mathias Shaw##332
|tip Upstairs inside the building.
turnin Honor the Dead##6183 |goto Stormwind City 75.79,59.85
accept Flint Shadowmore##6184 |goto Stormwind City 75.79,59.85
step
Leave the building |goto Stormwind City 77.12,58.01 < 10 |walk |only if subzone("SI:7")
Follow the path |goto Stormwind City 74.74,53.71 < 10 |only if walking and subzone("SI:7")
Enter the building |goto Redridge Mountains 29.49,46.11 < 10 |walk
talk Magistrate Solomon##344
|tip Inside the building.
turnin The True Masters##4186 |goto Redridge Mountains 29.99,44.45
accept The True Masters##4223 |goto Redridge Mountains 29.99,44.45
step
Leave the building |goto Redridge Mountains 29.49,46.11 < 10 |walk |only if subzone("Lakeshire Town Hall")
talk Marshal Maxwell##9560
turnin The True Masters##4223 |goto Burning Steppes 84.75,69.02
accept The True Masters##4224 |goto Burning Steppes 84.75,69.02
step
Follow the path up |goto Burning Steppes 63.96,29.79 < 20 |only if walking
talk Tinkee Steamboil##10267
turnin Broodling Essence##4726 |goto Burning Steppes 65.23,23.99
accept Felnok Steelspring##4808 |goto Burning Steppes 65.23,23.99
step
talk Maxwort Uberglint##9536
turnin Tablet of the Seven##4296 |goto Burning Steppes 65.15,23.91
step
talk Ragged John##9563
Select _"Official business, John.  I need some information about Marshal Windsor.  Tell me about the last time you saw him."_
Listen to Ragged John's Story |q 4224/1 |goto Burning Steppes 65.01,23.76
step
Kill enemies around this area
|tip You should already be level 57, or very close.					|only if not hardcore
|tip We are grinding here to catch up in XP after skipping a long quest chain.		|only if hardcore
ding 57 |goto Burning Steppes 62.67,40.88
step
Cross the hanging bridge and follow the path up |goto Burning Steppes 76.13,38.04 < 10 |only if walking
click Soft Dirt Mound
|tip On top of the mountain.
Plant Gor'tesh's Head |q 3825/1 |goto Burning Steppes 80.99,46.78
step
Follow the path up |goto Burning Steppes 82.85,63.31 < 20 |only if walking
talk Oralius##9177
turnin Ogre Head On A Stick = Party##3825 |goto Burning Steppes 84.56,68.67
step
talk Marshal Maxwell##9560
turnin The True Masters##4224 |goto Burning Steppes 84.74,69.01
step
Enter the building |goto Ironforge 34.08,62.40 < 10 |walk
talk Bailey Stonemantle##2461
|tip Inside the building.
|tip Collect these items from the bank.
collect Jaron's Pick##12891 |goto Ironforge 35.92,60.14 |q 5245
collect First Relic Fragment##12896 |goto Ironforge 35.92,60.14 |q 5245
collect Second Relic Fragment##12897 |goto Ironforge 35.92,60.14 |q 5245
collect Third Relic Fragment##12898 |goto Ironforge 35.92,60.14 |q 5245
collect Fourth Relic Fragment##12899 |goto Ironforge 35.92,60.14 |q 5245
collect Studies in Spirit Speaking##15790 |goto Ironforge 35.92,60.14 |q 6030
step
talk Bailey Stonemantle##2461
|tip Inside the building.
|tip Deposit these items into the bank.
bank Tinkee's Letter##12438 |goto Ironforge 35.92,60.14 |q 4808
step
Leave the bank |goto Ironforge 34.29,62.11 < 10 |walk |only if subzone("Vault of Ironforge")
Enter the High Seat |goto Ironforge 44.57,49.50 < 10 |walk |only if not subzone("The High Seat")
talk Royal Historian Archesonus##8879
|tip Inside the building.
turnin The Smoldering Ruins of Thaurissan##3701 |goto Ironforge 38.37,55.31
step
Enter the building |goto Ironforge 26.11,72.17 < 15 |walk
talk Auctioneer Redmuse##8720
|tip Inside the building.
|tip Buy these items from the auction house or collect them from your bank.
|tip You will turn them in for a lot of experience.
|tip If you have any in your bank, get them out before you buy more.
|tip If you can't get them, it's okay, but you may have to grind a bit later to make up for it.
collect 60 Wool Cloth##2592 |goto Ironforge 24.16,74.67 |q 7802 |future
collect 60 Silk Cloth##4306 |goto Ironforge 24.16,74.67 |q 7803 |future
collect 60 Mageweave Cloth##4338 |goto Ironforge 24.16,74.67 |q 7804 |future
collect 60 Runecloth##14047 |goto Ironforge 24.16,74.67 |q 7805 |future
|only if not selfmade
step
talk Mistina Steelshield##14723
accept A Donation of Wool##7802 |goto Ironforge 43.22,31.57 |instant
|only if itemcount(2592) >= 60
step
talk Mistina Steelshield##14723
accept A Donation of Silk##7803 |goto Ironforge 43.22,31.57 |instant
|only if itemcount(4306) >= 60
step
talk Mistina Steelshield##14723
accept A Donation of Mageweave##7804 |goto Ironforge 43.22,31.57 |instant
|only if itemcount(4338) >= 60
step
talk Mistina Steelshield##14723
accept A Donation of Runecloth##7805 |goto Ironforge 43.22,31.57 |instant
|only if itemcount(14047) >= 60
step
Enter the building |goto Ironforge 26.11,72.17 < 15 |walk
talk Auctioneer Redmuse##8720
|tip Inside the building.
|tip Buy these items from the auction house or collect them from your bank.
|tip You will turn them in for a lot of experience.
|tip If you have any in your bank, get them out before you buy more.
|tip If you can't get them, it's okay, but you may have to grind a bit later to make up for it.
collect 60 Wool Cloth##2592 |goto Ironforge 24.16,74.67 |q 7807 |future
collect 60 Silk Cloth##4306 |goto Ironforge 24.16,74.67 |q 7808 |future
collect 60 Mageweave Cloth##4338 |goto Ironforge 24.16,74.67 |q 7809 |future
collect 60 Runecloth##14047 |goto Ironforge 24.16,74.67 |q 7811 |future
|only if not selfmade
step
talk Bubulo Acerbus##14724
accept A Donation of Wool##7807 |goto Ironforge 74.09,48.22 |instant
|only if itemcount(2592) >= 60
step
talk Bubulo Acerbus##14724
accept A Donation of Silk##7808 |goto Ironforge 74.09,48.22 |instant
|only if itemcount(4306) >= 60
step
talk Bubulo Acerbus##14724
accept A Donation of Mageweave##7809 |goto Ironforge 74.09,48.22 |instant
|only if itemcount(4338) >= 60
step
talk Bubulo Acerbus##14724
accept A Donation of Runecloth##7811 |goto Ironforge 74.09,48.22 |instant
|only if itemcount(14047) >= 60
step
talk Cenarion Emissary Jademoon##15187
accept Taking Back Silithus##8275 |goto Ironforge 58.54,47.32
step
talk Tynnus Venomsprout##5169
|tip Stock up on poisons.
|tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Tynnus Venomsprout##5169 |goto Ironforge 52.94,13.66 |q 5219 |futre
|only if Rogue
step
Enter the building |goto Hillsbrad Foothills 50.45,58.55 < 10 |walk
talk Innkeeper Anderson##2352
|tip Inside the building.
home Southshore |goto Hillsbrad Foothills 51.17,58.93
step
talk High Priestess MacDonnell##11053
accept Target: Dalson's Tears##5219 |goto Western Plaguelands 42.97,84.50
step
talk Commander Ashlam Valorfist##10838
accept All Along the Watchtowers##5097 |goto Western Plaguelands 42.70,84.03
step
talk Argent Officer Pureheart##10840
accept Argent Dawn Commission##5401 |goto Western Plaguelands 42.97,83.55 |instant
step
Equip the Argent Dawn Commission
|tip Wearing it will allow Minion's Scourgestones to drop from undead enemies in Western and Eastern Plaguelands.
Gain the Argent Dawn Commission Buff |havebuff Argent Dawn Commission##17670 |q 5408 |future
step
talk Flint Shadowmore##12425
turnin Flint Shadowmore##6184 |goto Western Plaguelands 43.61,84.51
accept The Eastern Plagues##6185 |goto Western Plaguelands 43.61,84.51
step
use the Beacon Torch##12815
|tip Use it in front of the tower entrance.
|tip Be careful, there is an elite enemy inside the tower.
|tip Avoid the doorway, making sure the elite inside can't see you.
|tip You can get closer to the tower safely, if the enemy inside can't see you.
|tip Watch for patrols and respawns while in the area.	|only if hardcore
Mark Tower One |q 5097/1 |goto Western Plaguelands 40.13,71.52
step
use the Beacon Torch##12815
|tip Avoid the large group of enemies in the center of town as you travel here.
|tip Use it in front of the tower entrance.
|tip Be careful, there is an elite enemy inside the tower.
|tip Avoid the doorway, making sure the elite inside can't see you.
|tip You can get closer to the tower safely, if the enemy inside can't see you.
|tip Watch for patrols and respawns while in the area.	|only if hardcore
Mark Tower Four |q 5097/4 |goto Western Plaguelands 46.70,71.10
step
Enter the building |goto Western Plaguelands 53.60,64.79 < 10 |walk
talk Mulgris Deepriver##10739
|tip Inside the building.
|tip Watch for respawns while clearing your way to Mulgris.	|only if hardcore
accept The Wildlife Suffers Too##4984 |goto Western Plaguelands 53.72,64.67
step
kill 8 Diseased Wolf##1817 |q 4984/1 |goto Western Plaguelands 42.74,54.83
|tip They share spawn points with Carrion Lurker spiders.
|tip Kill those as well, if you can't find any wolves.
You can find more around: |notinsticky
[45.96,48.00]
[46.92,39.81]
step
Enter the building |goto Western Plaguelands 47.52,50.94 < 10 |walk
click Mrs. Dalson's Diary##175926
|tip Inside the barn.
|tip Wait for the scarlet patrol to move away from the door before entering and exiting the barn!
|tip Skeletal Terrors will fear you while fighting.											|only if hardcore
|tip Blighted Zombies and Rotting Cadavers will give you the Volatile Infection debuff which will deal AOE damage every 15 seconds.	|only if hardcore
accept Mrs. Dalson's Diary##5058 |goto Western Plaguelands 47.79,50.67 |instant
step
kill Wandering Skeleton##10816
|tip It looks like a white skeleton that spawns here and walks around this area around the buildings nearby.
|tip You can wait here until it walks by here, or respawns, or you can search around the buildings.
|tip Skeletal Terrors will fear you while fighting.											|only if hardcore
|tip Blighted Zombies and Rotting Cadavers will give you the Volatile Infection debuff which will deal AOE damage every 15 seconds.	|only if hardcore
collect Dalson Outhouse Key##12738 |goto Western Plaguelands 47.85,49.32 |q 5060 |future
step
click Outhouse##175925
|tip Accept the "Locked Away" quest.
|tip Skeletal Terrors will fear you while fighting.											|only if hardcore
|tip Blighted Zombies and Rotting Cadavers will give you the Volatile Infection debuff which will deal AOE damage every 15 seconds.	|only if hardcore
kill Farmer Dalson##10836
collect Dalson Cabinet Key##12739 |goto Western Plaguelands 48.11,49.71 |q 5060 |future
step
Enter the building |goto Western Plaguelands 47.14,50.19 < 10 |walk
click Locked Cabinet##175924
|tip Upstairs inside the building.
|tip Skeletal Terrors will fear you while fighting.											|only if hardcore
|tip Blighted Zombies and Rotting Cadavers will give you the Volatile Infection debuff which will deal AOE damage every 15 seconds.	|only if hardcore
accept Locked Away##5060 |goto Western Plaguelands 47.37,49.65 |instant
step
kill Cauldron Lord Malvinious##11077
|tip Skeletal Terrors will fear you while fighting.											|only if hardcore
|tip Blighted Zombies and Rotting Cadavers will give you the Volatile Infection debuff which will deal AOE damage every 15 seconds.	|only if hardcore
collect Dalson's Tears Cauldron Key##13195 |q 5219/1 |goto Western Plaguelands 46.18,52.38
step
click Scourge Cauldron##177289
turnin Target: Dalson's Tears##5219 |goto Western Plaguelands 46.18,52.02
accept Return to Chillwind Camp##5220 |goto Western Plaguelands 46.18,52.02
step
Enter the building |goto Western Plaguelands 38.04,54.61 < 10 |walk
talk Janice Felstone##10778
|tip Upstairs inside the building.
|tip Skeletal Sorcerers are ranged attackers that deal heavy damage.	|only if hardcore
turnin Good Luck Charm##5050 |goto Western Plaguelands 38.40,54.05
accept Two Halves Become One##5051 |goto Western Plaguelands 38.40,54.05
step
kill Jabbering Ghoul##10801
|tip It looks like a green ghoul holding a pitchfork.
|tip He can possibly spawn in multiple locations, and may walk around this area.
|tip Skeletal Sorcerers are ranged attackers that deal heavy damage.	|only if hardcore
collect Good Luck Other-Half-Charm##12722 |goto Western Plaguelands 36.84,58.23 |q 5051
step
use the Good Luck Other-Half-Charm##12722
collect Good Luck Charm##12723 |q 5051/1
step
Enter the building |goto Western Plaguelands 38.04,54.61 < 10 |walk
talk Janice Felstone##10778
|tip Upstairs inside the building.
|tip Skeletal Sorcerers are ranged attackers that deal heavy damage.	|only if hardcore
turnin Two Halves Become One##5051 |goto Western Plaguelands 38.40,54.05
step
use the Beacon Torch##12815
|tip Use it in front of the tower entrance.
|tip Be careful, there is an elite enemy inside the tower.
|tip Avoid the doorway, making sure the elite inside can't see you.
|tip You can get closer to the tower safely, if the enemy inside can't see you.
|tip Watch for patrols and respawns while in the area.	|only if hardcore
Mark Tower Three |q 5097/3 |goto Western Plaguelands 44.22,63.37
step
use the Beacon Torch##12815
|tip Use it in front of the tower entrance.
|tip Be careful, there is an elite enemy inside the tower.
|tip Avoid the doorway, making sure the elite inside can't see you.
|tip You can get closer to the tower safely, if the enemy inside can't see you.
|tip Watch for patrols and respawns while in the area.	|only if hardcore
Mark Tower Two |q 5097/2 |goto Western Plaguelands 42.44,66.27
step
talk Commander Ashlam Valorfist##10838
turnin All Along the Watchtowers##5097 |goto Western Plaguelands 42.70,84.03
accept Scholomance##5533 |goto Western Plaguelands 42.70,84.03
step
_Destroy This Item:_
|tip It is no longer needed.
trash Beacon Torch##12815 |goto Western Plaguelands 42.67,83.77
step
talk Alchemist Arbington##11056
turnin Scholomance##5533 |goto Western Plaguelands 42.67,83.77
accept Skeletal Fragments##5537 |goto Western Plaguelands 42.67,83.77
step
talk High Priestess MacDonnell##11053
turnin Return to Chillwind Camp##5220 |goto Western Plaguelands 42.97,84.50
accept Target: Writhing Haunt##5222 |goto Western Plaguelands 42.97,84.50
step
talk Nathaniel Dumah##11616
accept A Plague Upon Thee##5903 |goto Western Plaguelands 43.42,84.84
step
Kill Skeletal enemies around this area
|tip Only enemies that look like skeletons will drop the quest item.
|tip They share spawn points with the ghoul enemies, so kill those too, if you can't find any.
|tip Watch for respawns while here.	|only if hardcore
|tip If you don't want to use your Holy Mightstone in a raid, now is a good time to get good value out of it. |only if Paladin and itemcount(20620) > 0
collect 15 Skeletal Fragments##14619 |q 5537/1 |goto Western Plaguelands 49.56,80.05
You can find more inside and outside the crypt at [54.33,79.90]
step
Leave the crypt |complete not subzone("Crypt") |goto Western Plaguelands 54.32,79.90 |q 5537
step
kill Cauldron Lord Razarch##11076
|tip Watch for stealthed enemies while in the field.						|only if hardcore
|tip Freezing Ghouls may incapacitate you, so fight them with full health when possible.	|only if hardcore
|tip Be VERY careful to never pull two Freezing Ghouls at once, they can CC you to death. Run immediately if you do. |only if hardcore
collect Writhing Haunt Cauldron Key##13197 |q 5222/1 |goto Western Plaguelands 53.02,66.06
step
click Scourge Cauldron##176393
|tip Watch for stealthed enemies while in the field.						|only if hardcore
|tip Freezing Ghouls may incapacitate you, so fight them with full health when possible.	|only if hardcore
|tip Be VERY careful to never pull two Freezing Ghouls at once, they can CC you to death. Run immediately if you do. |only if hardcore
turnin Target: Writhing Haunt##5222 |goto Western Plaguelands 53.02,65.72
accept Return to Chillwind Camp##5223 |goto Western Plaguelands 53.02,65.72
step
Enter the building |goto Western Plaguelands 53.60,64.79 < 10 |walk
talk Mulgris Deepriver##10739
|tip Inside the building.
|tip Watch for stealthed enemies while in the field.						|only if hardcore
|tip Freezing Ghouls may incapacitate you, so fight them with full health when possible.	|only if hardcore
|tip Be VERY careful to never pull two Freezing Ghouls at once, they can CC you to death. Run immediately if you do. |only if hardcore
turnin The Wildlife Suffers Too##4984 |goto Western Plaguelands 53.72,64.67
accept The Wildlife Suffers Too##4985 |goto Western Plaguelands 53.72,64.67
step
kill 8 Diseased Grizzly##1816 |q 4985/1 |goto Western Plaguelands 56.81,63.63
|tip They share spawn points with Plague Lurker spiders.
|tip Kill those as well, if you can't find any bears.
You can find more around: |notinsticky
[58.69,58.24]
[57.20,52.78]
[61.55,52.23]
step
Cross into Eastern Plaguelands and follow the river north |goto Western Plaguelands 69.30,45.04 < 50 |only if walking and zone("Western Plaguelands")
talk Tirion Fordring##1855
|tip He walks around this area.
accept Demon Dogs##5542 |goto Eastern Plaguelands 7.56,43.70
accept Blood Tinged Skies##5543 |goto Eastern Plaguelands 7.56,43.70
accept Carrion Grubbage##5544 |goto Eastern Plaguelands 7.56,43.70
stickystart "Kill_Plaguebats"
stickystart "Kill_Plaguehound_Runts"
stickystart "Collect_Slabs_Of_Carrion_Worm_Meat"
step
click Mangled Human Remains
|tip It looks like a human skeleton on the ground.
|tip Do not get too close to the building.	|only if hardcore
collect SI:7 Insignia (Turyen)##16002 |q 6185/3 |goto Eastern Plaguelands 28.81,74.88
step
Uncover the Blightcaller |q 6185/4 |goto Eastern Plaguelands 27.28,74.96
|tip Be careful to stay out of range of the elite enemies nearby.
step
click Mangled Human Remains
|tip It looks like a human skeleton on the ground.
|tip Be careful to stay out of range of the elite enemies nearby.
collect SI:7 Insignia (Fredo)##16001 |q 6185/2 |goto Eastern Plaguelands 27.28,74.96
step
click Mangled Human Remains
|tip It looks like a human skeleton on the ground.
collect SI:7 Insignia (Rutger)##16003 |q 6185/1 |goto Eastern Plaguelands 28.81,79.85
step
talk Pamela Redpath##10926
|tip She walks around this area inside this crumbled house.
turnin Sister Pamela##5601 |goto Eastern Plaguelands 36.45,90.80
accept Pamela's Doll##5149 |goto Eastern Plaguelands 36.45,90.80
stickystop "Kill_Plaguebats"
stickystop "Kill_Plaguehound_Runts"
stickystop "Collect_Slabs_Of_Carrion_Worm_Meat"
stickystart "Collect_Pamelas_Dolls_Left_Side"
stickystart "Collect_Pamelas_Dolls_Right_Side"
step
click Pamela's Doll's Head##176116
|tip It looks like a brown ball, with two X's for eyes, with flies buzzing around it.
|tip It can be in any of the 3 buildings around this area.
|tip Enemies may spawn after interacting with the doll.	|only if hardcore
collect Pamela's Doll's Head##12886 |goto Eastern Plaguelands 39.07,91.53 |q 5149
step
label "Collect_Pamelas_Dolls_Left_Side"
click Pamela's Doll's Left Side##176142
|tip It looks like a brown half of a doll, with one arm and one leg, with flies buzzing around it.
|tip It can be in any of the 3 buildings around this area.
|tip Enemies may spawn after interacting with the doll.	|only if hardcore
collect Pamela's Doll's Left Side##12887 |goto Eastern Plaguelands 39.07,91.53 |q 5149
step
label "Collect_Pamelas_Dolls_Right_Side"
click Pamela's Doll's Right Side##176143
|tip It looks like a brown half of a doll, with one arm and one leg, with flies buzzing around it.
|tip It can be in any of the 3 buildings around this area.
|tip Enemies may spawn after interacting with the doll.	|only if hardcore
collect Pamela's Doll's Right Side##12888 |goto Eastern Plaguelands 39.07,91.53 |q 5149
step
use Pamela's Doll's Head##12886
collect Pamela's Doll##12885 |q 5149/1
step
talk Pamela Redpath##10926
|tip She walks around this area inside this crumbled house.
turnin Pamela's Doll##5149 |goto Eastern Plaguelands 36.45,90.80
accept Auntie Marlene##5152 |goto Eastern Plaguelands 36.45,90.80
accept Uncle Carlin##5241 |goto Eastern Plaguelands 36.45,90.80
stickystart "Kill_Plaguehound_Runts"
stickystart "Collect_Slabs_Of_Carrion_Worm_Meat"
step
label "Kill_Plaguebats"
kill 30 Plaguebat##8600 |q 5543/1 |goto Eastern Plaguelands 43.24,82.95
You can find more around: |notinsticky
[42.24,69.81]
[35.16,74.32]
[27.42,69.07]
[19.99,68.52]
[18.56,77.87]
[33.76,82.90]
step
label "Kill_Plaguehound_Runts"
kill 20 Plaguehound Runt##8596 |q 5542/1 |goto Eastern Plaguelands 43.24,82.95
You can find more around: |notinsticky
[42.24,69.81]
[27.42,69.07]
[19.99,68.52]
[18.56,77.87]
[33.76,82.90]
step
kill 5 Plaguehound##8597 |q 5542/2 |goto Eastern Plaguelands 70.01,68.38
You can find more around: |notinsticky
[76.41,66.59]
[71.11,56.12]
stickystop "Collect_Slabs_Of_Carrion_Worm_Meat"
step
talk Caretaker Alen##11038
|tip He walks around this area.
accept Zaeldarr the Outcast##6021 |goto Eastern Plaguelands 79.54,63.77
accept The Restless Souls##5281 |goto Eastern Plaguelands 79.54,63.77
step
talk Duke Nicholas Zverenhoff##11039
turnin Duke Nicholas Zverenhoff##6030 |goto Eastern Plaguelands 81.43,59.82
step
talk Carlin Redpath##11063
turnin Uncle Carlin##5241 |goto Eastern Plaguelands 81.52,59.77
accept Defenders of Darrowshire##5211 |goto Eastern Plaguelands 81.52,59.77
step
talk Khaelyn Steelwing##12617
fpath Light's Hope Chapel |goto Eastern Plaguelands 81.63,59.28
stickystart "Kill_Frenzied_Plaguehounds"
stickystart "Collect_Slabs_Of_Carrion_Worm_Meat"
step
talk Aurora Skycaller##10304
turnin Troubled Spirits of Kel'Theril##5245 |goto Eastern Plaguelands 53.51,22.00
stickystart "Darrowshire_Spirits"
step
_Destroy This Item:_
|tip It is no longer needed.
trash Jaron's Pick##12891
step
Kill enemies around this area
|tip You should already be pretty close to reaching level 58.
ding 58 |goto Eastern Plaguelands 66.88,40.62
step
label "Kill_Frenzied_Plaguehounds"
kill 5 Frenzied Plaguehound##8598 |q 5542/3 |goto Eastern Plaguelands 62.63,47.95
|tip When fighting near the road, watch for a group of elite patrols and avoid them.	|only if hardcore
You can find more around: |notinsticky
[51.17,43.24]
[49.69,35.97]
step
click Large Termite Mound##177464+
|tip They look like large brown and white stones cracked open with green goo leaking out of the top of them around this area.
|tip When fighting near the road, watch for a group of elite patrols and avoid them.	|only if hardcore
collect 100 Plagueland Termites##15043 |q 5903/1 |goto Eastern Plaguelands 45.90,34.10
You can find more around: |notinsticky
[42.19,38.20]
[42.84,34.28]
[40.61,31.38]
[36.03,31.81]
[32.08,35.71]
[26.47,37.57]
[25.22,37.89]
[28.46,32.49]
[26.16,29.78]
[23.87,25.24]
[22.45,21.52]
[20.40,27.00]
step
label "Darrowshire_Spirits"
Kill ghouls around this area
|tip Only enemies that look like ghouls will count.
|tip They share spawn points with other undead in the area.
talk Darrowshire Spirit##11064+
|tip They appear after you kill the ghouls.
Free #15# Darrowshire Spirits |q 5211/1 |goto Eastern Plaguelands 66.88,40.62
You can find more around: |notinsticky
[42.19,38.20]
[42.84,34.28]
[40.61,31.38]
[36.03,31.81]
[32.08,35.71]
[26.47,37.57]
[25.22,37.89]
[28.46,32.49]
[26.16,29.78]
[23.87,25.24]
[22.45,21.52]
[20.40,27.00]
step
Enter the building |goto Eastern Plaguelands 14.59,33.47 < 10 |walk
talk Egan##11140
|tip Inside the building.
turnin The Restless Souls##5281 |goto Eastern Plaguelands 14.45,33.74
step
talk Augustus the Touched##12384
|tip Inside the building.
accept Augustus' Receipt Book##6164 |goto Eastern Plaguelands 14.45,33.48
step
Enter the building |goto Eastern Plaguelands 17.56,33.03 < 10 |walk
click Augustus' Receipt Book
|tip Upstairs inside the building.
collect Augustus' Receipt Book##15884 |q 6164/1 |goto Eastern Plaguelands 17.43,31.09
step
Enter the building |goto Eastern Plaguelands 14.59,33.47 < 10 |walk
talk Augustus the Touched##12384
|tip Inside the building.
turnin Augustus' Receipt Book##6164 |goto Eastern Plaguelands 14.45,33.48
step
label "Collect_Slabs_Of_Carrion_Worm_Meat"
kill Carrion Grub##8603+
|tip Go out of your way to kill grubs, the drop rate can be bad.
collect 15 Slab of Carrion Worm Meat##13853 |q 5544/1 |goto Eastern Plaguelands 43.24,82.95
You can find more around: |notinsticky
[42.24,69.81]
[35.16,74.32]
[27.42,69.07]
[19.99,68.52]
[18.56,77.87]
[33.76,82.90]
step
Follow the path |goto Eastern Plaguelands 11.93,61.49 < 40 |only if walking
talk Tirion Fordring##1855
|tip He walks around this area.
|tip Run all the way around the mountain.
|tip You will die if you go through the cave, run all the way around. |only if hardcore
turnin Demon Dogs##5542 |goto Eastern Plaguelands 7.57,43.70
turnin Blood Tinged Skies##5543 |goto Eastern Plaguelands 7.57,43.70
turnin Carrion Grubbage##5544 |goto Eastern Plaguelands 7.57,43.70
accept Redemption##5742 |goto Eastern Plaguelands 7.57,43.70
step
talk Tirion Fordring##1855
|tip He walks around this area.
|tip Type "/sit" into your chat, or press X.
|tip You must be sitting for the dialogue option to appear when you talk to him.
Select _"I am ready to hear your tale, Tirion."_
Listen to Tirion's Tale |q 5742/1 |goto Eastern Plaguelands 7.57,43.70
step
_Destroy These Items:_
|tip They are no longer needed.
trash Slab of Carrion Worm Meat##13853 |goto Eastern Plaguelands 7.57,43.70
step
talk Tirion Fordring##1855
|tip He walks around this area.
turnin Redemption##5742 |goto Eastern Plaguelands 7.57,43.70
step
Enter the crypt |goto Eastern Plaguelands 27.86,85.48 < 10 |walk
kill Zaeldarr the Outcast##12250
|tip Downstairs inside the crypt.
collect Zaeldarr's Head##15785 |q 6021/1 |goto Eastern Plaguelands 27.46,84.88
step
talk Caretaker Alen##11038
|tip He walks around this area.
turnin Zaeldarr the Outcast##6021 |goto Eastern Plaguelands 79.54,63.77
step
talk Carlin Redpath##11063
turnin Defenders of Darrowshire##5211 |goto Eastern Plaguelands 81.52,59.76
step
talk High Priestess MacDonnell##11053
turnin Return to Chillwind Camp##5223 |goto Western Plaguelands 42.97,84.50
accept Target: Gahrron's Withering##5225 |goto Western Plaguelands 42.97,84.50
step
talk Alchemist Arbington##11056
turnin Skeletal Fragments##5537 |goto Western Plaguelands 42.67,83.77
step
talk Flint Shadowmore##12425
turnin The Eastern Plagues##6185 |goto Western Plaguelands 43.61,84.51
accept The Blightcaller Cometh##6186 |goto Western Plaguelands 43.61,84.51
step
talk Nathaniel Dumah##11616
turnin A Plague Upon Thee##5903 |goto Western Plaguelands 43.42,84.84
accept A Plague Upon Thee##5904 |goto Western Plaguelands 43.42,84.84
step
_Destroy These Items:_
|tip They are no longer needed.
trash Plagueland Termites##15043 |goto Western Plaguelands 49.29,78.56
step
Enter the building |goto Western Plaguelands 49.29,78.56 < 10 |walk
talk Marlene Redpath##10927
|tip Upstairs inside the building.
turnin Auntie Marlene##5152 |goto Western Plaguelands 49.17,78.58
accept A Strange Historian##5153 |goto Western Plaguelands 49.17,78.58
step
click Joseph Redpath's Monument
collect Joseph's Wedding Ring##12894 |q 5153/1 |goto Western Plaguelands 49.68,76.77
step
Cross the bridge |goto Western Plaguelands 49.22,73.14 < 30 |only if walking and subzone("Sorrow Hill")
Enter the building |goto Western Plaguelands 39.57,68.38 < 10 |walk
talk Chromie##10667
|tip Upstairs inside the building.
|tip Watch for patrols and respawns while in the area.	|only if hardcore
turnin A Strange Historian##5153 |goto Western Plaguelands 39.45,66.76
accept The Annals of Darrowshire##5154 |goto Western Plaguelands 39.45,66.76
accept A Matter of Time##4971 |goto Western Plaguelands 39.45,66.76
step
use the Temporal Displacer##12627
|tip Use it near the cylinder structures with blue light shining out of them around this area.
|tip Watch for patrols and respawns while in the area.	|only if hardcore
|tip The parasites evade in water, run to the river if you're overwhelmed |only if hardcore
kill 15 Temporal Parasite##10717 |q 4971/1 |goto Western Plaguelands 45.02,62.68
You can find more around: |notinsticky
[46.77,62.41]
[47.93,63.01]
[48.14,66.12]
[49.95,66.69]
[48.97,68.53]
step
Be careful to avoid the enemies nearby and enter the building |goto Western Plaguelands 44.09,69.22 < 10 |walk
click Musty Tome+
|tip They look like blue books on the floor inside this building.
|tip Only one of them is the real book, and it's random.
|tip If you click fake books, enemies will spawn, so try to only click the real book.
|tip To identify the real book, zoom in your view, mouse over the books to highlight them, and look at the book pages.
|tip The fake books will have very blurry pages, with the top half of pages shaded darker than the bottom half of pages.
|tip The real book pages look sharper and the top half and bottom half of the pages are not shaded differently. It will be pure white.
|tip If the correct book isn't there, click other books and kill enemies until the correct book appears.
|tip Watch for patrols and respawns while in the area.	|only if hardcore
collect Annals of Darrowshire##12900 |q 5154/1 |goto Western Plaguelands 43.52,69.55
step
Leave the building and be careful to avoid the enemies nearby |goto Western Plaguelands 44.09,69.22 < 10 |walk |only if subzone("Ruins of Andorhal") and _G.IsIndoors()
Enter the building |goto Western Plaguelands 39.57,68.38 < 10 |walk
talk Chromie##10667
|tip Upstairs inside the building.
|tip Watch for patrols and respawns while in the area.	|only if hardcore
turnin A Matter of Time##4971 |goto Western Plaguelands 39.45,66.76
turnin The Annals of Darrowshire##5154 |goto Western Plaguelands 39.45,66.76
accept Counting Out Time##4972 |goto Western Plaguelands 39.45,66.76
accept Brother Carlin##5210 |goto Western Plaguelands 39.45,66.76
step
click Small Lockbox##175802+
|tip They look like small grey metal chests on the ground inside the crumbled buildings around this area.
|tip There's typically one per ruined building.
|tip Watch for patrols and respawns while in the area.	|only if hardcore
collect 5 Andorhal Watch##12638 |q 4972/1 |goto Western Plaguelands 38.29,69.63
You can find more at: |notinsticky
[38.88,68.06]
[40.27,68.17]
[40.85,67.14]
[40.32,66.48]
step
Enter the building |goto Western Plaguelands 39.57,68.38 < 10 |walk
talk Chromie##10667
|tip Upstairs inside the building.
|tip Watch for patrols and respawns while in the area.	|only if hardcore
turnin Counting Out Time##4972 |goto Western Plaguelands 39.45,66.76
step
Enter the building |goto Western Plaguelands 53.60,64.79 < 10 |walk
talk Mulgris Deepriver##10739
|tip Inside the building.
|tip Freezing Ghouls may incapacitate you, so fight them with full health when possible.	|only if hardcore
turnin The Wildlife Suffers Too##4985 |goto Western Plaguelands 53.72,64.67
accept Glyphed Oaken Branch##4986 |goto Western Plaguelands 53.72,64.67
step
kill Cauldron Lord Soulwrath##11078
|tip He walks around this area.
collect Gahrron's Withering Cauldron Key##13196 |q 5225/1 |goto Western Plaguelands 62.78,58.75
step
click Scourge Cauldron##176392
turnin Target: Gahrron's Withering##5225 |goto Western Plaguelands 62.56,58.57
accept Return to Chillwind Point##5226 |goto Western Plaguelands 62.56,58.57
step
click Northridge Lumber Mill Crate##177490
|tip Inside the building.
Choose _"Place Termite Barrel on the crate."_
click Termite Barrel##
|tip It appears on top of the crate.
|tip Watch for patrols and respawns while in the area.	|only if hardcore
turnin A Plague Upon Thee##5904 |goto Western Plaguelands 48.35,32.00
accept A Plague Upon Thee##6389 |goto Western Plaguelands 48.35,32.00
step
talk Kirsta Deepshadow##11610
accept Unfinished Business##6004 |goto Western Plaguelands 51.92,28.06
stickystart "Kill_Scarlet_Hunters"
stickystart "Kill_Scarlet_Mages"
stickystart "Kill_Scarlet_Knights"
step
kill 2 Scarlet Medic##10605 |q 6004/1 |goto Western Plaguelands 51.67,44.39
|tip They share spawn points with other Scarlet enemies, so kill them too, if you can't find any.
step
label "Kill_Scarlet_Hunters"
kill 2 Scarlet Hunter##1831 |q 6004/2 |goto Western Plaguelands 51.67,44.39
|tip They share spawn points with other Scarlet enemies, so kill them too, if you can't find any. |notinsticky
step
label "Kill_Scarlet_Mages"
kill 2 Scarlet Mage##1826 |q 6004/3 |goto Western Plaguelands 50.47,41.12
|tip They share spawn points with other Scarlet enemies, so kill them too, if you can't find any. |notinsticky
step
label "Kill_Scarlet_Knights"
kill 2 Scarlet Knight##1833 |q 6004/4 |goto Western Plaguelands 50.47,41.12
|tip They share spawn points with other Scarlet enemies, so kill them too, if you can't find any. |notinsticky
step
Follow the path |goto Western Plaguelands 50.41,29.78 < 40 |only if walking
talk Kirsta Deepshadow##11610
turnin Unfinished Business##6004 |goto Western Plaguelands 51.92,28.06
accept Unfinished Business##6023 |goto Western Plaguelands 51.92,28.06
step
Run around the mountain and follow the path up |goto Western Plaguelands 55.23,34.61 < 30 |only if walking
kill Huntsman Radley##11613 |q 6023/1 |goto Western Plaguelands 57.83,36.09
step
kill Cavalier Durgen##11611 |q 6023/2 |goto Western Plaguelands 54.37,23.77
|tip He walks back and forth, between this spot and the top of the tower.
|tip Wait outside the tower near this spot, he will eventually walk outside.
|tip Pull him away into the road nearby, so you can fight him alone.
step
talk Kirsta Deepshadow##11610
turnin Unfinished Business##6023 |goto Western Plaguelands 51.92,28.06
step
talk High Priestess MacDonnell##11053
turnin Return to Chillwind Camp##5226 |goto Western Plaguelands 42.97,84.50
step
talk Commander Ashlam Valorfist##10838
accept Mission Accomplished!##5237 |goto Western Plaguelands 42.70,84.03 |instant
step
talk Nathaniel Dumah##11616
turnin A Plague Upon Thee##6389 |goto Western Plaguelands 43.42,84.83
step
talk Carlin Redpath##11063
turnin Brother Carlin##5210 |goto Eastern Plaguelands 81.52,59.77
accept Villains of Darrowshire##5181 |goto Eastern Plaguelands 81.52,59.77
step
click Horgus' Skull
|tip Underwater in the purple beam.
collect Skull of Horgus##12956 |q 5181/1 |goto Eastern Plaguelands 51.11,49.94
step
Jump down carefully here |goto Eastern Plaguelands 53.38,65.50 < 20 |only if walking
click Shattered Sword of Marduk
collect Shattered Sword of Marduk##12957 |q 5181/2 |goto Eastern Plaguelands 53.92,65.76
step
Leave the canyon |goto Eastern Plaguelands 49.23,74.85 < 40 |only if walking and subzone("The Infectis Scar")
talk Carlin Redpath##11063
turnin Villains of Darrowshire##5181 |goto Eastern Plaguelands 81.51,59.77
step
talk Jasper Fel##1325
|tip Inside the building.
|tip Stock up on poisons.
|tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Jasper Fel##1325 |goto Stormwind City/0 78.32,58.97 |q 6186
|only if Rogue
step
Enter the building |goto Stormwind City 55.30,68.12 < 10 |walk
talk Olivia Burnside##2455
|tip Inside the building.
|tip Collect these items from the bank.
collect Tinkee's Letter##12438 |goto Stormwind City 57.66,72.78 |q 4808
step
Enter Stormwind Keep |goto Stormwind City 69.08,28.69 < 15 |walk
talk Highlord Bolvar Fordragon##1748
|tip Inside the building.
turnin The Blightcaller Cometh##6186 |goto Stormwind City 78.22,17.98
step
Leave Stormwind Keep |goto Stormwind City 69.08,28.69 < 15 |walk |only if subzone("Stormwind Keep")
Enter the building |goto Stormwind City 54.06,59.00 < 10 |walk
talk Auctioneer Jaxon##15659
|tip Inside the building.
|tip Buy these items from the auction house or collect them from your bank.
|tip You will turn them in for a lot of experience.
|tip If you have any in your bank, get them out before you buy more.
|tip If you can't get them, it's okay, but you may have to grind a bit later to make up for it.
collect 60 Wool Cloth##2592 |goto Stormwind City 53.61,59.76 |q 7791 |future
collect 60 Silk Cloth##4306 |goto Stormwind City 53.61,59.76 |q 7793 |future
collect 60 Mageweave Cloth##4338 |goto Stormwind City 53.61,59.76 |q 7794 |future
collect 60 Runecloth##14047 |goto Stormwind City 53.61,59.76 |q 7795 |future
|only if not selfmade
step
Enter the building |goto Stormwind City 44.52,73.91 < 10 |walk
talk Clavicus Knavingham##14722
|tip Upstairs inside the building.
accept A Donation of Wool##7791 |goto Stormwind City 44.27,73.97 |instant
|only if itemcount(2592) >= 60
step
talk Clavicus Knavingham##14722
|tip Upstairs inside the building.
accept A Donation of Silk##7793 |goto Stormwind City 44.27,73.97 |instant
|only if itemcount(4306) >= 60
step
talk Clavicus Knavingham##14722
|tip Upstairs inside the building.
accept A Donation of Mageweave##7794 |goto Stormwind City 44.27,73.97 |instant
|only if itemcount(4338) >= 60
step
talk Clavicus Knavingham##14722
|tip Upstairs inside the building.
accept A Donation of Runecloth##7795 |goto Stormwind City 44.27,73.97 |instant
|only if itemcount(14047) >= 60
step
Enter the building |goto The Barrens 62.08,39.26 < 15 |walk
talk Innkeeper Wiley##6791
|tip Inside the building.
home Ratchet |goto The Barrens 62.05,39.41
step
Enter Everlook |goto Winterspring 60.56,38.20 < 10 |only if walking
talk Umi Rumplesnicker##10305
accept Are We There, Yeti?##977 |goto Winterspring 60.88,37.62
step
talk Felnok Steelspring##10468
turnin Felnok Steelspring##4808 |goto Winterspring 61.63,38.61
accept Chillwind Horns##4809 |goto Winterspring 61.63,38.61
step
Leave Everlook |goto Winterspring 60.56,38.20 < 10 |only if walking and subzone("Everlook")
kill Chillwind Chimaera##7448+
|tip They look like chimaeras.
|tip They share spawn points with the bears, so kill them too.
collect 8 Uncracked Chillwind Horn##12444 |q 4809/1 |goto Winterspring 59.97,21.54
You can find more around: |notinsticky
[54.75,22.59]
[59.18,18.02]
[60.13,12.28]
[57.99,14.79]
step
Run around the mountain |goto Winterspring 62.28,36.37 < 50 |only if walking and subzone("Winterfall Village")
Kill Ice Thistle enemies around this area
|tip Inside and outside the cave.
|tip Only the Matriarchs or Patriarchs will drop the quest item.
|tip Watch for patrols and respawns while here.	|only if hardcore
collect 2 Pristine Yeti Horn##12367 |q 977/1 |goto Winterspring 67.65,41.75
step
Leave the cave |goto Winterspring 67.70,41.57 < 30 |walk |only if subzone("Ice Thistle Hills") and _G.IsIndoors()
Enter Everlook |goto Winterspring 60.56,38.20 < 10 |only if walking
talk Umi Rumplesnicker##10305
turnin Are We There, Yeti?##977 |goto Winterspring 60.88,37.62
accept Are We There, Yeti?##5163 |goto Winterspring 60.88,37.62
step
use Umi's Mechanical Yeti##12928
|tip Use it on Legacki.
Scare Legacki |q 5163/1 |goto Winterspring 61.54,38.62
step
talk Felnok Steelspring##10468
turnin Chillwind Horns##4809 |goto Winterspring 61.63,38.61
step
Enter the building |goto Winterspring 61.33,37.35 < 10 |walk
talk Izzy Coppergrab##13917
|tip Inside the building.
|tip Collect these items from the bank.
collect Irontree Heart##11173 |goto Winterspring 61.45,36.98 |q 4084
collect 11 Silvery Claws##11172 |goto Winterspring 61.45,36.98 |q 4084
|only if not hardcore
step
Leave Everlook |goto Winterspring 60.56,38.20 < 10 |only if walking and subzone("Everlook")
Follow the road and enter the building |goto Moonglade 51.47,41.45 < 15 |walk
talk Rabine Saturna##11801
|tip Inside the building.
turnin Rabine Saturna##6762 |goto Moonglade 51.68,45.09
accept Wasteland##1124 |goto Moonglade 51.68,45.09
step
talk Rabine Saturna##11801
|tip Inside the building.
Select _"Have you ever heard of a place called Dire Maul?"_
Watch the Dialogue
accept A Reliquary of Purity##5527 |goto Moonglade 51.68,45.09
|tip If you didn't discover the Dire Maul dungeon earlier in the guide, you won't be able to accept this quest.
step
talk Auctioneer Golothas##8723
|tip Inside the building.
|tip Buy these items from the auction house or collect them from your bank.
|tip They are for a quest later and it is highly recommended you purchase them now.
|tip The mobs you farm these from can be very deadly but the quests are a lot of experience. |only if hardcore
collect 20 Encrypted Twilight Text##2592 |goto Darnassus 56.24,54.04 |q 8318 |future
step
Enter the building |goto Darnassus 35.52,10.70 < 10 |walk
talk Mathrengyl Bearwalker##4217
|tip Upstairs inside the building.
turnin Glyphed Oaken Branch##4986 |goto Darnassus 35.38,8.40
step
talk Kyrai##3561
|tip Upstairs inside the building.
|tip Stock up on poisons.
|tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Kyrai##3561 |goto Darnassus 32.55,19.74 |q 4084
|only if Rogue
step
Enter the building |goto Felwood 51.26,81.70 < 10 |walk
talk Eridan Bluewind##9116
|tip Inside the building.
turnin Silver Heart##4084 |goto Felwood 51.35,81.51
accept Aquementas##4005 |goto Felwood 51.35,81.51
step
use the Umi's Mechanical Yeti##12928
|tip Use it on Sprinkle.
Scare Sprinkle |q 5163/2 |goto Tanaris 51.06,26.87
step
use Eridan's Supplies##11617
collect Irontree Heart##11173 |q 4005
collect 11 Silvery Claws##11172 |q 4005
collect Book of Aquor##11169 |q 4005
step
Enter the tunnel |goto Tanaris 68.62,41.46 < 15 |only if walking
Follow the path |goto Tanaris 73.19,45.54 < 20 |only if walking
Continue following the path |goto Tanaris 72.22,48.95 < 30 |only if walking
use the Book of Aquor##11169
Watch the dialogue
|tip Aquementas will appear and approach from the east and attack you.
kill Aquementas##9453
collect Silver Totem of Aquementas##11522 |q 4005/1 |goto Tanaris 70.42,49.90
step
Enter the cave |goto Un'Goro Crater 43.44,6.77 < 15 |walk
talk J.D. Collie##9117
|tip Inside the cave.
turnin Aquementas##4005 |goto Un'Goro Crater 41.92,2.70
accept Linken's Adventure##3961 |goto Un'Goro Crater 41.92,2.70
step
_Destroy These Items:_
|tip They are no longer needed.
trash Irontree Heart##11173 |goto Un'Goro Crater 43.44,6.77
trash 11 Silvery Claws##11172 |goto Un'Goro Crater 43.44,6.77
trash Book of Aquor##11169 |goto Un'Goro Crater 43.44,6.77
step
Leave the cave |goto Un'Goro Crater 43.44,6.77 < 15 |walk |only if subzone("Marshal's Refuge") and _G.IsIndoors()
talk Linken##8737
turnin Linken's Adventure##3961 |goto Un'Goro Crater 44.66,8.10
step
use the Umi's Mechanical Yeti##12928
|tip Use it on Quixxil.
Scare Quixxil |q 5163/3 |goto Un'Goro Crater 43.67,9.38
step
talk Layo Starstrike##13220
|tip Inside the building.
turnin Wasteland##1124 |goto Silithus 81.87,18.93
accept The Spirits of Southwind##1125 |goto Silithus 81.87,18.93
step
talk Windcaller Proudhorn##15191
turnin Taking Back Silithus##8275 |goto Silithus 51.15,38.29
accept Securing the Supply Lines##8280 |goto Silithus 51.15,38.29
step
talk Beetix Ficklespragg##15189
|tip She walks around this area upstairs inside the building.
accept Deadly Desert Venom##8277 |goto Silithus 51.71,38.58
step
talk Geologist Larksbane##15183
accept The Twilight Mystery##8284 |goto Silithus 49.67,37.46
step
talk Bor Wildmane##15306
accept Secret Communication##8318 |goto Silithus 48.57,37.78
step
Enter the building |goto Silithus 49.60,36.02 < 10 |only if walking
talk Commander Mar'alith##15181
|tip Outside, on the balcony of the building.
accept Dearest Natalia##8304 |goto Silithus 49.19,34.18
step
Follow the path up |goto Silithus 50.57,35.93 < 10 |only if walking
talk Cloud Skydancer##15177
fpath Cenarion Hold |goto Silithus 50.58,34.45
step
Enter the building |goto Silithus 63.45,54.09 < 10 |walk
click Dusty Reliquary
|tip Inside the building.
|tip The 'Tortured' enemies around here will summon Hive'Ashi Drones.	|only if hardcore
|tip Watch for respawns while in the area.				|only if hardcore
collect Reliquary of Purity##22201 |q 5527/1 |goto Silithus 63.23,55.35
stickystart "Kill_Tortured_Druids"
stickystart "Kill_Tortured_Sentinels"
step
label "Kill_Tortured_Druids"
kill 8 Tortured Druid##12178 |q 1125/1 |goto Silithus 62.96,53.11
|tip The 'Tortured' enemies around here will summon Hive'Ashi Drones on death.	|only if hardcore
|tip Watch for respawns while in the area.				|only if hardcore
|tip You can find more inside the buildings around this area.
step
label "Kill_Tortured_Sentinels"
kill 8 Tortured Sentinel##12179 |q 1125/2 |goto Silithus 62.96,53.11
|tip The 'Tortured' enemies around here will summon Hive'Ashi Drones on death.	|only if hardcore
|tip Watch for respawns while in the area.				|only if hardcore
|tip You can find more inside the buildings around this area.
step
_NOTE:_
Incoming Difficult Quest
|tip The next quest has you traveling back to the area full of Tortured enemies.
|tip Interacting with the Hive'Ashi Pod will spawn 3 Ambushers which may be very difficult to handle solo.
|tip The quest is optional, but you will need to grind an extra, 16,550 xp to make up for skipping it.
|tip You will likely want to skip this quest if you cannot find help.
Click Here to Continue |confirm |q 1126 |future
|only if not hardcore
stickystart "Collect_Stonelash_Scorpid_Stingers"
stickystart "Collect_Sand_Skitterer_Fangs"
stickystart "Kill_Dredge_Strikers"
step
talk Layo Starstrike##13220
|tip Inside the building.
turnin The Spirits of Southwind##1125 |goto Silithus 81.87,18.93
accept Hive in the Tower##1126 |goto Silithus 81.87,18.93 |only if not hardcore
step
Enter the building |goto Silithus 60.45,52.83 < 10 |walk
|tip This quest is dangerous. |only if hardcore
|tip Three silithid will ambush you when you enter the tower.
|tip Make sure you have cooldowns and healing potions prepared for the encounter if possible. |only if hardcore
click Hive'Ashi Pod##178553
|tip Remember, 3 Hive'Ashi Ambushers will spawn upon interacting with this object.	|only if hardcore
|tip They will keep spawning until you loot the item and retreat.			|only if hardcore
|tip Skip this quest if you can't find help.						|only if hardcore
|tip At the top of the tower.
kill Hive'Ashi Ambusher##13301+
collect Encrusted Silithid Object##17346 |q 1126/1 |goto Silithus 60.35,52.55
stickystop "Collect_Stonelash_Scorpid_Stingers"
stickystop "Collect_Sand_Skitterer_Fangs"
stickystop "Kill_Dredge_Strikers"
step
Kill Hive'Ashi enemies around this area
|tip You may need help with this.
collect Brann Bronzebeard's Lost Letter##20461 |goto Silithus 55.97,49.86 |q 8308 |future
|tip This has a low drop rate.
You can find more around: |notinsticky
[52.57,52.85]
[48.18,44.34]
|only if not hardcore
step
use Brann Bronzebeard's Lost Letter##20461
accept Brann Bronzebeard's Lost Letter##8308
|only if not hardcore
stickystart "Collect_Stonelash_Scorpid_Stingers"
stickystart "Collect_Sand_Skitterer_Fangs"
stickystart "Kill_Dredge_Strikers"
step
talk Layo Starstrike##13220
|tip Inside the building.
turnin Hive in the Tower##1126 |goto Silithus 81.87,18.93
accept Umber, Archivist##6844 |goto Silithus 81.87,18.93
step
Run around the mountain |goto Silithus 69.55,30.94 < 70 |only if walking
Kill Twilight enemies around this area
collect 10 Encrypted Twilight Text##20404 |q 8318/1 |goto Silithus 66.89,19.00
|tip Watch for respawns around this area.	|only if hardcore
|tip It's easy to get overwhelmed by adds here.	|only if hardcore
You can find more inside the cave at [68.88,15.22]
|tip If you enter the cave, make sure you keep an escape route clear. |only if hardcore
step
label "Collect_Stonelash_Scorpid_Stingers"
kill Stonelash Scorpid##11735+
|tip They look like scorpions.
collect 8 Stonelash Scorpid Stinger##20373 |q 8277/1 |goto Silithus 60.63,17.19
You can find more around: |notinsticky
[51.92,17.95]
[52.50,30.60]
[68.54,32.78]
[59.11,23.46]
step
label "Collect_Sand_Skitterer_Fangs"
kill Sand Skitterer##11738+
|tip They look like spiders.
collect 8 Sand Skitterer Fang##20376 |q 8277/2 |goto Silithus 60.63,17.19
You can find more around: |notinsticky
[51.92,17.95]
[52.50,30.60]
[68.54,32.78]
[59.11,23.46]
step
label "Kill_Dredge_Strikers"
kill 15 Dredge Striker##11740 |q 8280/1 |goto Silithus 60.63,17.19
You can find more around: |notinsticky
[51.92,17.95]
[52.50,30.60]
[68.54,32.78]
[59.11,23.46]
step
talk Windcaller Proudhorn##15191
turnin Securing the Supply Lines##8280 |goto Silithus 51.15,38.29
accept Stepping Up Security##8281 |goto Silithus 51.15,38.29
step
talk Beetix Ficklespragg##15189
|tip She walks around this area upstairs inside the building.
turnin Deadly Desert Venom##8277 |goto Silithus 51.71,38.58
accept Noggle's Last Hope##8278 |goto Silithus 51.71,38.58
step
talk Bor Wildmane##15306
turnin Secret Communication##8318 |goto Silithus 48.58,37.78
step
click Twilight Tablet Fragment+
|tip They look like small blue-glowing broken pieces of stone tablets on the ground around this area.
collect 8 Twilight Tablet Fragment##20378 |q 8284/1 |goto Silithus 24.33,11.94
step
Kill Twilight enemies around this area
|tip Watch for patrols and respawns while in the area.	|only if hardcore
|tip Enemies tend to be close together.			|only if hardcore
collect 10 Encrypted Twilight Text##20404 |goto Silithus 27.34,33.46 |q 8323 |future
stickystart "Collect_Stonelash_Pincer_Stingers"
step
kill 20 Dredge Crusher##11741 |q 8281/1 |goto Silithus 27.26,43.55
You can find more around: |notinsticky
[36.54,50.40]
[37.93,60.76]
[47.11,59.42]
[57.55,60.78]
step
label "Collect_Stonelash_Pincer_Stingers"
kill Stonelash Pincer##11736+
collect 3 Stonelash Pincer Stinger##20374 |q 8278/2 |goto Silithus 27.26,43.55
You can find more around: |notinsticky
[36.54,50.40]
[37.93,60.76]
[47.11,59.42]
[57.55,60.78]
stickystart "Collect_Stonelash_Flayer_Stingers"
stickystart "Collect_Rock_Stalker_Fangs"
step
talk Rutgar Glyphshaper##15170
turnin Brann Bronzebeard's Lost Letter##8308 |goto Silithus 41.28,88.45
|only if not hardcore
step
talk Rutgar Glyphshaper##15170
Select _"Hello, Rutgar. The Commander has sent me here to gather some information about his missing wife."_
Question Rutgar |q 8304/2 |goto Silithus 41.28,88.45
step
talk Frankal Stonebridge##15171
Select _"Hello, Frankal. I've heard that you might have some information as to the whereabouts of Mistress Natalia Mar'alith."_
Question Frankal |q 8304/1 |goto Silithus 40.82,88.85
step
label "Collect_Stonelash_Flayer_Stingers"
kill Stonelash Flayer##11737+
collect 3 Stonelash Flayer Stinger##20375 |q 8278/1 |goto Silithus 45.44,86.38
You can find more around: |notinsticky
[45.15,82.20]
[36.97,86.68]
[28.44,80.89]
[35.23,71.64]
step
label "Collect_Rock_Stalker_Fangs"
kill Rock Stalker##11739+
collect 3 Rock Stalker Fang##20377 |q 8278/3 |goto Silithus 45.44,86.38
You can find more around: |notinsticky
[45.15,82.20]
[36.97,86.68]
[28.44,80.89]
[35.23,71.64]
step
talk Windcaller Proudhorn##15191
turnin Stepping Up Security##8281 |goto Silithus 51.15,38.29
step
talk Beetix Ficklespragg##15189
|tip She walks around this area upstairs inside the building.
turnin Noggle's Last Hope##8278 |goto Silithus 51.71,38.58
step
talk Geologist Larksbane##15183
turnin The Twilight Mystery##8284 |goto Silithus 49.67,37.46
accept The Deserter##8285 |goto Silithus 49.67,37.46
step
Enter the building |goto Silithus 49.61,36.05 < 10 |only if walking
talk Commander Mar'alith##15181
|tip Outside, on the balcony of the building.
turnin Dearest Natalia##8304 |goto Silithus 49.19,34.18
step
Enter the cave |goto Silithus 66.32,70.03 < 15 |walk
talk Hermit Ortell##15194
|tip Inside the cave.
turnin The Deserter##8285 |goto Silithus 67.19,69.76
accept The Twilight Lexicon##8279 |goto Silithus 67.19,69.76
step
kill Twilight Keeper Havunth##11804
|tip He looks like an orc that walks around this area wearing a bright purple robe.
|tip You can wait around this spot to avoid going into the camp looking for him.
collect Twilight Lexicon - Chapter 3##20396 |q 8279/3 |goto Silithus 42.00,44.13
step
kill Twilight Keeper Mayna##15200
|tip She walks around this area.
collect Twilight Lexicon - Chapter 1##20394 |q 8279/1 |goto Silithus 26.46,36.45
step
kill Twilight Keeper Exeter##11803
collect Twilight Lexicon - Chapter 2##20395 |q 8279/2 |goto Silithus 16.09,86.37
step
Run around the bug area |goto Silithus 55.17,63.52 < 70 |only if walking
Enter the cave |goto Silithus 66.32,70.03 < 15 |walk
talk Hermit Ortell##15194
|tip Inside the cave.
turnin The Twilight Lexicon##8279 |goto Silithus 67.19,69.76
accept A Terrible Purpose##8287 |goto Silithus 67.19,69.76
accept True Believers##8323 |goto Silithus 67.19,69.76
step
talk Hermit Ortell##15194
|tip Inside the cave.
turnin True Believers##8323 |goto Silithus 67.19,69.76
step
Follow the path up into Cenarion Hold |goto Silithus 45.64,43.35 < 50 |only if walking and not subzone("Cenarion Hold")
Enter the building |goto Silithus 49.61,36.05 < 10 |only if walking
talk Commander Mar'alith##15181
|tip Outside, on the balcony of the building.
turnin A Terrible Purpose##8287 |goto Silithus 49.19,34.18
step
talk Umi Rumplesnicker##10305
turnin Are We There, Yeti?##5163 |goto Winterspring 60.88,37.62
step
Follow the road |goto Moonglade 40.73,35.75 < 70 |only if walking and not Druid
talk Umber##11939
|tip He walks around this area.
turnin Umber, Archivist##6844 |goto Moonglade 44.89,35.59
accept Uncovering Past Secrets##6845 |goto Moonglade 44.89,35.59
step
Enter the building |goto Moonglade 51.47,41.44 < 10 |walk
talk Rabine Saturna##11801
|tip Inside the building.
turnin A Reliquary of Purity##5527 |goto Moonglade 51.68,45.08
turnin Uncovering Past Secrets##6845 |goto Moonglade 51.68,45.08
step
talk Umber##11939
|tip He walks around this area.
accept Under the Chitin Was...##1185 |goto Moonglade 44.89,35.59 |instant
]]
    }
}
IronPath:RegisterGuide(IronPath_Guide)
