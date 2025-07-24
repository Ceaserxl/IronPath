ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Stonetalon Mountains (23-24)",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."Stonetalon Mountains",
condition_suggested=function() return level >= 23 and level <= 24 and not completedq(1056) end,
next="Leveling Guides\\Ashenvale (24-24)",
hardcore = true,
},[[
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
]])