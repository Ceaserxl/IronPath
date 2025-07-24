ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Ashenvale (22-23)",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."Ashenvale",
condition_suggested=function() return level >= 22 and level <= 23 and not completedq(1034) end,
next="Leveling Guides\\Stonetalon Mountains (23-24)",
hardcore = true,
},[[
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
]])