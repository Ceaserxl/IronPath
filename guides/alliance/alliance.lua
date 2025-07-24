IronPath_Guide = {
  zone     = "Elwynn Forest",
  easyName = "Human (1-15)",
  minLevel = 1,
  race     = "Human",
  faction  = "Alliance",
  author   = "CeaserXL",
  steps = 
{[[
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
]]}
}

IronPath:RegisterGuide(IronPath_Guide)

