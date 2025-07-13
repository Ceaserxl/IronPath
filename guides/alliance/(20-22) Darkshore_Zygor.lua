
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Darkshore (20-22)",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."Darkshore",
condition_suggested=function() return level == 20 and not completedq(970) end,
next="Leveling Guides\\Ashenvale (22-23)",
hardcore = true,
},[[
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
]])