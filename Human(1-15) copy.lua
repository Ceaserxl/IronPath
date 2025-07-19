IronPath_Guide = {
    zone = "Elwynn Forest",
    easyName = "Starter Guide: Human (1-15)",
    minLevel = 1,
    levelRange = "1-15",
    race = "Human",
    faction = "Alliance",
    author = "CeaserXL",
    steps = {
        {
            action = "destroy",
            item = "Hearthstone",
            itemID = 6948,
            note = "You won't use it in the Northshire Valley starter area.\nYou will get another one before you need to use it.\nWe are doing this to gain an extra bag slot.",
            condition = "not Warlock"
        }, {
            action = "kill",
            target = "Young Wolf",
            npcID = 299,
            coords = {46.38, 38.58},
            note = "Loot 10 copper worth of vendor items.\nThis lets you train a spell early.\nIt increases your leveling speed.",
            condition = "(Warrior or Warlock) and level <= 2"
        }, {
            action = "vendor",
            npc = "Godric Rothgar",
            npcID = 1213,
            coords = {47.69, 41.42},
            note = "Sell trash to reach 10 copper.\nYou can sell gear if needed.",
            condition = "Warrior or Warlock"
        }, {
            action = "accept",
            quest = "A Threat Within",
            qid = 783,
            npc = "Deputy Willem",
            npcID = 823,
            coords = {48.17, 42.95}
        }, {
            action = "accept",
            quest = "The Stolen Tome",
            qid = 1598,
            npc = "Drusilla La Salle",
            npcID = 459,
            coords = {49.87, 42.65},
            note = "Outside, next to the building.",
            condition = "Human Warlock"
        }, {
            action = "learn",
            spell = "Immolate",
            spellID = 348,
            npc = "Drusilla La Salle",
            npcID = 459,
            coords = {49.87, 42.65},
            condition = "Human Warlock"
        }, {
            action = "click",
            item = "Stolen Books",
            itemID = 6785,
            quest = "The Stolen Tome",
            qid = 1598,
            coords = {56.74, 43.77},
            note = "Getting your imp pet early is highly recommended.\nZoom out and click the small pile of books near the tent opening.\nWatch video: youtu.be/SEATloEvXAM",
            condition = "Human Warlock"
        }, {
            action = "use",
            item = "Hearthstone",
            itemID = 6948,
            npc = "Drusilla La Salle",
            npcID = 459,
            coords = {49.87, 42.65},
            quest = "The Stolen Tome",
            qid = 1598,
            turnin = true,
            condition = "Human Warlock"
        }, {
            action = "complete",
            spell = "Summon Imp",
            condition = "Human Warlock and not warlockpet('Imp')",
            note = "Use the 'Summon Imp' ability."
        }, {
            action = "destroy",
            item = "Hearthstone",
            itemID = 6948,
            coords = {48.31, 41.99},
            note = "You won't use it again in Northshire.\nWe are doing this to gain an extra bag slot.",
            condition = "Warlock"
        }, {
            action = "turnin",
            quest = "A Threat Within",
            qid = 783,
            npc = "Marshal McBride",
            npcID = 197,
            coords = {48.92, 41.61}
        }, {
            action = "accept",
            quest = "Kobold Camp Cleanup",
            qid = 7,
            npc = "Marshal McBride",
            npcID = 197,
            coords = {48.92, 41.61}
        }, {
            action = "learn",
            spell = "Battle Shout",
            spellID = 6673,
            npc = "Llane Beshere",
            npcID = 911,
            coords = {50.24, 42.28},
            note = "You will need 10 copper.",
            condition = "Warrior"
        }, {
            action = "accept",
            quest = "Eagan Peltskinner",
            qid = 5261,
            npc = "Deputy Willem",
            npcID = 823,
            coords = {48.17, 42.95}
        }, {
            action = "turnin",
            quest = "Eagan Peltskinner",
            qid = 5261,
            npc = "Eagan Peltskinner",
            npcID = 196,
            coords = {48.94, 40.16}
        }, {
            action = "accept",
            quest = "Wolves Across the Border",
            qid = 33,
            npc = "Eagan Peltskinner",
            npcID = 196,
            coords = {48.94, 40.16}
        }, {
            action = "collect",
            quest = "Wolves Across the Border",
            qid = 33,
            item = "Tough Wolf Meat",
            itemID = 750,
            coords = {46.38, 38.58}
        }, {
            action = "kill",
            quest = "Kobold Camp Cleanup",
            qid = 7,
            target = "Kobold Vermin",
            npcID = 6,
            count = 10,
            coords = {47.49, 36.15}
        }, {
            action = "turnin",
            quest = "Wolves Across the Border",
            qid = 33,
            npc = "Eagan Peltskinner",
            npcID = 196,
            coords = {48.94, 40.16}
        }, {action = "grind", level = 3, coords = {47.49, 36.15}}, {
            action = "vendor",
            npc = "Godric Rothgar",
            npcID = 1213,
            coords = {47.69, 41.42}
        }, {
            action = "turnin",
            quest = "Kobold Camp Cleanup",
            qid = 7,
            npc = "Marshal McBride",
            npcID = 197,
            coords = {48.92, 41.61}
        }, {
            action = "accept",
            quest = "Investigate Echo Ridge",
            qid = 15,
            npc = "Marshal McBride",
            npcID = 197,
            coords = {48.92, 41.61}
        }, {
            action = "accept",
            quest = "Glyphic Letter",
            qid = 3104,
            npc = "Marshal McBride",
            npcID = 197,
            coords = {48.92, 41.61},
            condition = "Human Mage"
        }, {
            action = "accept",
            quest = "Simple Letter",
            qid = 3100,
            npc = "Marshal McBride",
            npcID = 197,
            coords = {48.92, 41.61},
            condition = "Human Warrior"
        }, {
            action = "accept",
            quest = "Tainted Letter",
            qid = 3105,
            npc = "Marshal McBride",
            npcID = 197,
            coords = {48.92, 41.61},
            condition = "Human Warlock"
        }, {
            action = "accept",
            quest = "Encrypted Letter",
            qid = 3102,
            npc = "Marshal McBride",
            npcID = 197,
            coords = {48.92, 41.61},
            condition = "Human Rogue"
        }, {
            action = "accept",
            quest = "Hallowed Letter",
            qid = 3103,
            npc = "Marshal McBride",
            npcID = 197,
            coords = {48.92, 41.61},
            condition = "Human Priest"
        }, {
            action = "accept",
            quest = "Consecrated Letter",
            qid = 3101,
            npc = "Marshal McBride",
            npcID = 197,
            coords = {48.92, 41.61},
            condition = "Human Paladin"
        }, {
            action = "turnin",
            quest = "Simple Letter",
            qid = 3100,
            npc = "Llane Beshere",
            npcID = 911,
            coords = {50.24, 42.28},
            condition = "Human Warrior"
        }, {
            action = "turnin",
            quest = "Consecrated Letter",
            qid = 3101,
            npc = "Brother Sammuel",
            npcID = 925,
            coords = {50.43, 42.12},
            condition = "Human Paladin"
        }, {
            action = "turnin",
            quest = "Hallowed Letter",
            qid = 3103,
            npc = "Priestess Anetta",
            npcID = 375,
            coords = {49.81, 39.49},
            condition = "Human Priest"
        }, {
            action = "turnin",
            quest = "Glyphic Letter",
            qid = 3104,
            npc = "Khelden Bremen",
            npcID = 198,
            coords = {49.66, 39.40},
            condition = "Human Mage"
        }, {
            action = "learn",
            spell = "Arcane Intellect",
            spellID = 1459,
            npc = "Khelden Bremen",
            coords = {49.66, 39.40},
            condition = "Human Mage"
        }, {
            action = "learn",
            spell = "Conjure Water",
            spellID = 5504,
            npc = "Khelden Bremen",
            coords = {49.66, 39.40},
            condition = "Human Mage"
        }, {
            action = "learn",
            spell = "Frostbolt",
            spellID = 116,
            npc = "Khelden Bremen",
            coords = {49.66, 39.40},
            condition = "Human Mage"
        },
        {action = "walk", note = "Leave the building", coords = {48.30, 42.00}},
        {
            action = "kill",
            target = "Kobold Worker",
            npcID = 257,
            qid = 15,
            count = 10,
            coords = {47.49, 36.15}
        }, {
            action = "vendor",
            npc = "Godric Rothgar",
            npcID = 1213,
            coords = {47.69, 41.42},
            qid = 15
        },
        {action = "walk", note = "Enter the building", coords = {48.28, 42.02}},
        {
            action = "turnin",
            quest = "Investigate Echo Ridge",
            qid = 15,
            npc = "Marshal McBride",
            npcID = 197,
            coords = {48.93, 41.61}
        }, {
            action = "accept",
            quest = "Skirmish at Echo Ridge",
            qid = 21,
            npc = "Marshal McBride",
            npcID = 197,
            coords = {48.93, 41.61}
        }, {
            action = "learn",
            spell = "Rend",
            spellID = 772,
            npc = "Llane Beshere",
            coords = {50.24, 42.28},
            condition = "Human Warrior"
        }, {
            action = "learn",
            spell = "Charge",
            spellID = 100,
            npc = "Llane Beshere",
            coords = {50.24, 42.28},
            condition = "Human Warrior"
        }, {
            action = "turnin",
            quest = "Simple Letter",
            qid = 3100,
            npc = "Llane Beshere",
            npcID = 911,
            coords = {50.24, 42.28},
            condition = "Human Warrior"
        }, {
            action = "learn",
            spell = "Judgement",
            spellID = 20271,
            npc = "Brother Sammuel",
            coords = {50.43, 42.12},
            condition = "Human Paladin"
        }, {
            action = "learn",
            spell = "Blessing of Might",
            spellID = 19740,
            npc = "Brother Sammuel",
            coords = {50.43, 42.12},
            condition = "Human Paladin"
        }, {
            action = "learn",
            spell = "Devotion Aura",
            spellID = 465,
            npc = "Brother Sammuel",
            coords = {50.43, 42.12},
            condition = "Human Paladin"
        }, {
            action = "turnin",
            quest = "Consecrated Letter",
            qid = 3101,
            npc = "Brother Sammuel",
            npcID = 925,
            coords = {50.43, 42.12},
            condition = "Human Paladin"
        }, {
            action = "learn",
            spell = "Shadow Word: Pain",
            spellID = 589,
            npc = "Priestess Anetta",
            coords = {49.81, 39.49},
            condition = "Human Priest"
        }, {
            action = "learn",
            spell = "Power Word: Fortitude",
            spellID = 1243,
            npc = "Priestess Anetta",
            coords = {49.81, 39.49},
            condition = "Human Priest"
        }, {
            action = "turnin",
            quest = "Hallowed Letter",
            qid = 3103,
            npc = "Priestess Anetta",
            coords = {49.81, 39.49},
            condition = "Human Priest"
        }, {
            action = "turnin",
            quest = "Glyphic Letter",
            qid = 3104,
            npc = "Khelden Bremen",
            coords = {49.66, 39.40},
            condition = "Human Mage"
        }, {
            action = "learn",
            spell = "Arcane Intellect",
            spellID = 1459,
            npc = "Khelden Bremen",
            coords = {49.66, 39.40},
            condition = "Human Mage"
        }, {
            action = "learn",
            spell = "Conjure Water",
            spellID = 5504,
            npc = "Khelden Bremen",
            coords = {49.66, 39.40},
            condition = "Human Mage"
        }, {
            action = "learn",
            spell = "Frostbolt",
            spellID = 116,
            npc = "Khelden Bremen",
            coords = {49.66, 39.40},
            condition = "Human Mage"
        }, {
            action = "accept",
            quest = "Brotherhood of Thieves",
            qid = 18,
            npc = "Deputy Willem",
            coords = {48.17, 42.93}
        }, {
            action = "turnin",
            quest = "Tainted Letter",
            qid = 3105,
            npc = "Drusilla La Salle",
            coords = {49.87, 42.65},
            condition = "Human Warlock"
        }, {
            action = "accept",
            quest = "The Stolen Tome",
            qid = 1598,
            npc = "Drusilla La Salle",
            coords = {49.87, 42.65},
            condition = "Human Warlock"
        }, {
            action = "learn",
            spell = "Corruption",
            spellID = 172,
            npc = "Drusilla La Salle",
            coords = {49.87, 42.65},
            condition = "Human Warlock"
        }, {
            action = "collect",
            item = "Powers of the Void",
            itemID = 6785,
            object = "Stolen Books",
            coords = {56.74, 43.77},
            qid = 1598,
            condition = "Human Warlock"
        }, {
            action = "turnin",
            quest = "The Stolen Tome",
            qid = 1598,
            npc = "Drusilla La Salle",
            coords = {49.87, 42.65},
            condition = "Human Warlock"
        }, {
            action = "use",
            spell = "Summon Imp",
            condition = "Human Warlock and not warlockpet(\"Imp\")",
            complete = "warlockpet(\"Imp\")",
            qid = 18
        }, {
            action = "turnin",
            quest = "Encrypted Letter",
            qid = 3102,
            npc = "Jorik Kerridan",
            npcID = 915,
            coords = {50.31, 39.92},
            note = "Outside, in the stables behind the building.",
            condition = "Human Rogue"
        }, {
            action = "collect",
            target = "Defias Thug",
            npcID = 38,
            item = "Red Burlap Bandana",
            itemID = 752,
            quest = "Brotherhood of Thieves",
            qid = 18,
            coords = {56.09, 42.35},
            note = "You can find more around 53.20,50.30"
        }, {
            action = "turnin",
            quest = "Brotherhood of Thieves",
            qid = 18,
            npc = "Deputy Willem",
            npcID = 823,
            coords = {48.17, 42.94},
            note = "Outside, in front of the building."
        }, {
            action = "accept",
            quest = "Bounty on Garrick Padfoot",
            qid = 6,
            npc = "Deputy Willem",
            npcID = 823,
            coords = {48.17, 42.94}
        }, {
            action = "accept",
            quest = "Milly Osworth",
            qid = 3903,
            npc = "Deputy Willem",
            npcID = 823,
            coords = {48.17, 42.94}
        }, {
            action = "vendor",
            npc = "Godric Rothgar",
            npcID = 1213,
            coords = {47.69, 41.42},
            note = "Sell your trash"
        }, {
            action = "kill",
            target = "Kobold Laborer",
            npcID = 80,
            quest = "Skirmish at Echo Ridge",
            qid = 21,
            coords = {47.67, 31.86},
            note = "Inside the mine."
        }, {
            action = "grind",
            level = 5,
            coords = {47.67, 31.86},
            note = "Kill enemies around this area\nInside and outside the mine."
        }, {
            action = "walk",
            coords = {47.66, 31.89},
            note = "Leave the mine",
            condition = 'subzone("Echo Ridge Mine")'
        }, {
            action = "turnin",
            quest = "Milly Osworth",
            qid = 3903,
            npc = "Milly Osworth",
            npcID = 9296,
            coords = {50.69, 39.35},
            note = "Outside, behind the building."
        }, {
            action = "accept",
            quest = "Milly's Harvest",
            qid = 3904,
            npc = "Milly Osworth",
            npcID = 9296,
            coords = {50.69, 39.35},
            condition = "Mage or Warlock or Priest"
        }, {
            action = "kill",
            target = "Garrick Padfoot",
            npcID = 103,
            item = "Garrick's Head",
            itemID = 182,
            quest = "Bounty on Garrick Padfoot",
            qid = 6,
            coords = {57.51, 48.25}
        }, {
            action = "collect",
            item = "Milly's Harvest",
            itemID = 11119,
            quest = "Milly's Harvest",
            qid = 3904,
            coords = {53.88, 48.55},
            note = "They look like wooden buckets on the ground.",
            condition = "Mage or Warlock or Priest"
        }, {
            action = "grind",
            level = 5,
            xp = 1500,
            coords = {56.09, 42.35},
            note = "Reach 1500 XP into level 5 for level 6 on turn-ins.\nNeeded to learn class abilities before leaving starter area.\nYou can find more around 53.20,50.30",
            condition = "not (Mage or Warlock or Priest)"
        }, {
            action = "grind",
            level = 5,
            xp = 1100,
            coords = {56.09, 42.35},
            note = "Reach 1100 XP into level 5 for level 6 on turn-ins.\nNeeded to learn class abilities before leaving starter area.\nYou can find more around 53.20,50.30",
            condition = "Mage or Warlock or Priest"
        }, {
            action = "turnin",
            quest = "Milly's Harvest",
            qid = 3904,
            npc = "Milly Osworth",
            npcID = 9296,
            coords = {50.69, 39.35}
        }, {
            action = "accept",
            quest = "Grape Manifest",
            qid = 3905,
            npc = "Milly Osworth",
            npcID = 9296,
            coords = {50.69, 39.35},
            condition = "Mage or Warlock or Priest"
        }, {
            action = "turnin",
            quest = "Bounty on Garrick Padfoot",
            qid = 6,
            npc = "Deputy Willem",
            npcID = 823,
            coords = {48.17, 42.94},
            note = "Outside, in front of the building."
        }, {
            action = "vendor",
            npc = "Godric Rothgar",
            npcID = 1213,
            coords = {47.69, 41.42},
            note = "Sell your trash"
        }, {
            action = "turnin",
            quest = "Skirmish at Echo Ridge",
            qid = 21,
            npc = "Marshal McBride",
            npcID = 197,
            coords = {48.92, 41.61},
            note = "Inside the building."
        }, {
            action = "accept",
            quest = "Report to Goldshire",
            qid = 54,
            npc = "Marshal McBride",
            npcID = 197,
            coords = {48.92, 41.61}
        }, {
            action = "turnin",
            quest = "Grape Manifest",
            qid = 3905,
            npc = "Brother Neals",
            npcID = 952,
            coords = {49.47, 41.58},
            note = "Upstairs at the top of the building.",
            condition = "Mage or Warlock or Priest"
        }, {
            action = "accept",
            quest = "In Favor of the Light",
            qid = 5623,
            npc = "Priestess Anetta",
            npcID = 375,
            coords = {49.81, 39.49},
            note = "Inside the building, on the ground floor.",
            condition = "Human Priest"
        }, {
            action = "accept",
            quest = "Rest and Relaxation",
            qid = 2158,
            npc = "Falkhaan Isenstrider",
            npcID = 6774,
            coords = {45.56, 47.74},
            note = "Follow the road."
        }, {
            action = "turnin",
            quest = "Report to Goldshire",
            qid = 54,
            npc = "Marshal Dughan",
            npcID = 240,
            coords = {42.11, 65.93}
        }, {
            action = "accept",
            quest = "The Fargodeep Mine",
            qid = 62,
            npc = "Marshal Dughan",
            npcID = 240,
            coords = {42.11, 65.93}
        }, {
            action = "accept",
            quest = "Kobold Candles",
            qid = 60,
            npc = "William Pestle",
            npcID = 253,
            coords = {43.32, 65.70},
            note = "Inside the building."
        }, {
            action = "turnin",
            quest = "Rest and Relaxation",
            qid = 2158,
            npc = "Innkeeper Farley",
            npcID = 295,
            coords = {43.77, 65.81},
            note = "Inside the building."
        }, {
            action = "vendor",
            npc = "Brog Hamfist",
            npcID = 151,
            coords = {43.96, 65.92},
            note = "If you can afford it, buy bags for more space."
        }, {
            action = "learn",
            spell = "Life Tap",
            spellID = 1454,
            npc = "Maximillian Crowe",
            npcID = 906,
            coords = {44.39, 66.23},
            condition = "Warlock and level >= 6"
        }, {
            action = "learn",
            spell = "Shadow Bolt",
            spellID = 695,
            npc = "Maximillian Crowe",
            npcID = 906,
            coords = {44.39, 66.23},
            condition = "Warlock and level >= 6"
        }, {
            action = "complete",
            spell = "Summon Imp",
            condition = "Human Warlock and not warlockpet('Imp')",
            note = "Use the 'Summon Imp' ability to summon your Imp."
        }, {
            action = "buy",
            item = "Grimoire of Blood Pact (Rank 1)",
            itemID = 16321,
            npc = "Cylina Darkheart",
            npcID = 6374,
            coords = {44.40, 65.99},
            use = true,
            learnpetspell = "Blood Pact",
            petSpellID = 6307,
            note = "Buy if affordable. Required to teach your Imp Blood Pact.",
            condition = "Warlock"
        }, {
            action = "buy",
            item = "Balanced Throwing Dagger",
            itemID = 25872,
            npc = "Brog Hamfist",
            npcID = 151,
            coords = {43.96, 65.92},
            note = "Important for tough quests if you can afford it.",
            condition = "Rogue or Warrior"
        }, {
            action = "train",
            skill = "First Aid",
            skillMax = 75,
            npc = "Michelle Belle",
            npcID = 2329,
            coords = {43.39, 65.55},
            note = "Upstairs. Costs 1s. You may need up to 2s for other spells.",
            condition = "GetMoney() > 150 and not Warlock"
        }, {
            action = "note",
            note = "Create Bandages in Downtime\nUse wait times to raise First Aid skill.\nImportant for healing later. Keep bandages on hand."
        }, {
            action = "learn",
            spell = "Sinister Strike",
            spellID = 1757,
            npc = "Keryn Sylvius",
            npcID = 917,
            coords = {43.87, 65.93},
            condition = "Rogue and level >= 6"
        }, {
            action = "learn",
            spell = "Gouge",
            spellID = 1776,
            npc = "Keryn Sylvius",
            npcID = 917,
            coords = {43.87, 65.93},
            condition = "Rogue and level >= 6"
        }, {
            action = "learn",
            spell = "Power Word: Shield",
            spellID = 17,
            npc = "Priestess Josetta",
            npcID = 377,
            coords = {43.28, 65.72},
            condition = "Priest and level >= 6"
        }, {
            action = "learn",
            spell = "Smite",
            spellID = 591,
            npc = "Priestess Josetta",
            npcID = 377,
            coords = {43.28, 65.72},
            condition = "Priest and level >= 6"
        }, {
            action = "turnin",
            quest = "In Favor of the Light",
            qid = 5623,
            npc = "Priestess Josetta",
            npcID = 377,
            coords = {43.28, 65.72},
            condition = "Human Priest"
        }, {
            action = "accept",
            quest = "Garments of the Light",
            qid = 5624,
            npc = "Priestess Josetta",
            npcID = 377,
            coords = {43.28, 65.72},
            condition = "Human Priest"
        }, {
            action = "complete",
            quest = "Garments of the Light",
            qid = 5624,
            npc = "Guard Roberts",
            npcID = 12423,
            coords = {48.14, 68.04},
            note = "Target Guard Roberts and cast Lesser Heal (Rank 2) then Power Word: Fortitude.",
            condition = "Human Priest"
        }, {
            action = "turnin",
            quest = "Garments of the Light",
            qid = 5624,
            npc = "Priestess Josetta",
            npcID = 377,
            coords = {43.28, 65.72},
            condition = "Human Priest"
        }, {
            action = "learn",
            spell = "Fire Blast",
            spellID = 2136,
            npc = "Zaldimar Wefhellt",
            npcID = 328,
            coords = {43.25, 66.21},
            condition = "Mage and level >= 6"
        }, {
            action = "learn",
            spell = "Fireball",
            spellID = 143,
            npc = "Zaldimar Wefhellt",
            npcID = 328,
            coords = {43.25, 66.21},
            condition = "Mage and level >= 6"
        }, {
            action = "learn",
            spell = "Conjure Food",
            spellID = 587,
            npc = "Zaldimar Wefhellt",
            npcID = 328,
            coords = {43.25, 66.21},
            note = "Skip if low on money.",
            condition = "Mage and level >= 6"
        }, {
            action = "buy",
            item = "Gladius",
            itemID = 2488,
            npc = "Corina Steele",
            npcID = 54,
            coords = {41.53, 65.90},
            note = "Buy if you can afford it and have nothing better.",
            condition = "Warrior and itemcount(2488) == 0"
        }, {
            action = "buy",
            item = "Wooden Mallet",
            itemID = 2493,
            npc = "Corina Steele",
            npcID = 54,
            coords = {41.53, 65.90},
            note = "Buy if you can afford it and have nothing better.",
            condition = "Paladin and itemcount(2493) == 0"
        }, {
            action = "buy",
            item = "Stiletto",
            itemID = 2494,
            npc = "Corina Steele",
            npcID = 54,
            coords = {41.53, 65.90},
            note = "Buy if you can afford it and have nothing better.",
            condition = "Rogue and itemcount(2494) == 0"
        }, {
            action = "train",
            skill = "Blacksmithing",
            skillMax = 75,
            npc = "Smith Argus",
            npcID = 514,
            coords = {41.71, 65.55},
            note = "Weapon stones are worth ~30% damage increase at this level. Rough stones from kobolds soon.",
            condition = "Warrior or Rogue or Paladin"
        }, {
            action = "learn",
            spell = "Thunder Clap",
            spellID = 6343,
            npc = "Lyria Du Lac",
            npcID = 913,
            coords = {41.10, 65.76},
            note = "Train Parry too. Prioritize Parry if low on money.",
            condition = "Warrior and level >= 6"
        }, {
            action = "learn",
            spell = "Divine Protection",
            spellID = 498,
            npc = "Brother Wilhelm",
            npcID = 927,
            coords = {41.10, 66.03},
            condition = "Paladin and level >= 6"
        }, {
            action = "learn",
            spell = "Holy Light",
            spellID = 639,
            npc = "Brother Wilhelm",
            npcID = 927,
            coords = {41.10, 66.03},
            condition = "Paladin and level >= 6"
        }, {
            action = "accept",
            quest = "Gold Dust Exchange",
            qid = 47,
            npc = 'Remy "Two Times"',
            npcID = 241,
            coords = {42.14, 67.26}
        }, {
            action = "accept",
            quest = "Lost Necklace",
            qid = 85,
            npc = '"Auntie" Bernice Stonefield',
            npcID = 246,
            coords = {34.48, 84.26},
            note = "Grind enemies on the way to make a later step easier."
        }, {
            action = "turnin",
            quest = "Lost Necklace",
            qid = 85,
            npc = "Billy Maclure",
            npcID = 247,
            coords = {43.13, 85.72},
            note = "Grind enemies on the way."
        }, {
            action = "accept",
            quest = "Pie for Billy",
            qid = 86,
            npc = "Billy Maclure",
            npcID = 247,
            coords = {43.13, 85.72}
        }, {
            action = "accept",
            quest = "Young Lovers",
            qid = 106,
            npc = "Maybell Maclure",
            npcID = 251,
            coords = {43.15, 89.62},
            note = "Inside the building."
        }, {
            action = "vendor",
            npc = "Joshua Maclure",
            npcID = 258,
            coords = {42.35, 89.34},
            note = "Sell your trash."
        }, {
            action = "kill",
            target = "Stonetusk Boar",
            npcID = 113,
            item = "Chunk of Boar Meat",
            itemID = 769,
            quest = "Pie for Billy",
            qid = 86,
            coords = {41.86, 87.12},
            note = "Be careful not to sell these by mistake."
        }, {
            action = "turnin",
            quest = "Pie for Billy",
            qid = 86,
            npc = '"Auntie" Bernice Stonefield',
            npcID = 246,
            coords = {34.48, 84.26},
            note = "Grind enemies on the way."
        }, {
            action = "accept",
            quest = "Back to Billy",
            qid = 84,
            npc = '"Auntie" Bernice Stonefield',
            npcID = 246,
            coords = {34.48, 84.26}
        }, {
            action = "accept",
            quest = "Princess Must Die!",
            qid = 88,
            npc = "Ma Stonefield",
            npcID = 244,
            coords = {34.66, 84.48}
        }, {
            action = "turnin",
            quest = "Young Lovers",
            qid = 106,
            npc = "Tommy Joe Stonefield",
            npcID = 252,
            coords = {29.84, 85.99},
            note = "Grind enemies on the way."
        }, {
            action = "accept",
            quest = "Speak with Gramma",
            qid = 111,
            npc = "Tommy Joe Stonefield",
            npcID = 252,
            coords = {29.84, 85.99}
        }, {
            action = "turnin",
            quest = "Speak with Gramma",
            qid = 111,
            npc = "Gramma Stonefield",
            npcID = 248,
            coords = {34.94, 83.86},
            note = "Inside the building."
        }, {
            action = "accept",
            quest = "Note to William",
            qid = 107,
            npc = "Gramma Stonefield",
            npcID = 248,
            coords = {34.94, 83.86}
        }, {
            action = "turnin",
            quest = "Back to Billy",
            qid = 84,
            npc = "Billy Maclure",
            npcID = 247,
            coords = {43.13, 85.72},
            note = "Grind enemies on the way."
        }, {
            action = "accept",
            quest = "Goldtooth",
            qid = 87,
            npc = "Billy Maclure",
            npcID = 247,
            coords = {43.13, 85.72}
        }, {
            action = "note",
            note = "Save all Linen Cloth you find.\nYou'll need ~70 cloth at level 10-11 for wand crafting.\nDon't vendor it by accident.\nYou can ignore this if buying a wand from AH.",
            condition = "Priest or Warlock or Mage and not selfmade"
        }, {
            action = "enter",
            zone = "Fargodeep Mine",
            coords = {38.97, 82.33},
            note = "Watch for patrols and respawns. Explore inside the mine.",
            condition = "hardcore"
        }, {
            action = "complete",
            quest = "The Fargodeep Mine",
            qid = 62,
            coords = {39.61, 80.21},
            note = "Explore the mine.",
            condition = "hardcore"
        }, {
            action = "note",
            note = "As you loot Rough Stones:\n- Craft Sharpening Stones and apply them (Warrior/Rogue)\n- Craft Weightstones and apply them (Paladin)",
            condition = "Warrior or Rogue or Paladin"
        }, {
            action = "walk",
            coords = {39.76, 79.21},
            note = "Follow the path inside the mine."
        }, {
            action = "kill",
            target = "Goldtooth",
            npcID = 327,
            item = "Bernice's Necklace",
            itemID = 981,
            quest = "Goldtooth",
            qid = 87,
            coords = {41.71, 78.04},
            note = "He walks inside the mine. Watch for patrols.",
            condition = "hardcore"
        }, {
            action = "collect",
            item = "Gold Dust",
            itemID = 773,
            quest = "Gold Dust Exchange",
            qid = 47,
            coords = {39.61, 80.21},
            note = "Kill kobolds inside the mine. Watch for patrols.",
            condition = "hardcore"
        }, {
            action = "collect",
            item = "Large Candle",
            itemID = 772,
            quest = "Kobold Candles",
            qid = 60,
            coords = {39.61, 80.21},
            note = "Kill kobolds inside and outside the mine. Watch for patrols.",
            condition = "hardcore"
        }, {
            action = "grind",
            level = 7,
            xp = 1900,
            coords = {39.61, 80.21},
            note = "Grind inside and outside the mine to reach 1900 XP into level 7. You can also grind mobs on the way back to Goldshire."
        }, {action = "leave", note = "Leave the mine using the nearest exit."},
        {
            action = "turnin",
            quest = "Goldtooth",
            qid = 87,
            npc = '"Auntie" Bernice Stonefield',
            npcID = 246,
            coords = {34.49, 84.25}
        }, {
            action = "turnin",
            quest = "Gold Dust Exchange",
            qid = 47,
            npc = 'Remy "Two Times"',
            npcID = 241,
            coords = {42.14, 67.26}
        }, {
            action = "accept",
            quest = "A Fishy Peril",
            qid = 40,
            npc = 'Remy "Two Times"',
            npcID = 241,
            coords = {42.14, 67.26}
        }, {
            action = "turnin",
            quest = "A Fishy Peril",
            qid = 40,
            npc = "Marshal Dughan",
            npcID = 240,
            coords = {42.11, 65.93}
        }, {
            action = "accept",
            quest = "Further Concerns",
            qid = 35,
            npc = "Marshal Dughan",
            npcID = 240,
            coords = {42.11, 65.93}
        }, {
            action = "turnin",
            quest = "The Fargodeep Mine",
            qid = 62,
            npc = "Marshal Dughan",
            npcID = 240,
            coords = {42.11, 65.93}
        }, {
            action = "accept",
            quest = "The Jasperlode Mine",
            qid = 76,
            npc = "Marshal Dughan",
            npcID = 240,
            coords = {42.11, 65.93}
        }, {
            action = "turnin",
            quest = "Kobold Candles",
            qid = 60,
            npc = "William Pestle",
            npcID = 253,
            coords = {43.32, 65.70},
            note = "Inside the building."
        }, {
            action = "accept",
            quest = "Shipment to Stormwind",
            qid = 61,
            npc = "William Pestle",
            npcID = 253,
            coords = {43.32, 65.70}
        }, {
            action = "turnin",
            quest = "Note to William",
            qid = 107,
            npc = "William Pestle",
            npcID = 253,
            coords = {43.32, 65.70}
        }, {
            action = "accept",
            quest = "Collecting Kelp",
            qid = 112,
            npc = "William Pestle",
            npcID = 253,
            coords = {43.32, 65.70}
        }, {
            action = "sethome",
            npc = "Innkeeper Farley",
            npcID = 295,
            coords = {43.77, 65.81},
            note = "This will give you a new Hearthstone."
        }, {
            action = "vendor",
            npc = "Brog Hamfist",
            npcID = 151,
            coords = {43.96, 65.92},
            note = "Buy bags if needed. You’ll need up to 4s for spells."
        }, {
            action = "learn",
            spell = "Hamstring",
            spellID = 1715,
            npc = "Lyria Du Lac",
            npcID = 913,
            coords = {41.10, 65.76},
            condition = "Warrior and level >= 8"
        }, {
            action = "learn",
            spell = "Heroic Strike",
            spellID = 284,
            npc = "Lyria Du Lac",
            npcID = 913,
            coords = {41.10, 65.76},
            condition = "Warrior and level >= 8"
        }, {
            action = "learn",
            spell = "Hammer of Justice",
            spellID = 853,
            npc = "Brother Wilhelm",
            npcID = 927,
            coords = {41.10, 66.03},
            condition = "Paladin and level >= 8"
        }, {
            action = "learn",
            spell = "Purify",
            spellID = 1152,
            npc = "Brother Wilhelm",
            npcID = 927,
            coords = {41.10, 66.03},
            condition = "Paladin and level >= 8"
        }, {
            action = "learn",
            spell = "Renew",
            spellID = 139,
            npc = "Priestess Josetta",
            npcID = 377,
            coords = {43.28, 65.72},
            condition = "Priest and level >= 8"
        }, {
            action = "learn",
            spell = "Polymorph",
            spellID = 118,
            npc = "Zaldimar Wefhellt",
            npcID = 328,
            coords = {43.25, 66.21},
            condition = "Mage and level >= 8"
        }, {
            action = "learn",
            spell = "Frostbolt",
            spellID = 205,
            npc = "Zaldimar Wefhellt",
            npcID = 328,
            coords = {43.25, 66.21},
            note = "Optional. Fireball is more efficient at this level.",
            condition = "Mage and level >= 8"
        }, {
            action = "learn",
            spell = "Fear",
            spellID = 5782,
            npc = "Maximillian Crowe",
            npcID = 906,
            coords = {44.39, 66.23},
            condition = "Warlock and level >= 8"
        }, {
            action = "learn",
            spell = "Curse of Agony",
            spellID = 980,
            npc = "Maximillian Crowe",
            npcID = 906,
            coords = {44.39, 66.23},
            condition = "Warlock and level >= 8"
        }, {
            action = "complete",
            spell = "Summon Imp",
            quest = "Collecting Kelp",
            qid = 112,
            condition = "Human Warlock and not warlockpet('Imp')",
            note = "Use the 'Summon Imp' ability to summon your pet."
        }, {
            action = "buy",
            item = "Grimoire of Firebolt (Rank 2)",
            itemID = 16302,
            npc = "Cylina Darkheart",
            npcID = 6374,
            coords = {44.40, 65.99},
            use = true,
            learnpetspell = "Firebolt",
            petSpellID = 7799,
            note = "Teach your Imp Firebolt (Rank 2). Buy if affordable.",
            condition = "Human Warlock"
        }, {
            action = "learn",
            spell = "Eviscerate",
            spellID = 6760,
            npc = "Keryn Sylvius",
            npcID = 917,
            coords = {43.87, 65.93},
            condition = "Rogue and level >= 8"
        }, {
            action = "learn",
            spell = "Evasion",
            spellID = 5277,
            npc = "Keryn Sylvius",
            npcID = 917,
            coords = {43.87, 65.93},
            condition = "Rogue and level >= 8"
        }, {
            action = "buy",
            item = "Gladius",
            itemID = 2488,
            npc = "Corina Steele",
            npcID = 54,
            coords = {41.53, 65.90},
            note = "Buy if you can afford it. Skip if you have better.",
            condition = "Warrior and itemcount(2488) == 0"
        }, {
            action = "buy",
            item = "Wooden Mallet",
            itemID = 2493,
            npc = "Corina Steele",
            npcID = 54,
            coords = {41.53, 65.90},
            note = "Buy if you can afford it. Skip if you have better.",
            condition = "Paladin and itemcount(2493) == 0"
        }, {
            action = "buy",
            item = "Stiletto",
            itemID = 2494,
            npc = "Corina Steele",
            npcID = 54,
            coords = {41.53, 65.90},
            note = "Buy if you can afford it. Skip if you have better.",
            condition = "Rogue and itemcount(2494) == 0"
        }, {
            action = "collect",
            item = "Crystal Kelp Frond",
            itemID = 1256,
            quest = "Collecting Kelp",
            qid = 112,
            coords = {50.20, 66.86},
            note = "More can be found around 55.90,66.66"
        }, {
            action = "enter",
            zone = "Jasperlode Mine",
            coords = {61.71, 53.87},
            note = "Enter the mine to complete the objective."
        }, {
            action = "complete",
            quest = "The Jasperlode Mine",
            qid = 76,
            coords = {60.38, 49.68},
            note = "Scout through the mine. Watch for patrols and Geomancers. Use LoS when needed.",
            condition = "hardcore"
        }, {
            action = "walk",
            coords = {61.74, 53.88},
            note = "Leave the mine.",
            condition = 'subzone("Jasperlode Mine")'
        }, {
            action = "turnin",
            quest = "Further Concerns",
            qid = 35,
            npc = "Guard Thomas",
            npcID = 261,
            coords = {73.97, 72.18},
            note = "Grind mobs en route."
        }, {
            action = "accept",
            quest = "Find the Lost Guards",
            qid = 37,
            npc = "Guard Thomas",
            npcID = 261,
            coords = {73.97, 72.18}
        }, {
            action = "accept",
            quest = "Protect the Frontier",
            qid = 52,
            npc = "Guard Thomas",
            npcID = 261,
            coords = {73.97, 72.18}
        }, {
            action = "turnin",
            quest = "Find the Lost Guards",
            qid = 37,
            object = "A Half-Eaten Body",
            objectID = 55,
            coords = {72.65, 60.33},
            note = "Grind mobs en route."
        }, {
            action = "accept",
            quest = "Discover Rolf's Fate",
            qid = 45,
            object = "A Half-Eaten Body",
            objectID = 55,
            coords = {72.65, 60.33}
        }, {
            action = "accept",
            quest = "A Bundle of Trouble",
            qid = 5545,
            npc = "Supervisor Raelen",
            npcID = 10616,
            coords = {81.38, 66.11}
        }, {
            action = "vendor",
            npc = "Rallic Finn",
            npcID = 1198,
            coords = {83.28, 66.09},
            note = "Vendor your trash."
        }, {
            action = "grind",
            level = 9,
            coords = {77.69, 61.78},
            note = "This helps with upcoming hard quests. More mobs at 83.76,60.88."
        }, {
            action = "turnin",
            quest = "Discover Rolf's Fate",
            qid = 45,
            object = "Rolf's Corpse",
            objectID = 56,
            coords = {79.80, 55.52},
            note = "Watch for murloc heals, respawns, and adds. Can loot while under Divine Protection (Paladin)."
        }, {
            action = "accept",
            quest = "Report to Thomas",
            qid = 71,
            object = "Rolf's Corpse",
            objectID = 56,
            coords = {79.80, 55.52}
        }, {
            action = "collect",
            item = "Bundle of Wood",
            itemID = 13872,
            quest = "A Bundle of Trouble",
            qid = 5545,
            coords = {77.69, 61.78},
            note = "Found at the base of trees. More at 83.76,60.88"
        }, {
            action = "kill",
            target = "Young Forest Bear",
            npcID = 822,
            quest = "Protect the Frontier",
            qid = 52,
            coords = {86.49, 63.95},
            note = "Also found at: 81.76,59.01, 78.29,61.34, 71.40,61.40, 68.66,65.13, 75.22,67.19"
        }, {
            action = "kill",
            target = "Prowler",
            npcID = 118,
            quest = "Protect the Frontier",
            qid = 52,
            coords = {83.27, 60.09}
        }, {
            action = "vendor",
            npc = "Rallic Finn",
            npcID = 1198,
            coords = {83.28, 66.09},
            note = "Vendor your trash again."
        }, {
            action = "turnin",
            quest = "A Bundle of Trouble",
            qid = 5545,
            npc = "Supervisor Raelen",
            npcID = 10616,
            coords = {81.38, 66.12}
        }, {
            action = "accept",
            quest = "Red Linen Goods",
            qid = 83,
            npc = "Sara Timberlain",
            npcID = 278,
            coords = {79.46, 68.78},
            note = "In front of the building."
        }, {
            action = "turnin",
            quest = "Protect the Frontier",
            qid = 52,
            npc = "Guard Thomas",
            npcID = 261,
            coords = {73.97, 72.18}
        }, {
            action = "turnin",
            quest = "Report to Thomas",
            qid = 71,
            npc = "Guard Thomas",
            npcID = 261,
            coords = {73.97, 72.18}
        }, {
            action = "accept",
            quest = "Deliver Thomas' Report",
            qid = 39,
            npc = "Guard Thomas",
            npcID = 261,
            coords = {73.97, 72.18}
        }, {
            action = "accept",
            quest = "Report to Gryan Stoutmantle",
            qid = 109,
            npc = "Guard Thomas",
            npcID = 261,
            coords = {73.97, 72.18}
        }, {
            action = "kill",
            target = "Princess",
            npcID = 330,
            item = "Brass Collar",
            itemID = 1006,
            quest = "Princess Must Die!",
            qid = 88,
            coords = {69.61, 79.38},
            note = "Hard quest. Look for help or use kiting strategies. Watch Princess video: youtu.be/f9Ilklxp0QU",
            condition = "true"
        }, {
            action = "collect",
            item = "Red Linen Bandana",
            itemID = 1019,
            quest = "Red Linen Goods",
            qid = 83,
            coords = {69.61, 79.38},
            note = "Kill Defias near fences. Avoid buildings if hardcore.",
            condition = "true"
        }, {
            action = "grind",
            level = 9,
            xp = 3600,
            coords = {69.61, 79.38},
            note = "Grind Defias mobs outside buildings to reach 3600 XP into level 9.",
            condition = "true"
        }, {
            action = "collect",
            item = "Linen Cloth",
            itemID = 2589,
            coords = {69.61, 79.38},
            note = "Save for wand crafting at level 10-11. Skip if buying wand.",
            condition = "Warlock or Mage or Priest"
        }, {
            action = "grind",
            note = "Grind enemies until your Hearthstone cooldown is low. This is optional bonus XP.",
            condition = "hardcore",
            complete = "C_Container.GetItemCooldown(6948) <= 100"
        }, {
            action = "grind",
            note = "Grind enemies until your Hearthstone cooldown is low. This is optional bonus XP.",
            condition = "not hardcore",
            complete = "C_Container.GetItemCooldown(6948) <= 300"
        }, {
            action = "use",
            item = "Westfall Deed",
            itemID = 1972,
            quest = "Furlbrow's Deed",
            qid = 184,
            note = "Only if you have it in your bags.",
            condition = "itemcount(1972) > 0"
        }, {
            action = "turnin",
            quest = "Red Linen Goods",
            qid = 83,
            npc = "Sara Timberlain",
            npcID = 278,
            coords = {79.46, 68.79},
            note = "In front of the building."
        }, {
            action = "fpath",
            npc = "Ariena Stormfeather",
            npcID = 931,
            coords = {30.59, 59.41},
            note = "Be careful traveling here. Enemies in this zone are higher level.",
            condition = "not hardcore"
        }, {
            action = "vendor",
            npc = "Brog Hamfist",
            npcID = 151,
            coords = {43.96, 65.92},
            note = "Buy bags if needed."
        }, {
            action = "turnin",
            quest = "Collecting Kelp",
            qid = 112,
            npc = "William Pestle",
            npcID = 253,
            coords = {43.32, 65.71},
            note = "Inside the building."
        }, {
            action = "accept",
            quest = "The Escape",
            qid = 114,
            npc = "William Pestle",
            npcID = 253,
            coords = {43.32, 65.71}
        }, {
            action = "turnin",
            quest = "Deliver Thomas' Report",
            qid = 39,
            npc = "Marshal Dughan",
            npcID = 240,
            coords = {42.11, 65.93}
        }, {
            action = "turnin",
            quest = "The Jasperlode Mine",
            qid = 76,
            npc = "Marshal Dughan",
            npcID = 240,
            coords = {42.11, 65.93}
        }, {
            action = "accept",
            quest = "Westbrook Garrison Needs Help!",
            qid = 239,
            npc = "Marshal Dughan",
            npcID = 240,
            coords = {42.11, 65.93}
        }, {
            action = "accept",
            quest = "Cloth and Leather Armor",
            qid = 59,
            npc = "Marshal Dughan",
            npcID = 240,
            coords = {42.11, 65.93},
            condition = "Warlock"
        }, {
            action = "accept",
            quest = "Elmore's Task",
            qid = 1097,
            npc = "Smith Argus",
            npcID = 514,
            coords = {41.71, 65.55},
            note = "Inside the building."
        }, {
            action = "accept",
            quest = "Desperate Prayer",
            qid = 5635,
            npc = "Priestess Josetta",
            npcID = 377,
            coords = {43.28, 65.72},
            condition = "Human Priest and level >= 10"
        }, {
            action = "learn",
            spell = "Mind Blast",
            spellID = 8092,
            npc = "Priestess Josetta",
            npcID = 377,
            coords = {43.28, 65.72},
            condition = "Human Priest and level >= 10"
        }, {
            action = "learn",
            spell = "Lesser Heal",
            spellID = 2053,
            npc = "Priestess Josetta",
            npcID = 377,
            coords = {43.28, 65.72},
            condition = "Human Priest and level >= 10"
        }, {
            action = "learn",
            spell = "Shadow Word: Pain",
            spellID = 594,
            npc = "Priestess Josetta",
            npcID = 377,
            coords = {43.28, 65.72},
            condition = "Human Priest and level >= 10"
        }, {
            action = "learn",
            spell = "Resurrection",
            spellID = 2006,
            npc = "Priestess Josetta",
            npcID = 377,
            coords = {43.28, 65.72},
            note = "Only if you plan to do group content.",
            condition = "Human Priest and level >= 10"
        }, {
            action = "learn",
            spell = "Drain Soul",
            spellID = 1120,
            npc = "Maximillian Crowe",
            npcID = 906,
            coords = {44.39, 66.23},
            condition = "Warlock and level >= 10"
        }, {
            action = "learn",
            spell = "Create Healthstone (Minor)",
            spellID = 6201,
            npc = "Maximillian Crowe",
            npcID = 906,
            coords = {44.39, 66.23},
            condition = "Warlock and level >= 10"
        }, {
            action = "learn",
            spell = "Demon Skin",
            spellID = 696,
            npc = "Maximillian Crowe",
            npcID = 906,
            coords = {44.39, 66.23},
            condition = "Warlock and level >= 10"
        }, {
            action = "learn",
            spell = "Immolate",
            spellID = 707,
            npc = "Maximillian Crowe",
            npcID = 906,
            coords = {44.39, 66.23},
            condition = "Warlock and level >= 10"
        }, {
            action = "accept",
            quest = "Gakin's Summons",
            qid = 1685,
            npc = "Remen Marcot",
            npcID = 6121,
            coords = {44.49, 66.27},
            condition = "Human Warlock"
        }, {
            action = "learn",
            spell = "Seal of Righteousness",
            spellID = 20287,
            npc = "Brother Wilhelm",
            npcID = 927,
            coords = {41.10, 66.03},
            condition = "Paladin and level >= 10"
        }, {
            action = "learn",
            spell = "Lay on Hands",
            spellID = 633,
            npc = "Brother Wilhelm",
            npcID = 927,
            coords = {41.10, 66.03},
            condition = "Paladin and level >= 10"
        }, {
            action = "learn",
            spell = "Blessing of Protection",
            spellID = 1022,
            npc = "Brother Wilhelm",
            npcID = 927,
            coords = {41.10, 66.03},
            condition = "Paladin and level >= 10"
        }, {
            action = "learn",
            spell = "Devotion Aura",
            spellID = 10290,
            npc = "Brother Wilhelm",
            npcID = 927,
            coords = {41.10, 66.03},
            condition = "Paladin and level >= 10"
        }, {
            action = "learn",
            spell = "Conjure Water",
            spellID = 5505,
            npc = "Zaldimar Wefhellt",
            npcID = 328,
            coords = {43.25, 66.21},
            condition = "Mage and level >= 10"
        }, {
            action = "learn",
            spell = "Frost Nova",
            spellID = 122,
            npc = "Zaldimar Wefhellt",
            npcID = 328,
            coords = {43.25, 66.21},
            condition = "Mage and level >= 10"
        }, {
            action = "learn",
            spell = "Frost Armor",
            spellID = 7300,
            npc = "Zaldimar Wefhellt",
            npcID = 328,
            coords = {43.25, 66.21},
            condition = "Mage and level >= 10"
        }, {
            action = "learn",
            spell = "Sprint",
            spellID = 2983,
            npc = "Keryn Sylvius",
            npcID = 917,
            coords = {43.87, 65.93},
            condition = "Rogue and level >= 10"
        }, {
            action = "learn",
            spell = "Slice and Dice",
            spellID = 5171,
            npc = "Keryn Sylvius",
            npcID = 917,
            coords = {43.87, 65.93},
            condition = "Rogue and level >= 10"
        }, {
            action = "learn",
            spell = "Sap",
            spellID = 6770,
            npc = "Keryn Sylvius",
            npcID = 917,
            coords = {43.87, 65.93},
            note = "Low priority if short on gold.",
            condition = "Rogue and level >= 10"
        }, {
            action = "turnin",
            quest = "The Escape",
            qid = 114,
            npc = "Maybell Maclure",
            npcID = 251,
            coords = {43.15, 89.62},
            note = "Inside the building."
        }, {
            action = "turnin",
            quest = "Princess Must Die!",
            qid = 88,
            npc = "Ma Stonefield",
            npcID = 244,
            coords = {34.66, 84.48}
        }, {
            action = "turnin",
            quest = "Westbrook Garrison Needs Help!",
            qid = 239,
            npc = "Deputy Rainer",
            npcID = 963,
            coords = {24.23, 74.45}
        }, {
            action = "accept",
            quest = "Riverpaw Gnoll Bounty",
            qid = 11,
            npc = "Deputy Rainer",
            npcID = 963,
            coords = {24.23, 74.45}
        }, {
            action = "accept",
            quest = 'Wanted: "Hogger"',
            qid = 176,
            object = "Wanted Poster",
            objectID = 68,
            coords = {24.5, 74.7},
            condition = "Human Warlock"
        }, {
            action = "collect",
            item = "Painted Gnoll Armband",
            itemID = 782,
            quest = "Riverpaw Gnoll Bounty",
            qid = 11,
            coords = {26.75, 86.83},
            note = "More found around 24.75,94.05"
        }, {
            action = "kill",
            target = "Hogger",
            npcID = 448,
            item = "Huge Gnoll Claw",
            itemID = 1931,
            quest = 'Wanted: "Hogger"',
            qid = 176,
            coords = {26.75, 86.83},
            note = "Use tower cheese method. Video: youtu.be/x79t_tTgey0",
            condition = "Human Warlock"
        }, {
            action = "use",
            item = "Gold Pickup Schedule",
            itemID = 1307,
            quest = "The Collector",
            qid = 123,
            coords = {24.23, 74.45},
            condition = "Human Warlock and itemcount(1307) > 0"
        }, {
            action = "turnin",
            quest = "Riverpaw Gnoll Bounty",
            qid = 11,
            npc = "Deputy Rainer",
            npcID = 963,
            coords = {24.23, 74.45}
        }, {
            action = "turnin",
            quest = "Furlbrow's Deed",
            qid = 184,
            npc = "Farmer Furlbrow",
            npcID = 237,
            coords = {59.96, 19.36}
        }, {
            action = "accept",
            quest = "The Forgotten Heirloom",
            qid = 64,
            npc = "Farmer Furlbrow",
            npcID = 237,
            coords = {59.96, 19.36}
        }, {
            action = "accept",
            quest = "Westfall Stew",
            qid = 36,
            npc = "Verna Furlbrow",
            npcID = 238,
            coords = {59.92, 19.42}
        }, {
            action = "accept",
            quest = "Poor Old Blanchy",
            qid = 151,
            npc = "Verna Furlbrow",
            npcID = 238,
            coords = {59.92, 19.42}
        }, {
            action = "accept",
            quest = "The Killing Fields",
            qid = 9,
            npc = "Farmer Saldean",
            npcID = 233,
            coords = {56.05, 31.22}
        }, {
            action = "turnin",
            quest = "Westfall Stew",
            qid = 36,
            npc = "Salma Saldean",
            npcID = 235,
            coords = {56.42, 30.52}
        }, {
            action = "accept",
            quest = "Westfall Stew",
            qid = 38,
            npc = "Salma Saldean",
            npcID = 235,
            coords = {56.42, 30.52}
        }, {
            action = "accept",
            quest = "Goretusk Liver Pie",
            qid = 22,
            npc = "Salma Saldean",
            npcID = 235,
            coords = {56.42, 30.52}
        }, {
            action = "turnin",
            quest = "Report to Gryan Stoutmantle",
            qid = 109,
            npc = "Gryan Stoutmantle",
            npcID = 234,
            coords = {56.33, 47.52},
            note = "Stick to the roads if hardcore."
        }, {
            action = "accept",
            quest = "A Swift Message",
            qid = 6181,
            npc = "Quartermaster Lewis",
            npcID = 491,
            coords = {57.00, 47.17},
            condition = "Human"
        }, {
            action = "vendor",
            npc = "Quartermaster Lewis",
            npcID = 491,
            coords = {57.00, 47.17},
            note = "Buy bags if needed."
        }, {
            action = "fpath",
            npc = "Thor",
            npcID = 523,
            coords = {56.55, 52.64},
            note = "Get the Sentinel Hill flight path."
        }, {
            action = "turnin",
            quest = "A Swift Message",
            qid = 6181,
            npc = "Thor",
            npcID = 523,
            coords = {56.56, 52.64},
            condition = "Human"
        }, {
            action = "accept",
            quest = "Continue to Stormwind",
            qid = 6281,
            npc = "Thor",
            npcID = 523,
            coords = {56.56, 52.64},
            condition = "Human"
        }, {
            action = "fpath",
            npc = "Thor",
            npcID = 523,
            coords = {56.55, 52.64},
            note = "Open the flight map to register Stormwind path.",
            condition = "Human"
        }, {
            action = "turnin",
            quest = "Shipment to Stormwind",
            qid = 61,
            npc = "Morgan Pestle",
            npcID = 279,
            coords = {56.21, 64.59}
        }, {
            action = "buy",
            item = "Balanced Throwing Dagger",
            itemID = 25872,
            npc = "Thurman Mullby",
            npcID = 1285,
            coords = {58.37, 61.68},
            note = "Buy if affordable. Skip if you have better.",
            condition = "Rogue"
        }, {
            action = "train",
            skill = "TH_SWORD",
            npc = "Woo Ping",
            npcID = 11867,
            coords = {57.13, 57.71},
            note = "Train Two-Handed Swords.",
            condition = "Warrior"
        }, {
            action = "train",
            skill = "SWORD",
            npc = "Woo Ping",
            npcID = 11867,
            coords = {57.13, 57.71},
            note = "Train One-Handed Swords.",
            condition = "Rogue"
        }, {
            action = "buy",
            item = "Cutlass",
            itemID = 851,
            npc = "Gunther Weller",
            npcID = 1289,
            coords = {57.55, 57.07},
            note = "Buy if you can afford it. Skip if you have better.",
            condition = "Rogue and itemcount(851) == 0"
        }, {
            action = "train",
            skill = "TH_STAFF",
            npc = "Woo Ping",
            npcID = 11867,
            coords = {57.13, 57.71},
            note = "Train Staves. Skip if you need to prioritize wand.",
            condition = "Priest"
        }, {
            action = "sethome",
            npc = "Innkeeper Allison",
            npcID = 6740,
            coords = {52.62, 65.70},
            note = "Set your Hearthstone in Stormwind City."
        }, {
            action = "note",
            note = "Do You Need to Create a Wand?\nIf yes, gather 70 Linen Cloth or skip if you already have one.",
            condition = "Priest"
        }, {
            action = "collect",
            item = "Linen Cloth",
            itemID = 2589,
            quest = "Elmore's Task",
            qid = 1097,
            note = "Buy from AH if needed.",
            condition = "Priest"
        }, {
            action = "train",
            skill = "Tailoring",
            skillMax = 75,
            npc = "Lawrence Schneider",
            npcID = 1300,
            coords = {43.69, 73.71},
            note = "Inside the building.",
            condition = "Priest or Warlock"
        }, {
            action = "craft",
            item = "Bolt of Linen Cloth",
            itemID = 2996,
            coords = {43.69, 73.71},
            note = "Create 35 Bolts of Linen Cloth via Tailoring.",
            condition = "Priest or Warlock"
        }, {
            action = "buy",
            item = "Coarse Thread",
            itemID = 2320,
            npc = "Alexandra Bolero",
            npcID = 1347,
            coords = {43.25, 74.08},
            condition = "Priest or Warlock"
        }, {
            action = "learn",
            spell = "Brown Linen Robe",
            spellID = 7623,
            npc = "Lawrence Schneider",
            npcID = 1300,
            coords = {43.69, 73.71},
            condition = "Priest or Warlock"
        }, {
            action = "craft",
            item = "Brown Linen Robe",
            itemID = 6238,
            coords = {43.69, 73.71},
            note = "Craft 10 Brown Linen Robes to disenchant later.",
            condition = "Priest or Warlock"
        }, {
            action = "train",
            skill = "Enchanting",
            skillMax = 75,
            npc = "Lucan Cordell",
            npcID = 1317,
            coords = {42.94, 64.65},
            condition = "Priest or Warlock"
        }, {
            action = "collect",
            item = "Strange Dust",
            itemID = 10940,
            coords = {42.81, 64.39},
            note = "Disenchant Brown Linen Robes. Purchase from Jessara or AH if needed.",
            condition = "Priest or Warlock"
        }, {
            action = "collect",
            item = "Lesser Magic Essence",
            itemID = 10938,
            coords = {42.81, 64.39},
            note = "Disenchant or purchase as above.",
            condition = "Priest or Warlock"
        }, {
            action = "buy",
            item = "Copper Rod",
            itemID = 6217,
            npc = "Jessara Cordell",
            npcID = 1318,
            coords = {42.81, 64.39},
            condition = "Priest or Warlock"
        }, {
            action = "buy",
            item = "Simple Wood",
            itemID = 4470,
            npc = "Jessara Cordell",
            npcID = 1318,
            coords = {42.81, 64.39},
            condition = "Priest or Warlock"
        }, {
            action = "craft",
            item = "Runed Copper Rod",
            itemID = 6218,
            coords = {42.94, 64.65},
            note = "Create the rod using Enchanting window.",
            condition = "Priest or Warlock"
        }, {
            action = "learn",
            spell = "Lesser Magic Wand",
            spellID = 14293,
            npc = "Betty Quin",
            npcID = 11068,
            coords = {43.11, 63.72},
            condition = "Priest or Warlock"
        }, {
            action = "craft",
            item = "Lesser Magic Wand",
            itemID = 11287,
            coords = {43.11, 63.72},
            note = "Use Enchanting to craft your wand.",
            condition = "Priest or Warlock"
        }, {
            action = "train",
            skill = "TH_STAFF",
            npc = "Woo Ping",
            npcID = 11867,
            coords = {57.13, 57.71},
            note = "Train Staves. Skip if you prefer a wand.",
            condition = "Human Warlock"
        }, {
            action = "collect",
            item = "Linen Cloth",
            itemID = 2589,
            quest = "Elmore's Task",
            qid = 1097,
            note = "You are about to create your wand. AH is a valid option.",
            condition = "Warlock"
        }, {
            action = "turnin",
            quest = "Gakin's Summons",
            qid = 1685,
            npc = "Gakin the Darkbinder",
            npcID = 6122,
            coords = {25.26, 78.56},
            note = "Downstairs in the building.",
            condition = "Human Warlock"
        }, {
            action = "accept",
            quest = "Surena Caledon",
            qid = 1688,
            npc = "Gakin the Darkbinder",
            npcID = 6122,
            coords = {25.26, 78.56},
            condition = "Human Warlock"
        }, {
            action = "trainer",
            npc = "Jennea Cannon",
            npcID = 5497,
            coords = {38.62, 79.35},
            zone = "Stormwind City",
            class = "Mage",
            quest = 1097,
            note = "Inside the tower."
        }, {
            action = "trainer",
            npc = "Einris Brightspear",
            npcID = 5515,
            coords = {61.66, 15.30},
            zone = "Stormwind City",
            class = "Hunter",
            quest = 1097,
            note = "Inside the building."
        }, {
            action = "trainer",
            npc = "Ursula Deline",
            npcID = 5495,
            coords = {26.13, 77.20},
            zone = "Stormwind City",
            class = "Warlock",
            quest = 1097,
            note = "In the basement."
        }, {
            action = "trainer",
            npc = "Wu Shen",
            npcID = 5479,
            coords = {78.72, 45.77},
            zone = "Stormwind City",
            class = "Warrior",
            quest = 1097,
            note = "Inside the building."
        }, {
            action = "trainer",
            npc = "Osborne the Night Man",
            npcID = 918,
            coords = {74.54, 52.80},
            zone = "Stormwind City",
            class = "Rogue",
            quest = 1097
        }, {
            action = "trainer",
            npc = "Sheldras Moontree",
            npcID = 5504,
            coords = {20.92, 55.52},
            zone = "Stormwind City",
            class = "Druid",
            quest = 1097
        }, {
            action = "trainer",
            npc = "Brother Benjamin",
            npcID = 5484,
            coords = {41.64, 28.98},
            zone = "Stormwind City",
            class = "Priest",
            quest = 1097,
            note = "He patrols inside."
        }, {
            action = "trainer",
            npc = "Arthur the Faithful",
            npcID = 5491,
            coords = {38.65, 32.80},
            zone = "Stormwind City",
            class = "Paladin",
            quest = 1097,
            note = "Inside the building."
        }, {
            action = "turnin",
            quest = "The Collector",
            qid = 123,
            npc = "Marshal Dughan",
            npcID = 240,
            coords = {42.11, 65.93},
            zone = "Elwynn Forest",
            condition = "Human Warlock"
        }, {
            action = "accept",
            quest = "Manhunt",
            qid = 147,
            npc = "Marshal Dughan",
            npcID = 240,
            coords = {42.11, 65.93},
            zone = "Elwynn Forest",
            condition = "Human Warlock"
        }, {
            action = "turnin",
            quest = 'Wanted: "Hogger"',
            qid = 176,
            npc = "Marshal Dughan",
            npcID = 240,
            coords = {42.11, 65.93},
            zone = "Elwynn Forest",
            condition = "Human Warlock"
        }, {
            action = "turnin",
            quest = "Cloth and Leather Armor",
            qid = 59,
            npc = "Sara Timberlain",
            npcID = 278,
            coords = {79.46, 68.78},
            zone = "Elwynn Forest",
            condition = "Human Warlock"
        }, {
            action = "kill",
            npc = "Surena Caledon",
            npcID = 881,
            coords = {71.02, 80.78},
            zone = "Elwynn Forest",
            item = "Surena's Choker",
            itemID = 6810,
            quest = 1688,
            note = "Use DoTs, wand Surena, fear third. Use healthstone if needed.",
            condition = "Human Warlock"
        }, {
            action = "kill",
            npc = "Morgan the Collector",
            npcID = 473,
            coords = {71.02, 80.78},
            zone = "Elwynn Forest",
            item = "The Collector's Ring",
            itemID = 2239,
            quest = 147,
            condition = "Human Warlock"
        }, {
            action = "grind",
            coords = {71.02, 80.78},
            zone = "Elwynn Forest",
            note = "Grind XP until Hearthstone is ready",
            condition = "Human Warlock and C_Container.GetItemCooldown(6948) <= 600"
        }, {
            action = "turnin",
            quest = "Manhunt",
            qid = 147,
            npc = "Marshal Dughan",
            npcID = 240,
            coords = {42.11, 65.93},
            zone = "Elwynn Forest",
            condition = "Human Warlock"
        }, {
            action = "turnin",
            quest = "Surena Caledon",
            qid = 1688,
            npc = "Gakin the Darkbinder",
            npcID = 6122,
            coords = {25.26, 78.56},
            zone = "Stormwind City",
            condition = "Human Warlock"
        }, {
            action = "accept",
            quest = "The Binding",
            qid = 1689,
            npc = "Gakin the Darkbinder",
            npcID = 6122,
            coords = {25.26, 78.56},
            zone = "Stormwind City",
            condition = "Human Warlock"
        }, {
            action = "use",
            item = "Bloodstone Choker",
            itemID = 6928,
            coords = {25.11, 77.46},
            zone = "Stormwind City",
            npc = "Summoned Voidwalker",
            npcID = 5676,
            quest = 1689,
            note = "Use inside the pink circle in the crypt.",
            condition = "Human Warlock"
        }, {
            action = "turnin",
            quest = "The Binding",
            qid = 1689,
            npc = "Gakin the Darkbinder",
            npcID = 6122,
            coords = {25.25, 78.53},
            zone = "Stormwind City",
            condition = "Human Warlock"
        }, {
            action = "note",
            note = "Use 'Drain Soul' to create Soul Shards. Then summon your Voidwalker using the shard.",
            condition = "Human Warlock"
        }, {
            action = "walk",
            coords = {29.15, 74.14},
            zone = "Stormwind City",
            condition = "Human Warlock and subzone('The Slaughtered Lamb')"
        }, {
            action = "turnin",
            quest = "Continue to Stormwind",
            qid = 6281,
            npc = "Osric Strang",
            npcID = 1323,
            coords = {74.32, 47.24},
            zone = "Stormwind City",
            condition = "Human"
        }, {
            action = "accept",
            quest = "Dungar Longdrink",
            qid = 6261,
            npc = "Osric Strang",
            npcID = 1323,
            coords = {74.32, 47.24},
            zone = "Stormwind City",
            condition = "Human"
        }, {
            action = "accept",
            quest = "A Warrior's Training",
            qid = 1638,
            npc = "Lyria Du Lac",
            npcID = 913,
            coords = {41.09, 65.77},
            zone = "Elwynn Forest",
            condition = "Human Warrior"
        }, {
            action = "turnin",
            quest = "A Warrior's Training",
            qid = 1638,
            npc = "Harry Burlguard",
            npcID = 6089,
            coords = {74.25, 37.26},
            zone = "Stormwind City",
            condition = "Human Warrior"
        }, {
            action = "accept",
            quest = "Bartleby the Drunk",
            qid = 1639,
            npc = "Harry Burlguard",
            npcID = 6089,
            coords = {74.25, 37.26},
            zone = "Stormwind City",
            condition = "Human Warrior"
        }, {
            action = "turnin",
            quest = "Bartleby the Drunk",
            qid = 1639,
            npc = "Bartleby",
            npcID = 6090,
            coords = {73.83, 37.17},
            zone = "Stormwind City",
            condition = "Human Warrior"
        }, {
            action = "accept",
            quest = "Beat Bartleby",
            qid = 1640,
            npc = "Bartleby",
            npcID = 6090,
            coords = {73.83, 37.17},
            zone = "Stormwind City",
            condition = "Human Warrior"
        }, {
            action = "kill",
            quest = 1640,
            npc = "Bartleby",
            npcID = 6090,
            coords = {73.83, 37.17},
            zone = "Stormwind City",
            condition = "Human Warrior"
        }, {
            action = "turnin",
            quest = "Beat Bartleby",
            qid = 1640,
            npc = "Bartleby",
            npcID = 6090,
            coords = {73.83, 37.17},
            zone = "Stormwind City",
            condition = "Human Warrior"
        }, {
            action = "accept",
            quest = "Bartleby's Mug",
            qid = 1665,
            npc = "Bartleby",
            npcID = 6090,
            coords = {73.83, 37.17},
            zone = "Stormwind City",
            condition = "Human Warrior"
        }, {
            action = "turnin",
            quest = "Bartleby's Mug",
            qid = 1665,
            npc = "Harry Burlguard",
            npcID = 6089,
            coords = {74.25, 37.26},
            zone = "Stormwind City",
            condition = "Human Warrior"
        }, {
            action = "turnin",
            quest = "Elmore's Task",
            qid = 1097,
            npc = "Grimand Elmore",
            npcID = 1416,
            coords = {51.76, 12.07},
            zone = "Stormwind City"
        }, {
            action = "accept",
            quest = "Stormpike's Delivery",
            qid = 353,
            npc = "Grimand Elmore",
            npcID = 1416,
            coords = {51.76, 12.07},
            zone = "Stormwind City"
        }, {
            action = "accept",
            quest = "Deeprun Rat Roundup",
            qid = 6661,
            npc = "Monty",
            npcID = 12997,
            coords = {0, 0},
            zone = "Deeprun Tram"
        }, {
            action = "use",
            item = "Rat Catcher's Flute",
            itemID = 17117,
            quest = 6661,
            coords = {0, 0},
            zone = "Deeprun Tram"
        }, {
            action = "turnin",
            quest = "Deeprun Rat Roundup",
            qid = 6661,
            npc = "Monty",
            npcID = 12997,
            coords = {0, 0},
            zone = "Deeprun Tram"
        }, {
            action = "learn",
            skill = "Cooking",
            coords = {60.08, 36.43},
            zone = "Ironforge",
            npc = "Daryl Riknussun",
            npcID = 5159,
            condition = "level >= 5"
        }, {
            action = "fpath",
            npc = "Gryth Thurden",
            npcID = 1573,
            coords = {55.50, 47.75},
            zone = "Ironforge"
        }, {
            action = "train",
            skill = "Two-Handed Maces",
            npc = "Buliwyf Stonehand",
            npcID = 11865,
            coords = {61.17, 89.52},
            zone = "Ironforge",
            condition = "Warrior"
        }, {
            action = "train",
            skill = "Thrown",
            npc = "Bixi Wobblebonk",
            npcID = 13084,
            coords = {62.23, 89.62},
            zone = "Ironforge",
            condition = "Warrior"
        }, {
            action = "buy",
            item = "Small Throwing Knife",
            itemID = 2947,
            npc = "Brenwyn Wintersteel",
            npcID = 5120,
            coords = {62.37, 88.68},
            zone = "Ironforge",
            condition = "Warrior"
        }, {
            action = "accept",
            quest = "Operation Recombobulation",
            qid = 412,
            npc = "Razzle Sprysprocket",
            npcID = 1269,
            coords = {45.85, 49.37},
            zone = "Dun Morogh",
            condition = "level < 11"
        }, {
            action = "accept",
            quest = "Frostmane Hold",
            qid = 287,
            npc = "Senir Whitebeard",
            npcID = 1252,
            coords = {46.73, 53.83},
            zone = "Dun Morogh",
            condition = "level < 11"
        }, {
            action = "accept",
            quest = "Tundra MacGrann's Stolen Stash",
            qid = 312,
            npc = "Tundra MacGrann",
            npcID = 1266,
            coords = {34.57, 51.65},
            zone = "Dun Morogh",
            condition = "level < 11"
        }, {
            action = "loot",
            item = "MacGrann's Dried Meats",
            itemID = 2667,
            quest = 312,
            coords = {38.51, 53.93},
            zone = "Dun Morogh"
        }, {
            action = "turnin",
            quest = "Tundra MacGrann's Stolen Stash",
            qid = 312,
            npc = "Tundra MacGrann",
            npcID = 1266,
            coords = {34.57, 51.65},
            zone = "Dun Morogh"
        },
        {
            action = "explore",
            quest = 287,
            coords = {22.79, 52.10},
            zone = "Dun Morogh"
        }, {
            action = "kill",
            npc = "Frostmane Headhunter",
            npcID = 1123,
            quest = 287,
            coords = {24.87, 50.90},
            zone = "Dun Morogh"
        }, {
            action = "kill",
            npc = "Leper Gnome",
            npcID = 1211,
            quest = 412,
            item = "Restabilization Cog",
            itemID = 3083,
            coords = {25.64, 43.33},
            zone = "Dun Morogh"
        }, {
            action = "kill",
            npc = "Leper Gnome",
            npcID = 1211,
            quest = 412,
            item = "Gyromechanic Gear",
            itemID = 3084,
            coords = {25.64, 43.33},
            zone = "Dun Morogh"
        }, {
            action = "turnin",
            quest = "Frostmane Hold",
            qid = 287,
            npc = "Senir Whitebeard",
            npcID = 1252,
            coords = {46.73, 53.82},
            zone = "Dun Morogh"
        }, {
            action = "turnin",
            quest = "Operation Recombobulation",
            qid = 412,
            npc = "Razzle Sprysprocket",
            npcID = 1269,
            coords = {45.85, 49.37},
            zone = "Dun Morogh"
        }, {
            action = "accept",
            quest = "Protecting the Herd",
            qid = 314,
            npc = "Rudra Amberstill",
            npcID = 1265,
            coords = {63.08, 49.89},
            zone = "Dun Morogh",
            condition = "Warrior or Rogue or Paladin"
        }, {
            action = "kill",
            npc = "Vagash",
            npcID = undefined,
            coords = {63.90, 49.86},
            zone = "Dun Morogh",
            item = "Fang of Vagash",
            itemID = 3627,
            quest = 314
        }, {
            action = "turnin",
            quest = "Protecting the Herd",
            qid = 314,
            npc = "Rudra Amberstill",
            npcID = 1265,
            coords = {63.08, 49.89},
            zone = "Dun Morogh"
        }, {
            action = "accept",
            quest = "The Public Servant",
            qid = 433,
            npc = "Senator Mehr Stonehallow",
            npcID = 1977,
            coords = {68.67, 55.97},
            zone = "Dun Morogh"
        }, {
            action = "accept",
            quest = "Those Blasted Troggs!",
            qid = 432,
            npc = "Foreman Stonebrow",
            npcID = 1254,
            coords = {69.08, 56.33},
            zone = "Dun Morogh"
        }, {
            action = "kill",
            npc = "Rockjaw Bonesnapper",
            npcID = 1117,
            coords = {70.98, 54.77},
            zone = "Dun Morogh",
            quest = 433
        }, {
            action = "kill",
            npc = "Rockjaw Skullthumper",
            npcID = 1115,
            coords = {70.70, 56.49},
            zone = "Dun Morogh",
            quest = 432
        }, {
            action = "grind",
            coords = {70.70, 56.49},
            zone = "Dun Morogh",
            note = "Grind until 6400 XP into level 10",
            condition = "level == 10 and xp() < 6400"
        }, {
            action = "turnin",
            quest = "The Public Servant",
            qid = 433,
            npc = "Senator Mehr Stonehallow",
            npcID = 1977,
            coords = {68.67, 55.97},
            zone = "Dun Morogh"
        }, {
            action = "turnin",
            quest = "Those Blasted Troggs!",
            qid = 432,
            npc = "Foreman Stonebrow",
            npcID = 1254,
            coords = {69.08, 56.33},
            zone = "Dun Morogh"
        }, {
            action = "accept",
            quest = "The Lost Pilot",
            qid = 419,
            npc = "Pilot Hammerfoot",
            npcID = 1960,
            coords = {83.89, 39.19},
            zone = "Dun Morogh"
        }, {
            action = "turnin",
            quest = "The Lost Pilot",
            qid = 419,
            npc = "A Dwarven Corpse",
            npcID = 2059,
            coords = {79.67, 36.17},
            zone = "Dun Morogh"
        }, {
            action = "accept",
            quest = "A Pilot's Revenge",
            qid = 417,
            npc = "A Dwarven Corpse",
            npcID = 2059,
            coords = {79.67, 36.17},
            zone = "Dun Morogh"
        }, {
            action = "kill",
            npc = "Mangeclaw",
            npcID = 1961,
            coords = {78.31, 37.76},
            zone = "Dun Morogh",
            item = "Mangy Claw",
            itemID = 3183,
            quest = 417
        }, {
            action = "turnin",
            quest = "A Pilot's Revenge",
            qid = 417,
            npc = "Pilot Hammerfoot",
            npcID = 1960,
            coords = {83.89, 39.19},
            zone = "Dun Morogh"
        }, {
            action = "turnin",
            quest = "Stormpike's Delivery",
            qid = 353,
            npc = "Mountaineer Stormpike",
            npcID = 1343,
            coords = {24.76, 18.40},
            zone = "Loch Modan"
        }, {
            action = "accept",
            quest = "Filthy Paws",
            qid = 307,
            npc = "Mountaineer Stormpike",
            npcID = 1343,
            coords = {24.76, 18.40},
            zone = "Loch Modan"
        }, {
            action = "grind",
            coords = {35.69, 31.78},
            zone = "Loch Modan",
            note = "Grind until 7950 XP into level 11",
            condition = "level == 11 and xp() < 7950"
        }, {
            action = "accept",
            quest = "Thelsamar Blood Sausages",
            qid = 418,
            npc = "Vidra Hearthstove",
            npcID = 1963,
            coords = {34.83, 49.28},
            zone = "Loch Modan"
        }, {
            action = "vendor",
            npc = "Yanni Stoutheart",
            npcID = 1682,
            coords = {34.76, 48.62},
            zone = "Loch Modan"
        }, {
            action = "accept",
            quest = "Rat Catching",
            qid = 416,
            npc = "Mountaineer Kadrell",
            npcID = 1340,
            coords = {36.73, 41.98},
            zone = "Loch Modan"
        }, {
            action = "accept",
            quest = "Mountaineer Stormpike's Task",
            qid = 1339,
            npc = "Mountaineer Kadrell",
            npcID = 1340,
            coords = {36.73, 41.98},
            zone = "Loch Modan"
        }, {
            action = "collect",
            item = "Miners' Gear",
            itemID = 2640,
            quest = 307,
            coords = {35.48, 18.85},
            zone = "Loch Modan"
        }, {
            action = "kill",
            npc = "Tunnel Rat",
            npcID = undefined,
            quest = 416,
            item = "Tunnel Rat Ear",
            itemID = 3110,
            coords = {24.57, 29.79},
            zone = "Loch Modan"
        }, {
            action = "collect",
            item = "Linen Cloth",
            itemID = 2589,
            quest = 1644,
            coords = {24.57, 29.79},
            zone = "Loch Modan",
            condition = "Human Paladin"
        }, {
            action = "turnin",
            quest = "Filthy Paws",
            qid = 307,
            npc = "Mountaineer Stormpike",
            npcID = 1343,
            coords = {24.76, 18.40},
            zone = "Loch Modan"
        }, {
            action = "turnin",
            quest = "Mountaineer Stormpike's Task",
            qid = 1339,
            npc = "Mountaineer Stormpike",
            npcID = 1343,
            coords = {24.76, 18.40},
            zone = "Loch Modan"
        }, {
            action = "accept",
            quest = "Stormpike's Order",
            qid = 1338,
            npc = "Mountaineer Stormpike",
            npcID = 1343,
            coords = {24.76, 18.40},
            zone = "Loch Modan"
        }, {
            action = "kill",
            npc = "Mountain Boar",
            npcID = 1190,
            quest = 418,
            item = "Boar Intestines",
            itemID = 3172,
            coords = {36.99, 34.36},
            zone = "Loch Modan"
        }, {
            action = "kill",
            npc = "Forest Lurker",
            npcID = 1195,
            quest = 418,
            item = "Spider Ichor",
            itemID = 3174,
            coords = {35.69, 31.78},
            zone = "Loch Modan"
        }, {
            action = "kill",
            npc = "Elder Black Bear",
            npcID = 1186,
            quest = 418,
            item = "Bear Meat",
            itemID = 3173,
            coords = {35.68, 32.10},
            zone = "Loch Modan"
        }, {
            action = "turnin",
            quest = "Thelsamar Blood Sausages",
            qid = 418,
            npc = "Vidra Hearthstove",
            npcID = 1963,
            coords = {34.83, 49.28},
            zone = "Loch Modan"
        }, {
            action = "turnin",
            quest = "Rat Catching",
            qid = 416,
            npc = "Mountaineer Kadrell",
            npcID = 1340,
            coords = {36.73, 41.98},
            zone = "Loch Modan"
        }, {
            action = "fpath",
            npc = "Thorgrum Borrelson",
            npcID = 1572,
            coords = {33.94, 50.95},
            zone = "Loch Modan"
        }, {
            action = "accept",
            quest = "In Defense of the King's Lands",
            qid = 224,
            npc = "Mountaineer Cobbleflint",
            npcID = 1089,
            coords = {22.07, 73.12}
        }, {
            action = "accept",
            quest = "The Trogg Threat",
            qid = 267,
            npc = "Captain Rugelfuss",
            npcID = 1092,
            coords = {23.23, 73.67}
        }, {
            action = "collect",
            item = "Trogg Stone Tooth",
            itemID = 2536,
            quest = 267,
            coords = {32.51, 73.25},
            zone = "Loch Modan"
        }, {
            action = "kill",
            npc = "Stonesplinter Trogg",
            npcID = 1161,
            quest = 224,
            coords = {32.51, 73.25},
            zone = "Loch Modan"
        }, {
            action = "kill",
            npc = "Stonesplinter Scout",
            npcID = 1162,
            quest = 224,
            coords = {32.51, 73.25},
            zone = "Loch Modan"
        }, {
            action = "grind",
            coords = {32.51, 73.25},
            zone = "Loch Modan",
            note = "Grind until 8300 XP into level 12",
            condition = "level == 12 and xp() < 8300"
        }, {
            action = "turnin",
            quest = "In Defense of the King's Lands",
            qid = 224,
            npc = "Mountaineer Cobbleflint",
            npcID = 1089,
            coords = {22.07, 73.13},
            zone = "Loch Modan"
        }, {
            action = "turnin",
            quest = "The Trogg Threat",
            qid = 267,
            npc = "Captain Rugelfuss",
            npcID = 1092,
            coords = {23.23, 73.67},
            zone = "Loch Modan"
        }, {
            action = "accept",
            quest = "The Tome of Divinity",
            qid = 1641,
            npc = "Duthorian Rall",
            npcID = 6171,
            coords = {39.81, 29.80},
            zone = "Stormwind City",
            condition = "Human Paladin"
        }, {
            action = "use",
            item = "Tome of Divinity",
            itemID = 6775,
            quest = 1642,
            zone = "Stormwind City",
            condition = "Human Paladin"
        }, {
            action = "turnin",
            quest = "The Tome of Divinity",
            qid = 1642,
            npc = "Duthorian Rall",
            npcID = 6171,
            coords = {39.81, 29.80},
            zone = "Stormwind City",
            condition = "Human Paladin"
        }, {
            action = "accept",
            quest = "The Tome of Divinity",
            qid = 1643,
            npc = "Duthorian Rall",
            npcID = 6171,
            coords = {39.81, 29.80},
            zone = "Stormwind City",
            condition = "Human Paladin"
        }, {
            action = "turnin",
            quest = "The Tome of Divinity",
            qid = 1643,
            npc = "Stephanie Turner",
            npcID = 6174,
            coords = {57.08, 61.74},
            zone = "Stormwind City",
            condition = "Human Paladin"
        }, {
            action = "accept",
            quest = "The Tome of Divinity",
            qid = 1644,
            npc = "Stephanie Turner",
            npcID = 6174,
            coords = {57.08, 61.74},
            zone = "Stormwind City",
            condition = "Human Paladin"
        }, {
            action = "turnin",
            quest = "The Tome of Divinity",
            qid = 1644,
            npc = "Stephanie Turner",
            npcID = 6174,
            coords = {57.08, 61.74},
            zone = "Stormwind City",
            condition = "Human Paladin"
        }, {
            action = "accept",
            quest = "The Tome of Divinity",
            qid = 1780,
            npc = "Stephanie Turner",
            npcID = 6174,
            coords = {57.08, 61.74},
            zone = "Stormwind City",
            condition = "Human Paladin"
        }, {
            action = "turnin",
            quest = "The Tome of Divinity",
            qid = 1780,
            npc = "Duthorian Rall",
            npcID = 6171,
            coords = {39.81, 29.80},
            zone = "Stormwind City",
            condition = "Human Paladin"
        }, {
            action = "accept",
            quest = "The Tome of Divinity",
            qid = 1781,
            npc = "Duthorian Rall",
            npcID = 6171,
            coords = {39.81, 29.80},
            zone = "Stormwind City",
            condition = "Human Paladin"
        }, {
            action = "turnin",
            quest = "The Tome of Divinity",
            qid = 1781,
            npc = "Gazin Tenorm",
            npcID = 6173,
            coords = {38.55, 26.45},
            zone = "Stormwind City",
            condition = "Human Paladin"
        }, {
            action = "accept",
            quest = "The Tome of Divinity",
            qid = 1786,
            npc = "Gazin Tenorm",
            npcID = 6173,
            coords = {38.55, 26.45},
            zone = "Stormwind City",
            condition = "Human Paladin"
        }, {
            action = "use",
            item = "Symbol of Life",
            itemID = 6866,
            quest = 1786,
            coords = {72.60, 51.41},
            zone = "Elwynn Forest",
            npc = "Henze Faulk",
            npcID = 6172,
            condition = "Human Paladin"
        }, {
            action = "turnin",
            quest = "The Tome of Divinity",
            qid = 1786,
            npc = "Henze Faulk",
            npcID = 6172,
            coords = {72.60, 51.41},
            zone = "Elwynn Forest",
            condition = "Human Paladin"
        }, {
            action = "accept",
            quest = "The Tome of Divinity",
            qid = 1787,
            npc = "Henze Faulk",
            npcID = 6172,
            coords = {72.60, 51.41},
            zone = "Elwynn Forest",
            condition = "Human Paladin"
        }, {
            action = "kill",
            npc = "Defias Rogue Wizard",
            npcID = 474,
            coords = {74.07, 51.57},
            zone = "Elwynn Forest",
            item = "Defias Script",
            itemID = 6846,
            quest = 1787,
            condition = "Human Paladin"
        }, {
            action = "turnin",
            quest = "The Tome of Divinity",
            qid = 1787,
            npc = "Gazin Tenorm",
            npcID = 6173,
            coords = {38.56, 26.47},
            zone = "Stormwind City",
            condition = "Human Paladin"
        }, {
            action = "accept",
            quest = "The Tome of Divinity",
            qid = 1788,
            npc = "Gazin Tenorm",
            npcID = 6173,
            coords = {38.56, 26.47},
            zone = "Stormwind City",
            condition = "Human Paladin"
        }, {
            action = "turnin",
            quest = "The Tome of Divinity",
            qid = 1788,
            npc = "Duthorian Rall",
            npcID = 6171,
            coords = {39.81, 29.80},
            zone = "Stormwind City",
            condition = "Human Paladin"
        }, {
            action = "turnin",
            quest = "Stormpike's Order",
            qid = 1338,
            npc = "Furen Longbeard",
            npcID = 5413,
            coords = {58.09, 16.53},
            zone = "Stormwind City"
        }, {
            action = "turnin",
            quest = "Dungar Longdrink",
            qid = 6261,
            npc = "Dungar Longdrink",
            npcID = 352,
            coords = {66.27, 62.13},
            zone = "Stormwind City",
            condition = "Human"
        }, {
            action = "accept",
            quest = "Return to Lewis",
            qid = 6285,
            npc = "Dungar Longdrink",
            npcID = 352,
            coords = {66.27, 62.13},
            zone = "Stormwind City",
            condition = "Human"
        }, {
            action = "collect",
            item = "Red Leather Bandana",
            itemID = 0,
            quest = 153,
            coords = {49.24, 19.42},
            zone = "Westfall"
        }, {
            action = "collect",
            item = "Gnoll Paw",
            itemID = 725,
            quest = 102,
            coords = {52.06, 14.98},
            zone = "Westfall"
        }, {
            action = "collect",
            item = "Murloc Eye",
            itemID = 730,
            quest = 38,
            coords = {54.65, 10.94},
            zone = "Westfall"
        }, {
            action = "collect",
            item = "Goretusk Liver",
            itemID = 723,
            quest = 22,
            coords = {53.55, 41.12},
            zone = "Westfall"
        }, {
            action = "collect",
            item = "Goretusk Snout",
            itemID = 731,
            quest = 38,
            coords = {53.55, 41.12},
            zone = "Westfall"
        }, {
            action = "collect",
            item = "Stringy Vulture Meat",
            itemID = 729,
            quest = 38,
            coords = {53.55, 41.12},
            zone = "Westfall"
        }, {
            action = "collect",
            item = "Handful of Oats",
            itemID = 1528,
            quest = 151,
            coords = {50.51, 20.69},
            zone = "Westfall"
        }, {
            action = "turnin",
            quest = "Poor Old Blanchy",
            qid = 151,
            npc = "Verna Furlbrow",
            npcID = 238,
            coords = {59.92, 19.42},
            zone = "Westfall"
        }, {
            action = "turnin",
            quest = "The Forgotten Heirloom",
            qid = 64,
            npc = "Farmer Furlbrow",
            npcID = 237,
            coords = {59.95, 19.36},
            zone = "Westfall"
        }, {
            action = "collect",
            item = "Okra",
            itemID = 732,
            quest = 38,
            coords = {53.89, 32.26},
            zone = "Westfall"
        }, {
            action = "turnin",
            quest = "Goretusk Liver Pie",
            qid = 22,
            npc = "Salma Saldean",
            npcID = 235,
            coords = {56.42, 30.52},
            zone = "Westfall"
        }, {
            action = "turnin",
            quest = "Westfall Stew",
            qid = 38,
            npc = "Salma Saldean",
            npcID = 235,
            coords = {56.42, 30.52},
            zone = "Westfall"
        }, {
            action = "kill",
            npc = "Harvest Watcher",
            npcID = 114,
            quest = 9,
            coords = {53.89, 32.26},
            zone = "Westfall"
        }, {
            action = "grind",
            coords = {53.89, 32.26},
            zone = "Westfall",
            note = "Grind until 11900 XP into level 14",
            condition = "level == 14 and xp() < 11900"
        }, {
            action = "turnin",
            quest = "The Killing Fields",
            qid = 9,
            npc = "Farmer Saldean",
            npcID = 233,
            coords = {56.04, 31.23},
            zone = "Westfall"
        }, {
            action = "vendor",
            npc = "Farmer Saldean",
            npcID = 233,
            coords = {56.04, 31.23},
            zone = "Westfall"
        }, {
            action = "turnin",
            quest = "Patrolling Westfall",
            qid = 102,
            npc = "Captain Danuvin",
            npcID = 821,
            coords = {56.42, 47.62},
            zone = "Westfall"
        }, {
            action = "turnin",
            quest = "The People's Militia",
            qid = 12,
            npc = "Gryan Stoutmantle",
            npcID = 234,
            coords = {56.33, 47.52},
            zone = "Westfall"
        }, {
            action = "accept",
            quest = "The Defias Brotherhood",
            qid = 65,
            npc = "Gryan Stoutmantle",
            npcID = 234,
            coords = {56.33, 47.52},
            zone = "Westfall"
        }, {
            action = "vendor",
            npc = "Quartermaster Lewis",
            npcID = 491,
            coords = {57.00, 47.17},
            zone = "Westfall"
        }, {
            action = "turnin",
            quest = "Red Leather Bandanas",
            qid = 153,
            npc = "Scout Galiaan",
            npcID = 878,
            coords = {53.99, 52.98},
            zone = "Westfall"
        }, {
            action = "trainer",
            npc = "Jennea Cannon",
            npcID = 5497,
            coords = {38.62, 79.35},
            zone = "Stormwind City",
            condition = "Mage and hardcore"
        }, {
            action = "trainer",
            npc = "Einris Brightspear",
            npcID = 5515,
            coords = {61.66, 15.30},
            zone = "Stormwind City",
            condition = "Hunter and hardcore"
        }, {
            action = "trainer",
            npc = "Ursula Deline",
            npcID = 5495,
            coords = {26.13, 77.20},
            zone = "Stormwind City",
            condition = "Warlock and hardcore"
        }, {
            action = "trainer",
            npc = "Wu Shen",
            npcID = 5479,
            coords = {78.72, 45.77},
            zone = "Stormwind City",
            condition = "Warrior and hardcore"
        }, {
            action = "trainer",
            npc = "Osborne the Night Man",
            npcID = 918,
            coords = {74.54, 52.80},
            zone = "Stormwind City",
            condition = "Rogue and hardcore"
        }, {
            action = "trainer",
            npc = "Sheldras Moontree",
            npcID = 5504,
            coords = {20.92, 55.52},
            zone = "Stormwind City",
            condition = "Druid and hardcore"
        }, {
            action = "trainer",
            npc = "Brother Benjamin",
            npcID = 5484,
            coords = {41.64, 28.98},
            zone = "Stormwind City",
            condition = "Priest and hardcore"
        }, {
            action = "trainer",
            npc = "Arthur the Faithful",
            npcID = 5491,
            coords = {38.65, 32.80},
            zone = "Stormwind City",
            condition = "Paladin and hardcore"
        }, {
            action = "fpath",
            npc = "Shellei Brondir",
            npcID = 1571,
            coords = {9.49, 59.69},
            zone = "Wetlands"
        }
    }
}

IronPath:RegisterGuide(IronPath_Guide)
