local addonName, addonTable = ...

local L = LibStub("AceLocale-3.0"):GetLocale("Rarity")
local CONSTANTS = addonTable.constants

local battlePets = {
		name = L["Battle Pets"],

		-- Holiday
	["Clockwork Rocket Bot"] =                          { cat = CONSTANTS.ITEM_CATEGORIES.HOLIDAY, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Clockwork Rocket Bot"], spellId = 54187, itemId = 34425, items = { 116762 }, chance = 50, creatureId = 24968, holidayTexture = CONSTANTS.HOLIDAY_TEXTURES.WINTERS_VEIL, questId = { 6983, 7043 }, coords = { {m=87,x=33.2,y=67.8}, {m=25,x=42.4,y=41}, {m=86,x=54.4,y=77} }, },
	["Darkmoon Eye"] =                                  { cat = CONSTANTS.ITEM_CATEGORIES.HOLIDAY, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Darkmoon Eye"], spellId = 132789, itemId = 91040, items = { 91086 }, chance = 50, creatureId = 67332, sourceText = L["This bag is rewarded for completing the pet battle daily offered by Jeremy Feasel at the Darkmoon Faire."], holidayTexture = CONSTANTS.HOLIDAY_TEXTURES.DARKMOON_FAIRE, questId = 32175, coords = {{m=407,x=47.8,y=62.6,n=L["Jeremy Feasel"]}}, },
	["Frightened Bush Chicken"] =                       { cat = CONSTANTS.ITEM_CATEGORIES.HOLIDAY, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Frightened Bush Chicken"], spellId = 171500, itemId = 116403, items = { 116404 }, chance = 33, creatureId = 85846, holidayTexture = CONSTANTS.HOLIDAY_TEXTURES.PILGRIMS_BOUNTY, coords = { {m=523,x=60,y=34.2},{m=1,x=46.4,y=13.8},{m=89,x=61.8,y=46.4},{m=88,x=31,y=69.6},{m=37,x=33.8,y=50.8},{m=998,x=65.2,y=13.8},{m=37,x=33.6,y=50.6},{m=998,x=63.4,y=9}, }, },
	["Green Helper Box"] =                              { cat = CONSTANTS.ITEM_CATEGORIES.HOLIDAY, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Green Helper Box"], spellId = 26533, itemId = 21301, items = { 21310 }, chance = 4, creatureId = 15698, sourceText = L["Available starting December 25th"], holidayTexture = CONSTANTS.HOLIDAY_TEXTURES.WINTERS_VEIL, questId = { 8768 }, coords = { zoneOverride = L["Greatfather Winter's Tree"], {m=87,x=33.5,y=66},{m=86,x=49.3,y=78.4}}, christmasOnly = true, },
	["Grumpling"] =                                     { cat = CONSTANTS.ITEM_CATEGORIES.HOLIDAY, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.SPECIAL, name = L["Grumpling"], spellId = 191967, itemId = 128770, obtain = L["Obtained by opening Snow Mound in Frostfire Ridge"], chance = 20, creatureId = 97229, holidayTexture = CONSTANTS.HOLIDAY_TEXTURES.WINTERS_VEIL, coords = {{m=525,x=45.8,y=26.6,n=L["Snow Mound"]}}, },
	["Ice Chip"] =                                      { cat = CONSTANTS.ITEM_CATEGORIES.HOLIDAY, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Ice Chip"], spellId = 74932, itemId = 53641, items = { 54536, 117394 }, chance = 25, groupSize = 5, equalOdds = true, creatureId = 40198, lockDungeonId = 286, coords = {{m=265,x=31.2,y=50.8,i=true,n=L["Ahune"]}}, },
	["Jingling Bell"] =                                 { cat = CONSTANTS.ITEM_CATEGORIES.HOLIDAY, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Jingling Bell"], spellId = 26529, itemId = 21308, items = { 21310 }, chance = 4, creatureId = 15706, sourceText = L["Available starting December 25th"], holidayTexture = CONSTANTS.HOLIDAY_TEXTURES.WINTERS_VEIL, coords = { zoneOverride = L["Greatfather Winter's Tree"], {m=87,x=33.5,y=66},{m=86,x=49.3,y=78.4}}, questId = { 8768 }, christmasOnly = true, },
	["Lump of Coal"] =                                  { cat = CONSTANTS.ITEM_CATEGORIES.HOLIDAY, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Lump of Coal"], spellId = 103125, itemId = 73797, items = { 116762 }, chance = 50, creatureId = 55215, holidayTexture = CONSTANTS.HOLIDAY_TEXTURES.WINTERS_VEIL, questId = { 6983, 7043 }, coords = { {m=87,x=33.2,y=67.8}, {m=25,x=42.4,y=41}, {m=86,x=54.4,y=77} }, },
	["Rotten Helper Box"] =                             { cat = CONSTANTS.ITEM_CATEGORIES.HOLIDAY, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Rotten Helper Box"], spellId = 148567, itemId = 104317, items = { 116762 }, chance = 100, creatureId = 73741, holidayTexture = CONSTANTS.HOLIDAY_TEXTURES.WINTERS_VEIL, questId = { 6983, 7043 }, coords = { {m=87,x=33.2,y=67.8}, {m=25,x=42.4,y=41}, {m=86,x=54.4,y=77} }, },
	["Moon Moon"] =                                     { cat = CONSTANTS.ITEM_CATEGORIES.HOLIDAY, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Moon Moon"], spellId = 144761, itemId = 101570, npcs = { 71992 }, chance = 17,  creatureId = 72160, holidayTexture = CONSTANTS.HOLIDAY_TEXTURES.DARKMOON_FAIRE, coords = {{m=407,x=39.8,y=44.4,n=L["Moonfang"]}}, },
	["Red Helper Box"] =                                { cat = CONSTANTS.ITEM_CATEGORIES.HOLIDAY, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Red Helper Box"], spellId = 26541, itemId = 21305, items = { 21310 }, chance = 4, creatureId = 15705, sourceText = L["Available starting December 25th"], holidayTexture = CONSTANTS.HOLIDAY_TEXTURES.WINTERS_VEIL, questId = { 8768 }, coords = { zoneOverride = L["Greatfather Winter's Tree"], {m=87,x=33.5,y=66},{m=86,x=49.3,y=78.4}}, christmasOnly = true, },
	["Sea Pony"] =                                      { cat = CONSTANTS.ITEM_CATEGORIES.HOLIDAY, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.FISHING, name = L["Sea Pony"], spellId = 103588, itemId = 73953, zones = { "407" }, chance = 1000, requiresPool = false, creatureId = 55386, holidayTexture = CONSTANTS.HOLIDAY_TEXTURES.DARKMOON_FAIRE, coords = {{m=407}}, },
	["Snowman Kit"] =                                   { cat = CONSTANTS.ITEM_CATEGORIES.HOLIDAY, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Snowman Kit"], spellId = 26045, itemId = 21309, items = { 21310 }, chance = 4, creatureId = 15710, sourceText = L["Available starting December 25th"], holidayTexture = CONSTANTS.HOLIDAY_TEXTURES.WINTERS_VEIL, questId = { 8768 }, coords = { zoneOverride = L["Greatfather Winter's Tree"], {m=87,x=33.5,y=66},{m=86,x=49.3,y=78.4}}, christmasOnly = true, },
	["Syd the Squid"] =                                 { cat = CONSTANTS.ITEM_CATEGORIES.HOLIDAY, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Syd the Squid"], spellId = 170774, itemId = 116064, items = { 116062 }, chance = 50, creatureId = 85527, sourceText = L["This bag is rewarded for completing the pet battle daily offered by Christoph VonFeasel at the Darkmoon Faire."], holidayTexture = CONSTANTS.HOLIDAY_TEXTURES.DARKMOON_FAIRE, questId = 36471, coords = {{m=407,x=47.4,y=62.2,n=L["Christoph VonFeasel"]}}, },
	["Toxic Wasteling"] =                               { cat = CONSTANTS.ITEM_CATEGORIES.HOLIDAY, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Toxic Wasteling"], spellId = 71840, itemId = 50446, items = { 54537 }, chance = 14, groupSize = 5, equalOdds = true, creatureId = 38374, lockDungeonId = 288, coords = {{m=310,x=40.8,y=52.6, i=true}}, },
			-- 1.x
	["Cat Carrier (Black Tabby)"] =                     { cat = CONSTANTS.ITEM_CATEGORIES.CLASSIC, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.ZONE, name = L["Cat Carrier (Black Tabby)"], spellId = 10675, itemId = 8491, zones = { "25" }, chance = 10000, creatureId = 7383, coords = {{m=25}}, },
	["Dark Whelpling"] =                                { cat = CONSTANTS.ITEM_CATEGORIES.CLASSIC, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Dark Whelpling"], spellId = 10695, itemId = 10822, npcs = { 4324, 42042, 2725, 46916, 7049, 4323, 46914 }, chance = 1000,  creatureId = 7543, coords = {{m=15,x=29.6,y=44.2}, {m=15,x=71.8,y=47.6}, {m=15,x=11.2,y=41.0}, {m=36,x=16.8,y=64.8}, {m=36,x=23.8,y=64.4}, {m=56,x=63.8,y=50.6}, {m=70,x=47.6,y=69.8}}, },
	["Disgusting Oozeling"] =                           { cat = CONSTANTS.ITEM_CATEGORIES.CLASSIC, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Disgusting Oozeling"], spellId = 25162, itemId = 20769, items = { 20768 }, chance = 85,  creatureId = 15429, tooltipNpcs = { 1806, 1808, 12387, 3928, 43158, 43123, 44988, 44967, 4394, 4393, 7092, 48315, 7093, 7086, 48136, 48319, 48322, 3295, 8607, 8606, 15335, 41573, 47397, 11741, 11740, 14477, 46997, 42952, 2656, 2655, 6559, 9477, 6557, 42669, 41145, 1032, 41147, 41453, 51028, 49347, 50319, 48768, }, coords = { {m=64},{m=729},{m=416},{m=77},{m=25},{m=10},{m=124},{m=247},{m=205},{m=81},{m=50},{m=26},{m=78}, {m=51},{m=52},{m=56},{m=83},{m=51}, }, },
	["Parrot Cage (Green Wing Macaw)"] =                { cat = CONSTANTS.ITEM_CATEGORIES.CLASSIC, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Parrot Cage (Green Wing Macaw)"], spellId = 10683, itemId = 8492, npcs = { 48522 }, chance = 33,  creatureId = 7387, coords = {{m=291, x=55,y=39.6,i=true}}, },
	["Parrot Cage (Hyacinth Macaw)"] =                  { cat = CONSTANTS.ITEM_CATEGORIES.CLASSIC, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.ZONE, name = L["Parrot Cage (Hyacinth Macaw)"], spellId = 10682, itemId = 8494, zones = { "224", "50", "210" }, chance = 10000,  creatureId = 7391, coords = {{m=50}, {m=210}}, },
	["Sprite Darter Egg"] =                             { cat = CONSTANTS.ITEM_CATEGORIES.CLASSIC, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.ZONE, name = L["Sprite Darter Egg"], spellId = 15067, itemId = 11474, zones = { "69" }, chance = 10000, creatureId = 9662, coords = {{m=69}}, },
	["Tiny Crimson Whelpling"] =                        { cat = CONSTANTS.ITEM_CATEGORIES.CLASSIC, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.ZONE, name = L["Tiny Crimson Whelpling"], spellId = 10697, itemId = 8499, zones = { "56" }, chance = 10000,  creatureId = 7544, coords = {{m=56}}, },
	["Emerald Whelpling"] =                        { cat = CONSTANTS.ITEM_CATEGORIES.CLASSIC, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Emerald Whelpling"], spellId = 10698, itemId = 8498, npcs = { 740, 741, 39384 }, chance = 1000,  creatureId = 7545, coords = {{m=69,x=49.6,y=8.6}}, },
			-- 2.x
	["Azure Whelpling"] =                               { cat = CONSTANTS.ITEM_CATEGORIES.TBC, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.ZONE, name = L["Azure Whelpling"], spellId = 10696, itemId = 34535, zones = { "83" }, chance = 10000,  creatureId = 7547, coords = {{m=83}}, },
	["Captured Firefly"] =                              { cat = CONSTANTS.ITEM_CATEGORIES.TBC, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Captured Firefly"], spellId = 36034, itemId = 29960, npcs = { 20197 }, chance = 1000,  creatureId = 21076, coords = {{m=102,x=47.6,y=32.6}}, },
	["Mojo"] =                                          { cat = CONSTANTS.ITEM_CATEGORIES.TBC, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Mojo"], spellId = 43918, itemId = 33993, items = { 33865 }, chance = 10, creatureId = 24480, coords = {{m=333,x=42,y=52.9,i=true}}, },
	["Phoenix Hatchling"] =                             { cat = CONSTANTS.ITEM_CATEGORIES.TBC, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Phoenix Hatchling"], spellId = 46599, itemId = 35504, npcs = { 24664 }, chance = 11, creatureId = 26119, coords = {{m=348, x=8.6,y=50.2,i=true,n=L["Kael'thas Sunstrider"]}}, },
	["Chuck's Bucket"] =                                { cat = CONSTANTS.ITEM_CATEGORIES.TBC, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Chuck's Bucket"], spellId = 46426, itemId = 35350, items = { 35348 }, chance = 10, creatureId = 26056, coords = {{m=111,x=54.6,y=39.6,n=L["Cupri"]}, {m=108,x=38.6,y=12.8,n=L["Old Man Barlo"]}}, },
	["Muckbreaths's Bucket"] =                          { cat = CONSTANTS.ITEM_CATEGORIES.TBC, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Muckbreaths's Bucket"], spellId = 43698, itemId = 33818, items = { 35348 }, chance = 10, creatureId = 24389, coords = {{m=111,x=54.6,y=39.6,n=L["Cupri"]}, {m=108,x=38.6,y=12.8,n=L["Old Man Barlo"]}}, },
	["Snarly's Bucket"] =                               { cat = CONSTANTS.ITEM_CATEGORIES.TBC, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Snarly's Bucket"], spellId = 46425, itemId = 35349, items = { 35348 }, chance = 10, creatureId = 26050, coords = {{m=111,x=54.6,y=39.6,n=L["Cupri"]}, {m=108,x=38.6,y=12.8,n=L["Old Man Barlo"]}}, },
	["Toothy's Bucket"] =                               { cat = CONSTANTS.ITEM_CATEGORIES.TBC, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Toothy's Bucket"], spellId = 43697, itemId = 33816, items = { 35348 }, chance = 10, creatureId = 24388, coords = {{m=111,x=54.6,y=39.6,n=L["Cupri"]}, {m=108,x=38.6,y=12.8,n=L["Old Man Barlo"]}}, },
			-- 3.x
	["Deviate Hatchling"] =                             { cat = CONSTANTS.ITEM_CATEGORIES.WOTLK, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Deviate Hatchling"], spellId = 67414, itemId = 48114, npcs = { 3636, 3637 }, chance = 500,  creatureId = 35395, coords = {{m=279}}, },
	["Giant Sewer Rat"] =                               { cat = CONSTANTS.ITEM_CATEGORIES.WOTLK, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.FISHING, name = L["Giant Sewer Rat"], spellId = 59250, itemId = 43698, zones = { "Cantrips & Crows", "Circle of Wills", "The Underbelly", "The Black Market" }, chance = 1000, requiresPool = false, creatureId = 31575, coords = {{m=125}}, },
	["Gundrak Hatchling"] =                             { cat = CONSTANTS.ITEM_CATEGORIES.WOTLK, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Gundrak Hatchling"], spellId = 67415, itemId = 48116, npcs = { 29334 }, chance = 1000,  creatureId = 35400, coords = {{m=121}}, },
	["Razzashi Hatchling"] =                            { cat = CONSTANTS.ITEM_CATEGORIES.WOTLK, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.ZONE, name = L["Razzashi Hatchling"], spellId = 67420, itemId = 48126, zones = { "224", "50", "210" }, chance = 5000,  creatureId = 35394, coords = {{m=224},{m=50},{m=210}}, },
			-- 4.x
	["Elementium Geode"] =                              { cat = CONSTANTS.ITEM_CATEGORIES.CATA, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.SPECIAL, name = L["Elementium Geode"], spellId = 93838, itemId = 67282, obtain = L["Obtained by mining Elementium Vein"], chance = 2000, creatureId = 50722, coords = {{m=CONSTANTS.UIMAPIDS.DEEPHOLM},{m=CONSTANTS.UIMAPIDS.TWILIGHT_HIGHLANDS},{m=CONSTANTS.UIMAPIDS.ULDUM_CATACLYSM},{m=CONSTANTS.UIMAPIDS.TOL_BARAD_PENINSULA},{m=CONSTANTS.UIMAPIDS.TOL_BARAD}}, },
	["Fox Kit"] =                                       { cat = CONSTANTS.ITEM_CATEGORIES.CATA, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Fox Kit"], spellId = 90637, itemId = 64403, npcs = { 47676 }, chance = 1000, creatureId = 48641, coords = {{m=245}}, },
	["Mr. Grubbs"] =                                    { cat = CONSTANTS.ITEM_CATEGORIES.CATA, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Mr. Grubbs"], spellId = 93739, itemId = 66076, items = { 61387 }, chance = 50, creatureId = 50586, coords = {{m=23}}, },
	["Scorched Stone"] =                                { cat = CONSTANTS.ITEM_CATEGORIES.CATA, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Scorched Stone"], spellId = 45890, itemId = 34955, items = { 71631 }, chance = 20, creatureId = 25706, coords = {{m=338,x=47,y=90.6}}, },
			-- 5.0
	["Hollow Reed"] =                                   { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Hollow Reed"], spellId = 126249, itemId = 86563, npcs = { 50776 }, chance = 10, creatureId = 64633, coords = {{m=422,x=64.2,y=58.6}}, },
	["Imbued Jade Fragment"] =                          { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Imbued Jade Fragment"], spellId = 126251, itemId = 86564, npcs = { 50347 }, chance = 10, creatureId = 64634, coords = {{m=422,x=71.8,y=37.6}}, },
	["Porcupette"] =                                    { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Porcupette"], spellId = 118414, itemId = 89587, items = { 89125 }, chance = 250, creatureId = 61086, },
			-- 5.1
	["Anubisath Idol"] =                                { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Anubisath Idol"], spellId = 135267, itemId = 93040, npcs = { 15276 }, chance = 10, creatureId = 68659, coords = {{m=319,x=60.6,y=69.7, i=true}}, },
	["Blackwing Banner"] =                              { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Blackwing Banner"], spellId = 135265, itemId = 93037, npcs = { 12017 }, chance = 10, creatureId = 68663, coords = {{m=287,x=50.5,y=61.7, i=true}}, },
	["Blazing Rune"] =                                  { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Blazing Rune"], spellId = 135259, itemId = 93034, npcs = { 11982 }, chance = 10, creatureId = 68664, coords = {{m=232,x=69.4,y=23.6,i=true}}, },
	["Blighted Spore"] =                                { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Blighted Spore"], spellId = 135255, itemId = 93032, npcs = { 16011 }, chance = 10, creatureId = 68657, coords = {{m=162,x=76,y=28.3,i=true}}, },
	["Core of Hardened Ash"] =                          { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Core of Hardened Ash"], spellId = 135261, itemId = 93035, npcs = { 11988 }, chance = 10, creatureId = 68666, coords = {{m=232,x=68.8,y=57.6,i=true}}, },
	["Dusty Clutch of Eggs"] =                          { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Dusty Clutch of Eggs"], spellId = 135254, itemId = 93030, npcs = { 15952 }, chance = 10, creatureId = 68656, coords = {{m=162,x=68.6,y=15.2,i=true}}, },
	["Gluth's Bone"] =                                  { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Gluth's Bone"], spellId = 135257, itemId = 93029, npcs = { 15932 }, chance = 10, creatureId = 68654, coords = {{m=162,x=46.2,y=43.8,i=true}}, },
	["Imperial Moth"] =                                 { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Imperial Moth"], spellId = 132574, itemId = 90900, items = { 92960 }, chance = 50, creatureId = 67230, },
	["Imperial Silkworm"] =                             { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Imperial Silkworm"], spellId = 132580, itemId = 90902, items = { 92960 }, chance = 10, creatureId = 67233, },
	["Jewel of Maddening Whispers"] =                   { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Jewel of Maddening Whispers"], spellId = 135268, itemId = 93041, npcs = { 15263 }, chance = 10, creatureId = 68658, coords = {{m=319,x=45.7,y=52.2,i=true}}, },
	["Mark of Flame"] =                                 { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Mark of Flame"], spellId = 135258, itemId = 93033, npcs = { 12098 }, chance = 10, creatureId = 68665, coords = {{m=232,x=82.8,y=82.5,i=true}}, },
	["Unscathed Egg"] =                                 { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Unscathed Egg"], spellId = 135263, itemId = 93036, npcs = { 12435 }, chance = 10, creatureId = 68661, coords = {{m=287,x=41.9,y=60.2,i=true}}, },
	["Viscidus Globule"] =                              { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Viscidus Globule"], spellId = 135266, itemId = 93039, npcs = { 15299 }, chance = 10, creatureId = 68660, coords = {{m=319,x=72.1,y=17.8,i=true}}, },
	["Whistle of Chromatic Bone"] =                     { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Whistle of Chromatic Bone"], spellId = 135264, itemId = 93038, npcs = { 14020 }, chance = 10, creatureId = 68662, coords = {{m=287,x=39.4,y=72.6,i=true}}, },
			-- 5.2
	["Ji-Kun Hatchling"] =                              { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.BOSS, name = L["Ji-Kun Hatchling"], spellId = 139148, itemId = 94835, npcs = { 99999 }, tooltipNpcs = { 69712 }, chance = 200, statisticId = { 8171, 8169, 8172, 8170, 8168 }, creatureId = 70144, enableCoin = true, lockBossName = "Ji-Kun", coords = {{m=508,x=49.3,y=41.5, i=true}}, },
	["Living Sandling"] =                               { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.BOSS, name = L["Living Sandling"], spellId = 137977, itemId = 94125, npcs = { 69944 }, chance = 200, statisticId = { 8153 }, doNotUpdateToHighestStat = true, creatureId = 69748, enableCoin = true, coords = {{m=508,i=true}}, },
	["Mountain Panda"] =                                { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Mountain Panda"], spellId = 138382, itemId = 94210, items = { 94207 }, chance = 7, creatureId = 69892, },
	["Snowy Panda"] =                                   { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Snowy Panda"], spellId = 138381, itemId = 94209, items = { 94207 }, chance = 7, creatureId = 69893, },
	["Son of Animus"] =                                 { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.BOSS, name = L["Son of Animus"], spellId = 138161, itemId = 94152, npcs = { 99999 }, tooltipNpcs = { 69427 }, chance = 200, statisticId = { 8186, 8184, 8187, 8185, 8183 }, creatureId = 69820, enableCoin = true, lockBossName = "Dark Animus", coords = {{m=508,x=42.6,y=57.6, i=true}}, },
	["Sunfur Panda"] =                                  { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Sunfur Panda"], spellId = 138380, itemId = 94208, items = { 94207 }, chance = 7, creatureId = 69891, },
	["Direhorn Runt"] =                                 { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Direhorn Runt"], spellId = 139153, itemId = 94573, npcs = { 70019, 69983, 70016, 70017, 70018, 69992, 70015, 70012, 70013, 70014 }, chance = 250, creatureId = 70154, coords = {{m=507}}, },
	["Zandalari Anklerender"] =                         { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Zandalari Anklerender"], spellId = 139932, itemId = 95422, npcs = { 69925 }, chance = 50, creatureId = 70451, coords = {{m=507}}, },
	["Zandalari Footslasher"] =                         { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Zandalari Footslasher"], spellId = 139933, itemId = 95423, npcs = { 69925 }, chance = 50, creatureId = 70452, coords = {{m=507}}, },
	["Zandalari Kneebiter"] =                           { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Zandalari Kneebiter"], spellId = 138087, itemId = 94126, npcs = { 69925 }, chance = 50, creatureId = 69796, coords = {{m=507}}, },
	["Zandalari Toenibbler"] =                          { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Zandalari Toenibbler"], spellId = 139934, itemId = 95424, npcs = { 69925 }, chance = 50, creatureId = 70453, coords = {{m=507}}, },
			-- 5.3
	["Brilliant Phoenix Hawk Feather"] =                { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Brilliant Phoenix Hawk Feather"], spellId = 141449, itemId = 97557, npcs = { 19514 }, chance = 33, creatureId = 71022, coords = {{m=334,x=50.1,y=58.7,i=true}}, },
	["Crystal of the Void"] =                           { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.BOSS, name = L["Crystal of the Void"], spellId = 141448, itemId = 97556, npcs = { 18805 }, chance = 20, creatureId = 71021, coords = {{m=334,x=74,y=48.9,i=true}}, },
	["Dark Quivering Blob"] =                           { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.BOSS, name = L["Dark Quivering Blob"], spellId = 142029, itemId = 97960, npcs = { 99999 }, tooltipNpcs = { 69017 }, instanceDifficulties = { [CONSTANTS.INSTANCE_DIFFICULTIES.RAID_10_NORMAL] = true, [CONSTANTS.INSTANCE_DIFFICULTIES.RAID_25_NORMAL] = true, [CONSTANTS.INSTANCE_DIFFICULTIES.RAID_10_HEROIC] = true, [CONSTANTS.INSTANCE_DIFFICULTIES.RAID_25_HEROIC] = true, }, chance = 50, statisticId = { 8181, 8179, 8180, 8182 }, creatureId = 71200, enableCoin = true, sourceText = L["All raid formats except Raid Finder"], lockBossName = "Primordius", coords = {{m=508, i=true,x=57.2,y=78.2}}, },
	["Dripping Strider Egg"] =                          { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Dripping Strider Egg"], spellId = 141446, itemId = 97554, npcs = { 21212 }, chance = 250, creatureId = 71019, coords = {{m=332,x=72.2,y=58.9,i=true}}, },
	["Gahz'rooki's Summoning Stone"] =                  { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Gahz'rooki's Summoning Stone"], spellId = 141789, itemId = 97821, npcs = { 71012, 70997, 71000, 70999, 71001 }, chance = 1000, creatureId = 71159, coords = {{m=10,x=43.7,y=47.9}}, },
	["Half-Empty Food Container"] =                     { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Half-Empty Food Container"], spellId = 142030, itemId = 97961, npcs = { 69251 }, chance = 750, creatureId = 71201, coords = {{m=504,x=51.8,y=80.6}}, },
	["Instant Arcane Sanctum Security Kit"] =           { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Instant Arcane Sanctum Security Kit"], spellId = 141434, itemId = 97549, npcs = { 15691 }, chance = 33, creatureId = 71015, coords = {{m=794,i=true, x=49.4,y=36.6}}, },
	["Netherspace Portal-Stone"] =                      { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Netherspace Portal-Stone"], spellId = 141435, itemId = 97550, npcs = { 15690 }, chance = 33, creatureId = 71016, coords = {{m=350,x=51.4,y=30.9,i=true}}, },
	["Pygmy Direhorn"] =                                { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.BOSS, name = L["Pygmy Direhorn"], spellId = 138825, itemId = 94574, npcs = { 99999 }, tooltipNpcs = { 68476 }, chance = 50, statisticId = { 8151, 8149, 8152, 8150, 8148 }, creatureId = 70083, enableCoin = true, lockBossName = "Horridon", coords = {{m=508,26.8,y=78.7,i=true}}, },
	["Quivering Blob"] =                                { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.BOSS, name = L["Quivering Blob"], spellId = 142028, itemId = 97959, npcs = { 99999 }, tooltipNpcs = { 69017 }, instanceDifficulties = { [CONSTANTS.INSTANCE_DIFFICULTIES.LEGACY_LFR] = true, }, chance = 50, statisticId = { 8178 }, creatureId = 71199, enableCoin = true, sourceText = L["Only Raid Finder difficulty"], lockBossName = "Primordius", coords = {{m=508,x=57.2,y=78.2,i=true}}, },
	["Satyr Charm"] =                                   { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Satyr Charm"], spellId = 141451, itemId = 97551, npcs = { 15688 }, chance = 33, creatureId = 71033, coords = {{m=794,x=52.5,y=69.6,i=true}}, },
	["Shell of Tide-Calling"] =                         { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Shell of Tide-Calling"], spellId = 141436, itemId = 97552, npcs = { 21213 }, chance = 20, creatureId = 71017, coords = {{m=332,x=59.6,y=26,i=true}}, },
	["Spiky Collar"] =                                  { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Spiky Collar"], spellId = 141433, itemId = 97548, npcs = { 17521 }, chance = 14, creatureId = 71014, coords = {{m=350,x=18.1,y=35,i=true}}, },
	["Tainted Core"] =                                  { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Tainted Core"], spellId = 141437, itemId = 97553, npcs = { 21216 }, chance = 25, creatureId = 71018, coords = {{m=332,x=36.3,y=84.7,i=true}}, },
	["Tiny Fel Engine Key"] =                           { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Tiny Fel Engine Key"], spellId = 141447, itemId = 97555, npcs = { 19516 }, chance = 25, creatureId = 71020, coords = {{m=334,x=26.4,y=49,i=true}}, },
			-- 5.4
	["Ashleaf Spriteling"] =                            { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Ashleaf Spriteling"], spellId = 148046, itemId = 104156, npcs = { 73277 }, chance = 66, creatureId = 73533, coords = {{m=554,x=67.6,y=44}}, },
	["Azure Crane Chick"] =                             { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.SPECIAL, name = L["Azure Crane Chick"], spellId = 148047, itemId = 104157, obtain = L["Obtained by opening Crane Nests on the Timeless Isle"], chance = 50, creatureId = 73534, coords = {{m=554}}, },
	["Blackfuse Bombling"] =                            { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Blackfuse Bombling"], spellId = 148049, itemId = 104158, npcs = { 99999 }, tooltipNpcs = { 71504 }, chance = 100, statisticId = { 8624, 8622, 8625, 8623, 8621, 8620, }, creatureId = 73352, lockBossName = "Siegecrafter Blackfuse", coords = {{m=556,x=58.7,y=46.5,i=true}}, },
	["Bonkers"] =                                       { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.SPECIAL, name = L["Bonkers"], spellId = 148373, itemId = 104202, obtain = L["Obtained by opening Timeless Chests on the Timeless Isle"], chance = 70, creatureId = 73668, coords = {{m=554}}, },
	["Death Adder Hatchling"] =                         { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Death Adder Hatchling"], spellId = 148052, itemId = 104161, npcs = { 73163 }, chance = 50, creatureId = 73364, coords = {{m=554}}, },
	["Dandelion Frolicker"] =                           { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Dandelion Frolicker"], spellId = 148051, itemId = 104160, npcs = { 71826, 71823 }, chance = 1250, creatureId = 73532, coords = {{m=554,x=45.6,y=74.6}}, },
	["Droplet of Y'Shaarj"] =                           { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.BOSS, name = L["Droplet of Y'Shaarj"], spellId = 148058, itemId = 104162, npcs = { 99999 }, tooltipNpcs = { 71734 }, instanceDifficulties = { [CONSTANTS.INSTANCE_DIFFICULTIES.RAID_10_NORMAL] = true, [CONSTANTS.INSTANCE_DIFFICULTIES.RAID_25_NORMAL] = true, [CONSTANTS.INSTANCE_DIFFICULTIES.RAID_10_HEROIC] = true, [CONSTANTS.INSTANCE_DIFFICULTIES.RAID_25_HEROIC] = true, [CONSTANTS.INSTANCE_DIFFICULTIES.NORMAL_RAID] = true, }, chance = 100, statisticId = { 8569, 8571, 8573, 8570, 8568, }, creatureId = 73350, enableCoin = true, sourceText = L["All raid formats except Raid Finder"], lockBossName = "Sha of Pride", coords = {{m=556,x=22.5,y=69.5,i=true}}, }, -- SHA OF PRIDE (flex/normal/heroic)
	["Gooey Sha-ling"] =                                { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.BOSS, name = L["Gooey Sha-ling"], spellId = 148059, itemId = 104163, npcs = { 99999 }, tooltipNpcs = { 71734 }, instanceDifficulties = { [CONSTANTS.INSTANCE_DIFFICULTIES.LEGACY_LFR] = true, [CONSTANTS.INSTANCE_DIFFICULTIES.NORMAL_RAID] = true, }, chance = 100, statisticId = { 8568, 8567, }, creatureId = 73351, enableCoin = true, sourceText = L["Raid Finder or Flexible difficulty"], lockBossName = "Sha of Pride", coords = {{m=556,x=22.5,y=69.5,i=true}}, }, -- SHA OF PRIDE (lfr/flex)
	["Gu'chi Swarmling"] =                              { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Gu'chi Swarmling"], spellId = 148527, itemId = 104291, npcs = { 72909 }, chance = 50, creatureId = 73730, coords = {{m=554,x=42.6,y=75.6}}, },
	["Gulp Froglet"] =                                  { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Gulp Froglet"], spellId = 148067, itemId = 104169, npcs = { 72775 }, chance = 33, creatureId = 73359, coords = {{m=554,x=63.8,y=73}}, },
	["Jadefire Spirit"] =                               { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Jadefire Spirit"], spellId = 148552, itemId = 104307, npcs = { 72769 }, chance = 50, creatureId = 73738, coords = {{m=554,x=47.8,y=36.8}}, },
	["Jademist Dancer"] =                               { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Jademist Dancer"], spellId = 148060, itemId = 104164, npcs = { 72767 }, chance = 200, creatureId = 72767, coords = {{m=554,x=26.4,y=29.2}}, },
	["Kovok"] =                                         { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.BOSS, name = L["Kovok"], spellId = 148061, itemId = 104165, npcs = { 99999 }, tooltipNpcs = { 71161, 71153, 71160, 71154, 71156, 71155, 71158, 71152, 71157 }, chance = 100, statisticId = { 8630, 8628, 8631, 8629, 8627, 8626, }, creatureId = 73354, enableCoin = true, lockBossName = "Paragons of the Klaxxi", coords = {{m=556,x=68.3,y=35.3,i=true}}, }, -- PARAGONS OF THE KLAXXI (all modes)
	["Lil' Bling"] =                                    { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Lil' Bling"], spellId = 147124, itemId = 103670, items = { 86623, 113258, }, chance = 200, creatureId = 73011, questId = { 31752, 34774 }, tooltipNpcs = { 77789, 43929 }, },
	["Ominous Flame"] =                                 { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Ominous Flame"], spellId = 148062, itemId = 104166, npcs = { 73162 }, chance = 200, creatureId = 73357, coords = {{m=554,x=47.2,y=35.6}}, },
	["Ruby Droplet"] =                                  { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Ruby Droplet"], spellId = 148050, itemId = 104159, npcs = { 73282 }, chance = 25, creatureId = 73356, coords = {{m=554,x=64.6,y=28.6}}, },
	["Skunky Alemental"] =                              { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Skunky Alemental"], spellId = 148063, itemId = 104167, npcs = { 71919 }, chance = 33, creatureId = 73367, coords = {{m=554,x=37.8,y=77.2}}, },
	["Spineclaw Crab"] =                                { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Spineclaw Crab"], spellId = 148066, itemId = 104168, npcs = { 73166 }, chance = 60, creatureId = 73366, coords = {{m=554}}, },
			-- 6.0
	["Albino Chimaeraling"] =                           { cat = CONSTANTS.ITEM_CATEGORIES.WOD, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Albino Chimaeraling"], spellId = 177212, itemId = 119434, items = { 118697 }, chance = 15, creatureId = 77021, questId = { 37644, 37645 }, },
	["Eye of Observation"] =                                { cat = CONSTANTS.ITEM_CATEGORIES.WOD, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Eye of Observation"], spellId = 170275, itemId = 119170, creatureId = 88490, npcs = { 87668 }, chance = 8, groupSize = 5, equalOdds = true, coords = { {m=535,x=31.2,y=47} }, sourceText = L["Five players are needed to activate the runes on the floor. The boss can be attacked only after all runes have been activated."], questId = { 37344 }, },
	["Firewing"] =                                      { cat = CONSTANTS.ITEM_CATEGORIES.WOD, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Firewing"], spellId = 170291, itemId = 118578, items = { 118697 }, chance = 15, creatureId = 87704, questId = { 37644, 37645 }, },
	["Land Shark"] =                                    { cat = CONSTANTS.ITEM_CATEGORIES.WOD, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.COLLECTION, name = L["Land Shark"], spellId = 172695, itemId = 117404, creatureId = 86445, collectedItemId = { 117397, 127994, 116820, 116818, 116819, 116821, 122696, 116817, 116822, }, chance = 50, obtain = L["Fished anywhere in Draenor (except your garrison) with the help of Nat Pagle"], sourceText = L["Lunkers can be fished anywhere in Draenor (except in your garrison) after you've obtained a level 3 Fishing Shack and acquired Nat Pagle as a follower."], coords = { {m=572},{m=588},{m=525},{m=543},{m=550},{m=539},{m=542},{m=622},{m=535},{m=534},{m=624}, }, },
	["Nightshade Sproutling"] =                         { cat = CONSTANTS.ITEM_CATEGORIES.WOD, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Nightshade Sproutling"], spellId = 167394, itemId = 118595, npcs = { 85407, 85408, 85409, 85410, 85411, 85412, 95132, }, chance = 1000, creatureId = 83594, sourceText = L["Dropped by Disturbed Podling, which has a chance to spawn when picking herbs in Draenor."], coords = {{m=572}}, },
	["Puddle Terror"] =                                 { cat = CONSTANTS.ITEM_CATEGORIES.WOD, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Puddle Terror"], spellId = 119467, itemId = 119467, items = { 118697 }, chance = 15, creatureId = 88300, questId = { 37644, 37645 }, },
	["Red Goren Egg"] =                                 { cat = CONSTANTS.ITEM_CATEGORIES.WOD, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Red Goren Egg"], spellId = 170280, itemId = 118919, npcs = { 85294 }, chance = 1000, creatureId = 85667, sourceText = L["Dropped by Goren Protector, which has a chance to spawn when mining ore in Draenor."], coords = {{m=572}}, },
	["Sea Calf"] =                                      { cat = CONSTANTS.ITEM_CATEGORIES.WOD, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.COLLECTION, name = L["Sea Calf"], spellId = 168977, itemId = 114919, creatureId = 84441, collectedItemId = { 117397, 127994, 116820, 116818, 116819, 116821, 122696, 116817, 116822, }, chance = 50, obtain = L["Fished anywhere in Draenor (except your garrison) with the help of Nat Pagle"], sourceText = L["Lunkers can be fished anywhere in Draenor (except in your garrison) after you've obtained a level 3 Fishing Shack and acquired Nat Pagle as a follower."], coords = { {m=572},{m=588},{m=525},{m=543},{m=550},{m=539},{m=542},{m=622},{m=535},{m=534},{m=624}, }, },
	["Servant of Demidos"] =                            { cat = CONSTANTS.ITEM_CATEGORIES.WOD, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Servant of Demidos"], spellId = 170278, itemId = 119431, npcs = { 84911, }, chance = 7, creatureId = 88692, coords = {{m=104,x=46,y=71.8}}, },
	["Sky-Bo"] =                                        { cat = CONSTANTS.ITEM_CATEGORIES.WOD, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Sky-Bo"], spellId = 170292, itemId = 115483, items = { 86623, 113258, }, chance = 200, creatureId = 85284, questId = { 31752, 34774 }, tooltipNpcs = { 77789, }, },
	["Spectral Bell"] =                                 { cat = CONSTANTS.ITEM_CATEGORIES.WOD, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Spectral Bell"], spellId = 167731, itemId = 113623, items = { 118697 }, chance = 15, creatureId = 83817, questId = { 37644, 37645 }, },
	["Sun Sproutling"] =                                { cat = CONSTANTS.ITEM_CATEGORIES.WOD, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Sun Sproutling"], spellId = 167397, itemId = 118598, items = { 118697 }, chance = 15, creatureId = 83588, questId = { 37644, 37645 }, },
	["Sunfire Kaliri"] =                                { cat = CONSTANTS.ITEM_CATEGORIES.WOD, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Sunfire Kaliri"], spellId = 177227, itemId = 119468, items = { 118697 }, chance = 15, creatureId = 88367, questId = { 37644, 37645 }, },
	["Time-Locked Box"] =                               { cat = CONSTANTS.ITEM_CATEGORIES.WOD, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Time-Locked Box"], spellId = 10699, itemId = 118675,  npcs = { 82458, 77653, 78193, 76886, 77767, 77790, 78921, 77090, 76556, 78345, 82774, 78348, 78670, 76673, 77771, 76189, 77640, 77101, 78695, 77724, 78488, 77643, 78696, 77723, 77644, 78667, 73458, 76672, 82918, 73446, 77721, 82451, 73459, 78674, 76651, }, chance = 500, creatureId = 7546, coords = {{m=17}}, },
	["Weebomination"] =                                 { cat = CONSTANTS.ITEM_CATEGORIES.WOD, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Weebomination"], spellId = 158261, itemId = 113558, items = { 118697 }, chance = 15, creatureId = 78421, questId = { 37644, 37645 }, },
	["Zomstrok"] =                                      { cat = CONSTANTS.ITEM_CATEGORIES.WOD, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Zomstrok"], spellId = 167336, itemId = 113554, npcs = { 82262, 82261, 84921, }, chance = 100, creatureId = 83562, coords = {{m=104,x=41,y=80}}, },
			-- 6.1
	["Bone Serpent"] =                                  { cat = CONSTANTS.ITEM_CATEGORIES.WOD, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Bone Serpent"], spellId = 177238, itemId = 122532, items = { 122535 }, chance = 33, creatureId = 88577, questId = { 382994, 38300 }, },
	["Fragment of Anger"] =                             { cat = CONSTANTS.ITEM_CATEGORIES.WOD, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Fragment of Anger"], spellId = 179832, itemId = 122107, npcs = { 23420 }, chance = 10, creatureId = 90203, coords = {{m=759,x=61.3,y=85,i=true}}, },
	["Fragment of Desire"] =                            { cat = CONSTANTS.ITEM_CATEGORIES.WOD, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Fragment of Desire"], spellId = 179834, itemId = 122109, npcs = { 23420 }, chance = 10, creatureId = 90205, coords = {{m=759,x=61.3,y=85,i=true}}, },
	["Fragment of Suffering"] =                         { cat = CONSTANTS.ITEM_CATEGORIES.WOD, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Fragment of Suffering"], spellId = 179833, itemId = 122108, npcs = { 23420 }, chance = 10, creatureId = 90204, coords = {{m=759,x=61.3,y=85,i=true}}, },
	["Grotesque Statue"] =                              { cat = CONSTANTS.ITEM_CATEGORIES.WOD, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Grotesque Statue"], spellId = 179811, itemId = 122105, npcs = { 17842 }, chance = 10, creatureId = 90200, coords = {{m=329,x=35.7,y=37.8,i=true}}, },
	["Hyjal Wisp"] =                                    { cat = CONSTANTS.ITEM_CATEGORIES.WOD, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Hyjal Wisp"], spellId = 179837, itemId = 122112, npcs = { 17968 }, chance = 10, creatureId = 90208, coords = {{m=329,x=77.3,y=28.3,i=true}}, },
	["Leviathan Egg"] =                                 { cat = CONSTANTS.ITEM_CATEGORIES.WOD, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Leviathan Egg"], spellId = 179830, itemId = 122104, npcs = { 22887 }, chance = 10, creatureId = 90201, coords = {{m=490,x=43.9,y=18.7,i=true}}, },
	["Servant's Bell"] =                                { cat = CONSTANTS.ITEM_CATEGORIES.WOD, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Servant's Bell"], spellId = 179840, itemId = 122115, npcs = { 25165, 25166 }, chance = 10, creatureId = 90214, coords = {{m=335,x=64.1,y=32.1,i=true}}, },
	["Shard of Supremus"] =                             { cat = CONSTANTS.ITEM_CATEGORIES.WOD, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Shard of Supremus"], spellId = 179831, itemId = 122106, npcs = { 22898 }, chance = 10, creatureId = 90202, coords = {{m=490,x=66.3,y=47.3,i=true}}, },
	["Slithershock Elver"] =                            { cat = CONSTANTS.ITEM_CATEGORIES.WOD, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Slithershock Elver"], spellId = 177223, itemId = 122534, items = { 122535 }, chance = 33, creatureId = 91407, questId = { 382994, 38300 }, },
	["Smelly Gravestone"] =                             { cat = CONSTANTS.ITEM_CATEGORIES.WOD, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Smelly Gravestone"], spellId = 179836, itemId = 122111, npcs = { 17808 }, chance = 10, creatureId = 90207, coords = {{m=329,x=8.5,y=68.1,i=true}}, },
	["Sultry Grimoire"] =                               { cat = CONSTANTS.ITEM_CATEGORIES.WOD, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Sultry Grimoire"], spellId = 179835, itemId = 122110, npcs = { 22947 }, chance = 10, creatureId = 90206, coords = {{m=490,x=67.5,y=36.7,i=true}}, },
	["Sunblade Rune of Activation"] =                   { cat = CONSTANTS.ITEM_CATEGORIES.WOD, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Sunblade Rune of Activation"], spellId = 179838, itemId = 122113, npcs = { 24882 }, chance = 10, creatureId = 90212, coords = {{m=335,x=65.8,y=86.4,i=true}}, },
	["Void Collar"] =                                   { cat = CONSTANTS.ITEM_CATEGORIES.WOD, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Void Collar"], spellId = 179839, itemId = 122114, npcs = { 25840 }, chance = 10, creatureId = 90213, coords = {{m=335,x=46.7,y=23.8,i=true}}, },
	["Young Talbuk"] =                                  { cat = CONSTANTS.ITEM_CATEGORIES.WOD, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Young Talbuk"], spellId = 177218, itemId = 122533, items = { 122535 }, chance = 33, creatureId = 91408, questId = { 382994, 38300 }, },
			-- 6.2
	["Corrupted Nest Guardian"] =                       { cat = CONSTANTS.ITEM_CATEGORIES.WOD, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.BOSS, name = L["Corrupted Nest Guardian"], spellId = 187532, itemId = 127749, npcs = { 99999 }, tooltipNpcs = { 95067 }, chance = 100, statisticId = { 10228, 10227, 10226, 10225 }, creatureId = 94623, enableCoin = true, lockBossName = "Shadow-Lord Iskar", coords = {{m=661,x=40.1,y=76.1,i=true}}, },
	["Glittering Arcane Crystal"] =                     { cat = CONSTANTS.ITEM_CATEGORIES.WOD, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Glittering Arcane Crystal"], spellId = 193589, itemId = 129218, npcs = { 98200, }, chance = 10, creatureId = 98238, questId = 40074, coords = { {m=550,x=23.8,y=37.9,n=L["Guk"]} }},
	["Nightmare Bell"] =                                { cat = CONSTANTS.ITEM_CATEGORIES.WOD, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Nightmare Bell"], spellId = 185055, itemId = 127753, items = { 127751 }, chance = 33, creatureId = 93483, sourceText = L["Can drop from Fel-Touched Pet Supplies, which is obtained by defeating the Fel-corrupted legendary pets in Tanaan Jungle."], questId = { 39157, 39160, 39161, 39162, 39163, 39164, 39165, 39166, 39167, 39168, 39169, 39170, 39171, 39172, 39173, }, defeatAllQuests = true, defeatSteps = { [39168] = L["Bleakclaw"], [39161] = L["Chaos Pup"], [39160] = L["Corrupted Thundertail"], [39162] = L["Cursed Spirit"], [39167] = L["Dark Gazer"], [39173] = L["Defiled Earth"], [39170] = L["Dreadwalker"], [39165] = L["Direflame"], [39163] = L["Felfly"], [39157] = L["Felsworn Sentry"], [39166] = L["Mirecroak"], [39171] = L["Netherfist"], [39172] = L["Skrillix"], [39164] = L["Tainted Maulclaw"], [39169] = L["Vile Blood of Draenor"], }, coords = { {m=534,x=15.8,y=44.6,q=39168,n=L["Bleakclaw"]},{m=534,x=25,y=76.2,q=39161,n=L["Chaos Pup"]},{m=534,x=53,y=65.2,q=39160,n=L["Corrupted Thundertail"]},{m=534,x=31.4,y=38,q=39162,n=L["Cursed Spirit"]},{m=534,x=54,y=29.8,q=39167,n=L["Dark Gazer"]},{m=534,x=75.4,y=37.4,q=39173,n=L["Defiled Earth"]},{m=534,x=47.2,y=52.6,q=39170,n=L["Dreadwalker"]},{m=534,x=57.8,y=37.2,q=39165,n=L["Direflame"]},{m=534,x=55.8,y=80.8,q=39163,n=L["Felfly"]},{m=534,x=26,y=31.6,q=39157,n=L["Felsworn Sentry"]},{m=534,x=42.2,y=71.6,q=39166,n=L["Mirecroak"]},{m=534,x=48.4,y=35.6,q=39171,n=L["Netherfist"]},{m=534,x=48.4,y=31.2,q=39172,n=L["Skrillix"]},{m=534,x=43.4,y=84.6,q=39164,n=L["Tainted Maulclaw"]},{m=534,x=44,y=45.8,q=39169,n=L["Vile Blood of Draenor"]}, }, },
	["Periwinkle Calf"] =                               { cat = CONSTANTS.ITEM_CATEGORIES.WOD, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Periwinkle Calf"], spellId = 187555, itemId = 127754, items = { 127751 }, chance = 33, creatureId = 93352, sourceText = L["Can drop from Fel-Touched Pet Supplies, which is obtained by defeating the Fel-corrupted legendary pets in Tanaan Jungle."], questId = { 39157, 39160, 39161, 39162, 39163, 39164, 39165, 39166, 39167, 39168, 39169, 39170, 39171, 39172, 39173, }, defeatAllQuests = true, defeatSteps = { [39168] = L["Bleakclaw"], [39161] = L["Chaos Pup"], [39160] = L["Corrupted Thundertail"], [39162] = L["Cursed Spirit"], [39167] = L["Dark Gazer"], [39173] = L["Defiled Earth"], [39170] = L["Dreadwalker"], [39165] = L["Direflame"], [39163] = L["Felfly"], [39157] = L["Felsworn Sentry"], [39166] = L["Mirecroak"], [39171] = L["Netherfist"], [39172] = L["Skrillix"], [39164] = L["Tainted Maulclaw"], [39169] = L["Vile Blood of Draenor"], }, coords = { {m=534,x=15.8,y=44.6,q=39168,n=L["Bleakclaw"]},{m=534,x=25,y=76.2,q=39161,n=L["Chaos Pup"]},{m=534,x=53,y=65.2,q=39160,n=L["Corrupted Thundertail"]},{m=534,x=31.4,y=38,q=39162,n=L["Cursed Spirit"]},{m=534,x=54,y=29.8,q=39167,n=L["Dark Gazer"]},{m=534,x=75.4,y=37.4,q=39173,n=L["Defiled Earth"]},{m=534,x=47.2,y=52.6,q=39170,n=L["Dreadwalker"]},{m=534,x=57.8,y=37.2,q=39165,n=L["Direflame"]},{m=534,x=55.8,y=80.8,q=39163,n=L["Felfly"]},{m=534,x=26,y=31.6,q=39157,n=L["Felsworn Sentry"]},{m=534,x=42.2,y=71.6,q=39166,n=L["Mirecroak"]},{m=534,x=48.4,y=35.6,q=39171,n=L["Netherfist"]},{m=534,x=48.4,y=31.2,q=39172,n=L["Skrillix"]},{m=534,x=43.4,y=84.6,q=39164,n=L["Tainted Maulclaw"]},{m=534,x=44,y=45.8,q=39169,n=L["Vile Blood of Draenor"]}, }, },
	["Savage Cub"] =                                    { cat = CONSTANTS.ITEM_CATEGORIES.WOD, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.COLLECTION, name = L["Savage Cub"], spellId = 190682, itemId = 128477, collectedItemId = 124099, chance = 1500, creatureId = 96126, obtain = L["Dropped from monsters in Fang'rila"], tooltipNpcs = { 92922, 92466, 89747, 89695, 89746, 92481, }, sourceText = L["Purchased from Z'tenga the Walker <Saberstalker Quartermaster> in Fang'rila in Tanaan Jungle. Blackfang Claws drop from all monsters in Fang'rila."], coords = { {m=534,x=55.2,y=74.8} }, },
	["Seaborne Spore"] =                                { cat = CONSTANTS.ITEM_CATEGORIES.WOD, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Seaborne Spore"], spellId = 173544, itemId = 118105, items = { 127751 }, chance = 33, creatureId = 86718, sourceText = L["Can drop from Fel-Touched Pet Supplies, which is obtained by defeating the Fel-corrupted legendary pets in Tanaan Jungle."], questId = { 39157, 39160, 39161, 39162, 39163, 39164, 39165, 39166, 39167, 39168, 39169, 39170, 39171, 39172, 39173, }, defeatAllQuests = true, defeatSteps = { [39168] = L["Bleakclaw"], [39161] = L["Chaos Pup"], [39160] = L["Corrupted Thundertail"], [39162] = L["Cursed Spirit"], [39167] = L["Dark Gazer"], [39173] = L["Defiled Earth"], [39170] = L["Dreadwalker"], [39165] = L["Direflame"], [39163] = L["Felfly"], [39157] = L["Felsworn Sentry"], [39166] = L["Mirecroak"], [39171] = L["Netherfist"], [39172] = L["Skrillix"], [39164] = L["Tainted Maulclaw"], [39169] = L["Vile Blood of Draenor"], }, coords = { {m=534,x=15.8,y=44.6,q=39168,n=L["Bleakclaw"]},{m=534,x=25,y=76.2,q=39161,n=L["Chaos Pup"]},{m=534,x=53,y=65.2,q=39160,n=L["Corrupted Thundertail"]},{m=534,x=31.4,y=38,q=39162,n=L["Cursed Spirit"]},{m=534,x=54,y=29.8,q=39167,n=L["Dark Gazer"]},{m=534,x=75.4,y=37.4,q=39173,n=L["Defiled Earth"]},{m=534,x=47.2,y=52.6,q=39170,n=L["Dreadwalker"]},{m=534,x=57.8,y=37.2,q=39165,n=L["Direflame"]},{m=534,x=55.8,y=80.8,q=39163,n=L["Felfly"]},{m=534,x=26,y=31.6,q=39157,n=L["Felsworn Sentry"]},{m=534,x=42.2,y=71.6,q=39166,n=L["Mirecroak"]},{m=534,x=48.4,y=35.6,q=39171,n=L["Netherfist"]},{m=534,x=48.4,y=31.2,q=39172,n=L["Skrillix"]},{m=534,x=43.4,y=84.6,q=39164,n=L["Tainted Maulclaw"]},{m=534,x=44,y=45.8,q=39169,n=L["Vile Blood of Draenor"]}, }, },
	["Vibrating Arcane Crystal"] =                      { cat = CONSTANTS.ITEM_CATEGORIES.WOD, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Vibrating Arcane Crystal"], spellId = 193572, itemId = 129216, npcs = { 98198, }, chance = 10, creatureId = 98236, questId = 40075, coords = { {m=550,x=26.2,y=34.2,n=L["Rukdug"]} }},
	["Warm Arcane Crystal"] =                           { cat = CONSTANTS.ITEM_CATEGORIES.WOD, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Warm Arcane Crystal"], spellId = 193588, itemId = 129217, npcs = { 98199, }, chance = 10, creatureId = 98237, questId = 40073, coords = { {m=550,x=28.5,y=30.3,n=L["Pugg"]} }},
	["Zangar Spore"] =                                  { cat = CONSTANTS.ITEM_CATEGORIES.WOD, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Zangar Spore"], spellId = 173532, itemId = 118101, items = { 127751 }, chance = 33, creatureId = 86715, sourceText = L["Can drop from Fel-Touched Pet Supplies, which is obtained by defeating the Fel-corrupted legendary pets in Tanaan Jungle."], questId = { 39157, 39160, 39161, 39162, 39163, 39164, 39165, 39166, 39167, 39168, 39169, 39170, 39171, 39172, 39173, }, defeatAllQuests = true, defeatSteps = { [39168] = L["Bleakclaw"], [39161] = L["Chaos Pup"], [39160] = L["Corrupted Thundertail"], [39162] = L["Cursed Spirit"], [39167] = L["Dark Gazer"], [39173] = L["Defiled Earth"], [39170] = L["Dreadwalker"], [39165] = L["Direflame"], [39163] = L["Felfly"], [39157] = L["Felsworn Sentry"], [39166] = L["Mirecroak"], [39171] = L["Netherfist"], [39172] = L["Skrillix"], [39164] = L["Tainted Maulclaw"], [39169] = L["Vile Blood of Draenor"], }, coords = { {m=534,x=15.8,y=44.6,q=39168,n=L["Bleakclaw"]},{m=534,x=25,y=76.2,q=39161,n=L["Chaos Pup"]},{m=534,x=53,y=65.2,q=39160,n=L["Corrupted Thundertail"]},{m=534,x=31.4,y=38,q=39162,n=L["Cursed Spirit"]},{m=534,x=54,y=29.8,q=39167,n=L["Dark Gazer"]},{m=534,x=75.4,y=37.4,q=39173,n=L["Defiled Earth"]},{m=534,x=47.2,y=52.6,q=39170,n=L["Dreadwalker"]},{m=534,x=57.8,y=37.2,q=39165,n=L["Direflame"]},{m=534,x=55.8,y=80.8,q=39163,n=L["Felfly"]},{m=534,x=26,y=31.6,q=39157,n=L["Felsworn Sentry"]},{m=534,x=42.2,y=71.6,q=39166,n=L["Mirecroak"]},{m=534,x=48.4,y=35.6,q=39171,n=L["Netherfist"]},{m=534,x=48.4,y=31.2,q=39172,n=L["Skrillix"]},{m=534,x=43.4,y=84.6,q=39164,n=L["Tainted Maulclaw"]},{m=534,x=44,y=45.8,q=39169,n=L["Vile Blood of Draenor"]}, }, },
			-- 7.0
	["Eye of Inquisition"] =                            { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Eye of Inquisition"], spellId = 210673, itemId = 136901, npcs = { 101878, }, chance = 100, creatureId = 97179, coords = { {m=680,x=27.8,y=85.2} }},
	["Knockoff Blingtron"] =                            { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Knockoff Blingtron"], spellId = 210683, itemId = 136911, items = { 132892, 168740 }, chance = 200, creatureId = 99505, },

	["Ridgeback Piglet"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.USE,
	name = L["Ridgeback Piglet"],
	spellId = 210678,
	itemId = 136905,
	creatureId = 98172,
	items = { 137608 },
	chance = 10,
	},

	["Thaumaturgical Piglet"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.USE,
	name = L["Thaumaturgical Piglet"],
	spellId = 210681,
	itemId = 136908,
	creatureId = 98183,
	items = { 137608 },
	chance = 10,
	},

	["Transmutant"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.USE,
	name = L["Transmutant"],
	spellId = 221906,
	itemId = 139789,
	creatureId = 111425,
	items = { 137608 },
	chance = 10,
	},

	--["Sting Ray Pup"] =                                 { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.COLLECTION, name = L["Sting Ray Pup"], spellId = 217218, itemId = 138810, creatureId = 109216, collectedItemId = { 138777 }, chance = 50, },
			-- 7.1
	["Blessed Seed"] =									 { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Blessed Seed"], itemId = 142091, spellId = 229098, creatureId = 115143, npcs = { 32906 }, chance = 10, statisticId = {2864, 3258}, doNotUpdateToHighestStat = true,  coords = {{m=148,x=53.2,y=22.3,i=true}},},
	["Call of the Frozen Blade"] =				         { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Call of the Frozen Blade"], itemId = 142099, spellId = 229106, creatureId = 115152, npcs = { 36597 }, chance = 10,  statisticId = {4686, 4688}, doNotUpdateToHighestStat = true,  coords = {{m=186,x=49.6,y=52.5,i=true}},},
	["Drudge Remains"] =								 { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Drudge Remains"], itemId = 142098, spellId = 229105, creatureId = 115150, npcs = { 36597 }, chance = 10,  statisticId = {4653, 4687}, doNotUpdateToHighestStat = true,  coords = {{m=186,x=49.6,y=52.5,i=true}},},
	["Fragment of Frozen Bone"] =				         { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Fragment of Frozen Bone"], itemId = 142094, spellId = 229101, creatureId = 115146, npcs = { 36612 }, chance = 10,  coords = {{m=186,x=38.9,y=59.4,i=true}},},
	["Giant Worm Egg"] =								 { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Giant Worm Egg"], itemId = 142083, spellId = 229090, creatureId = 115135, npcs = { 34797 }, chance = 10,  coords = {{m=172,x=51.3,y=52.5,i=true}},},
	["Glittering Ball of Yarn"] =		                 { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Glittering Ball of Yarn"], itemId = 142089, spellId = 229096, creatureId = 115141, npcs = { 33515 }, chance = 10,  coords = {{m=148,x=51.3,y=57.2,i=true}},},
	["Ironbound Collar"] =								 { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Ironbound Collar"], itemId = 142087, spellId = 229094, creatureId = 115139, npcs = { 33186 }, chance = 10,  coords = {{m=148,x=54.3,y=26.5,i=true}},},
	["Magnataur Hunting Horn"] =						 { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Magnataur Hunting Horn"], itemId = 142084, spellId = 229091, creatureId = 115136, npcs = { 34797 }, chance = 33,  coords = {{m=172,x=51.3,y=52.5,i=true}},},
	["Nerubian Relic"] =								 { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Nerubian Relic"], itemId = 142085, spellId = 229092, creatureId = 115137, npcs = { 34564 }, chance = 10,  coords = {{m=172,x=53,y=35.5,i=true}},},
	["Ominous Pile of Snow"] =							 { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Ominous Pile of Snow"], itemId = 142090, spellId = 229097, creatureId = 115142, npcs = { 32845 }, chance = 10,  statisticId = {2862, 3256}, doNotUpdateToHighestStat = true,  coords = {{m=148,x=67.1,y=63.4,i=true}},},
	["Overcomplicated Controller"] =					 { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Overcomplicated Controller"], itemId = 142092, spellId = 229099, creatureId = 115144, npcs = { 33350 }, chance = 10,  statisticId = {2865, 2879}, doNotUpdateToHighestStat = true,  coords = {{m=148,x=43.8,y=40.8,i=true}},},
	["Putricide's Alchemy Supplies"] =					 { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Putricide's Alchemy Supplies"], itemId = 142096, spellId = 229103, creatureId = 115148, npcs = { 36678 }, chance = 10,  coords = {{m=186,x=12.8,y=53.1,i=true}},},
	["Red-Hot Coal"] =									 { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Red-Hot Coal"], itemId = 142086, spellId = 229093,  creatureId = 115138, npcs = { 33118 }, chance = 10,  coords = {{m=148,x=38,y=26.5,i=true}},},
	["Remains of a Blood Beast"] =						 { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Remains of a Blood Beast"], itemId = 142095, spellId = 229102, creatureId = 115147, npcs = { 37813 }, chance = 10,  statisticId = {4645, 4662, 4663, 4664}, doNotUpdateToHighestStat = true,  coords = {{m=186,x=51.5,y=21.4,i=true}},},
	["Skull of a Frozen Whelp"] =						 { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Skull of a Frozen Whelp"], itemId = 142097, spellId = 229104, creatureId = 115149, npcs = { 36853 }, chance = 10,  coords = {{m=186,x=36.5,y=22.6,i=true}},},
	["Stormforged Rune"] =								 { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Stormforged Rune"], itemId = 142088, spellId = 229095, creatureId = 115140, npcs = { 99999 }, tooltipNpcs = { 32857,32927,32867 }, chance = 10,  coords = {{m=148,x=15.5,y=55.9,i=true}},},
	["Wriggling Darkness"] =							 { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Wriggling Darkness"], itemId = 142093, spellId = 229100, creatureId = 115145, npcs = { 33288 }, chance = 10,  statisticId = {2869, 2883}, doNotUpdateToHighestStat = true,  coords = {{m=148,x=68.3,y=39.8,i=true}},},
			-- 7.2
	["Ageless Bronze Drake"] =                          { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Ageless Bronze Drake"], spellId = 248240, itemId = 151828, items = { 151482 }, chance = 20, creatureId = 124944, coords = {{m=115,x=60,y=54.4,n=L["Chromie"]}}, },
	["Albino Buzzard"] =                                { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Albino Buzzard"], spellId = 231017, itemId = 142448, items = { 142447 }, chance = 100, creatureId = 116080, questId = 45083, coords = {{m=10,x=63.58,y=35.94,n=L["Crysa"]}}, },
	["Bronze Proto-Whelp"] =                            { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Bronze Proto-Whelp"], spellId = 248025, itemId = 151829, items = { 151482 }, chance = 33, creatureId = 124858, coords = {{m=115,x=60,y=54.4,n=L["Chromie"]}}, },
	["Cavern Moccasin"] =                               { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Cavern Moccasin"], spellId = 233333, itemId = 143754, items = { 143753 }, chance = 100, creatureId = 117182, questId = 45539, coords = {{m=10,x=38.8,y=68.2,n=L["Muyani"]}}, },
	["Everliving Spore"] =                              { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Everliving Spore"], spellId = 233331, itemId = 143756, items = { 143753 }, chance = 100, creatureId = 117180, questId = 45539, coords = {{m=10,x=38.8,y=68.2,n=L["Muyani"]}}, },
	["Nightmare Whelpling"] =                           { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.BOSS, name = L["Nightmare Whelpling"], spellId = 210675, itemId = 136903, creatureId = 112015, npcs = { 99999 }, tooltipNpcs = { 102679 }, chance = 100, groupSize = 3, equalOdds = true, statisticId = { 10928, 10929, 10930, 10931, }, enableCoin = true, coords = { {m=781, i=true} }, },
	["Orphaned Felbat"] =                               { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Orphaned Felbat"], spellId = 243136, itemId = 147841, items = { 152108 }, chance = 20, creatureId = 121715, },
	["Scraps"] =                                        { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.SPECIAL, name = L["Scraps"], spellId = 240064, itemId = 146953, chance = 33, creatureId = 120397, coords = {{m=646}}, },
	["Young Venomfang"] =                               { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Young Venomfang"], spellId = 233335, itemId = 143755, items = { 143753 }, chance = 100, creatureId = 117184, questId = 45539, coords = {{m=10,x=38.8,y=68.2,n=L["Muyani"]}}, },
			-- 7.3
	["Breezy Essence"] =                                { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.BOSS, name = L["Breezy Essence"], itemId = 152974, spellId = 253818, creatureId = 127863, npcs = { 99999 }, tooltipNpcs = { 45870, 45871, 45872 }, lockBossName = "Conclave of Wind", chance = 10,  statisticId = { 5574, 5575 }, doNotUpdateToHighestStat = true, coords = {{m=328,x=47.5,y=26,i=true}},},
	["Cinderweb Egg"] =                                 { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Cinderweb Egg"], itemId = 152976, spellId = 253918, creatureId = 127948, npcs = { 52498 }, lockBossName = "Beth'tilac", chance = 10, coords = {{m=367,x=21,y=32.7, i=true}},},
	["Elementium Back Plate"] =                         { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.BOSS, name = L["Elementium Back Plate"], itemId = 152980, spellId = 253927, creatureId = 127953, npcs = { 99999 }, tooltipNpcs = { 53879 }, lockBossName = "Spine of Deathwing", chance = 10, statisticId = { 6165, 6166 }, doNotUpdateToHighestStat = true, coords = {{m=409,x=33.2,y=85.2, i=true}},},
	["Experiment-In-A-Jar"] =                           { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.BOSS, name = L["Experiment-In-A-Jar"], itemId = 152967, spellId = 253790, creatureId = 127852, npcs = { 99999 }, tooltipNpcs = { 41378 }, lockBossName = "Maloriak", chance = 10, statisticId = { 5559, 5560 }, doNotUpdateToHighestStat = true, coords = {{m=285,x=71.4,y=70.2, i=true}},},
	["Fandral's Pet Carrier"] =                         { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Fandral's Pet Carrier"], itemId = 152978, spellId = 253925, creatureId = 127951, npcs = { 52571 },lockBossName = "Majordomo Staghelm", chance = 10, coords = {{m=367,x=50.9,y=72.4, i=true}},},
	["Lesser Circle of Binding"] =                      { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.BOSS, name = L["Lesser Circle of Binding"], itemId = 152970, spellId = 253809, creatureId = 127858, npcs = { 99999 }, tooltipNpcs = { 43687, 43686, 43688, 43689, 43735 }, lockBossName = "Terrastra", chance = 10, statisticId = { 5569, 5570 }, doNotUpdateToHighestStat = true, coords = {{m=294,x=42.5,45.5, i=true}},},
	["Model D1-BB-L3R"] =                               { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Model D1-BB-L3R"], spellId = 233647, itemId = 151645, items = { 151638 }, chance = 100, creatureId = 117340, questId = 47895, coords = {{m=27,x=26.8,y=36.3,n=L["Environeer Bert"]}}, },
	["Odd Twilight Egg"] =                              { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.BOSS, name = L["Odd Twilight Egg"], itemId = 152969, spellId = 253805, creatureId = 127857, npcs = { 99999 }, tooltipNpcs = { 45993, 45992 }, lockBossName = "Theralion and Valiona", chance = 10, statisticId = { 5567, 5568 }, doNotUpdateToHighestStat = true, coords = {{m=294, i=true}},},
	["Puddle of Black Liquid"] =                        { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.BOSS, name = L["Puddle of Black Liquid"], itemId = 152979, spellId = 253926, creatureId = 127952, npcs = { 99999 }, tooltipNpcs = { 55312 }, lockBossName = "Yor'sahj the Unsleeping", chance = 10, statisticId = { 6157, 6158 }, doNotUpdateToHighestStat = true, coords = {{m=409,x=46.8,y=49.9, i=true}},},
	["Rough-Hewn Remote"] =                             { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.BOSS, name = L["Rough-Hewn Remote"], itemId = 152966, spellId = 253788, creatureId = 127850, npcs = { 99999 }, tooltipNpcs = { 42179, 42166, 42180, 42178 }, lockBossName = "Omnotron Defense System", chance = 10, statisticId = { 5557, 5558 }, doNotUpdateToHighestStat = true, coords = {{m=285,x=61.4,y=57.4, i=true}},},
	["Severed Tentacle"] =                              { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.BOSS, name = L["Severed Tentacle"], itemId = 152981, spellId = 253928, creatureId = 127954, npcs = { 99999 }, tooltipNpcs = { 56173 }, lockBossName = "Madness of Deathwing", chance = 10,  statisticId = { 6167, 6168 }, doNotUpdateToHighestStat = true, coords = {{m=409, i=true}},},
	["Smoldering Treat"] =                              { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Smoldering Treat"], itemId = 152975, spellId = 253916, creatureId = 127947, npcs = { 53691 }, lockBossName = "Shannox", chance = 10, coords = {{m=367,x=49.3,y=44.3, i=true}},},
	["Shadowy Pile of Bones"] =                         { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.BOSS, name = L["Shadowy Pile of Bones"], itemId = 152968, spellId = 253799, creatureId = 127853, npcs = { 99999 }, tooltipNpcs = { 41376, 41270 }, lockBossName = "Nefarian's End", chance = 10, statisticId = { 5565, 5566 }, doNotUpdateToHighestStat = true, coords = {{m=285,x=48,y=70.2, i=true}},},
	["Strange Humming Crystal"] =                       { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Strange Humming Crystal"], spellId = 226682, itemId = 141349, items = { 157828 }, chance = 100, creatureId = 113827, sourceText = L["The quest starter item for Wondrous Wisdomball"], coords = {{m=625,x=33.6,y=48,n=L["Warmage Silva"]}}, },
	["Thistleleaf Adventurer"] =                        { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Thistleleaf Adventurer"], spellId = 195369, itemId = 130167, items = { 157822 }, chance = 100, creatureId = 99389, coords = {{m=641,x=54.6,y=73.2,n=L["Sylvia Hartshorn"]}}, },
	["Twilight Summoning Portal"] =                     { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.BOSS, name = L["Twilight Summoning Portal"], itemId = 152972, spellId = 253813, creatureId = 127859, npcs = { 99999 }, tooltipNpcs = { 43324 }, lockBossName = "Cho'gall", chance = 10, statisticId = { 5572, 5571 }, doNotUpdateToHighestStat = true, coords = {{m=294,x=73.4,75.4, i=true}},},
	["Vibrating Stone"] =                               { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Vibrating Stone"], itemId = 152977, spellId = 253924, creatureId = 127950, npcs = { 53494 }, lockBossName = "Baleroc", chance = 10, coords = {{m=367,x=49.5,y=30.9, i=true}},},
	["Zephyr's Call"] =                                 { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.PET, method = CONSTANTS.DETECTION_METHODS.BOSS, name = L["Zephyr's Call"], itemId = 152973, spellId = 253816, creatureId = 127862, npcs = { 99999 }, tooltipNpcs = { 46753 }, lockBossName = "Al'Akir", chance = 10,  statisticId = { 5576, 5577 }, doNotUpdateToHighestStat = true, coords = {{m=328,i=true}},},
		-- 7.3
	["Docile Skyfin"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.USE,
	name = L["Docile Skyfin"],
	spellId = 254295,
	itemId = 153054,
	items = { 153191 },
	chance = 5,
	creatureId = 128157,
	sourceText = L["Contained in Cracked Fel-Spotted Egg, which is obtained by defeating any of the panthara rares on Argus, looting a Fel-Spotted Egg from them, and waiting five days. Each mount has a 6% chance to appear in the Cracked Fel-Spotted Egg, and each pet has a 20% chance to appear in it."],
	coords = {
		{ m = CONSTANTS.UIMAPIDS.ANTORAN_WASTES, x = 64.32, y = 48.62, n = L["Varga"] },
		{ m = CONSTANTS.UIMAPIDS.KROKUUN, x = 70.21, y = 34.38, n = L["Naroua"] },
		{ m = CONSTANTS.UIMAPIDS.MACAREE, x = 43.55, y = 49.19, n = L["Sabuul"] },
	},
	},

	["Fel-Afflicted Skyfin"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.USE,
	name = L["Fel-Afflicted Skyfin"],
	spellId = 254296,
	itemId = 153055,
	items = { 153191 },
	chance = 5,
	creatureId = 128158,
	sourceText = L["Contained in Cracked Fel-Spotted Egg, which is obtained by defeating any of the panthara rares on Argus, looting a Fel-Spotted Egg from them, and waiting five days. Each mount has a 6% chance to appear in the Cracked Fel-Spotted Egg, and each pet has a 20% chance to appear in it."],
	coords = {
		{ m = CONSTANTS.UIMAPIDS.ANTORAN_WASTES, x = 64.32, y = 48.62, n = L["Varga"] },
		{ m = CONSTANTS.UIMAPIDS.KROKUUN, x = 70.21, y = 34.38, n = L["Naroua"] },
		{ m = CONSTANTS.UIMAPIDS.MACAREE, x = 43.55, y = 49.19, n = L["Sabuul"] },
	},
	},

	["Rebellious Imp"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Rebellious Imp"],
	spellId = 254749,
	itemId = 153252,
	npcs = { 127705 },
	chance = 16,
	creatureId = 128388,
	questId = 48970,
	coords = {
		{ m = CONSTANTS.UIMAPIDS.ANTORAN_WASTES,  x = 66.72, y = 18.12, n = L["Mother Rosula"] },
	},
	},

	["Grasping Manifestation"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Grasping Manifestation"],
	spellId = 254297,
	itemId = 153056,
	npcs = { 126887 },
	chance = 6,
	creatureId = 128159,
	questId = 48709,
	coords = {
		{ m = CONSTANTS.UIMAPIDS.MACAREE, x = 30.12, y = 40.18, n = L["Ataxon"] },
	},
	},

	["Uuna's Doll"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Uuna's Doll"],
	spellId = 254763,
	itemId = 153195,
	npcs = { 127581 },
	chance = 20,
	creatureId = 128396,
	questId = 48966,
	coords = {
		{ m = CONSTANTS.UIMAPIDS.ANTORAN_WASTES, x = 54.83, y = 39.15, n = L["The Many-Faced Devourer"] },
	},
	},

	["Silithid Mini-Tank"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Silithid Mini-Tank"],
	spellId = 261755,
	itemId = 156851,
	npcs = { 132578, 132584, 132580},
	chance = 10,
	creatureId = 133064,
	questId = { 50223, 50224, 50255, },
	defeatAllQuests = true,
	defeatSteps = {
		[50223] = L["Ssinkrix"],
		[50224] = L["Xaarshej"],
		[50255] = L["Qroshekx"],
	},
	coords = {
		{ m = 81, x = 59, y = 15, n = L["Qroshekx"] },
		{ m = 81, x = 30, y = 35, n = L["Xaarshej"] },
		{ m = 81, x = 54, y = 80, n = L["Ssinkrix"] }
	},
	},

	["Fossorial Bile Larva"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	name = L["Fossorial Bile Larva"],
	spellId = 254298,
	itemId = 153057,
	chance = 2000,
	creatureId = 128160,
	obtain = L["Obtained by skinning creatures on Argus"],
	sourceText = L["Obtained by skinning creatures on Argus"],
	tooltipNpcs = { -- Any beast on Argus, pretty much...
		119884,
		126996,
		123511,
		124279,
		124279,
		123527,
		122363,
		124225,
		124265,
		127270,
		124444,
		123076,
		124303,
		121629,
		124278,
		126072,
		119968,
		125146,
		123512,
		123508,
		124269,
		122010,
		124271,
		125223,
		126939,
		119604,
		119398,
		122408,
		121565,
		121562,
		119874,
		119748,
		122365,
		125167,
		126198,
		122022,
		126114,
		119602,
		119576,
		124430,
		121673,
		119747,
		126174,
		124439,
		124486,
	},
	showTooltipCondition = { filter = CONSTANTS.TOOLTIP_FILTERS.IS_SPELL_KNOWN, value = "Skinning" }, -- Display only if player can actually skin them
	},

	["Fel Lasher"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	name = L["Fel Lasher"],
	spellId = 254271,
	itemId = 153045,
	chance = 4000,
	creatureId = 128137,
	obtain = L["Obtained by gathering herbs on Argus"],
	sourceText = L["Obtained by gathering herbs on Argus"],
	},

	-- 8.0 Pets

	["Scuttle"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	name = L["Scuttle"],
	spellId = 177244,
	itemId = 163797,
	chance = 1000,
	creatureId = 143794,
	groupSize = 3,
	equalOdds = true,
	},

	["Captain Nibs"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	name = L["Captain Nibs"],
	spellId = 177243,
	itemId = 163798,
	chance = 1000,
	creatureId = 143795,
	groupSize = 3,
	equalOdds = true,
	},

	["Barnaby"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	name = L["Barnaby"],
	spellId = 177242,
	itemId = 163799,
	chance = 1000,
	creatureId = 143796,
	groupSize = 3,
	equalOdds = true,
	},

	["Poro"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	name = L["Poro"],
	spellId = 177241,
	itemId = 163800,
	chance = 1000,
	creatureId = 143797,
	groupSize = 3,
	equalOdds = true,
	},

	["Octopode Fry"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	name = L["Octopode Fry"],
	spellId = 177240,
	itemId = 163801,
	chance = 1000,
	creatureId = 143798,
	groupSize = 3,
	equalOdds = true,
	},

	["Inky"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	name = L["Inky"],
	spellId = 177239,
	itemId = 163802,
	chance = 1000,
	creatureId = 143799,
	groupSize = 3,
	equalOdds = true,
	},

	["Sparkleshell Sandcrawler"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	name = L["Sparkleshell Sandcrawler"],
	spellId = 177237,
	itemId = 163803,
	chance = 1000,
	creatureId = 143801,
	groupSize = 3,
	equalOdds = true,
	},

	["Kindleweb Spiderling"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	name = L["Kindleweb Spiderling"],
	spellId = 177236,
	itemId = 163804,
	chance = 1000,
	creatureId = 143802,
	groupSize = 3,
	equalOdds = true,
	},

	["Mischievous Zephyr"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	name = L["Mischievous Zephyr"],
	spellId = 177221,
	itemId = 163814,
	chance = 1000,
	creatureId = 143812,
	groupSize = 3,
	equalOdds = true,
	},

	["Littlehoof"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	name = L["Littlehoof"],
	spellId = 177219,
	itemId = 163815,
	chance = 1000,
	creatureId = 143813,
	groupSize = 3,
	equalOdds = true,
	},

	["Snapper"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	name = L["Snapper"],
	spellId = 177217,
	itemId = 163816,
	chance = 1000,
	creatureId = 143814,
	groupSize = 3,
	equalOdds = true,
	},

	["Sunscale Hatchling"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	name = L["Sunscale Hatchling"],
	spellId = 280331,
	itemId = 163817,
	chance = 1000,
	creatureId = 143815,
	groupSize = 3,
	equalOdds = true,
	},

	["Bloodstone Tunneler"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	name = L["Bloodstone Tunneler"],
	spellId = 280332,
	itemId = 163818,
	chance = 1000,
	creatureId = 143816,
	groupSize = 3,
	equalOdds = true,
	},

	["Snort"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	name = L["Snort"],
	spellId = 280333,
	itemId = 163819,
	chance = 1000,
	creatureId = 143817,
	groupSize = 3,
	equalOdds = true,
	},

	["Muskflank Calfling"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	name = L["Muskflank Calfling"],
	spellId = 280334,
	itemId = 163820,
	chance = 1000,
	creatureId = 143818,
	groupSize = 3,
	equalOdds = true,
	},

	["Juvenile Brineshell"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	name = L["Juvenile Brineshell"],
	spellId = 280335,
	itemId = 163821,
	chance = 1000,
	creatureId = 143819,
	groupSize = 3,
	equalOdds = true,
	},

	["Kunchong Hatchling"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	name = L["Kunchong Hatchling"],
	spellId = 280336,
	itemId = 163822,
	chance = 1000,
	creatureId = 143820,
	groupSize = 3,
	equalOdds = true,
	},

	["Coldlight Surfrunner"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	name = L["Coldlight Surfrunner"],
	spellId = 280337,
	itemId = 163823,
	chance = 1000,
	creatureId = 143821,
	groupSize = 3,
	equalOdds = true,
	},

	["Voru'kar Leecher"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	name = L["Voru'kar Leecher"],
	spellId = 280338,
	itemId = 163824,
	chance = 1000,
	creatureId = 143822,
	groupSize = 3,
	equalOdds = true,
	},

	["Tinder Pup"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	name = L["Tinder Pup"],
	spellId = 177230,
	itemId = 163807,
	chance = 1000,
	creatureId = 143805,
	groupSize = 3,
	equalOdds = true,
	},

	["Sandshell Chitterer"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	name = L["Sandshell Chitterer"],
	spellId = 177229,
	itemId = 163808,
	chance = 1000,
	creatureId = 143806,
	groupSize = 3,
	equalOdds = true,
	},

	["Deathsting Scorpid"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	name = L["Deathsting Scorpid"],
	spellId = 177228,
	itemId = 163809,
	chance = 1000,
	creatureId = 143807,
	groupSize = 3,
	equalOdds = true,
	},

	["Thistlebrush Bud"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	name = L["Thistlebrush Bud"],
	spellId = 177226,
	itemId = 163810,
	chance = 1000,
	creatureId = 143808,
	groupSize = 3,
	equalOdds = true,
	},

	["Giggling Flame"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	name = L["Giggling Flame"],
	spellId = 177225,
	itemId = 163811,
	chance = 1000,
	creatureId = 143809,
	groupSize = 3,
	equalOdds = true,
	},

	["Laughing Stonekin"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	name = L["Laughing Stonekin"],
	spellId = 177224,
	itemId = 163812,
	chance = 1000,
	creatureId = 143810,
	groupSize = 3,
	equalOdds = true,
	},

	["Playful Frostkin"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	name = L["Playful Frostkin"],
	spellId = 177222,
	itemId = 163813,
	chance = 1000,
	creatureId = 143811,
	groupSize = 3,
	equalOdds = true,
	},

	["False Knucklebump"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	name = L["False Knucklebump"],
	spellId = 177231,
	itemId = 163806,
	chance = 1000,
	creatureId = 143804,
	groupSize = 3,
	equalOdds = true,
	},

	["Craghoof Kid"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	name = L["Craghoof Kid"],
	spellId = 177235,
	itemId = 163805,
	chance = 1000,
	creatureId = 143803,
	groupSize = 3,
	equalOdds = true,
	},

	["Mana-Warped Egg"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Mana-Warped Egg"],
	npcs = { 142716 },
	spellId = 279930,
	itemId = 163712,
	creatureId = 143628,
	questId = { 53090, 53515 },
	chance = 20,
	coords = {
		{ m = CONSTANTS.UIMAPIDS.ARATHI_HIGHLANDS, x =  52.3, y = 72.4, n = L["Man-Hunter Rog"] },
	},
	},

	["Fuzzy Creepling"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Fuzzy Creepling"],
	npcs = { 142438 },
	spellId = 279631,
	itemId = 163648,
	creatureId = 143499,
	questId = { 53024, 53528 },
	chance = 20,
	coords = {
		{ m = CONSTANTS.UIMAPIDS.ARATHI_HIGHLANDS, x =  56.7, y = 54.1, n = L["Venomarus"] },
	},
	},

	["Aldrusian Sproutling"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Aldrusian Sproutling"],
	npcs = { 142508 },
	spellId = 279638,
	itemId = 163650,
	creatureId = 143503,
	questId = { 53013, 53505 },
	chance = 20,
	coords = {
		{ m = CONSTANTS.UIMAPIDS.ARATHI_HIGHLANDS, x =  22.9, y = 22.2, n = L["Branchlord Aldrus"] },
	},
	},

	["Tiny Grimoire"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Tiny Grimoire"],
	npcs = { 142688 },
	spellId = 279643,
	itemId = 163652,
	creatureId = 143507,
	questId = { 53084, 53507 },
	chance = 20,
	coords = {
		{ m = CONSTANTS.UIMAPIDS.ARATHI_HIGHLANDS, x =  50.8, y = 36.5, n = L["Darbel Montrose"] .. " - " .. L["Alliance controls Stromgarde"] },
		{ m = CONSTANTS.UIMAPIDS.ARATHI_HIGHLANDS, x =  50.4, y = 61.2, n = L["Darbel Montrose"] .. " - " .. L["Horde controls Stromgarde"] },
	},
	},

	["Scabby"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Scabby"],
	npcs = { 142440 },
	spellId = 279686,
	itemId = 163684,
	creatureId = 143533,
	questId = { 53015, 53529 },
	chance = 20,
	coords = {
		{ m = CONSTANTS.UIMAPIDS.ARATHI_HIGHLANDS, x =  14, y = 36.9, n = L["Yogursa"] },
	},
	},

	["Teeny Titan Orb"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Teeny Titan Orb"],
	npcs = { 141668 },
	spellId = 279657,
	itemId = 163677,
	creatureId = 143515,
	questId = { 53059, 53508 },
	chance = 20,
	coords = {
		{ m = CONSTANTS.UIMAPIDS.ARATHI_HIGHLANDS, x =  56.6, y = 36.0, n = L["Echo of Myzrael"] },
	},
	},

	["Shard of Fozruk"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Shard of Fozruk"],
	npcs = { 142433 },
	spellId = 279929,
	itemId = 163711,
	creatureId = 143627,
	questId = { 53019, 53510 },
	chance = 20,
	coords = {
		{ m = CONSTANTS.UIMAPIDS.ARATHI_HIGHLANDS, x =  51, y = 53.2, n = L["Fozruk"] },
	},
	},

	["Angry Egg"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Angry Egg"],
	npcs = { 142436 },
	spellId = 279723,
	itemId = 163689,
	creatureId = 143563,
	questId = { 53016, 53522 },
	chance = 20,
	coords = {
		{ m = CONSTANTS.UIMAPIDS.ARATHI_HIGHLANDS, x =  18.4, y = 27.9, n = L["Ragebeak"] .. " - " .. L["Alliance controls Stromgarde"] },
		{ m = CONSTANTS.UIMAPIDS.ARATHI_HIGHLANDS, x =  11.9, y = 52.1, n = L["Ragebeak"] .. " - " .. L["Horde controls Stromgarde"] },
	},
	},

	["Plagued Egg"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Plagued Egg"],
	npcs = { 142435 },
	spellId = 279724,
	itemId = 163690,
	creatureId = 143564,
	questId = { 53020, 53519 },
	chance = 20,
	coords = {
		{ m = CONSTANTS.UIMAPIDS.ARATHI_HIGHLANDS, x =  36.9, y = 66, n = L["Plaguefeather"] },
	},
	},

	["Filthy Bucket"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Filthy Bucket"],
	itemId = 160704,
	spellId = 273184,
	creatureId = 139049,
	npcs = { 135448 },
	chance = 10,
	instanceDifficulties = { [CONSTANTS.INSTANCE_DIFFICULTIES.MYTHIC_DUNGEON] = true },
	coords = {
		{ m = CONSTANTS.UIMAPIDS.TOLDAGOR, n = L["Gol'than the Malodorous"] },
	},
	},

	["Wind-Up Frog"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.USE,
	name = L["Wind-Up Frog"],
	spellId = 280617,
	itemId = 163860,
	creatureId = 143957,
	items = { 160324 },
	chance = 50,
	},

	["Undulating Blue Sac"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.USE,
	name = L["Undulating Blue Sac"],
	spellId = 280618,
	itemId = 163861,
	creatureId = 143958,
	items = { 160324 },
	chance = 50,
	},

	["Baby Crawg"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.USE,
	name = L["Baby Crawg"],
	spellId = 279435,
	itemId = 163859,
	creatureId = 143374,
	items = { 160324 },
	chance = 50,
	},

	["Ball of Tentacles"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.USE,
	name = L["Ball of Tentacles"],
	spellId = 280619,
	itemId = 163858,
	creatureId = 143959,
	items = { 160324 },
	chance = 50,
	},

	-- 8.1 Pets

	["Albatross Feather"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.BFA,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.USE,
		name = L["Albatross Feather"],
		spellId = 289606,
		itemId = 166714,
		items = { 166295 },
		chance = 10,
		creatureId = 149363,
	},

	["Cobalt Raven Hatchling"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.BFA,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.USE,
		name = L["Cobalt Raven Hatchling"],
		spellId = 289629,
		itemId = 166718,
		items = { 166297 },
		chance = 10,
		creatureId = 149375,
	},

	["Violet Abyssal Eel"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.BFA,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.USE,
		name = L["Violet Abyssal Eel"],
		spellId = 289633,
		itemId = 166719,
		items = { 166294 },
		chance = 10,
		creatureId = 149376,
	},

	["Pair of Tiny Bat Wings"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.BFA,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.USE,
		name = L["Pair of Tiny Bat Wings"],
		spellId = 289622,
		itemId = 166716,
		items = { 166282 },
		chance = 10,
		creatureId = 149372,
	},

	["Darkshore Sentinel"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Darkshore Sentinel"],
	spellId = 288486,
	itemId = 166449,
	npcs = { 148037, 149141 },
	chance = 7,
	creatureId = 148781,
	questId = { 54431, 54768 },
	coords = {
		{ m = CONSTANTS.UIMAPIDS.DARKSHORE, x = 42, y = 77.6, n = L["Burninator Mark V"] .. " - " .. L["Alliance only"] },
		{ m = CONSTANTS.UIMAPIDS.DARKSHORE, x = 42, y = 77.6, n = L["Athil Dewfire"] .. " - " .. L["Horde only"] },
	},
	},

	["Rattling Bones"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Rattling Bones"],
	spellId = 288592,
	itemId = 166451,
	npcs = { 147260 },
	chance = 7,
	creatureId = 148825,
	questId = { 54232, 54233 },
	coords = {
		{ m = CONSTANTS.UIMAPIDS.DARKSHORE, x = 39.2, y = 62, n = L["Conflagros"] },
	},
	},

	["Everburning Treant"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Everburning Treant"],
	spellId = 288597,
	itemId = 166453,
	npcs = { 147664, 147758 },
	chance = 7,
	creatureId = 148843,
	questId = { 54274, 54291 },
	coords = {
		{ m = CONSTANTS.UIMAPIDS.DARKSHORE, x = 62.5, y = 9.4, n = L["Zim'kaga"] .. " - " .. L["Alliance only"] },
		{ m = CONSTANTS.UIMAPIDS.DARKSHORE, x = 45.2, y = 75.1, n = L["Onu"] .. " - " .. L["Horde only"] },
	},
	},

	["Binding of Cyclarus"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Binding of Cyclarus"],
	spellId = 288582,
	itemId = 166448,
	npcs = { 147241 },
	chance = 7,
	creatureId = 148784,
	questId = { 54229, 54230 },
	coords = {
		{ m = CONSTANTS.UIMAPIDS.DARKSHORE, x = 43.8, y = 53.6, n = L["Cyclarus"] },
	},
	},

	["Bottled Essence of Hydrath"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Bottled Essence of Hydrath"],
	spellId = 288595,
	itemId = 166452,
	npcs = { 147240 },
	chance = 7,
	creatureId = 148841,
	questId = { 54227, 54228 },
	coords = {
		{ m = CONSTANTS.UIMAPIDS.DARKSHORE, x = 53.0, y = 31.8, n = L["Hydrath"] },
	},
	},

	["Squishy Purple Goo"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Squishy Purple Goo"],
	spellId = 288598,
	itemId = 166454,
	npcs = { 147897 },
	chance = 7,
	creatureId = 148844,
	questId = { 54320, 54321 },
	coords = {
		{ m = CONSTANTS.UIMAPIDS.DARKSHORE, x = 40.7, y = 84.6, n = L["Soggoth the Slitherer"] },
	},
	},

	["Zur'aj the Depleted"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Zur'aj the Depleted"],
	spellId = 288600,
	itemId = 166455,
	npcs = { 147942 },
	chance = 7,
	creatureId = 148846,
	questId = { 54397, 54398 },
	coords = {
		{ m = CONSTANTS.UIMAPIDS.DARKSHORE, x = 40.6, y = 82.7, n = L["Twilight Prophet Graeme"] },
	},
	},

	["Spawn of Krag'wa"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.BOSS,
	name = L["Spawn of Krag'wa"],
	itemId = 165848,
	spellId = 286484,
	creatureId = 147585,
	npcs = { 99999 },
	tooltipNpcs = { 144747, 144941, 144767, 144963 },
	lockBossName = "Conclave of the Chosen",
	chance = 20,
	statisticId = { 13366 },
	groupSize = 5,
	equalOdds = true,
	coords = {
		{ m = 1364, i = true },
	},
	},

	["Thundering Scale of Akunda"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.BOSS,
	name = L["Thundering Scale of Akunda"],
	itemId = 165847,
	spellId = 286482,
	creatureId = 147587,
	npcs = { 99999 },
	tooltipNpcs = { 144747, 144941, 144767, 144963 },
	lockBossName = "Conclave of the Chosen",
	chance = 20,
	statisticId = { 13364, 13365, 13366 },
	groupSize = 5,
	equalOdds = true,
	coords = {
		{ m = 1364, i = true },
	},
	},

	["Enchanted Talon of Pa'ku"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.BOSS,
	name = L["Enchanted Talon of Pa'ku"],
	itemId = 165846,
	spellId = 286483,
	creatureId = 147586,
	npcs = { 99999 },
	tooltipNpcs = { 144747, 144941, 144767, 144963 },
	lockBossName = "Conclave of the Chosen",
	chance = 50,
	statisticId = { 13364, 13365, 13366 },
	groupSize = 5,
	equalOdds = true,
	coords = {
		{ m = 1364, i = true },
	},
	},

	["Baby Stonehide"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	name = L["Baby Stonehide"],
	spellId = 288867,
	itemId = 166486,
	chance = 1000,
	creatureId = 148976,
	groupSize = 3,
	equalOdds = true,
	},

	["Leatherwing Screecher"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	name = L["Leatherwing Screecher"],
	spellId = 288868,
	itemId = 166487,
	chance = 1000,
	creatureId = 148979,
	groupSize = 3,
	equalOdds = true,
	},

	["Rotting Ghoul"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	name = L["Rotting Ghoul"],
	spellId = 288870,
	itemId = 166488,
	chance = 1000,
	creatureId = 148981,
	groupSize = 3,
	equalOdds = true,
	},

	["Thunderscale Whelpling"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	name = L["Thunderscale Whelpling"],
	spellId = 288916,
	itemId = 166499,
	chance = 1000,
	creatureId = 148995,
	groupSize = 3,
	equalOdds = true,
	},

	["Scritches"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	name = L["Scritches"],
	spellId = 288914,
	itemId = 166498,
	chance = 1000,
	creatureId = 148991,
	groupSize = 3,
	equalOdds = true,
	},

	["Tonguelasher"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	name = L["Tonguelasher"],
	spellId = 288910,
	itemId = 166495,
	chance = 1000,
	creatureId = 148990,
	groupSize = 3,
	equalOdds = true,
	},

	["Lord Woofington"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	name = L["Lord Woofington"],
	spellId = 288901,
	itemId = 166494,
	chance = 1000,
	creatureId = 148989,
	groupSize = 3,
	equalOdds = true,
	},

	["Firesting Buzzer"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	name = L["Firesting Buzzer"],
	spellId = 288895,
	itemId = 166493,
	chance = 1000,
	creatureId = 148988,
	groupSize = 3,
	equalOdds = true,
	},

	["Needleback Pup"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	name = L["Needleback Pup"],
	spellId = 288875,
	itemId = 166489,
	chance = 1000,
	creatureId = 148982,
	groupSize = 3,
	equalOdds = true,
	},

	["Shadefeather Hatchling"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	name = L["Shadefeather Hatchling"],
	spellId = 288889,
	itemId = 166492,
	chance = 1000,
	creatureId = 148984,
	groupSize = 3,
	equalOdds = true,
	},

	-- 8.1.5 Pets

	["Stoneclaw"] ={
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Stoneclaw"],
	itemId = 167047,
	spellId = 291513,
	creatureId = 150354,
	npcs = { 59915, 60043, 60047, 60051 },
	lockoutDetails = {
		mode = CONSTANTS.DEFEAT_DETECTION.MODE_AND,
		{
			encounterName = "The Stone Guard",
			instanceDifficulties = {
				[CONSTANTS.INSTANCE_DIFFICULTIES.RAID_10_NORMAL] = true,
				[CONSTANTS.INSTANCE_DIFFICULTIES.RAID_25_NORMAL] = true,
				[CONSTANTS.INSTANCE_DIFFICULTIES.RAID_10_HEROIC] = true,
				[CONSTANTS.INSTANCE_DIFFICULTIES.RAID_25_HEROIC] = true,

			},
		},
		{
			encounterName = "The Stone Guard",
			instanceDifficulties = {
				[CONSTANTS.INSTANCE_DIFFICULTIES.LEGACY_LFR] = true,
			},
		},
	},
	chance = 4,
	coords = {
		{
			m=471,
			i=true
		}
	},
	},

	["Wayward Spirit"] ={
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Wayward Spirit"],
	itemId = 167048,
	spellId = 291515,
	creatureId = 150356,
	npcs = { 60143 },
	lockoutDetails = {
		mode = CONSTANTS.DEFEAT_DETECTION.MODE_AND,
		{
			encounterName = "Gara'jal the Spiritbinder",
			instanceDifficulties = {
				[CONSTANTS.INSTANCE_DIFFICULTIES.RAID_10_NORMAL] = true,
				[CONSTANTS.INSTANCE_DIFFICULTIES.RAID_25_NORMAL] = true,
				[CONSTANTS.INSTANCE_DIFFICULTIES.RAID_10_HEROIC] = true,
				[CONSTANTS.INSTANCE_DIFFICULTIES.RAID_25_HEROIC] = true,

			},
		},
		{
			encounterName = "Gara'jal the Spiritbinder",
			instanceDifficulties = {
				[CONSTANTS.INSTANCE_DIFFICULTIES.LEGACY_LFR] = true,
			},
		},
	},
	chance = 10,
	coords = {
		{
			m=471,
			i=true
		}
	},
	},

	["Celestial Gift"] ={
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.BOSS,
	name = L["Celestial Gift"],
	itemId = 167049,
	spellId = 291517,
	creatureId = 150357,
	npcs = { 99999 },
	tooltipNpcs = { 60410 },
	lockoutDetails = {
		mode = CONSTANTS.DEFEAT_DETECTION.MODE_AND,
		{
			encounterName = "Elegon",
			instanceDifficulties = {
				[CONSTANTS.INSTANCE_DIFFICULTIES.RAID_10_NORMAL] = true,
				[CONSTANTS.INSTANCE_DIFFICULTIES.RAID_25_NORMAL] = true,
				[CONSTANTS.INSTANCE_DIFFICULTIES.RAID_10_HEROIC] = true,
				[CONSTANTS.INSTANCE_DIFFICULTIES.RAID_25_HEROIC] = true,

			},
		},
		{
			encounterName = "Elegon",
			instanceDifficulties = {
				[CONSTANTS.INSTANCE_DIFFICULTIES.LEGACY_LFR] = true,
			},
		},
	},
	chance = 4,
	coords = {
		{
			m=471,
			i=true
		}
	},
	},

	["Mogu Statue"] ={
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Mogu Statue"],
	itemId = 167050,
	spellId = 291533,
	creatureId = 150360,
	npcs = { 60400, 60399 },
	lockoutDetails = {
		mode = CONSTANTS.DEFEAT_DETECTION.MODE_AND,
		{
			encounterName = "Will of the Emperor",
			instanceDifficulties = {
				[CONSTANTS.INSTANCE_DIFFICULTIES.RAID_10_NORMAL] = true,
				[CONSTANTS.INSTANCE_DIFFICULTIES.RAID_25_NORMAL] = true,
				[CONSTANTS.INSTANCE_DIFFICULTIES.RAID_10_HEROIC] = true,
				[CONSTANTS.INSTANCE_DIFFICULTIES.RAID_25_HEROIC] = true,

			},
		},
		{
			encounterName = "Will of the Emperor",
			instanceDifficulties = {
				[CONSTANTS.INSTANCE_DIFFICULTIES.LEGACY_LFR] = true,
			},
		},
	},
	chance = 4,
	coords = {
		{
			m=471,
			i=true
		}
	},
	},

	["Kor'thik Swarmling"] ={
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Kor'thik Swarmling"],
	itemId = 167058,
	spellId = 291548,
	creatureId = 150374,
	npcs = { 62980 },
	lockoutDetails = {
		mode = CONSTANTS.DEFEAT_DETECTION.MODE_AND,
		{
			encounterName = "Imperial Vizier Zor'lok",
			instanceDifficulties = {
				[CONSTANTS.INSTANCE_DIFFICULTIES.RAID_10_NORMAL] = true,
				[CONSTANTS.INSTANCE_DIFFICULTIES.RAID_25_NORMAL] = true,
				[CONSTANTS.INSTANCE_DIFFICULTIES.RAID_10_HEROIC] = true,
				[CONSTANTS.INSTANCE_DIFFICULTIES.RAID_25_HEROIC] = true,

			},
		},
		{
			encounterName = "Imperial Vizier Zor'lok",
			instanceDifficulties = {
				[CONSTANTS.INSTANCE_DIFFICULTIES.LEGACY_LFR] = true,
			},
		},
	},
	chance = 4,
	coords = {
		{
			m=475,
			i=true
		}
	},
	},

	["Tiny Amber Wings"] ={
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Tiny Amber Wings"],
	itemId = 167053,
	spellId = 291549,
	creatureId = 150375,
	npcs = { 62543 },
	lockoutDetails = {
		mode = CONSTANTS.DEFEAT_DETECTION.MODE_AND,
		{
			encounterName = "Blade Lord Ta'yak",
			instanceDifficulties = {
				[CONSTANTS.INSTANCE_DIFFICULTIES.RAID_10_NORMAL] = true,
				[CONSTANTS.INSTANCE_DIFFICULTIES.RAID_25_NORMAL] = true,
				[CONSTANTS.INSTANCE_DIFFICULTIES.RAID_10_HEROIC] = true,
				[CONSTANTS.INSTANCE_DIFFICULTIES.RAID_25_HEROIC] = true,

			},
		},
		{
			encounterName = "Blade Lord Ta'yak",
			instanceDifficulties = {
				[CONSTANTS.INSTANCE_DIFFICULTIES.LEGACY_LFR] = true,
			},
		},
	},
	chance = 3,
	coords = {
		{
			m=475,
			i=true
		}
	},
	},

	["Spawn of Garalon"] ={
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Spawn of Garalon"],
	itemId = 167054,
	spellId = 291553,
	creatureId = 150377,
	npcs = { 63191 },
	lockoutDetails = {
		mode = CONSTANTS.DEFEAT_DETECTION.MODE_AND,
		{
			encounterName = "Garalon",
			instanceDifficulties = {
				[CONSTANTS.INSTANCE_DIFFICULTIES.RAID_10_NORMAL] = true,
				[CONSTANTS.INSTANCE_DIFFICULTIES.RAID_25_NORMAL] = true,
				[CONSTANTS.INSTANCE_DIFFICULTIES.RAID_10_HEROIC] = true,
				[CONSTANTS.INSTANCE_DIFFICULTIES.RAID_25_HEROIC] = true,

			},
		},
		{
			encounterName = "Garalon",
			instanceDifficulties = {
				[CONSTANTS.INSTANCE_DIFFICULTIES.LEGACY_LFR] = true,
			},
		},
	},
	chance = 4,
	coords = {
		{
			m=475,
			i=true
		}
	},
	},

	["Amber Goo Puddle"] ={
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Amber Goo Puddle"],
	itemId = 167055,
	spellId = 291556,
	creatureId = 150380,
	npcs = { 62511 },
	lockoutDetails = {
		mode = CONSTANTS.DEFEAT_DETECTION.MODE_AND,
		{
			encounterName = "Amber-Shaper Un'sok",
			instanceDifficulties = {
				[CONSTANTS.INSTANCE_DIFFICULTIES.RAID_10_NORMAL] = true,
				[CONSTANTS.INSTANCE_DIFFICULTIES.RAID_25_NORMAL] = true,
				[CONSTANTS.INSTANCE_DIFFICULTIES.RAID_10_HEROIC] = true,
				[CONSTANTS.INSTANCE_DIFFICULTIES.RAID_25_HEROIC] = true,

			},
		},
		{
			encounterName = "Amber-Shaper Un'sok",
			instanceDifficulties = {
				[CONSTANTS.INSTANCE_DIFFICULTIES.LEGACY_LFR] = true,
			},
		},
	},
	chance = 4,
	coords = {
		{
			m=475,
			i=true
		}
	},
	},

	["Essence of Pride"] ={
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Essence of Pride"],
	itemId = 167056,
	spellId = 291560,
	creatureId = 150381,
	npcs = { 62837 },
	lockoutDetails = {
		mode = CONSTANTS.DEFEAT_DETECTION.MODE_AND,
		{
			encounterName = "Grand Empress Shek'zeer",
			instanceDifficulties = {
				[CONSTANTS.INSTANCE_DIFFICULTIES.RAID_10_NORMAL] = true,
				[CONSTANTS.INSTANCE_DIFFICULTIES.RAID_25_NORMAL] = true,
				[CONSTANTS.INSTANCE_DIFFICULTIES.RAID_10_HEROIC] = true,
				[CONSTANTS.INSTANCE_DIFFICULTIES.RAID_25_HEROIC] = true,

			},
		},
		{
			encounterName = "Grand Empress Shek'zeer",
			instanceDifficulties = {
				[CONSTANTS.INSTANCE_DIFFICULTIES.LEGACY_LFR] = true,
			},
		},
	},
	chance = 10,
	coords = {
		{
			m=475,
			i=true
		}
	},
	},

	["Azure Cloud Serpent Egg"] ={
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.BOSS,
	name = L["Azure Cloud Serpent Egg"],
	itemId = 167051,
	spellId = 291537,
	creatureId = 150365,
	npcs = { 99999 },
	tooltipNpcs = { 62442, 63025 },
	lockoutDetails = {
		mode = CONSTANTS.DEFEAT_DETECTION.MODE_AND,
		{
			encounterName = "Tsulong",
			instanceDifficulties = {
				[CONSTANTS.INSTANCE_DIFFICULTIES.RAID_10_NORMAL] = true,
				[CONSTANTS.INSTANCE_DIFFICULTIES.RAID_25_NORMAL] = true,
				[CONSTANTS.INSTANCE_DIFFICULTIES.RAID_10_HEROIC] = true,
				[CONSTANTS.INSTANCE_DIFFICULTIES.RAID_25_HEROIC] = true,

			},
		},
		{
			encounterName = "Tsulong",
			instanceDifficulties = {
				[CONSTANTS.INSTANCE_DIFFICULTIES.LEGACY_LFR] = true,
			},
		},
	},
	chance = 3,
	coords = {
		{
			m=456,
			i=true
		}
	},
	},

	["Spirit of the Spring"] ={
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.BOSS,
	name = L["Spirit of the Spring"],
	itemId = 167052,
	spellId = 291547,
	creatureId = 150372,
	npcs = { 99999 },
	tooltipNpcs = { 62983 },
	lockoutDetails = {
		mode = CONSTANTS.DEFEAT_DETECTION.MODE_AND,
		{
			encounterName = "Lei Shi",
			instanceDifficulties = {
				[CONSTANTS.INSTANCE_DIFFICULTIES.RAID_10_NORMAL] = true,
				[CONSTANTS.INSTANCE_DIFFICULTIES.RAID_25_NORMAL] = true,
				[CONSTANTS.INSTANCE_DIFFICULTIES.RAID_10_HEROIC] = true,
				[CONSTANTS.INSTANCE_DIFFICULTIES.RAID_25_HEROIC] = true,

			},
		},
		{
			encounterName = "Lei Shi",
			instanceDifficulties = {
				[CONSTANTS.INSTANCE_DIFFICULTIES.LEGACY_LFR] = true,
			},
		},
	},
	chance = 4,
	coords = {
		{
			m=456,
			i=true
		}
	},
	},

	-- 8.2 Pets

	["Adventurous Hopling Pack"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	name = L["Adventurous Hopling Pack"],
	spellId = 300934,
	itemId = 169322,
	chance = 1000,
	creatureId = 154693,
	groupSize = 3,
	equalOdds = true,
	},

	["Ghostly Whelpling"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	name = L["Ghostly Whelpling"],
	spellId = 300367,
	itemId = 169205,
	chance = 1000,
	creatureId = 154165,
	groupSize = 3,
	equalOdds = true,
	},

	["Mindlost Bloodfrenzy"] ={
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.BOSS,
	name = L["Mindlost Bloodfrenzy"],
	itemId = 169360,
	spellId = 301031,
	creatureId = 154833,
	npcs = { 99999 },
	tooltipNpcs = { 154986, 150653 },
	groupSize = 5,
	equalOdds = true,
	statisticId = {
		13591,
		13592,
		13593,
		13594
	},
	lockoutDetails = {
		mode = CONSTANTS.DEFEAT_DETECTION.MODE_AND,
		{
			encounterName = "Blackwater Behemoth",
			instanceDifficulties = {
				[CONSTANTS.INSTANCE_DIFFICULTIES.NORMAL_RAID] = true,
			},
		},
		{
			encounterName = "Blackwater Behemoth",
			instanceDifficulties = {
				[CONSTANTS.INSTANCE_DIFFICULTIES.HEROIC_RAID] = true,
			},
		},
		{
			encounterName = "Blackwater Behemoth",
			instanceDifficulties = {
				[CONSTANTS.INSTANCE_DIFFICULTIES.MYTHIC_RAID] = true,
			},
		},
		{
			encounterName = "Blackwater Behemoth",
			instanceDifficulties = {
				[CONSTANTS.INSTANCE_DIFFICULTIES.LFR] = true,
			},
		},
	},
	instanceDifficulties = {
		[CONSTANTS.INSTANCE_DIFFICULTIES.NORMAL_RAID] = true,
		[CONSTANTS.INSTANCE_DIFFICULTIES.HEROIC_RAID] = true,
		[CONSTANTS.INSTANCE_DIFFICULTIES.MYTHIC_RAID] = true,
		[CONSTANTS.INSTANCE_DIFFICULTIES.LFR] = true,
	},
	chance = 8,

	},

	["Lightless Ambusher"] ={
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.BOSS,
	name = L["Lightless Ambusher"],
	itemId = 169358,
	spellId = 301029,
	creatureId = 154831,
	npcs = { 99999 },
	tooltipNpcs = { 153142, 152236 },
	groupSize = 5,
	equalOdds = true,
	statisticId = {
	13600,
	13601,
	13602,
	13603
	},
	lockoutDetails = {
	mode = CONSTANTS.DEFEAT_DETECTION.MODE_AND,
	{
		encounterName = "Lady Ashvane",
		instanceDifficulties = {
			[CONSTANTS.INSTANCE_DIFFICULTIES.NORMAL_RAID] = true,
		},
	},
	{
		encounterName = "Lady Ashvane",
		instanceDifficulties = {
			[CONSTANTS.INSTANCE_DIFFICULTIES.HEROIC_RAID] = true,
		},
	},
	{
		encounterName = "Lady Ashvane",
		instanceDifficulties = {
			[CONSTANTS.INSTANCE_DIFFICULTIES.MYTHIC_RAID] = true,
		},
	},
	{
		encounterName = "Lady Ashvane",
		instanceDifficulties = {
			[CONSTANTS.INSTANCE_DIFFICULTIES.LFR] = true,
		},
	},
	},
	instanceDifficulties = {
	[CONSTANTS.INSTANCE_DIFFICULTIES.NORMAL_RAID] = true,
	[CONSTANTS.INSTANCE_DIFFICULTIES.HEROIC_RAID] = true,
	[CONSTANTS.INSTANCE_DIFFICULTIES.MYTHIC_RAID] = true,
	[CONSTANTS.INSTANCE_DIFFICULTIES.LFR] = true,
	},
	chance = 8,

	},

	["Zanj'ir Poker"] ={
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.BOSS,
	name = L["Zanj'ir Poker"],
	itemId = 169348,
	spellId = 301015,
	creatureId = 154819,
	npcs = { 99999 },
	tooltipNpcs = { 155126 },
	groupSize = 5,
	equalOdds = true,
	statisticId = {
	13616,
	13617,
	13618,
	13619
	},
	lockoutDetails = {
	mode = CONSTANTS.DEFEAT_DETECTION.MODE_AND,
	{
		encounterName = "Queen Azshara",
		instanceDifficulties = {
			[CONSTANTS.INSTANCE_DIFFICULTIES.NORMAL_RAID] = true,
		},
	},
	{
		encounterName = "Queen Azshara",
		instanceDifficulties = {
			[CONSTANTS.INSTANCE_DIFFICULTIES.HEROIC_RAID] = true,
		},
	},
	{
		encounterName = "Queen Azshara",
		instanceDifficulties = {
			[CONSTANTS.INSTANCE_DIFFICULTIES.MYTHIC_RAID] = true,
		},
	},
	{
		encounterName = "Queen Azshara",
		instanceDifficulties = {
			[CONSTANTS.INSTANCE_DIFFICULTIES.LFR] = true,
		},
	},
	},
	instanceDifficulties = {
	[CONSTANTS.INSTANCE_DIFFICULTIES.NORMAL_RAID] = true,
	[CONSTANTS.INSTANCE_DIFFICULTIES.HEROIC_RAID] = true,
	[CONSTANTS.INSTANCE_DIFFICULTIES.MYTHIC_RAID] = true,
	[CONSTANTS.INSTANCE_DIFFICULTIES.LFR] = true,
	},
	chance = 10, -- Blind guess (no data)

	},

	["Pommel Jewel of Remornia"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.SHADOWLANDS,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.BOSS,
	name = L["Pommel Jewel of Remornia"],
	itemId = 183395,
	spellId = 341302,
	creatureId = 173994,
	npcs = { 99999 },
	tooltipNpcs = { 168938, 167406 },
	chance = 33,
	statisticId = { 14455, 14458 }, -- Normal and LFR are the only two confirmed sources.
	groupSize = 10,
	equalOdds = true,
	instanceDifficulties = {
	[CONSTANTS.INSTANCE_DIFFICULTIES.NORMAL_RAID] = true,
	[CONSTANTS.INSTANCE_DIFFICULTIES.LFR] = true
	},
	lockoutDetails = {
	mode = CONSTANTS.DEFEAT_DETECTION.MODE_AND,
	{
		encounterName = "Sire Denathrius",
		instanceDifficulties = {
			[CONSTANTS.INSTANCE_DIFFICULTIES.NORMAL_RAID] = true,
		},
	},
	{
		encounterName = "Sire Denathrius",
		instanceDifficulties = {
			[CONSTANTS.INSTANCE_DIFFICULTIES.LFR] = true,
		},
	},
	},
	coords = {
	{ m = CONSTANTS.UIMAPIDS.CASTLE_NATHRIA, i = true },
	},
	},

	["Amethyst Softshell"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Amethyst Softshell"],
	npcs = { 152794 },
	spellId = 301034,
	itemId = 169363,
	creatureId = 154836,
	questId = { 56268 }, -- 56615 ?
	chance = 8,
	},

	["Pearlescent Glimmershell"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Pearlescent Glimmershell"],
	npcs = { 152448 },
	spellId = 301023,
	itemId = 169352,
	creatureId = 154825,
	questId = { 56286 }, -- 57260, 56597?
	chance = 100,
	},

	["Brinestone Algan"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Brinestone Algan"],
	npcs = { 150191 },
	spellId = 301044,
	itemId = 169373,
	creatureId = 154845,
	questId = { 55584 },
	chance = 18,
	coords = {
	{ m = CONSTANTS.UIMAPIDS.NAZJATAR, x =  36.9, y = 11.2, n = L["Avarius"] },
	},
	},

	["Budding Algan"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Budding Algan"],
	npcs = { 150583 },
	spellId = 301045,
	itemId = 169374,
	creatureId = 154846,
	questId = { 56291, 56917 }, -- Which one is it?
	chance = 4,
	},

	["Caverndark Nightmare"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Caverndark Nightmare"],
	npcs = { 152464 },
	spellId = 301027,
	itemId = 169356,
	creatureId = 154829,
	questId = { 56283 },
	chance = 25,
	coords = {
	{ m = CONSTANTS.UIMAPIDS.NAZJATAR, x =  42.29, y = 13.29, n = L["Caverndark Terror"] },
	},
	},

	["Chitterspine Needler"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Chitterspine Needler"],
	npcs = { 152465 },
	spellId = 301026,
	itemId = 169355,
	creatureId = 154828,
	questId = { 56608, 56275 },-- Which one is it? Both completed upon killing it...
	chance = 8,
	},

	["Coral Lashling"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Coral Lashling"],
	npcs = { 149653 },
	spellId = 301046,
	itemId = 169375,
	creatureId = 154847,
	questId = { 55366 }, -- 55366, 57186; 55404, 57042; 55366, 57187, 57188 ?
	chance = 12,
	coords = {
	{ m = CONSTANTS.UIMAPIDS.NAZJATAR, x =  54.8, y = 42.0, n = L["Carnivorous Lasher"] },
	},
	},

	["Daggertooth Frenzy"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Daggertooth Frenzy"],
	npcs = { 152756 },
	spellId = 301032,
	itemId = 169361,
	creatureId = 154834,
	questId = { 56271 },
	chance = 6,
	},

	["Glittering Diamondshell"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Glittering Diamondshell"],
	npcs = { 152795 },
	spellId = 301021,
	itemId = 169350,
	creatureId = 154823,
	questId = { 56277 },
	chance = 8,
	},

	["Murgle"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Murgle"],
	npcs = { 152323 },
	spellId = 301042,
	itemId = 169371,
	creatureId = 154820,
	questId = { 56582 }, -- 55671 ?
	chance = 4,
	coords = {
	{ m = CONSTANTS.UIMAPIDS.NAZJATAR, x =  29.41, y = 28.98, n = L["King Gakula"] },
	},
	},

	["Necrofin Tadpole"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Necrofin Tadpole"],
	npcs = { 152712 },
	spellId = 301043,
	itemId = 169372,
	creatureId = 154821,
	questId = { 56269, 56614 }, -- Which one is it? Hmm..
	chance = 8,
	coords = {
	{ m = CONSTANTS.UIMAPIDS.NAZJATAR, x =  39.25, y = 77.35, n = L["Blindlight"] },
	},
	},

	["Sandkeep"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Sandkeep"],
	npcs = { 151870 },
	spellId = 301040,
	itemId = 169369,
	creatureId = 154842,
	questId = { 56276 },
	chance = 20,
	},

	["Scalebrood Hydra"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Scalebrood Hydra"],
	npcs = { 152545, 152548, 152542 },
	spellId = 301041,
	itemId = 169370,
	creatureId = 154843,
	questId = { 52692, 56293, 56294 },
	chance = 20,
	coords = {
	{ m = CONSTANTS.UIMAPIDS.NAZJATAR, x = 27.29, y = 37.16, n = L["Scale Matriarch Vynara"] },
	{ m = CONSTANTS.UIMAPIDS.NAZJATAR, x = 35.6, y = 41, n = L["Scale Matriarch Gratinax"] },
	{ m = CONSTANTS.UIMAPIDS.NAZJATAR, x =  28.8, y = 46.6, n = L["Scale Matriarch Zodia"] },
	},
	},

	["Seafury"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Seafury"],
	npcs = { 152681 },
	spellId = 301038,
	itemId = 169367,
	creatureId = 154840,
	questId = { 56289 },
	chance = 14,
	coords = {
	{ m = CONSTANTS.UIMAPIDS.NAZJATAR, x =  43.1, y = 87.22, n = L["Prince Typhonus"] },
	},
	},

	["Skittering Eel"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Skittering Eel"],
	npcs = { 150468 },
	spellId = 301047,
	itemId = 169376,
	creatureId = 154848,
	questId = { 55603 },
	chance = 13,
	coords = {
	{ m = CONSTANTS.UIMAPIDS.NAZJATAR, x =  48.34, y = 23.99, n = L["Vor'koth"] },
	},
	},

	["Spawn of Nalaada"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Spawn of Nalaada"],
	npcs = { 152555 },
	spellId = 301030,
	itemId = 169359,
	creatureId = 154832,
	questId = { 56285 },
	chance = 10,
	coords = {
	{ m = CONSTANTS.UIMAPIDS.NAZJATAR, x =  51.90, y = 75.40, n = L["Elderspawn Nalaada"] },
	},
	},

	["Stormwrath"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Stormwrath"],
	npcs = { 152682 },
	spellId = 301039,
	itemId = 169368,
	creatureId = 154841,
	questId = { 56290 },
	chance = 8,
	coords = {
	{ m = CONSTANTS.UIMAPIDS.NAZJATAR, x = 42.98, y = 75.09, n = L["Prince Vortran"] },
	},
	},

	["Wriggler"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Wriggler"],
	npcs = { 144644 },
	spellId = 301037,
	itemId = 169366,
	creatureId = 154839,
	questId = { 56274 },
	chance = 9,
	},

	["Arachnoid Skitterbot"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Arachnoid Skitterbot"],
	npcs = { 151672 },
	spellId = 301137,
	itemId = 169393,
	creatureId = 154894,
	questId = { 55386 },
	chance = 14,
	coords = {
	{ m = CONSTANTS.UIMAPIDS.MECHAGON_ISLAND, x =  87.90, y = 19.60, n = L["Mecharantula"] },
	},
	},

	["Bonebiter"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Bonebiter"],
	npcs = { 152001 },
	spellId = 301136,
	itemId = 169392,
	creatureId = 154893,
	questId = { 55537 },
	chance = 6,
	coords = {
	{ m = CONSTANTS.UIMAPIDS.MECHAGON_ISLAND, x =  65.94, y = 26.35, n = L["Bonepicker"] },
	},
	},

	["Lost Robogrip"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Lost Robogrip"],
	npcs = { 151933 },
	spellId = 301053,
	itemId = 169382,
	creatureId = 154854,
	questId = { 55544 },
	chance = 20,
	coords = {
	{ m = CONSTANTS.UIMAPIDS.MECHAGON_ISLAND, x =  60.65, y = 42.22, n = L["Malfunctioning Beastbot"] },
	},
	},

	["Snowsoft Nibbler"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Snowsoft Nibbler"],
	npcs = { 151884 },
	spellId = 301050,
	itemId = 169379,
	creatureId = 154851,
	questId = { 55367 },
	chance = 5,
	},

	["Spraybot 0D"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Spraybot 0D"],
	npcs = { 152113 },
	spellId = 303023,
	itemId = 169886,
	creatureId = 155600,
	questId = { 55858 },
	chance = 8,
	coords = {
	{ m = CONSTANTS.UIMAPIDS.MECHAGON_ISLAND, x = 68.31, y = 47.18, n = L["The Kleptoboss"] },
	},
	},

	["Nameless Octopode"] ={
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.BOSS,
	name = L["Nameless Octopode"],
	itemId = 169362,
	spellId = 301033,
	creatureId = 154835,
	npcs = { 99999 },
	tooltipNpcs = { 150859 },
	groupSize = 5,
	equalOdds = true,
	statisticId = {
	13612,
	13613,
	13614,
	13615
	},
	lockoutDetails = {
	mode = CONSTANTS.DEFEAT_DETECTION.MODE_AND,
	{
		encounterName = "Za'qul",
		instanceDifficulties = {
			[CONSTANTS.INSTANCE_DIFFICULTIES.NORMAL_RAID] = true,
		},
	},
	{
		encounterName = "Za'qul",
		instanceDifficulties = {
			[CONSTANTS.INSTANCE_DIFFICULTIES.HEROIC_RAID] = true,
		},
	},
	{
		encounterName = "Za'qul",
		instanceDifficulties = {
			[CONSTANTS.INSTANCE_DIFFICULTIES.MYTHIC_RAID] = true,
		},
	},
	{
		encounterName = "Za'qul",
		instanceDifficulties = {
			[CONSTANTS.INSTANCE_DIFFICULTIES.LFR] = true,
		},
	},
	},
	instanceDifficulties = {
	[CONSTANTS.INSTANCE_DIFFICULTIES.NORMAL_RAID] = true,
	[CONSTANTS.INSTANCE_DIFFICULTIES.HEROIC_RAID] = true,
	[CONSTANTS.INSTANCE_DIFFICULTIES.MYTHIC_RAID] = true,
	[CONSTANTS.INSTANCE_DIFFICULTIES.LFR] = true,
	},
	chance = 8,

	},

	["Sandclaw Nestseeker"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	name = L["Sandclaw Nestseeker"],
	spellId = 301022,
	itemId = 169351,
	creatureId = 154824,
	chance = 250,
	},

	["Armored Vaultbot"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	name = L["Armored Vaultbot"],
	tooltipNpcs = { 150394 },
	spellId = 303784,
	itemId = 170072,
	creatureId = 155829,
	questId = { 55546 },
	chance = 75,
	coords = {
	{ m = CONSTANTS.UIMAPIDS.MECHAGON_ISLAND, x =  53.99, y = 49.31, n = L["Armored Vaultbot"] },
	},
	},

	["Echoing Oozeling"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.USE,
	items = { 168394, 168395 },
	name = L["Echoing Oozeling"],
	spellId = 301162,
	itemId = 169396,
	creatureId = 154904,
	questId = { 55847 }, -- Not sure which is correct: 55847, 57134, 57132, 56079 ? // 55847, 57132,
	chance = 20, -- Blind guess (no data)
	coords = {
	{ m = CONSTANTS.UIMAPIDS.MECHAGON_ISLAND, x =  70.12, y = 61.99, n = L["Reclamation Rig"] },
	},
	},

	["Microbot 8D"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	npcs = { 150190 },
	name = L["Microbot 8D"],
	spellId = 301056,
	itemId = 169385,
	creatureId = 154857,
	chance = 50,
	groupSize = 5,
	equalOdds = true,
	instanceDifficulties = { [CONSTANTS.INSTANCE_DIFFICULTIES.MYTHIC_DUNGEON] = true },
	lockoutDetails = {
	mode = CONSTANTS.DEFEAT_DETECTION.MODE_AND,
	{
		encounterName = "HK-8 Aerial Oppression Unit",
		instanceDifficulties = {
			[CONSTANTS.INSTANCE_DIFFICULTIES.MYTHIC_DUNGEON] = true,
		},
	},
	},
	coords = {
	{ m = CONSTANTS.UIMAPIDS.MECHAGON_ISLAND_DUNGEON, i = true}
	},
	},

	["Golden Snorf"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	npcs = { 150397 },
	tooltipNpcs = { 150396, 144249 },
	statisticId = { 13620 },
	name = L["Golden Snorf"],
	spellId = 301049,
	itemId = 169378,
	creatureId = 154850,
	chance = 65,
	groupSize = 5,
	equalOdds = true,
	instanceDifficulties = { [CONSTANTS.INSTANCE_DIFFICULTIES.MYTHIC_DUNGEON] = true },
	lockoutDetails = {
	mode = CONSTANTS.DEFEAT_DETECTION.MODE_AND,
	{
		encounterName = "King Mechagon",
		instanceDifficulties = {
			[CONSTANTS.INSTANCE_DIFFICULTIES.MYTHIC_DUNGEON] = true,
		},
	},
	},
	coords = {
	{ m = CONSTANTS.UIMAPIDS.MECHAGON_ISLAND_DUNGEON, i = true}
	},
	},

	-- 8.3 Pets
	["Box Labeled \"Danger: Void Rat Inside\""] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	name = L["Box Labeled \"Danger: Void Rat Inside\""],
	spellId = 315301,
	itemId = 174460,
	chance = 100,
	creatureId = 161963,
	coords = {
	{ m= CONSTANTS.UIMAPIDS.HORRIFIC_VISION_OF_STORMWIND },
	},
	},

	["Swirling Black Bottle"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	name = L["Swirling Black Bottle"],
	spellId = 315302,
	itemId = 174461,
	chance = 100,
	creatureId = 161964,
	coords = {
	{ m= CONSTANTS.UIMAPIDS.HORRIFIC_VISION_OF_STORMWIND },
	{ m= CONSTANTS.UIMAPIDS.HORRIFIC_VISION_OF_ORGRIMMAR },
	},
	},

	["Voidwoven Cat Collar"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	name = L["Voidwoven Cat Collar"],
	spellId = 315298,
	itemId = 174459,
	chance = 100,
	creatureId = 161962,
	coords = {
	{ m= CONSTANTS.UIMAPIDS.HORRIFIC_VISION_OF_STORMWIND },
	},
	},

	["Void-Link Frostwolf Collar"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	name = L["Void-Link Frostwolf Collar"],
	spellId = 312030,
	itemId = 174646,
	chance = 100,
	creatureId = 160196,
	coords = {
	{ m= CONSTANTS.UIMAPIDS.HORRIFIC_VISION_OF_ORGRIMMAR },
	},
	},

	["C'Thuffer"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	name = L["C'Thuffer"],
	spellId = 315290,
	itemId = 174457,
	chance = 100,
	creatureId = 161959,
	coords = {
	{ m= CONSTANTS.UIMAPIDS.HORRIFIC_VISION_OF_ORGRIMMAR },
	},
	},

	["Void-Scarred Hare"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	name = L["Void-Scarred Hare"],
	spellId = 315297,
	itemId = 174458,
	chance = 100,
	creatureId = 161961,
	coords = {
	{ m= CONSTANTS.UIMAPIDS.HORRIFIC_VISION_OF_STORMWIND },
	},
	},

	["Box With Faintly Glowing 'Air' Holes"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	name = L["Box With Faintly Glowing 'Air' Holes"],
	spellId = 312029,
	itemId = 173726,
	chance = 100,
	creatureId = 160187,
	coords = {
	{ m= CONSTANTS.UIMAPIDS.HORRIFIC_VISION_OF_ORGRIMMAR },
	},
	},

	["K'uddly"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["K'uddly"],
	npcs = { 157176 },
	spellId = 315339,
	itemId = 174473,
	creatureId = 161954,
	questId = { 57342 },
	chance = 20,
	coords = {
	{ m = CONSTANTS.UIMAPIDS.VALE_OF_ETERNAL_BLOSSOMS, x = 51.85, y = 42.19, n = L["The Forgotten"] },
	},
	},

	["Cursed Dune Watcher"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.USE,
	name = L["Cursed Dune Watcher"],
	spellId = 315367,
	itemId = 174481,
	items = { 174484 }, -- Uldum Accord Supplies
	chance = 100, -- Blind guess (no data)
	creatureId = 162007,
	coords = {
	{ m = CONSTANTS.UIMAPIDS.ULDUM },
	},
	},

	["Jade Defender"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.USE,
	name = L["Jade Defender"],
	spellId = 315371,
	itemId = 174479,
	items = { 174483 }, -- Rajani Supplies
	chance = 100,
	creatureId = 162013,
	coords = {
	{ m = CONSTANTS.UIMAPIDS.VALE_OF_ETERNAL_BLOSSOMS },
	},
	},

	["Black Chitinous Plate"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Black Chitinous Plate"],
	npcs = { 162140 },
	spellId = 315360,
	itemId = 174476,
	creatureId = 162004,
	questId = { 58697 },
	chance = 20,
	coords = {
	{ m = CONSTANTS.UIMAPIDS.ULDUM, x = 21.23, y = 61.05, n = L["Skikx'traz"] },
	},
	},

	["Wicked Lurker"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Wicked Lurker"],
	npcs = { 157593 },
	spellId = 315370,
	itemId = 174478,
	creatureId = 162012,
	questId = { 58330 },
	chance = 20,
	coords = {
	{ m = CONSTANTS.UIMAPIDS.ULDUM, x = 60, y = 72, n = L["Amalgamation of Flesh"] },
	},
	},

	["Corrupted Tentacle"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Corrupted Tentacle"],
	npcs = { 154495 },
	spellId = 315353,
	itemId = 174474,
	creatureId = 161992,
	questId = { 56303 },
	chance = 20,
	coords = {
	{ m = CONSTANTS.UIMAPIDS.VALE_OF_ETERNAL_BLOSSOMS, x = 52.51, y =  62.14, n = L["Will of N'zoth"] },
	},
	},

	["Stinky Sack"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Stinky Sack"],
	npcs = { 154604 },
	spellId = 315355,
	itemId = 174475,
	creatureId = 161997,
	questId = { 56340 },
	chance = 20,
	coords = {
	{ m = CONSTANTS.UIMAPIDS.ULDUM, x = 36.85, y = 20.93, n = L["Lord Aj'qirai"] },
	},
	},

	["Snarling Butterfly Crate"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Snarling Butterfly Crate"],
	spellId = 309522,
	itemId = 172493,
	npcs = { 154154 },
	chance = 20,
	creatureId =158685,
	coords = {
	{ m = CONSTANTS.UIMAPIDS.STORMSONG_VALLEY, x = 61.4, y = 16, n = L["Honey Smasher"] },
	},
	},

	["Eye of Corruption"] ={
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.BOSS,
	name = L["Eye of Corruption"],
	itemId = 174452,
	spellId = 315270,
	creatureId = 161946,
	npcs = { 99999 },
	tooltipNpcs = { 158041 },
	statisticId = {
	14135,
	14136,
	14137,
	14138
	},
	lockoutDetails = {
	mode = CONSTANTS.DEFEAT_DETECTION.MODE_AND,
	{
		encounterName = "N'Zoth the Corruptor",
		instanceDifficulties = {
			[CONSTANTS.INSTANCE_DIFFICULTIES.NORMAL_RAID] = true,
		},
	},
	{
		encounterName = "N'Zoth the Corruptor",
		instanceDifficulties = {
			[CONSTANTS.INSTANCE_DIFFICULTIES.HEROIC_RAID] = true,
		},
	},
	{
		encounterName = "N'Zoth the Corruptor",
		instanceDifficulties = {
			[CONSTANTS.INSTANCE_DIFFICULTIES.MYTHIC_RAID] = true,
		},
	},
	{
		encounterName = "N'Zoth the Corruptor",
		instanceDifficulties = {
			[CONSTANTS.INSTANCE_DIFFICULTIES.LFR] = true,
		},
	},
	},
	instanceDifficulties = {
	[CONSTANTS.INSTANCE_DIFFICULTIES.NORMAL_RAID] = true,
	[CONSTANTS.INSTANCE_DIFFICULTIES.HEROIC_RAID] = true,
	[CONSTANTS.INSTANCE_DIFFICULTIES.MYTHIC_RAID] = true,
	[CONSTANTS.INSTANCE_DIFFICULTIES.LFR] = true,
	},
	chance = 10, -- Blind guess (no data)
	groupSize = 5,
	equalOdds = true,
	coords = {
	{ m = CONSTANTS.UIMAPIDS.NYALOTHA, i = true },
	},
	},

	["Void-Scarred Anubisath"] ={
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.BOSS,
	name = L["Void-Scarred Anubisath"],
	itemId = 174447	,
	spellId = 315225,
	creatureId = 161921,
	npcs = { 99999 },
	tooltipNpcs = { 156866 },
	statisticId = {
	14127,
	14128,
	14129,
	14130
	},
	lockoutDetails = {
	mode = CONSTANTS.DEFEAT_DETECTION.MODE_AND,
	{
		encounterName = "Ra-den",
		instanceDifficulties = {
			[CONSTANTS.INSTANCE_DIFFICULTIES.NORMAL_RAID] = true,
		},
	},
	{
		encounterName = "Ra-den",
		instanceDifficulties = {
			[CONSTANTS.INSTANCE_DIFFICULTIES.HEROIC_RAID] = true,
		},
	},
	{
		encounterName = "Ra-den",
		instanceDifficulties = {
			[CONSTANTS.INSTANCE_DIFFICULTIES.MYTHIC_RAID] = true,
		},
	},
	{
		encounterName = "Ra-den",
		instanceDifficulties = {
			[CONSTANTS.INSTANCE_DIFFICULTIES.LFR] = true,
		},
	},
	},
	instanceDifficulties = {
	[CONSTANTS.INSTANCE_DIFFICULTIES.NORMAL_RAID] = true,
	[CONSTANTS.INSTANCE_DIFFICULTIES.HEROIC_RAID] = true,
	[CONSTANTS.INSTANCE_DIFFICULTIES.MYTHIC_RAID] = true,
	[CONSTANTS.INSTANCE_DIFFICULTIES.LFR] = true,
	},
	chance = 8,
	groupSize = 5,
	equalOdds = true,
	coords = {
	{ m = CONSTANTS.UIMAPIDS.NYALOTHA, i = true },
	},
	},

	["Fractured Obsidian Claw"] ={
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.BOSS,
	name = L["Fractured Obsidian Claw"],
	itemId = 174446	,
	spellId = 315221,
	creatureId = 161919,
	npcs = { 99999 },
	tooltipNpcs = { 156523 },
	statisticId = {
	14089,
	14091,
	14093,
	14094
	},
	lockoutDetails = {
	mode = CONSTANTS.DEFEAT_DETECTION.MODE_AND,
	{
		encounterName = "Maut",
		instanceDifficulties = {
			[CONSTANTS.INSTANCE_DIFFICULTIES.NORMAL_RAID] = true,
		},
	},
	{
		encounterName = "Maut",
		instanceDifficulties = {
			[CONSTANTS.INSTANCE_DIFFICULTIES.HEROIC_RAID] = true,
		},
	},
	{
		encounterName = "Maut",
		instanceDifficulties = {
			[CONSTANTS.INSTANCE_DIFFICULTIES.MYTHIC_RAID] = true,
		},
	},
	{
		encounterName = "Maut",
		instanceDifficulties = {
			[CONSTANTS.INSTANCE_DIFFICULTIES.LFR] = true,
		},
	},
	},
	instanceDifficulties = {
	[CONSTANTS.INSTANCE_DIFFICULTIES.NORMAL_RAID] = true,
	[CONSTANTS.INSTANCE_DIFFICULTIES.HEROIC_RAID] = true,
	[CONSTANTS.INSTANCE_DIFFICULTIES.MYTHIC_RAID] = true,
	[CONSTANTS.INSTANCE_DIFFICULTIES.LFR] = true,
	},
	chance = 5,
	groupSize = 5,
	equalOdds = true,
	coords = {
	{ m = CONSTANTS.UIMAPIDS.NYALOTHA, i = true },
	},
	},

	["Aqir Hivespawn"] ={
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.BOSS,
	name = L["Aqir Hivespawn"],
	itemId = 174448	,
	spellId = 315229,
	creatureId = 161923,
	npcs = { 99999 },
	tooltipNpcs = { 157254 },
	statisticId = {
	14107,
	14108,
	14109,
	14110,
	},
	lockoutDetails = {
	mode = CONSTANTS.DEFEAT_DETECTION.MODE_AND,
	{
		encounterName = "The Hivemind",
		instanceDifficulties = {
			[CONSTANTS.INSTANCE_DIFFICULTIES.NORMAL_RAID] = true,
		},
	},
	{
		encounterName = "The Hivemind",
		instanceDifficulties = {
			[CONSTANTS.INSTANCE_DIFFICULTIES.HEROIC_RAID] = true,
		},
	},
	{
		encounterName = "The Hivemind",
		instanceDifficulties = {
			[CONSTANTS.INSTANCE_DIFFICULTIES.MYTHIC_RAID] = true,
		},
	},
	{
		encounterName = "The Hivemind",
		instanceDifficulties = {
			[CONSTANTS.INSTANCE_DIFFICULTIES.LFR] = true,
		},
	},
	},
	instanceDifficulties = {
	[CONSTANTS.INSTANCE_DIFFICULTIES.NORMAL_RAID] = true,
	[CONSTANTS.INSTANCE_DIFFICULTIES.HEROIC_RAID] = true,
	[CONSTANTS.INSTANCE_DIFFICULTIES.MYTHIC_RAID] = true,
	[CONSTANTS.INSTANCE_DIFFICULTIES.LFR] = true,
	},
	chance = 10,
	groupSize = 5,
	equalOdds = true,
	coords = {
	{ m = CONSTANTS.UIMAPIDS.NYALOTHA, i = true },
	},
	},

	["Ra'kim"] ={
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.BOSS,
	name = L["Ra'kim"],
	itemId = 174449	,
	spellId = 315231,
	creatureId = 161924,
	npcs = { 99999 },
	tooltipNpcs = { 157254 },
	statisticId = {
	14107,
	14108,
	14109,
	14110,
	},
	lockoutDetails = {
	mode = CONSTANTS.DEFEAT_DETECTION.MODE_AND,
	{
		encounterName = "The Hivemind",
		instanceDifficulties = {
			[CONSTANTS.INSTANCE_DIFFICULTIES.NORMAL_RAID] = true,
		},
	},
	{
		encounterName = "The Hivemind",
		instanceDifficulties = {
			[CONSTANTS.INSTANCE_DIFFICULTIES.HEROIC_RAID] = true,
		},
	},
	{
		encounterName = "The Hivemind",
		instanceDifficulties = {
			[CONSTANTS.INSTANCE_DIFFICULTIES.MYTHIC_RAID] = true,
		},
	},
	{
		encounterName = "The Hivemind",
		instanceDifficulties = {
			[CONSTANTS.INSTANCE_DIFFICULTIES.LFR] = true,
		},
	},
	},
	instanceDifficulties = {
	[CONSTANTS.INSTANCE_DIFFICULTIES.NORMAL_RAID] = true,
	[CONSTANTS.INSTANCE_DIFFICULTIES.HEROIC_RAID] = true,
	[CONSTANTS.INSTANCE_DIFFICULTIES.MYTHIC_RAID] = true,
	[CONSTANTS.INSTANCE_DIFFICULTIES.LFR] = true,
	},
	chance = 10, -- Blind guess (no data)
	groupSize = 5,
	equalOdds = true,
	coords = {
	{ m = CONSTANTS.UIMAPIDS.NYALOTHA, i = true },
	},
	},

	["Bottle of Gloop"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.FISHING,
	name = L["Bottle of Gloop"],
	zones = { tostring(CONSTANTS.UIMAPIDS.ULDUM), tostring(CONSTANTS.UIMAPIDS.VALE_OF_ETERNAL_BLOSSOMS) },
	spellId = 315285,
	itemId = 174456,
	creatureId = 161951,
	chance = 500,
	requiresPool = true,
	coords = {
	{ m = CONSTANTS.UIMAPIDS.ULDUM },
	{ m = CONSTANTS.UIMAPIDS.VALE_OF_ETERNAL_BLOSSOMS },
	},
	},

	["Strand Crawler"] = {
	-- Note: Also drops from the Northrend CONSTANTS.DETECTION_METHODS.FISHING bag (but Rarity can't track items from two different sources...)
	cat = CONSTANTS.ITEM_CATEGORIES.WOD,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Strand Crawler"],
	npcs = { 85715, 81171 },
	spellId = 62561,
	itemId = 44983,
	creatureId = 33226,
	chance = 1000,
	coords = {
	{ m = CONSTANTS.UIMAPIDS.LUNARFALL_GARRISON },
	{ m = CONSTANTS.UIMAPIDS.FROSTWALL_GARRISON },
	},
	},

	-- 9.0 Pets
	["Feasting Larva"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.SHADOWLANDS,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Feasting Larva"],
	npcs = { 162528 },
	spellId = 335977,
	itemId = 181266,
	chance = 25,
	creatureId = 172137,
	questId = 58768,
	coords = {
	{ m = CONSTANTS.UIMAPIDS.MALDRAXXUS, x = 42.27, y = 53.90, n = L["Smorgas the Feaster"] },
	},
	},

	["Writhing Spine"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.SHADOWLANDS,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Writhing Spine"],
	npcs = { 158406 },
	spellId = 335979,
	itemId = 181267,
	chance = 33,
	creatureId = 172139,
	questId = 58006,
	coords = {
	{ m = CONSTANTS.UIMAPIDS.MALDRAXXUS, x = 61.6, y = 76.4, n = L["Scunner"] },
	},
	},

	["Foulwing Buzzer"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.SHADOWLANDS,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Foulwing Buzzer"],
	npcs = { 159753 },
	spellId = 336031,
	itemId = 181283,
	chance = 20,
	creatureId = 172155,
	questId = 58004,
	coords = {
	{ m = CONSTANTS.UIMAPIDS.MALDRAXXUS, x = 54.0, y = 18.4, n = L["Ravenomous"] },
	},
	},

	["Sharpclaw"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.SHADOWLANDS,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Sharpclaw"],
	npcs = { 172521 },
	spellId = 341495,
	itemId = 183410,
	chance = 20,
	creatureId = 174084,
	questId = 62210,
	coords = {
	{ m = CONSTANTS.UIMAPIDS.THE_MAW, x = 55.8, y = 67.5, n = L["Sanngror the Torturer"] },
	},
	},

	["Blushing Spiderling"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.SHADOWLANDS,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Blushing Spiderling"],
	npcs = { 155779 },
	spellId = 333794,
	itemId = 180584,
	chance = 50,
	creatureId = 171117,
	questId = 56877,
	coords = {
	{ m = CONSTANTS.UIMAPIDS.REVENDRETH, x = 42.8, y = 79.2, n = L["Tomb Burster"] },
	},
	},

	["Boneweave Hatchling"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.SHADOWLANDS,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Boneweave Hatchling"],
	npcs = { 159886 },
	spellId = 335764,
	itemId = 181172,
	chance = 33,
	creatureId = 171986,
	questId = 58003,
	coords = {
	{ m = CONSTANTS.UIMAPIDS.MALDRAXXUS, x = 55.5, y = 23.6, n = L["Sister Chelicerae"] },
	},
	},

	["Bucket of Primordial Sludge"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.SHADOWLANDS,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Bucket of Primordial Sludge"],
	npcs = { 166292 },
	spellId = 333799,
	itemId = 180588,
	chance = 11,
	creatureId = 171121,
	questId = 59823,
	coords = {
	{ m = CONSTANTS.UIMAPIDS.REVENDRETH, x = 35.8, y = 32.6, n = L["Bog Beast"] },
	},
	},

	["Animated Tome"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.SHADOWLANDS,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Animated Tome"],
	npcs = { 160675 },
	spellId = 333797,
	itemId = 180587,
	chance = 20,
	creatureId = 171120,
	questId = 58213,
	coords = {
	{ m = CONSTANTS.UIMAPIDS.REVENDRETH, x = 37.6, y = 68.7, n = L["Scrivener Lenua"] },
	},
	},

	["Invertebrate Oil"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.SHADOWLANDS,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Invertebrate Oil"],
	npcs = { 157312 },
	spellId = 336021,
	itemId = 181270,
	chance = 40,
	creatureId = 172149,
	questId = 61724,
	coords = {
	{ m = CONSTANTS.UIMAPIDS.MALDRAXXUS, x = 58.6, y = 74.2, n = L["Oily Invertebrate"] },
	},
	},

	["Shy Melvin"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.SHADOWLANDS,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Shy Melvin"],
	npcs = { 162711 },
	spellId = 335969,
	itemId = 181263,
	chance = 3,
	creatureId = 172134,
	questId = 58868,
	coords = {
	{ m = CONSTANTS.UIMAPIDS.MALDRAXXUS, x = 76.8, y = 57.0, n = L["Deadly Dapperling"] },
	},
	},

	["Corpselouse Larva"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.SHADOWLANDS,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Corpselouse Larva"],
	npcs = { 162528 },
	spellId = 335974,
	itemId = 181265,
	chance = 100,
	creatureId = 172136,
	questId = 58768,
	coords = {
	{ m = CONSTANTS.UIMAPIDS.MALDRAXXUS, x = 42.27, y = 53.90, n = L["Smorgas the Feaster"] },
	},
	},

	["Contained Essence of Dread"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.SHADOWLANDS,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Contained Essence of Dread"],
	npcs = { 154330 },
	spellId = 341492,
	itemId = 183407,
	chance = 8,
	creatureId = 174081,
	questId = 57509,
	coords = {
	{ m = CONSTANTS.UIMAPIDS.THE_MAW, x = 19.8, y = 46.0, n = L["Eternas the Tormentor"] },
	},
	},

	["Tower Deathroach"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.SHADOWLANDS,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Tower Deathroach"],
	npcs = { 155250, 155251, 156239 },
	spellId = 340721,
	itemId = 183115,
	chance = 25,
	creatureId = 173849,
	coords = {
	{ m = CONSTANTS.UIMAPIDS.TORGHAST },
	},
	},

	-- ["SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS"] = {
	-- 	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	-- 	type = CONSTANTS.ITEM_TYPES.PET,
	-- 	method = CONSTANTS.DETECTION_METHODS.NPC,
	-- 	name = L["SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS"],
	-- 	npcs = { 00000000000000000000000000000000000000000 },
	-- 	spellId = 000000000000000000000000000000000000000000000,
	-- 	itemId = 000000000000000000000000000000000000000000000000,
	-- 	creatureId = 00000000000000000000000000000000000000000000,
	-- 	questId = { 00000000000000000000000000000000000000000 },
	-- 	chance = 20,
	-- 	coords = {
	-- 		{ m = CONSTANTS.UIMAPIDS.AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA, x = 00000000000000000000000000000000000000000000000000000000000, y = 000000000000000000000000000000000000000000000000000000000000000000, n = L["BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB"] },
	-- 	},
	-- },
	["Devoured Wader"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.SHADOWLANDS,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Devoured Wader"],
	itemId = 180869,
	spellId = 335083,
	creatureId = 171714,
	npcs = { 171041, 171013, 171040 },
	chance = 20,
	questId = 61001,
	coords = {
	{ m = CONSTANTS.UIMAPIDS.BASTION },
	},
	},

	["Lost Featherling"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.SHADOWLANDS,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Lost Featherling"],
	itemId = 184397,
	spellId = 345741,
	creatureId = 175560,
	npcs = { 157054, 156559, 156560, 157212 },
	chance = 150,
	coords = {
	{ m = CONSTANTS.UIMAPIDS.BASTION },
	},
	requiresCovenant = true,
	requiredCovenantID = CONSTANTS.COVENANT_IDS.KYRIAN
	},

	["Bottled Up Rage"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.SHADOWLANDS,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Bottled Up Rage"],
	itemId = 180585,
	spellId = 333795,
	creatureId = 171118,
	npcs = { 170048, 165175 },
	chance = 20,
	questId = { 60729 },
	coords = {
	{ m = CONSTANTS.UIMAPIDS.REVENDRETH, x = 49.84, y = 35.02, n = L["Manifestation of Wrath"] },
	{ m = CONSTANTS.UIMAPIDS.REVENDRETH, x = 67.8, y = 82, n = L["Prideful Hulk"] },
	},
	},

	["Undying Deathroach"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.SHADOWLANDS,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.USE,
	name = L["Undying Deathroach"],
	itemId = 183408,
	items = { 184395 },
	spellId = 341493,
	creatureId = 174082,
	chance = 20,
	coords = {
	{ m = CONSTANTS.UIMAPIDS.THE_MAW },
	},
	},

	["Decaying Mawrat"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.SHADOWLANDS,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.USE,
	name = L["Decaying Mawrat"],
	itemId = 183409,
	items = { 184395 },
	spellId = 341494,
	creatureId = 174083,
	chance = 20,
	coords = {
	{ m = CONSTANTS.UIMAPIDS.THE_MAW },
	},
	},

	["Frenzied Mawrat"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.SHADOWLANDS,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Frenzied Mawrat"],
	itemId = 183192,
	spellId = 341293,
	creatureId = 173990,
	npcs = { 151329, 153165, 151331 },
	chance = 100,
	coords = {
	{ m = CONSTANTS.UIMAPIDS.TORGHAST },
	},
	},

	["Maw Stalker"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.SHADOWLANDS,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Maw Stalker"],
	itemId = 183194,
	spellId = 341295,
	creatureId = 173991,
	npcs = { 159755, 151331, 169859, 171422 },
	chance = 200,
	coords = {
	{ m = CONSTANTS.UIMAPIDS.TORGHAST },
	},
	},

	["Hissing Deathroach"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.SHADOWLANDS,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Hissing Deathroach"],
	itemId = 183116,
	spellId = 340722,
	creatureId = 173850,
	npcs = { 155251, 156239, 155250 },
	chance = 33,
	coords = {
	{ m = CONSTANTS.UIMAPIDS.TORGHAST },
	},
	},

	["Severs"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.SHADOWLANDS,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Severs"],
	itemId = 183117,
	spellId = 340723,
	creatureId = 173851,
	npcs = { 159190, 157122, 171422, 155945 },
	chance = 400,
	coords = {
	{ m = CONSTANTS.UIMAPIDS.TORGHAST },
	},
	},

	["Lightbinders"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.SHADOWLANDS,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Lightbinders"],
	itemId = 180586,
	spellId = 333796,
	creatureId = 171119,
	npcs = { 164388, 160604, 165687 },
	chance = 1000, -- It's about 5% from the rare, but two sources with different drop rates aren't currently supported
	coords = {
	{ m = CONSTANTS.UIMAPIDS.REVENDRETH, x = 25.8, y = 48.4, n = L["Amalgamation of Light"] },
	},
	},

	["Crimson Dredwing Pup"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.SHADOWLANDS,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Crimson Dredwing Pup"],
	itemId = 180602,
	spellId = 333865,
	creatureId = 171150,
	npcs = {161206, 169154, 163893, 156077, 156395, 165290 },
	chance = 2000,
	coords = {
	{ m = CONSTANTS.UIMAPIDS.REVENDRETH },
	},
	},

	["Jar of Ashes"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.SHADOWLANDS,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Jar of Ashes"],
	itemId = 183193,
	spellId = 341292,
	creatureId = 173989,
	npcs = { 153165, 151329, 151331 },
	chance = 100,
	coords = {
	{ m = CONSTANTS.UIMAPIDS.TORGHAST },
	},
	},


	["Maw Crawler"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.SHADOWLANDS,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Maw Crawler"],
	itemId = 183191,
	spellId = 341289,
	creatureId = 173988,
	npcs = { 153451, 156015, 155945, 153165, 169859 },
	chance = 200,
	coords = {
	{ m = CONSTANTS.UIMAPIDS.TORGHAST },
	},
	},

	["Torghast Lurker"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.SHADOWLANDS,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Torghast Lurker"],
	itemId = 183195,
	spellId = 341298,
	creatureId = 173992,
	npcs = { 152995, 170418, 153174, 153011, 153382 },
	chance = 100,
	coords = {
	{ m = CONSTANTS.UIMAPIDS.TORGHAST },
	},
	},

	["Stonewing Dredwing Pup"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.SHADOWLANDS,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.USE,
	name = L["Stonewing Dredwing Pup"],
	itemId = 180601,
	items = { 180648 },
	spellId = 339590,
	creatureId = 173502,
	chance = 100, -- Blind guess
	coords = {
	{ m = CONSTANTS.UIMAPIDS.REVENDRETH },
	},
	},

	["Hungry Burrower"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.SHADOWLANDS,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.USE,
	name = L["Hungry Burrower"],
	itemId = 180635,
	items = { 180649 },
	spellId = 334149,
	creatureId = 171242,
	chance = 100, -- Blind guess
	coords = {
	{ m = CONSTANTS.UIMAPIDS.ARDENWEALD },
	},
	},

	["Larion Cub"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.SHADOWLANDS,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.USE,
	name = L["Larion Cub"],
	itemId = 184399,
	items = { 180647 },
	spellId = 345744,
	creatureId = 175564,
	chance = 100, -- Blind guess
	coords = {
	{ m = CONSTANTS.UIMAPIDS.BASTION },
	},
	},

	["Micromancer's Mystical Cowl"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.SHADOWLANDS,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.USE,
	name = L["Micromancer's Mystical Cowl"],
	itemId = 181269,
	items = { 180646 },
	spellId = 336020,
	creatureId = 172148,
	chance = 100, -- Blind guess
	coords = {
	{ m = CONSTANTS.UIMAPIDS.MALDRAXXUS },
	},
	},

	["Sludge Feeler"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.SHADOWLANDS,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.BOSS,
	name = L["Sludge Feeler"],
	itemId = 181271,
	spellId = 336022,
	creatureId = 172150,
	npcs = { 99999 },
	tooltipNpcs = { 164267 },
	statisticId = { 14398 },
	chance = 100,
	equalOdds = true,
	instanceDifficulties = { [CONSTANTS.INSTANCE_DIFFICULTIES.MYTHIC_DUNGEON] = true },
	groupSize = 5,
	coords = {
	{ m = CONSTANTS.UIMAPIDS.PLAGUEFALL },
	},
	},

	["Vial of Roiling Emotions"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.SHADOWLANDS,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC, -- Is this actually correct? Can't CONSTANTS.DETECTION_METHODS.USE statistics to reliably detect this, because there aren't any
	name = L["Vial of Roiling Emotions"],
	itemId = 180591,
	spellId = 333802,
	creatureId = 171124,
	npcs = { 162102 },
	-- tooltipNpcs = { 162102 }, -- Not needed if using CONSTANTS.DETECTION_METHODS.NPC instead of CONSTANTS.DETECTION_METHODS.BOSS
	chance = 100,
	equalOdds = true,
	instanceDifficulties = { [CONSTANTS.INSTANCE_DIFFICULTIES.MYTHIC_DUNGEON] = true },
	groupSize = 5,
	coords = {
	{ m = CONSTANTS.UIMAPIDS.SANGUINE_DEPTHS },
	},
	},

	["Spinemaw Gormling"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.SHADOWLANDS,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.BOSS,
	name = L["Spinemaw Gormling"],
	itemId = 183623,
	spellId = 341519,
	creatureId = 174089,
	npcs = { 99999 },
	tooltipNpcs = { 164517 },
	statisticId = { 14395 },
	chance = 100,
	equalOdds = true,
	instanceDifficulties = { [CONSTANTS.INSTANCE_DIFFICULTIES.MYTHIC_DUNGEON] = true },
	groupSize = 5,
	coords = {
	{ m = CONSTANTS.UIMAPIDS.MISTS_OF_TIRNA_SCITHE },
	},
	},

	["Skittering Venomspitter"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.SHADOWLANDS,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	name = L["Skittering Venomspitter"],
	itemId = 181173,
	spellId = 335765,
	creatureId = 171987,
	chance = 75,
	coords = {
	{ m = CONSTANTS.UIMAPIDS.MALDRAXXUS },
	},
	},

	["Bubbling Pustule"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.SHADOWLANDS,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	name = L["Bubbling Pustule"],
	itemId = 181262,
	spellId = 335966,
	creatureId = 172132,
	chance = 33,
	coords = {
	{ m = CONSTANTS.UIMAPIDS.MALDRAXXUS },
	},
	},

	["Silvershell Snapper"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.SHADOWLANDS,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	name = L["Silvershell Snapper"],
	itemId = 180856,
	spellId = 335050,
	creatureId = 171693,
	chance = 20,
	tooltipNpcs = { 163460 },
	questId = { 62650 },
	sourceText = L["This can be looted after killing Dionae."],
	coords = {
	{ m = CONSTANTS.UIMAPIDS.BASTION, x = 41.5, y = 49.1, n = L["Stewart's Stewpendous Stew"] },
	},
	},

	["Trapped Stonefiend"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.SHADOWLANDS,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	name = L["Trapped Stonefiend"],
	itemId = 180592,
	spellId = 333803,
	creatureId = 171125,
	chance = 10,
	coords = {
	{ m = CONSTANTS.UIMAPIDS.REVENDRETH },
	},
	},

	["Larion Pouncer"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.SHADOWLANDS,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Larion Pouncer"],
	itemId = 184401,
	spellId = 345742,
	creatureId = 175562,
	npcs = { 156340 },
	questId = 61634,
	chance = 25,
	coords = {
	{ m = CONSTANTS.UIMAPIDS.BASTION, x = 22.6, y = 22.8, n = L["Larionrider Orstus"] },
	},
	},

	["Soullocked Sinstone"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.SHADOWLANDS,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	name = L["Soullocked Sinstone"],
	itemId = 180589,
	spellId = 333800,
	creatureId = 171122,
	chance = 20,
	coords = {
	{ m = CONSTANTS.UIMAPIDS.REVENDRETH },
	},
	},

	["Luminous Webspinner"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.SHADOWLANDS,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	name = L["Luminous Webspinner"],
	itemId = 181171,
	spellId = 335762,
	creatureId = 171985,
	chance = 25, -- Blind guess
	coords = {
	{ m = CONSTANTS.UIMAPIDS.MALDRAXXUS },
	},
	},

	["Stony's Infused Ruby"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.SHADOWLANDS,
	type = CONSTANTS.ITEM_TYPES.PET,
	method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	name = L["Stony's Infused Ruby"],
	itemId = 183855,
	spellId = 339674,
	creatureId = 173536,
	chance = 100, -- Estimate
	coords = {
	{ m = CONSTANTS.UIMAPIDS.REVENDRETH },
	},
	},
}

local toysAndItems = {
	name = L["Toys & Items"],
				   -- Pickpocketing
	--["Pickpocket Test"] =                               { cat = CONSTANTS.ITEM_CATEGORIES.CLASSIC, type = CONSTANTS.ITEM_TYPES.ITEM, method = CONSTANTS.DETECTION_METHODS.NPC, name = "Light Feather", itemId = 17056, npcs = { 3115, 3116, }, chance = 100,  pickpocket = true, }, -- Dustwind Harpy and Dustwind Pillager in Razorwind Canyon (Durotar 50 27)
	--["Decahedral Dwarven Dice"] =                       { cat = CONSTANTS.ITEM_CATEGORIES.WOTLK, type = CONSTANTS.ITEM_TYPES.ITEM, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Decahedral Dwarven Dice"], itemId = 36863, npcs = { 27357, 27367, 32149, }, chance = 100, pickpocket = true, },
	--["Loaded Gnomish Dice"] =                           { cat = CONSTANTS.ITEM_CATEGORIES.CATA, type = CONSTANTS.ITEM_TYPES.ITEM, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Loaded Gnomish Dice"], itemId = 63269, npcs = { 58612, 49124, 47595, 46320, }, chance = 300, pickpocket = true, },
	--["Worn Troll Dice"] =                               { cat = CONSTANTS.ITEM_CATEGORIES.WOTLK, type = CONSTANTS.ITEM_TYPES.ITEM, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Worn Troll Dice"], itemId = 36862, npcs = { 34839, 34728, 23660, 34734, 26550, 27260, 28504, 34838, 39438, 29880, 28417, 28123, 23655, 27424, 28388, }, chance = 300, pickpocket = true, },

	-- Toys (Holiday)
	["Blight Boar Microphone"] =                        { cat = CONSTANTS.ITEM_CATEGORIES.HOLIDAY, type = CONSTANTS.ITEM_TYPES.ITEM, isToy = true, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Blight Boar Microphone"], itemId = 151265, npcs = { 122899}, chance = 10, holidayTexture = CONSTANTS.HOLIDAY_TEXTURES.DARKMOON_FAIRE, coords = {{m=407,x=65.6,y=67}}, questId = {47767} },
	["Coin of Many Faces"] =                            { cat = CONSTANTS.ITEM_CATEGORIES.HOLIDAY, type = CONSTANTS.ITEM_TYPES.ITEM, isToy = true, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Coin of Many Faces"], itemId = 128807, npcs = { 96535, 96538, 96637, 96536}, chance = 100, holidayTexture = CONSTANTS.HOLIDAY_TEXTURES.HALLOWS_END, coords = {{m=104,x=40.6,y=79.4}}, },
	["Crashin' Thrashin' Flamer Controller"] =           { cat = CONSTANTS.ITEM_CATEGORIES.HOLIDAY, type = CONSTANTS.ITEM_TYPES.ITEM, isToy = true, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Crashin' Thrashin' Flamer Controller"], itemId = 108632, items = { 116762 }, chance = 50, holidayTexture = CONSTANTS.HOLIDAY_TEXTURES.WINTERS_VEIL, questId = { 6983, 7043 }, coords = { {m=25,x=43.6,y=39.6} }, },
	["Crashin' Thrashin' Flyer Controller"] =           { cat = CONSTANTS.ITEM_CATEGORIES.HOLIDAY, type = CONSTANTS.ITEM_TYPES.ITEM, isToy = true, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Crashin' Thrashin' Flyer Controller"], itemId = 104318, items = { 116762 }, chance = 50, holidayTexture = CONSTANTS.HOLIDAY_TEXTURES.WINTERS_VEIL, questId = { 6983, 7043 }, coords = { {m=25,x=43.6,y=39.6} }, },
	["Crashin' Thrashin' Racer Controller"] =           { cat = CONSTANTS.ITEM_CATEGORIES.HOLIDAY, type = CONSTANTS.ITEM_TYPES.ITEM, isToy = true, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Crashin' Thrashin' Racer Controller"], itemId = 37710, items = { 116762 }, chance = 50, holidayTexture = CONSTANTS.HOLIDAY_TEXTURES.WINTERS_VEIL, questId = { 6983, 7043 }, coords = { {m=25,x=43.6,y=39.6} }, },
	["Crashin' Thrashin' Shredder Controller"] =           { cat = CONSTANTS.ITEM_CATEGORIES.HOLIDAY, type = CONSTANTS.ITEM_TYPES.ITEM, isToy = true, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Crashin' Thrashin' Shredder Controller"], itemId = 116763, items = { 116762 }, chance = 50, holidayTexture = CONSTANTS.HOLIDAY_TEXTURES.WINTERS_VEIL, questId = { 6983, 7043 }, coords = { {m=25,x=43.6,y=39.6} }, },
	["Disposable Winter Veil Suits"] =                                     { cat = CONSTANTS.ITEM_CATEGORIES.HOLIDAY, type = CONSTANTS.ITEM_TYPES.ITEM, isToy = true, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Disposable Winter Veil Suits"], itemId = 139337, items = { 116762 }, chance = 50, holidayTexture = CONSTANTS.HOLIDAY_TEXTURES.WINTERS_VEIL, questId = { 6983, 7043 }, coords = { {m=25,x=43.6,y=39.6} }, },
	["Foot Ball"] =                                     { cat = CONSTANTS.ITEM_CATEGORIES.HOLIDAY, type = CONSTANTS.ITEM_TYPES.ITEM, isToy = true, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Foot Ball"], itemId = 90888, items = { 116762 }, chance = 50, holidayTexture = CONSTANTS.HOLIDAY_TEXTURES.WINTERS_VEIL, questId = { 6983, 7043 }, coords = { {m=25,x=43.6,y=39.6} }, },
	["Fuzzy Green Lounge Cushion"] =                    { cat = CONSTANTS.ITEM_CATEGORIES.HOLIDAY, type = CONSTANTS.ITEM_TYPES.ITEM, isToy = true, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Fuzzy Green Lounge Cushion"], itemId = 116692, items = { 21271, 21270, 116762 }, chance = 4, sourceText = L["Available starting December 25th"], holidayTexture = CONSTANTS.HOLIDAY_TEXTURES.WINTERS_VEIL, questId = { 8788, 8767 }, christmasOnly = true, coords = { {m=86,x=49.1,y=78.2,h=true},{m=87,x=33.4,y=65.9,a=true}, }, },
	["MiniZep Controller"] =                            { cat = CONSTANTS.ITEM_CATEGORIES.HOLIDAY, type = CONSTANTS.ITEM_TYPES.ITEM, isToy = true, method = CONSTANTS.DETECTION_METHODS.USE, name = L["MiniZep Controller"], itemId = 46709, items = { 116762 }, chance = 50, holidayTexture = CONSTANTS.HOLIDAY_TEXTURES.WINTERS_VEIL, questId = { 6983, 7043 }, coords = { {m=25,x=43.6,y=39.6} }, },
	["Moonfang Shroud"] =                               { cat = CONSTANTS.ITEM_CATEGORIES.HOLIDAY, type = CONSTANTS.ITEM_TYPES.ITEM, isToy = true, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Moonfang Shroud"], itemId = 101571, npcs = { 71992, }, chance = 5, holidayTexture = CONSTANTS.HOLIDAY_TEXTURES.DARKMOON_FAIRE, coords = { {m=407,x=39.8,y=44.4} }, },
	["Moonfang's Paw"] =                                { cat = CONSTANTS.ITEM_CATEGORIES.HOLIDAY, type = CONSTANTS.ITEM_TYPES.ITEM, isToy = true, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Moonfang's Paw"], itemId = 105898, npcs = { 71992, }, chance = 5, holidayTexture = CONSTANTS.HOLIDAY_TEXTURES.DARKMOON_FAIRE, coords = { {m=407,x=39.8,y=44.4} }, },
	["Pineapple Lounge Cushion"] =                      { cat = CONSTANTS.ITEM_CATEGORIES.HOLIDAY, type = CONSTANTS.ITEM_TYPES.ITEM, isToy = true, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Pineapple Lounge Cushion"], itemId = 116689, items = { 21271, 21270, 116762 }, chance = 4, sourceText = L["Available starting December 25th"], holidayTexture = CONSTANTS.HOLIDAY_TEXTURES.WINTERS_VEIL, questId = { 8788, 8767 }, christmasOnly = true, coords = { {m=86,x=49.1,y=78.2,h=true},{m=87,x=33.4,y=65.9,a=true}, }, },
	["Red Wooden Sled"] =                                     { cat = CONSTANTS.ITEM_CATEGORIES.HOLIDAY, type = CONSTANTS.ITEM_TYPES.ITEM, isToy = true, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Red Wooden Sled"], itemId = 128776, items = { 116762 }, chance = 50, holidayTexture = CONSTANTS.HOLIDAY_TEXTURES.WINTERS_VEIL, questId = { 6983, 7043 }, coords = { {m=25,x=43.6,y=39.6} }, },
	["Sack of Spectral Spiders"] =                      { cat = CONSTANTS.ITEM_CATEGORIES.HOLIDAY, type = CONSTANTS.ITEM_TYPES.ITEM, isToy = true, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Sack of Spectral Spiders"], itemId = 128794, npcs = { 96323, }, chance = 8, questId = 39617, holidayTexture = CONSTANTS.HOLIDAY_TEXTURES.HALLOWS_END, coords = { zoneOverride = L["Draenor Garrison"], {m=579},{m=585}, }, },
	["Safari Lounge Cushion"] =                         { cat = CONSTANTS.ITEM_CATEGORIES.HOLIDAY, type = CONSTANTS.ITEM_TYPES.ITEM, isToy = true, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Safari Lounge Cushion"], itemId = 116690, items = { 21271, 21270, 116762 }, chance = 4, sourceText = L["Available starting December 25th"], holidayTexture = CONSTANTS.HOLIDAY_TEXTURES.WINTERS_VEIL, questId = { 8788, 8767 }, christmasOnly = true, coords = { {m=86,x=49.1,y=78.2,h=true},{m=87,x=33.4,y=65.9,a=true}, }, },
	["Silver-Plated Turkey Shooter"] =                  { cat = CONSTANTS.ITEM_CATEGORIES.HOLIDAY, type = CONSTANTS.ITEM_TYPES.ITEM, isToy = true, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Silver-Plated Turkey Shooter"], itemId = 116400, items = { 116404 }, chance = 33, holidayTexture = CONSTANTS.HOLIDAY_TEXTURES.PILGRIMS_BOUNTY, coords = { {m=87,x=60,y=34.2,q=14048,a=true},{m=87,x=60,y=34.2,q=14051,a=true},{m=89,x=61.8,y=46.4,q=14054,a=true},{m=37,x=33.8,y=50.8,q=14055,a=true},{m=37,x=33.6,y=50.6,q=14053,a=true},{m=1,x=46.4,y=13.8,q=14061,h=true},{m=1,x=46.4,y=13.8,q=14062,h=true},{m=88,x=31,y=69.6,q=14060,h=true},{m=998,x=65.2,y=13.8,q=14058,h=true},{m=998,x=63.4,y=9,q=14059,h=true}, }, },
	["The Heartbreaker"] =                              { cat = CONSTANTS.ITEM_CATEGORIES.HOLIDAY, type = CONSTANTS.ITEM_TYPES.ITEM, isToy = true, method = CONSTANTS.DETECTION_METHODS.USE, name = L["The Heartbreaker"], itemId = 50471, items = { 54537, }, chance = 83, groupSize = 5, equalOdds = true, sourceText = L["Can be contained in Heart-Shaped Box, rewarded for defeating the World Event Dungeon during Love is in the Air."], lockDungeonId = 288, coords = { {m=310,x=40,y=52.6,i=true} }, },
	["The Pigskin"] =                                   { cat = CONSTANTS.ITEM_CATEGORIES.HOLIDAY, type = CONSTANTS.ITEM_TYPES.ITEM, isToy = true, method = CONSTANTS.DETECTION_METHODS.USE, name = L["The Pigskin"], itemId = 90883, items = { 116762 }, chance = 50, holidayTexture = CONSTANTS.HOLIDAY_TEXTURES.WINTERS_VEIL, questId = { 6983, 7043 }, coords = { {m=25,x=43.6,y=39.6} }, },
	["Zhevra Lounge Cushion"] =                         { cat = CONSTANTS.ITEM_CATEGORIES.HOLIDAY, type = CONSTANTS.ITEM_TYPES.ITEM, isToy = true, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Zhevra Lounge Cushion"], itemId = 116691, items = { 21271, 21270, 116762 }, chance = 4, sourceText = L["Available starting December 25th"], holidayTexture = CONSTANTS.HOLIDAY_TEXTURES.WINTERS_VEIL, questId = { 8788, 8767 }, christmasOnly = true, coords = { {m=86,x=49.1,y=78.2,h=true},{m=87,x=33.4,y=65.9,a=true}, }, },

				   -- Toys (2.x)
	["Orb of the Sin'dorei"] =                          { cat = CONSTANTS.ITEM_CATEGORIES.TBC, type = CONSTANTS.ITEM_TYPES.ITEM, isToy = true, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Orb of the Sin'dorei"], itemId = 35275, npcs = { 24664, 24744, 24723, 24560, }, chance = 60, coords = { {m=348,i=true} }, },
	["Time-Lost Figurine"] =                            { cat = CONSTANTS.ITEM_CATEGORIES.TBC, type = CONSTANTS.ITEM_TYPES.ITEM, isToy = true, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Time-Lost Figurine"], itemId = 32782, npcs = { 21838, }, chance = 10, coords = { {m=108,x=66.2,y=77.6} }, },

				   -- Toys (3.x)
	["Frenzyheart Brew"] =                              { cat = CONSTANTS.ITEM_CATEGORIES.WOTLK, type = CONSTANTS.ITEM_TYPES.ITEM, isToy = true, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Frenzyheart Brew"], itemId = 44719, items = { 44718, }, chance = 4, sourceText = L["Contained in Ripe Disgusting Jar, which is obtained by becoming Revered with Frenzyheart Tribe, purchasing a Disgusting Jar from their reputation vendor, and waiting three days."], coords = { {m=119,x=55,y=69} }, },
	["Unusual Compass"] =                               { cat = CONSTANTS.ITEM_CATEGORIES.WOTLK, type = CONSTANTS.ITEM_TYPES.ITEM, isToy = true, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Unusual Compass"], itemId = 45984, items = { 46007, }, chance = 20, coords = { {m=125,x=52.6,y=65.6} }, },

				   -- Toys (5.x)
	["Ai-Li's Skymirror"] =                             { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.ITEM, isToy = true, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Ai-Li's Skymirror"], itemId = 86589, npcs = { 50821, }, chance = 7, coords = { {m=422,x=34.8,y=23.2} }, },
	["Blackflame Daggers"] =                            { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.ITEM, isToy = true, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Blackflame Daggers"], itemId = 104302, npcs = { 73171, }, chance = 100, coords = { {m=554,x=63.6,y=43.6} }, },
	["Chalice of Secrets"] =                            { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.ITEM, isToy = true, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Chalice of Secrets"], itemId = 86575, npcs = { 50359, }, chance = 5, coords = { {m=390,x=39.8,y=25} }, },
	["Eternal Kiln"] =                                  { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.ITEM, isToy = true, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Eternal Kiln"], itemId = 104309, npcs = { 72896, }, chance = 250, coords = { {m=554,x=68.6,y=35.2} }, },
	["Farwater Conch"] =                                { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.ITEM, isToy = true, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Farwater Conch"], itemId = 86581, npcs = { 50769, }, chance = 7, coords = { {m=379,x=74.4,y=79.2} }, },
	["Gastropod Shell"] =                               { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.ITEM, isToy = true, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Gastropod Shell"], itemId = 98136, npcs = { 68220, }, chance = 150, coords = { {m=510, x=44.4,y=80.4,i=true} }, },
	["Hozen Beach Ball"] =                              { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.ITEM, isToy = true, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Hozen Beach Ball"], itemId = 86593, npcs = { 50836, }, chance = 7, coords = { {m=422,x=55.4,y=63.4} }, },
	["Kang's Bindstone"] =                              { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.ITEM, isToy = true, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Kang's Bindstone"], itemId = 86571, npcs = { 50349, }, chance = 5, coords = { {m=390,x=15,y=35.6} }, },
	["Mr. Smite's Brass Compass"] =                     { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.ITEM, isToy = true, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Mr. Smite's Brass Compass"], itemId = 86568, npcs = { 50336, }, chance = 10, coords = { {m=390,x=87.8,y=44.6} }, },
	["Odd Polished Stone"] =                            { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.ITEM, isToy = true, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Odd Polished Stone"], itemId = 104262, npcs = { 72970, 72809, }, chance = 250, sourceText = L["This item has a 1 in 4 chance to drop from Golganarr, a rare spawn on Timeless Isle. It has a 1 in 250 chance to drop from Eroded Cliffdweller on Timeless Isle."], coords = { {m=554,x=63.4,y=60.6} }, },
	["Pandaren Firework Launcher"] =                    { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.ITEM, isToy = true, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Pandaren Firework Launcher"], itemId = 86588, npcs = { 50817, }, chance = 10, coords = { {m=379,x=40.8,y=42.4} }, },
	["Panflute of Pandaria"] =                          { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.ITEM, isToy = true, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Panflute of Pandaria"], itemId = 86586, npcs = { 50806, }, chance = 7, coords = { {m=390,x=39.4,y=53.6} }, },
	["Rime of the Time-Lost Mariner"] =                 { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.ITEM, isToy = true, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Rime of the Time-Lost Mariner"], itemId = 104294, npcs = { 73281, }, chance = 7, coords = { {m=554,x=25.8,y=23.2} }, },
	["Warning Sign"] =                                  { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.ITEM, isToy = true, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Warning Sign"], itemId = 104331, npcs = { 73169, }, chance = 100, coords = { {m=554,x=53.6,y=83} }, },

				   -- Toys (6.x)
	["Crashin' Thrashin' Cannon Controller"] =          { cat = CONSTANTS.ITEM_CATEGORIES.WOD, type = CONSTANTS.ITEM_TYPES.ITEM, isToy = true, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Crashin' Thrashin' Cannon Controller"], itemId = 108633, npcs = { 98284, }, chance = 10, questId = 40106, coords = { {m=534,x=80.6,y=56.4,n=L["Gondar"]} }},
	["Crashin' Thrashin' Mortar Controller"] =          { cat = CONSTANTS.ITEM_CATEGORIES.WOD, type = CONSTANTS.ITEM_TYPES.ITEM, isToy = true, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Crashin' Thrashin' Mortar Controller"], itemId = 108634, npcs = { 98285, }, chance = 10, questId = 40104, coords = { {m=534,x=88.1,y=55.8,n=L["Smashum Grabb"]} }},
	["Crashin' Thrashin' Roller Controller"] =          { cat = CONSTANTS.ITEM_CATEGORIES.WOD, type = CONSTANTS.ITEM_TYPES.ITEM, isToy = true, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Crashin' Thrashin' Roller Controller"], itemId = 108631, npcs = { 98283, }, chance = 10, questId = 40105, coords = { {m=534,x=83.6,y=43.6,n=L["Drakum"]} }},
	["Fandral's Seed Pouch"] =                          { cat = CONSTANTS.ITEM_CATEGORIES.WOD, type = CONSTANTS.ITEM_TYPES.ITEM, isToy = true, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Fandral's Seed Pouch"], itemId = 122304, npcs = { 52571, }, chance = 100, disableForClass = { ["DEATHKNIGHT"] = true, ["DEMONHUNTER"] = true, ["HUNTER"] = true, ["MAGE"] = true, ["MONK"] = true, ["PALADIN"] = true, ["PRIEST"] = true, ["ROGUE"] = true, ["SHAMAN"] = true, ["WARLOCK"] = true, ["WARRIOR"] = true }, sourceText = L["Will only drop for druids."], coords = { {m=369, x=50.9,y=72.4,i=true} }, },

	["Botani Camouflage"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.WOD,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.NPC,
	   name = L["Botani Camouflage"],
	   itemId = 119432,
	   questId = 37369, -- Vignette: Protectors of the Grove
	   npcs = { 86257 },
	   chance = 5,
	   coords = {
		   { m = 543, x = 69.2, y = 44.8, n = L["Basten"] },
	   },
	},

				   -- Toys (7.x) -- some of these are toy conversions in 7.x but I marked them as the expansion they came out in
	["Aqua Jewel"] =                                    { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.ITEM, isToy = true, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Aqua Jewel"], itemId = 86582, npcs = { 50780, }, chance = 10, coords = { {m=390,x=69.6,y=30.8,n=L["Sahn Tidehunter"]} }},
	["Arcano-Shower"] =                                 { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.ITEM, isToy = true, method = CONSTANTS.DETECTION_METHODS.SPECIAL, name = L["Arcano-Shower"], itemId = 141297, chance = 33, questId = 43943, coords = {{m=680}} },
	["Ash-Covered Horn"] =                              { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.ITEM, isToy = true, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Ash-Covered Horn"], itemId = 104329, npcs = { 72898, }, chance = 72, coords = { {m=554,x=35,y=32.4,n=L["High Priest of Ordos"]},{m=554,x=45,y=26,n=L["High Priest of Ordos"]},{m=554,x=50.6,y=23.4,n=L["High Priest of Ordos"]},{m=554,x=57.6,y=26.4,n=L["High Priest of Ordos"]},{m=554,x=49.6,y=33.6,n=L["High Priest of Ordos"]},{m=554,x=56.6,y=34.2,n=L["High Priest of Ordos"]} }},
	["Battle Horn"] =                                   { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.ITEM, isToy = true, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Battle Horn"], itemId = 86565, npcs = { 51059, }, chance = 5, coords = { {m=376,x=32.8,y=62.8,n=L["Blackhoof"]},{m=376,x=34.6,y=59.6,n=L["Blackhoof"]},{m=376,x=37.8,y=60.6,n=L["Blackhoof"]},{m=376,x=39.6,y=57.6,n=L["Blackhoof"]} }}, -- Ordon Candlekeeper drops the Battle Horn too with a 0.5% chance
	["Bottled Tornado"] =                               { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.ITEM, isToy = true, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Bottled Tornado"], itemId = 134023, npcs = { 50749, }, chance = 5, coords = { {m=390,x=14,y=58.6,n=L["Kal'tik the Blight"]} }},
	["Burgy Blackheart's Handsome Hat"] =               { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.ITEM, isToy = true, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Burgy Blackheart's Handsome Hat"], itemId = 134022, npcs = { 50052, }, chance = 100, coords = { {m=205,x=57.6,y=69.8} }},
	["Chain Pet Leash"] =                               { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.ITEM, isToy = true, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Chain Pet Leash"], itemId = 89139, items = { 89125, 93148, 93147, 93146, 93149, 94207, 91086, 116062, 98095 }, chance = 2, },
	["Displacer Meditation Stone"] =                    { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.ITEM, isToy = true, method = CONSTANTS.DETECTION_METHODS.SPECIAL, name = L["Displacer Meditation Stone"], itemId = 141298, chance = 33, questId = 43943, coords = {{m=680}} },
	["Don Carlos' Famous Hat"] =                        { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.ITEM, isToy = true, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Don Carlos' Famous Hat"], itemId = 134019, npcs = { 28132, }, chance = 10, coords = { {m=274,x=45.4,y=55.6} }},
	["Essence of the Breeze"] =                         { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.ITEM, isToy = true, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Essence of the Breeze"], itemId = 86590, npcs = { 50822, }, chance = 5, coords = { {m=390,x=42.6,y=69.0,n=L["Ai-Ran the Shifting Cloud"]} }},
	["Eternal Warrior's Sigil"] =                       { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.ITEM, isToy = true, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Eternal Warrior's Sigil"], itemId = 86578, npcs = { 50739, }, chance = 7, coords = { {m=422,x=35.6,y=30.8,n=L["Gar'lok"]},{m=422,x=37.8,y=29.6,n=L["Gar'lok"]},{m=422,x=39.2,y=41.8,n=L["Gar'lok"]} }},
	["Faintly Glowing Flagon of Mead"] =                { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.ITEM, isToy = true, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Faintly Glowing Flagon of Mead"], itemId = 129113, npcs = { 91892, }, chance = 20, coords = { {m=696,x=41,y=72} }},
	["Fal'dorei Egg"] =                                 { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.ITEM, isToy = true, method = CONSTANTS.DETECTION_METHODS.SPECIAL, name = L["Fal'dorei Egg"], itemId = 140780, chance = 33, questId = 43943, coords = {{m=680}} },
	["Goren \"Log\" Roller"] =                          { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.ITEM, isToy = true, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Goren \"Log\" Roller"], itemId = 119180, npcs = { 87352, }, chance = 7, questId = 37380, coords = { {m=525,x=66.6,y=25.4,n=L["Gibblette the Cowardly"]} }},
	["Hardened Shell"] =                                { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.ITEM, isToy = true, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Hardened Shell"], itemId = 86584, npcs = { 50789, }, chance = 6, coords = { {m=379,x=63.8,y=13.8,n=L["Nessos the Oracle"]} }}, -- Chelon and Great Turtle Furyshell drop the shell too with a 1.7% chance
	["Helpful Wikky's Whistle"] =                       { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.ITEM, isToy = true, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Helpful Wikky's Whistle"], itemId = 86594, npcs = { 50840, }, chance = 5, coords = { {m=390,x=31,y=91.6,n=L["Major Nanners"]} }},
	["Kaldorei Light Globe"] =                          { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.ITEM, isToy = true, method = CONSTANTS.DETECTION_METHODS.SPECIAL, name = L["Kaldorei Light Globe"], itemId = 141299, chance = 33, questId = 43943, coords = {{m=680}} },
	["Ley Spider Eggs"] =                               { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.ITEM, isToy = true, method = CONSTANTS.DETECTION_METHODS.SPECIAL, name = L["Ley Spider Eggs"], itemId = 140786, chance = 33, questId = 43943, coords = {{m=680}} },
	["Salyin Battle Banner"] =                          { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.ITEM, isToy = true, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Salyin Battle Banner"], itemId = 86583, npcs = { 50783, }, chance = 7, coords = { {m=376,x=67.6,y=60,n=L["Salyin Warscout"]},{m=376,x=71,y=52.4,n=L["Salyin Warscout"]},{m=376,x=75.8,y=46.4,n=L["Salyin Warscout"]} }},
	["Sassy Imp"] =                                     { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.ITEM, isToy = true, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Sassy Imp"], itemId = 127655, npcs = { 90429, }, chance = 3, questId = 38026, coords = { {m=534,x=31.6,y=72.8,n=L["Imp-Master Valessa"]} }},
	["Shard of Archstone"] =                         { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.ITEM, isToy = true, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Shard of Archstone"], itemId = 86573, npcs = { 50354, }, chance = 6, coords = { {m=379,x=57.6,y=75.0,n=L["Havak"]} }},
	["Sira's Extra Cloak"] =                            { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.ITEM, isToy = true, method = CONSTANTS.DETECTION_METHODS.USE, name = L["Sira's Extra Cloak"], itemId = 147843, items = { 152107 }, chance = 20, },
	["Unstable Powder Box"] =                           { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.ITEM, isToy = true, method = CONSTANTS.DETECTION_METHODS.SPECIAL, name = L["Unstable Powder Box"], itemId = 141301, chance = 33, questId = 43943, coords = {{m=680}} },
	["Wisp in a Bottle"] =                              { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.ITEM, isToy = true, method = CONSTANTS.DETECTION_METHODS.SPECIAL, name = L["Wisp in a Bottle"], itemId = 141306, chance = 33, questId = 43943, coords = {{m=680}} },
	["Pilfered Sweeper"] =                              { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.ITEM, isToy = true, method = CONSTANTS.DETECTION_METHODS.SPECIAL, name = L["Pilfered Sweeper"], itemId = 147867, chance = 100, coords = {{m=646,x=47.8,y=67.3}} },

   ["Stormforged Vrykul Horn"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.USE,
	   name = L["Stormforged Vrykul Horn"],
	   itemId = 140160,
	   items = { 141069 },
	   chance = 33,
   },

   ["Skull of Corruption"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.BOSS,
	   name = L["Skull of Corruption"],
	   itemId = 143544,
	   npcs = { 99999 },
	   tooltipNpcs = { 105503, 111022 }, -- Gul'dan / The Demon Within (Mythic only)
	   groupSize = 3,
	   equalOdds = true,
	   chance = 30,
	   enableCoin = true,
	   disableForClass = { ["DEATHKNIGHT"] = true, ["DRUID"] = true, ["HUNTER"] = true, ["MAGE"] = true, ["MONK"] = true, ["PALADIN"] = true, ["PRIEST"] = true, ["ROGUE"] = true, ["SHAMAN"] = true, ["WARLOCK"] = true, ["WARRIOR"] = true },
	   statisticId = { 10977, 10979, 10980, 10978 },
	   coords = { {m=772, i=true} },
   },

   -- 7.2 Toys

   ["Golden Hearthstone Card: Lord Jaraxxus"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.BOSS,
	   name = L["Golden Hearthstone Card: Lord Jaraxxus"],
	   itemId = 119211,
	   npcs = { 99999 },
	   tooltipNpcs = { 105503,
	   104154, -- Gul'dan (normal)
	   -- todo test LFR
	   -- todo bonus roll
	   111022 }, -- Gul'dan / The Demon Within (Mythic only)
	   groupSize = 3,
	   equalOdds = true,
	   chance = 275,
	   statisticId = { 10977, 10979, 10980, 10978 },
	   coords = { {m=772, i=true} },
   },

   -- 7.3 Toys

   ["Baarut the Brisk"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.NPC,
	   name = L["Baarut the Brisk"],
	   itemId = 153193,
	   npcs = { 126862 },
	   chance = 3,
	   questId = 48700,
	   coords = {
		   { m = CONSTANTS.UIMAPIDS.MACAREE, x = 43.65, y = 60.72, n = L["Baarut the Bloodthirsty"] },
	   },
   },

   ["Legion Communication Orb"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.NPC,
	   name = L["Legion Communication Orb"],
	   itemId = 153194,
	   npcs = { 127703 },
	   chance = 10,
	   questId = 48968,
	   coords = {
		   { m = CONSTANTS.UIMAPIDS.ANTORAN_WASTES, x = 58.49, y = 11.80, n = L["Doomcaster Suprax"] },
	   },
   },

   ["Blue Conservatory Scroll"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.NPC,
	   name = L["Blue Conservatory Scroll"],
	   itemId = 153179,
	   npcs = { 126900 },
	   chance = 9,
	   questId = 48718,
	   coords = {
		   { m = CONSTANTS.UIMAPIDS.MACAREE, x = 61.72, y = 50.31, n = L["Instructor Tarahna"] },
	   },
   },

   ["Yellow Conservatory Scroll"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.NPC,
	   name = L["Yellow Conservatory Scroll"],
	   itemId = 153180,
	   npcs = { 126900 },
	   chance = 9,
	   questId = 48718,
	   coords = {
		   { m = CONSTANTS.UIMAPIDS.MACAREE, x = 61.72, y = 50.31, n = L["Instructor Tarahna"] },
	   },
   },

   ["Red Conservatory Scroll"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.NPC,
	   name = L["Red Conservatory Scroll"],
	   itemId = 153181,
	   npcs = { 126900 },
	   chance = 9,
	   questId = 48718,
	   coords = {
		   { m = CONSTANTS.UIMAPIDS.MACAREE, x = 61.72, y = 50.31, n = L["Instructor Tarahna"] },
	   },
   },

   ["Spire of Spite"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.NPC,
	   name = L["Spire of Spite"],
	   itemId = 153124,
	   npcs = { 123464 },
	   chance = 12,
	   questId = 48565,
	   coords = {
		   { m = CONSTANTS.UIMAPIDS.KROKUUN, x = 53.94, y = 31.39, n = L["Sister Subversia"] },
	   },
   },

   ["S.F.E. Interceptor"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.NPC,
	   name = L["S.F.E. Interceptor"],
	   itemId = 153253,
	   npcs = { 127700 },
	   chance = 7,
	   questId = 48967,
	   coords = {
		   { m = CONSTANTS.UIMAPIDS.ANTORAN_WASTES, x = 83.72, y = 81.14, n = L["Squadron Commander Vishax"] },
	   },
   },

   ["Micro-Artillery Controller"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.NPC,
	   name = L["Micro-Artillery Controller"],
	   itemId = 153126,
	   npcs = { 126338 },
	   chance = 5,
	   questId = 48814,
	   coords = {
		   { m = CONSTANTS.UIMAPIDS.ANTORAN_WASTES, x = 61.77, y = 64.53, n = L["Wrath-Lord Yarez"] },
	   },
   },

   ["Sightless Eye"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.NPC,
	   name = L["Sightless Eye"],
	   itemId = 153293,
	   npcs = { 127706 },
	   chance = 10,
	   questId = 48971,
	   coords = {
		   { m = CONSTANTS.UIMAPIDS.ANTORAN_WASTES, x = 65.03, y = 82.31, n = L["Rezira the Seer"] },
	   },
   },

   ["Holy Lightsphere"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.USE,
	   name = L["Holy Lightsphere"],
	   itemId = 153182,
	   items = { 152923 },
	   chance = 8,
   },

   ["Barrier Generator"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.NPC,
	   name = L["Barrier Generator"],
	   itemId = 153183,
	   npcs = { 126865, 126866 },
	   chance = 50,
	   questId = { 48703, 48704 },
	   defeatAllQuests = true,
	   defeatSteps = {
		   [48703] = L["Vigilant Thanos"],
		   [48704] = L["Vigilant Kuro"],
	   },
	   sourceText = format(L["Has a chance to drop from either %s or %s on Argus. Each can be looted once per day."], L["Vigilant Thanos"], L["Vigilant Kuro"]),
	   coords = {
		   { m = CONSTANTS.UIMAPIDS.MACAREE, x = 63.88, y = 64.25, n = L["Vigilant Kuro"] },
		   { m = CONSTANTS.UIMAPIDS.MACAREE, x = 36.32, y = 23.71, n = L["Vigilant Thanos"] },
	   },
	},

	["Big Red Raygun"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.NPC,
	   name = L["Big Red Raygun"],
	   itemId = 142265,
	   npcs = { 15552 },
	   chance = 33,
	   coords = {
		   { m = 70, x = 76, y = 18.6, n = L["Doctor Weavil"] },
	   },
	},

   -- 8.0 Toys

   ["Oomgut Ritual Drum"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	   name = L["Oomgut Ritual Drum"],
	   itemId = 163795,
	   chance = 250,
	   groupSize = 3,
	   equalOdds = true,
   },

   ["Whiskerwax Candle"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	   name = L["Whiskerwax Candle"],
	   itemId = 163924,
	   chance = 250,
	   groupSize = 3,
	   equalOdds = true,
   },

   -- ["Yaungol Oil Stove"] = { -- NYI as of 18/01/19
	   -- cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	   -- type = CONSTANTS.ITEM_TYPES.ITEM,
	   -- isToy = true,
	   -- method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	   -- name = L["Yaungol Oil Stove"],
	   -- itemId = 164371,
	   -- chance = 250,
	   -- groupSize = 3,
   -- },

   -- ["Jinyu Light Globe"] = { -- NYI as of 18/01/19
	   -- cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	   -- type = CONSTANTS.ITEM_TYPES.ITEM,
	   -- isToy = true,
	   -- method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	   -- name = L["Jinyu Light Globe"],
	   -- itemId = 164372,
	   -- chance = 250,
	   -- groupSize = 3,
   -- },

   ["Enchanted Soup Stone"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	   name = L["Enchanted Soup Stone"],
	   itemId = 164373,
	   chance = 250,
	   groupSize = 3,
	   equalOdds = true,
   },

   ["Magic Monkey Banana"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	   name = L["Magic Monkey Banana"],
	   itemId = 164374,
	   chance = 250,
	   groupSize = 3,
	   equalOdds = true,
   },

   ["Bad Mojo Banana"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	   name = L["Bad Mojo Banana"],
	   itemId = 164375,
	   chance = 250,
	   groupSize = 3,
	   equalOdds = true,
   },

   -- ["Regenerating Banana Bunch"] = { -- NYI as of 18/01/19
	   -- cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	   -- type = CONSTANTS.ITEM_TYPES.ITEM,
	   -- isToy = true,
	   -- method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	   -- name = L["Regenerating Banana Bunch"],
	   -- itemId = 164377,
	   -- chance = 250,
	   -- groupSize = 3,
   -- },

   ["Brazier Cap"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.NPC,
	   name = L["Brazier Cap"],
	   itemId = 163713,
	   npcs = { 142662 },
	   questId = { 53060, 53511},
	   chance = 30,
	   coords = {
		   { m = CONSTANTS.UIMAPIDS.ARATHI_HIGHLANDS, x =  79.6, y = 30.3, n = L["Geomancer Flintdagger"] },
	   },
   },

   ["Molok Morion"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.NPC,
	   name = L["Molok Morion"],
	   itemId = 163775,
	   npcs = { 141942 },
	   questId = { 53057, 53516},
	   chance = 30,
	   coords = {
		   { m = CONSTANTS.UIMAPIDS.ARATHI_HIGHLANDS, x = 47.6, y = 77.9, n = L["Molok the Crusher"] },
	   },
   },

   ["Kovork Kostume"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.NPC,
	   name = L["Kovork Kostume"],
	   itemId = 163750,
	   npcs = { 142684 },
	   questId = { 53089, 53514},
	   chance = 30,
	   coords = {
		   { m = CONSTANTS.UIMAPIDS.ARATHI_HIGHLANDS, x = 25, y = 49.1, n = L["Kovork"] },
		   { m = CONSTANTS.UIMAPIDS.ARATHI_HIGHLANDS, x = 28.8, y = 45.4, n = L["Cave Entrance"] },
	   },
   },

   ["Witherbark Gong"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.NPC,
	   name = L["Witherbark Gong"],
	   itemId = 163745,
	   npcs = { 142682 },
	   questId = { 53094, 53530 },
	   chance = 30,
	   coords = {
		   { m = CONSTANTS.UIMAPIDS.ARATHI_HIGHLANDS, x = 62.8, y = 80.8, n = L["Zalas Witherbark"] },
	   },
   },

   ["Coldrage's Cooler"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.NPC,
	   name = L["Coldrage's Cooler"],
	   itemId = 163744,
	   npcs = { 142112 },
	   questId = { 53058, 53513},
	   chance = 30,
	   coords = {
		   { m = CONSTANTS.UIMAPIDS.ARATHI_HIGHLANDS, x = 49.31, y = 84.26, n = L["Kor'gresh Coldrage"] },
		   { m = CONSTANTS.UIMAPIDS.ARATHI_HIGHLANDS, x = 48, y = 79, n = L["Cave Entrance"] },
	   },
   },

   ["Magic Fun Rock"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.NPC,
	   name = L["Magic Fun Rock"],
	   itemId = 163741,
	   npcs = { 142683 },
	   questId = { 53092, 53524},
	   chance = 30,
	   coords = {
		   { m = CONSTANTS.UIMAPIDS.ARATHI_HIGHLANDS, x = 43, y = 57, n = L["Ruul Onestone"] },
	   },
   },

   ["Syndicate Mask"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.NPC,
	   name = L["Syndicate Mask"],
	   itemId = 163738,
	   npcs = { 142690 },
	   questId = { 53093, 53525 },
	   chance = 30,
	   coords = {
		   { m = CONSTANTS.UIMAPIDS.ARATHI_HIGHLANDS, x = 50.8, y = 40.85, n = L["Singer"]  .. " - " .. L["Alliance controls Stromgarde"] },
		   { m = CONSTANTS.UIMAPIDS.ARATHI_HIGHLANDS, x = 50.7, y = 57.48, n = L["Singer"]  .. " - " .. L["Horde controls Stromgarde"] },
	   },
   },

   ["Spectral Visage"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.NPC,
	   name = L["Spectral Visage"],
	   itemId = 163736,
	   npcs = { 142725 },
	   questId = { 53087, 53512 },
	   chance = 30,
	   coords = {
		   { m = CONSTANTS.UIMAPIDS.ARATHI_HIGHLANDS, x = 26.7, y = 32.6, n = L["Horrific Apparition"] .. " - " .. L["Alliance controls Stromgarde"] },
		   { m = CONSTANTS.UIMAPIDS.ARATHI_HIGHLANDS, x = 19.5, y = 60.9, n = L["Horrific Apparition"] .. " - " .. L["Horde controls Stromgarde"] },
	   },
   },

   ["Foul Belly"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.NPC,
	   name = L["Foul Belly"],
	   itemId = 163735,
	   npcs = { 142686 },
	   questId = { 53086, 53509 },
	   chance = 30,
	   coords = {
		   { m = CONSTANTS.UIMAPIDS.ARATHI_HIGHLANDS, x = 23.1, y = 46.7, n = L["Foulbelly"] },
		   { m = CONSTANTS.UIMAPIDS.ARATHI_HIGHLANDS, x = 29, y = 45.5, n = L["Cave Entrance"] },
	   },
   },

   ["Toy Siege Tower"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.BOSS,
	   name = L["Toy Siege Tower"],
	   itemId = 163828,
	   npcs = { 138122 },
	   questId = { 53001, 53002 }, -- Loot lockout
	   chance = 100, -- Need more data. Until then, this is a blind guess...
	   groupSize = 3,
	   equalOdds = true,
	   requiresAlliance = true,
	   coords = {
		   { m = CONSTANTS.UIMAPIDS.ARATHI_HIGHLANDS, x = 37.09, y = 39.21, n = L["Doom's Howl"] },
	   },
	   enableCoin = true,
   },

   ["Toy War Machine"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.BOSS,
	   name = L["Toy War Machine"],
	   itemId = 163829,
	   npcs = { 137374 },
	   questId = { 53001, 53002 }, -- Loot Lockout
	   chance = 100, -- Blind guess :|
	   groupSize = 3,
	   equalOdds = true,
	   requiresHorde = true,
	   coords = {
		   { m = CONSTANTS.UIMAPIDS.ARATHI_HIGHLANDS, x = 37.09, y = 39.21, n = L["The Lion's Roar"] },
	   },
	   enableCoin = true,
   },

   -- 8.1 Toys

   ["Azerite Firework Launcher"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.USE,
	   name = L["Azerite Firework Launcher"],
	   itemId = 166877,
	   items = { 166298 },
	   chance = 8,
	   coords = {
		   { m = CONSTANTS.UIMAPIDS.SILITHUS, x = 42.19, y = 44.26, n = L["Magni Bronzebeard"] },
	   },
   },

   ["Bowl of Glowing Pufferfish"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.USE,
	   name = L["Bowl of Glowing Pufferfish"],
	   itemId = 166704,
	   items = { 166245 },
	   chance = 10,
	   coords = {
		   { m = CONSTANTS.UIMAPIDS.STORMSONG_VALLEY },
		   { m = CONSTANTS.UIMAPIDS.ZULDAZAR }
	   },
   },


   -- ["Kojo's Master Matching Set"] = { -- Note: NYI as of 19/04/2019
	   -- cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	   -- type = CONSTANTS.ITEM_TYPES.ITEM,
	   -- isToy = true,
	   -- method = CONSTANTS.DETECTION_METHODS.USE,
	   -- name = L["Kojo's Master Matching Set"],
	   -- itemId = 166851,
	   -- items = { 166245 },
	   -- chance = 10,
   -- },

   ["Warbeast Kraal Dinner Bell"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.USE,
	   name = L["Warbeast Kraal Dinner Bell"],
	   itemId = 166701,
	   items = { 166292 },
	   chance = 10,
	   coords = {
		   { m = CONSTANTS.UIMAPIDS.ZULDAZAR }
	   },
   },

   ["For da Blood God!"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.USE,
	   name = L["For da Blood God!"],
	   itemId = 166308,
	   items = { 166282 },
	   chance = 10,
	   coords = {
		   { m = CONSTANTS.UIMAPIDS.NAZMIR }
	   },
   },

   ["Goldtusk Inn Breakfast Buffet"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.USE,
	   name = L["Goldtusk Inn Breakfast Buffet"],
	   itemId = 166703,
	   items = { 166290 },
	   chance = 10,
	   coords = {
		   { m = CONSTANTS.UIMAPIDS.VOLDUN }
	   },
   },

   -- ["Words of Akunda"] = { -- Note: NYI as of 19/04/2019
	   -- cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	   -- type = CONSTANTS.ITEM_TYPES.ITEM,
	   -- isToy = true,
	   -- method = CONSTANTS.DETECTION_METHODS.USE,
	   -- name = L["Words of Akunda"],
	   -- itemId = 165021,
	   -- items = { 166290 },
	   -- chance = 10,
   -- },

   ["Meerah's Jukebox"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.USE,
	   name = L["Meerah's Jukebox"],
	   itemId = 166880,
	   items = { 166290 },
	   chance = 10,
	   coords = {
		   { m = CONSTANTS.UIMAPIDS.VOLDUN }
	   },
   },

   ["Rallying War Banner"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.USE,
	   name = L["Rallying War Banner"],
	   itemId = 166879,
	   items = { 166299, 166300 },
	   chance = 10,
	   coords = {
		   { m = CONSTANTS.UIMAPIDS.BORALUS },
		   { m = CONSTANTS.UIMAPIDS.DAZARALOR }
	   },
   },

   ["Bewitching Tea Set"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.USE,
	   name = L["Bewitching Tea Set"],
	   itemId = 166808,
	   items = { 166297 },
	   chance = 10,
	   coords = {
		   { m = CONSTANTS.UIMAPIDS.DRUSTVAR }
	   },
   },

   ["Proudmoore Music Box"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.USE,
	   name = L["Proudmoore Music Box"],
	   itemId = 166702,
	   items = { 166295 },
	   chance = 10,
	   coords = {
		   { m = CONSTANTS.UIMAPIDS.TIRAGARDE_SOUND }
	   },
   },

   ["Detoxified Blight Grenade"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.NPC,
	   name = L["Detoxified Blight Grenade"],
	   itemId = 166785,
	   npcs = { 148031 },
	   chance = 10,
	   questId = { 54428, 54429 },
	   coords = {
		   { m = CONSTANTS.UIMAPIDS.DARKSHORE, x = 40.9, y = 56.5, n = L["Gren Tornfur"] },
	   },
   },

   ["Highborne Memento"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.NPC,
	   name = L["Highborne Memento"],
	   itemId = 166790,
	   npcs = { 147435, 147845 },
	   chance = 10,
	   questId = { 54309, 54252 },
	   coords = {
		   { m = CONSTANTS.UIMAPIDS.DARKSHORE, x = 45.7, y = 86.9, n = L["Commander Drald"] .. " - " .. L["Alliance only"] },
		   { m = CONSTANTS.UIMAPIDS.DARKSHORE, x = 62.0, y = 16.2, n = L["Thelar Moonstrike"] .. " - " .. L["Horde only"] },
	   },
   },

   ["Narassin's Soul Gem"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.NPC,
	   name = L["Narassin's Soul Gem"],
	   itemId = 166784,
	   npcs = { 147708 },
	   chance = 10,
	   questId = { 54278, 54279 },
	   coords = {
		   { m = CONSTANTS.UIMAPIDS.DARKSHORE, x = 58.3, y = 24.9, n = L["Athrikus Narassin"] },
	   },
   },

   ["Twiddle Twirler: Sentinel's Glaive"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.NPC,
	   name = L["Twiddle Twirler: Sentinel's Glaive"],
	   itemId = 166787,
	   npcs = { 148025 },
	   chance = 10,
	   questId = { 54426, 54427 },
	   coords = {
		   { m = CONSTANTS.UIMAPIDS.DARKSHORE, x = 37.9, y = 76.2, n = L["Commander Ral'esh"] },
	   },
   },

   ["Twiddle Twirler: Shredder Blade"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.NPC,
	   name = L["Twiddle Twirler: Shredder Blade"],
	   itemId = 166788,
	   npcs = { 148103, 149141 },
	   chance = 10,
	   questId = { 54452, 54768 },
	   coords = {
		   { m = CONSTANTS.UIMAPIDS.DARKSHORE, x = 42.0, y = 77.6, n = L["Burninator Mark V"] .. " - " .. L["Alliance only"] },
		   { m = CONSTANTS.UIMAPIDS.DARKSHORE, x = 32.9, y = 84, n = L["Sapper Odette"] .. " - " .. L["Horde only"] },
	   },
   },


   -- 8.2 Toys
   ["Mechagonian Sawblades"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.NPC,
	   name = L["Mechagonian Sawblades"],
	   itemId = 167931,
	   npcs = { 152007 },
	   chance = 20,
	   questId = { 55369 },
   },

   ["Shadescale"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.NPC,
	   name = L["Shadescale"],
	   itemId = 170187,
	   npcs = { 152552 },
	   chance = 10,
	   questId = { 56295 },
	   coords = {
		   { m = CONSTANTS.UIMAPIDS.NAZJATAR, x = 62.74, y = 8.09, n = L["Shassera"] },
	   },
   },

   ["Shirakess Warning Sign"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.NPC,
	   name = L["Shirakess Warning Sign"],
	   itemId = 170196,
	   npcs = { 154148 },
	   chance = 7,
	   questId = { 56106 },
	   coords = {
		   { m = CONSTANTS.UIMAPIDS.NAZJATAR, x = 66, y = 23, n = L["Tidemistress Leth'sindra"] },
	   },
   },

   ["Judgment of Mechagon"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.NPC,
	   name = L["Judgment of Mechagon"],
	   itemId = 169347,
	   npcs = { 154225 },
	   chance = 7,
	   questId = { 56182 },
	   coords = {
		   { m = CONSTANTS.UIMAPIDS.MECHAGON_ISLAND, x = 57.21, y = 58.38, n = L["The Rusty Prince"] },
	   },
   },

   ["Flopping Fish"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.USE,
	   name = L["Flopping Fish"],
	   itemId = 170203,
	   items = { 169940, 169939 },
	   chance = 8,
   },

   ["Memento of the Deeps"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.USE,
	   name = L["Memento of the Deeps"],
	   itemId = 170469,
	   items = { 169940, 169939 },
	   chance = 10,
   },

   ["Zanj'ir Weapon Rack"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.NPC,
	   npcs = {
		   155860,
		   154194,
		   155689,
		   155920,
		   152621,
		   155813,
		   153962,
		   153739,
		   153960,
		   153738,
		   154312,
		   152883,
		   153753,
		   153352,
		   153300,
		   152884,
		   152881,
		   152827,
		   150541,
		   153741,
		   153740,
		   154310,
		   152906,
		   154311,
		   153299,
		   155619,
		   154222,
		   152724,
		   153027,
		   153019,
		   153303,
		   153311,
		   155840,
		   152962,
		   152963
	   },
	   name = L["Zanj'ir Weapon Rack"],
	   itemId = 170199,
	   chance = 400,
   },

   ["Underlight Sealamp"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.NPC,
	   npcs = {
		   153078,
		   153080,
		   151946,
		   145324,
		   153334
	   },
	   name = L["Underlight Sealamp"],
	   itemId = 170476,
	   chance = 10,
   },

   -- 8.3 Toys
   ["Overly Sensitive Void Spectacles"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.NPC,
	   name = L["Overly Sensitive Void Spectacles"],
	   itemId = 174926,
	   npcs = { 158284 },
	   chance = 20,
	   coords = {
		   { m = CONSTANTS.UIMAPIDS.HORRIFIC_VISION_OF_STORMWIND },
	   },
   },

   ["Hell-Bent Bracers"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.NPC,
	   name = L["Hell-Bent Bracers"],
	   itemId = 169303,
	   npcs = { 158636 },
	   chance = 20, -- Blind guess (no data)
	   questId = { 57688 },
	   coords = {
		   { m = CONSTANTS.UIMAPIDS.ULDUM, x = 49.35, y = 82.29, n = L["The Grand Executor"] },
	   },
   },

   ["Budget K'thir Disguise"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.NPC,
	   name = L["Budget K'thir Disguise"],
	   itemId = 174874,
	   npcs = { 157473 },
	   chance = 20, -- Blind guess (no data)
	   questId = { 57438 },
	   coords = {
		   { m = CONSTANTS.UIMAPIDS.ULDUM, x = 50, y = 88, n = L["Yiphrim the Will Ravager"] },
		   { m = CONSTANTS.UIMAPIDS.ULDUM, x = 50, y = 88, n = L["Yiphrim the Will Ravager"] },
		   { m = CONSTANTS.UIMAPIDS.ULDUM, x = 55, y = 79, n = L["Yiphrim the Will Ravager"] },
	   },
   },

   ["Trans-mogu-rifier"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.NPC,
	   name = L["Trans-mogu-rifier"],
	   itemId = 174873,
	   npcs = { 155958 },
	   chance = 20, -- Blind guess (no data)
	   questId = { 58507 },
	   coords = {
		   { m = CONSTANTS.UIMAPIDS.VALE_OF_ETERNAL_BLOSSOMS, x = 29.13, y = 22.07, n = L["Tashara"] },
	   },
   },

   --
   ["Void-Touched Souvenir Totem"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	   name = L["Void-Touched Souvenir Totem"],
	   itemId = 174924,
	   chance = 100, -- Blind guess (no data)
	   coords = {
		   { m = CONSTANTS.UIMAPIDS.HORRIFIC_VISION_OF_ORGRIMMAR },
	   },
   },

   -- 9.0 Toys
   ["Borr-Geth's Fiery Brimstone"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.SHADOWLANDS,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.NPC,
	   name = L["Borr-Geth's Fiery Brimstone"],
	   itemId = 184312,
	   npcs = { 157833 },
	   chance = 4,
	   questId = { 57469 },
	   coords = {
		   { m = CONSTANTS.UIMAPIDS.THE_MAW, x = 39.6, y = 40.8, n = L["Borr-Geth"] },
	   },
   },

   ["Ancient Elethium Coin"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.SHADOWLANDS,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.NPC,
	   name = L["Ancient Elethium Coin"],
	   itemId = 184292,
	   npcs = { 162849 },
	   chance = 8,
	   questId = { 60987 },
	   coords = {
		   { m = CONSTANTS.UIMAPIDS.THE_MAW, x = 16.4, y = 50.6, n = L["Morguliax"] },
	   },
   },

   ["Orophea's Lyre"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.SHADOWLANDS,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.NPC,
	   name = L["Orophea's Lyre"],
	   itemId = 181794,
	   npcs = { 172577 },
	   chance = 2,
	   questId = { 61519 },
	   coords = {
		   { m = CONSTANTS.UIMAPIDS.THE_MAW, x = 23.6, y = 21.6, n = L["Orophea"] },
	   },
   },

   ["Smolderheart"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.SHADOWLANDS,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.NPC,
	   name = L["Smolderheart"],
	   itemId = 180873,
	   npcs = { 160857 },
	   chance = 25,
	   questId = { 58263 },
	   coords = {
		   { m = CONSTANTS.UIMAPIDS.REVENDRETH, x = 34.08, y = 55.47, n = L["Sire Ladinas"] },
	   },
   },

   ["Regenerating Slime Vial"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.SHADOWLANDS,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.NPC,
	   name = L["Regenerating Slime Vial"],
	   itemId = 184476,
	   npcs = { 162727 },
	   chance = 10,
	   questId = { 58870 },
	   coords = {
		   { m = CONSTANTS.UIMAPIDS.MALDRAXXUS, x = 52.75, y = 35.28, n = L["Bubbleblood"] },
	   },
   },

   ["Malfunctioning Goliath Gauntlet"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.SHADOWLANDS,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.USE,
	   name = L["Malfunctioning Goliath Gauntlet"],
	   itemId = 184396,
	   items = { 180647 },
	   chance = 20,	-- Estimate
	   coords = {
		   { m = CONSTANTS.UIMAPIDS.BASTION }
	   },
   },

   ["Mark of Purity"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.SHADOWLANDS,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.USE,
	   name = L["Mark of Purity"],
	   itemId = 184435,
	   items = { 180647 },
	   chance = 20,	-- Estimate
	   coords = {
		   { m = CONSTANTS.UIMAPIDS.BASTION }
	   },
   },

   ["Infested Arachnid Casing"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.SHADOWLANDS,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.USE,
	   name = L["Infested Arachnid Casing"],
	   itemId = 184495,
	   items = { 180646 },
	   chance = 20,	-- Estimate
	   coords = {
		   { m = CONSTANTS.UIMAPIDS.MALDRAXXUS }
	   },
   },

   ["Acrobatic Steward"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.SHADOWLANDS,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	   name = L["Acrobatic Steward"],
	   itemId = 184418,
	   items = {
		   353234,
		   353019,
		   353503,
		   352754,
		   353325,
		   353516,
		   353205,
		   363825,
		   353500,
		   353643
	   },
	   chance = 20, -- Average
	   coords = {
		   { m = CONSTANTS.UIMAPIDS.BASTION },
	   },
   },

   ["Ever-Abundant Hearth"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.SHADOWLANDS,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.NPC,
	   name = L["Ever-Abundant Hearth"],
	   itemId = 184404,
	   npcs = { 171009 },
	   chance = 8,
	   questId = { 60998 },
	   coords = {
		   { m = CONSTANTS.UIMAPIDS.BASTION, x = 51.4, y = 19.0, n = L["Enforcer Aegeon"] },
	   },
   },

   ["Soothing Vesper"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.SHADOWLANDS,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	   name = L["Soothing Vesper"],
	   itemId = 184415,
	   items = {
		   353687,
		   353691,
		   353867
	   },
	   chance = 12, -- Average
	   coords = {
		   { m = CONSTANTS.UIMAPIDS.BASTION },
	   },
   },

   ["Mnemonic Attunement Pane"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.SHADOWLANDS,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.NPC,
	   name = L["Mnemonic Attunement Pane"],
	   itemId = 184413,
	   npcs = { 171008 },
	   chance = 10,
	   questId = { 60997 },
	   coords = {
		   { m = CONSTANTS.UIMAPIDS.BASTION, x = 43.6, y = 25.6, n = L["Unstable Memory"] },
	   },
   },

   ["Vixx's Chest of Tricks"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.NPC,
	   name = L["Vixx's Chest of Tricks"],
	   itemId = 152982,
	   npcs = { 127882 },
	   chance = 4,
	   coords = {
		   { m = CONSTANTS.UIMAPIDS.SEAT_OF_THE_TRIUMVIRATE },
	   },
   },

   ["Unstable Portal Emitter"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.NPC,
	   name = L["Unstable Portal Emitter"],
	   itemId = 153004,
	   npcs = { 127882 },
	   chance = 7,
	   coords = {
		   { m = CONSTANTS.UIMAPIDS.SEAT_OF_THE_TRIUMVIRATE },
	   },
   },

   ["Kevin's Party Supplies"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.SHADOWLANDS,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	   name = L["Kevin's Party Supplies"],
	   itemId = 184447,
	   items = { 354856, },
	   chance = 11,
	   coords = {
		   { m = CONSTANTS.UIMAPIDS.MALDRAXXUS },
	   },
   },

   ["Battlecry of Krexus"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.SHADOWLANDS,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   isToy = true,
	   method = CONSTANTS.DETECTION_METHODS.SPECIAL,
	   name = L["Battlecry of Krexus"],
	   itemId = 184318,
	   items = { 352086, },
	   chance = 25,
	   sourceText = L["Only members of the Necrolord covenant will be able to reach this cache."],
	   coords = {
		   { m = CONSTANTS.UIMAPIDS.MALDRAXXUS, x = 44.1, y = 40.0, n = L["Blackhound Cache"] },
	   },
   },


   -- ["AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"] = {
   -- 	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
   -- 	type = CONSTANTS.ITEM_TYPES.ITEM,
   -- 	isToy = true,
   -- 	method = CONSTANTS.DETECTION_METHODS.NPC,
   -- 	name = L["AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"],
   -- 	itemId = 00000000000000000000000000000000000000000000000000000000000000000,
   -- 	npcs = { 000000000000000000000000000000000000000000000000000000000000000000 },
   -- 	chance = 20, -- Blind guess (no data)
   -- 	questId = { 000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 },
   -- 	coords = {
   -- 		{ m = CONSTANTS.UIMAPIDS.AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA, x = 00000000000000000000000000000000000000000000000000000000000000000000000000, y = 0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, n = L["JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ"] },
   -- 	},
   -- },


	   -- CONSTANTS.ITEM_TYPES.MOUNT-related items (5.x)
	["Primal Egg"] =                                    { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.ITEM, method = CONSTANTS.DETECTION_METHODS.NPC, name = L["Primal Egg"], itemId = 94295, npcs = { 69983, 69991, 69992, 69993, 70004, 70005, 70006, 70007, 70008, 70009, 70010, 70011, 70012, 70013, 70014, 70015, 70016, 70017, 70018, 70019, 70020, 70021, }, chance = 100,  unique = true, sourceText = L["Dropped by dinosaurs on Isle of Giants Will hatch into one of three Primal Raptor mounts after three days."], coords = { {m=507} }, },
	["Skyshard"] =                                      { cat = CONSTANTS.ITEM_CATEGORIES.MOP, type = CONSTANTS.ITEM_TYPES.ITEM, method = CONSTANTS.DETECTION_METHODS.ZONE, name = L["Skyshard"], spellId = 90655, itemId = 86547, zones = { "390", "395", "396", "1530" }, chance = 1000,  sourceText = L["Dropped by any mob in Vale of Eternal Blossoms (except minor mobs). 10 of these can be combined to pierce Alani's shield, allowing combat and a guaranteed drop of Reins of the Thundering Ruby Cloud Serpent."], coords = { {m=390}, {m=395}, {m=396}, {m=1530} },
	   repeatable = true
   },

   -- CONSTANTS.ITEM_TYPES.MOUNT-related items (7.3)
	["Fel-Spotted Egg"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   method = CONSTANTS.DETECTION_METHODS.NPC,
	   name = L["Fel-Spotted Egg"],
	   itemId = 153190,
	   npcs = {
		   126898,
		   126208,
		   126419,
	   },
	   chance = 2.5,
	   unique = false,
	   sourceText = L["Dropped by the panthara rares on Argus. Has a chance to hatch into one of four Mana Ray mounts as well as one of two Skyfin pets after five days."],
	   coords = {
		   { m = CONSTANTS.UIMAPIDS.ANTORAN_WASTES, x = 64.32, y = 48.62, n = L["Varga"] },
		   { m = CONSTANTS.UIMAPIDS.KROKUUN, x = 70.21, y = 34.38, n = L["Naroua"] },
		   { m = CONSTANTS.UIMAPIDS.MACAREE, x = 43.55, y = 49.19, n = L["Sabuul"] },
	   },
	},

   -- 8.0
   ["Pterrordax Egg"] = {
	   cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	   type = CONSTANTS.ITEM_TYPES.ITEM,
	   method = CONSTANTS.DETECTION_METHODS.NPC,
	   name = L["Pterrordax Egg"],
	   itemId = 157782,
	   npcs = {
		   128658,
		   122114,
		   126618,
		   126702,
		   128653,
		   122113,
		   135853,
		   120593,
		   128647,
		   128343,
		   125207,
		   135852,
		   128434,
		   131718,
	   },
	   chance = 2500,
	   unique = true,
	   requiresHorde = true,
	   sourceText = L["Starts a series of quests that ultimately award Kua'fon's Harness (Pterrordax mount)"],
	   coords = {
		   { m = CONSTANTS.UIMAPIDS.NAZMIR },
		   { m = CONSTANTS.UIMAPIDS.ZULDAZAR },
		   { m = CONSTANTS.UIMAPIDS.DAZARALOR },
		   { m = CONSTANTS.UIMAPIDS.VOLDUN },
		   { m = CONSTANTS.UIMAPIDS.ATALDAZAR }
	   },
   },

		-- 8.3
	["Pristine Cloud Serpent Scale"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.ITEM,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Pristine Cloud Serpent Scale"],
	itemId = 174230,
	npcs = { 157162	},
	chance = 100,
	questId = { 57346 },
	unique = true,
	coords = {
		{ m = CONSTANTS.UIMAPIDS.VALE_OF_ETERNAL_BLOSSOMS, x = 22.09, y = 24.03, n = L["Cave Entrance"] },
		{ m = CONSTANTS.UIMAPIDS.VALE_OF_ETERNAL_BLOSSOMS, x = 21.16, y = 14.53, n = L["Rei Lun"] },
	},
	},

	["Zan-Tien Lasso"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.ITEM,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Zan-Tien Lasso"],
	itemId = 174927,
	npcs = {
		157345, -- Zan-Tien Subjugator
		153095, -- Zan-Tien Caller
		153099, -- Baruk Protector
		153094, -- Zan-Tien Raider
		157101, -- Xigan <Zan-Tien General>
		157103, -- Tsah'tal <Dokani General>
		155957, -- Baruk Stoneshaper
		156675, -- Zan-Tien Scout
		157097, -- Solux <Baruk General>
		153106, -- Dokani Bloodshaper
		153107, -- Dokani Shadewalker
		157156, -- Torsheg <Zan-Tien Warlord>
		157443, -- Xiln the Mountain
		157171, -- Heixi the Stonelord
		157291, -- Spymaster Hul'ach
		157160, -- Houndlord Ren
	},
	chance = 100,
	unique = true,
	coords = {
		{ m = CONSTANTS.UIMAPIDS.VALE_OF_ETERNAL_BLOSSOMS },
	},
	sourceText = L["Can be used to capture the Ivory Cloud Serpent"],
	},

	-- 9.0
	["Blight-Touched Egg"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.SHADOWLANDS,
	type = CONSTANTS.ITEM_TYPES.ITEM,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["Blight-Touched Egg"],
	itemId = 184104,
	npcs = {
		162258,
		162588,
		172390,
		162259,
		170456,
		162589,
		170893,
		164587
	},
	chance = 500,
	sourceText = L["Dropped by various flying creatures in Maldraxxus. Will hatch into Callow Flayedwing after five days."],
	coords = {
		{ m = CONSTANTS.UIMAPIDS.MALDRAXXUS }
	},
	},

	["Necroray Egg"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.SHADOWLANDS,
	type = CONSTANTS.ITEM_TYPES.ITEM,
	method = CONSTANTS.DETECTION_METHODS.USE,
	name = L["Necroray Egg"],
	itemId = 184159,
	items = { 181732, 181733 },
	chance = 100,
	sourceText = L["Sometimes contained in the caches awarded for completing any covenant's Calling in Maldraxxus. Will hatch into one of three Necroray mounts after three days."],
	coords = {
		{ m = CONSTANTS.UIMAPIDS.MALDRAXXUS }
	},
	},

	["All-Seeing Right Eye"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.ITEM,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["All-Seeing Right Eye"],
	npcs = { 158633 },
	itemId = 175142,
	questId = { 57680 },
	chance = 75,
	coords = {
		{ m = CONSTANTS.UIMAPIDS.ULDUM, x = 55, y =  51, n = L["Gaze of N'Zoth"] },
	},
	sourceText = format(L["Shares a spawn with %s"], L["Foul Observer"]),
	-- Combine with X to create Y
	-- Only available during the X assault
	},

	["All-Seeing Left Eye"] = {
	cat = CONSTANTS.ITEM_CATEGORIES.BFA,
	type = CONSTANTS.ITEM_TYPES.ITEM,
	method = CONSTANTS.DETECTION_METHODS.NPC,
	name = L["All-Seeing Left Eye"],
	npcs = { 154495 },
	itemId = 175141,
	questId = { 56303 },
	chance = 75,
	coords = {
		{ m = CONSTANTS.UIMAPIDS.VALE_OF_ETERNAL_BLOSSOMS, x = 52.51, y =  62.14, n = L["Will of N'zoth"] },
	},
	},

				   -- Battle CONSTANTS.ITEM_TYPES.PET-related items
	["Mr. Pinchy"] =                                    { cat = CONSTANTS.ITEM_CATEGORIES.TBC, type = CONSTANTS.ITEM_TYPES.ITEM, method = CONSTANTS.DETECTION_METHODS.FISHING, name = L["Mr. Pinchy"], spellId = 33050, itemId = 27388, zones = { "Lake Jorune", "Lake Ere'Noru", "Skethyl Mountains", "Blackwind Landing", "Blackwind Valley", "Skettis", "Blackwind Lake", "Veil Harr'ik", "Veil Ala'rak", "Terokk's Rest" },
	excludedMaps = {
	   [542] = true, -- Spires of Arak (Skettis exists in both Draenor and Outland)
	},
	chance = 500, requiresPool = true, creatureId = 18839, sourceText = L["Obtained by fishing in pools located in Terrokar Forest"], coords = { {m=108} }, },

	["Viable Cobra Egg"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.BFA,
		type = CONSTANTS.ITEM_TYPES.ITEM,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Viable Cobra Egg"],
		itemId = 160832,
		npcs = { 133384 },
		chance = 50,
		equalOdds = true,
		instanceDifficulties = { [CONSTANTS.INSTANCE_DIFFICULTIES.MYTHIC_DUNGEON] = true },
		groupSize = 5,
		sourceText = L["Dropped by Merektha in Temple of Sethraliss. Will hatch into Spawn of Merektha pet after three days."],
		coords = {
			{ m = CONSTANTS.UIMAPIDS.TEMPLE_OF_SETHRALISS, i = true }
		},
	},
	["Nightwreathed Egg"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.BFA,
		type = CONSTANTS.ITEM_TYPES.ITEM,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Nightwreathed Egg"],
		itemId = 166525,
		npcs = { 149659, 149662 },
		chance = 7,
		questId = { 54891, 54889 },
			coords = {
				{ m = CONSTANTS.UIMAPIDS.DARKSHORE, x = 39.5, y = 34.4, n = L["Orwell Stevenson"] .. " - " .. L["Alliance only"] },
				{ m = CONSTANTS.UIMAPIDS.DARKSHORE, x = 50.6, y = 32.6, n = L["Grimhorn"] .. " - " .. L["Horde only"] },
			},
		sourceText = L["Will hatch into Nightwreathed Watcher pet after five days."],
	},

	-- Achievements
	["Old Crafty"] =                                    { cat = CONSTANTS.ITEM_CATEGORIES.TBC, type = CONSTANTS.ITEM_TYPES.ITEM, method = CONSTANTS.DETECTION_METHODS.FISHING, name = L["Old Crafty"], itemId = 34486, zones = { "Orgrimmar" }, chance = 10000, requiresPool = false, achievementId = 1836, sourceText = L["Obtained by fishing in any water in Orgrimmar"], coords = { {m=85} }, },
	["Old Ironjaw"] =                                   { cat = CONSTANTS.ITEM_CATEGORIES.TBC, type = CONSTANTS.ITEM_TYPES.ITEM, method = CONSTANTS.DETECTION_METHODS.FISHING, name = L["Old Ironjaw"], itemId = 34484, zones = { "Ironforge", "The Forlorn Cavern" }, chance = 10000, requiresPool = false, achievementId = 1837, sourceText = L["Obtained by fishing in any water in Ironforge"], coords = { {m=87} }, },
	--["Stat Test"] = { type = CONSTANTS.ITEM_TYPES.MOUNT, method = CONSTANTS.DETECTION_METHODS.BOSS, name = "Stat Test", spellId = -1, itemId = -1, npcs = { 99999 }, chance = 100, groupSize = 40, equalOdds = true, statisticId = { 107 } },    }, -- Killing any creature
}

local ItemDB = {}
ItemDB.mounts = {
	name = L["Mounts"]
}
ItemDB.battlePets = battlePets
ItemDB.toysAndItems = toysAndItems

-- Add any item that doesn't yet exist, which in our case means ALL items since there shouldn't be duplicate entries
-- The database is split to make it more easily maintainable, but the individual partitions have no overlap
function ItemDB.MergeItems(sourceTable, items)

	for key, item in pairs(items) do
		sourceTable[key] = item
	end
end


Rarity.ItemDB = ItemDB