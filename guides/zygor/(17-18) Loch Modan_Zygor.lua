
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Loch Modan (17-18)",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."Loch Modan",
condition_suggested=function() return level >= 17 and level <= 18 and not completedq(298) end,
next="Leveling Guides\\Redridge Mountains (18-20)",
hardcore = true,
},[[
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
]])