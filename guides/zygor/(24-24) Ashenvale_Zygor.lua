
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Ashenvale (24-24)",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."Ashenvale",
condition_suggested=function() return level == 24 and not completedq(1054) end,
next="Leveling Guides\\Wetlands (24-25)",
hardcore = true,
},[[
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
]])