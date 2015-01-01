-- by FoeReaper of EmuDevs.com
-- Modified by slp13at420 of EmuDevs.com
-- tele points are all from Rochet2's sql teleporter. yes 1 at a time i added them manually.
-- parses for team, level, AND GM's

print("+-+-+-+-+-+-+-+-+-+")
local npcid = 170000
local itemid = 40582
local Teleport = {};

-- {"Menu Title", icon, team, {"location name", icon, team, minimum level, map, x, y, z, o},}

-- icon 0=bubble::1=bag::2=flight::3=book::4=wheel::5=wheel::6=bag dot::7=bubble dots::8=tabard::9=2swords::10=dot

-- team :: 0 = ally, 1 = horde,  2 = horde/ally, 3 = gm /:T:\ 2 checks for a reason

Teleporter = {
	[1] = {"|cff000000Eastern Kingdoms|r", 2, 2,
		{"GuruBashi Arena", 9, 2, 1, 0, -13232.232422, 220.996262, 32.145123, 1.095633},
		{"Elwynn Forest", 2, 2, 1, 0, -9449.059570, 64.839203, 56.112045, 3.070470},
		{"Dun Morogh", 2, 0, 1, 0, -5603.759766, -482.704010, 396.980011, 5.234990},
		{"Loch Modan", 2, 0, 1, 0, -5405.850098, -2894.149902, 341.971985, 5.482380},
		{"Westfall", 2, 0, 1, 0, -10684.900391, 1033.630005, 32.538898, 6.073840},
		{"RedRidge Mountains", 2, 0, 1, 0, -9447.799805, -2270.850098, 71.822052, 6.260733},
		{"Duskwood", 2, 0, 1, 0, -10531.700195, -1281.910034, 38.859528, 1.455707},
		{"EverSong Woods", 2, 2, 1, 530, 9024.370117, -6682.549805, 16.897291, 3.141310},
		{"TirisFal Glades", 2, 1, 1, 0, 2274.949951, 323.917999, 34.114174, 4.243670},
		{"Ghostlands", 2, 1, 1, 530, 7595.729980, -6819.600098, 84.371803, 2.565610},
		{"SilverPine Forest", 2, 1, 1, 0, 505.126007, 1504.630005, 124.807999, 1.779870},
		{"Hillsbrad Foothills", 2, 2, 1, 0, -385.804993, -787.953979, 54.665501, 1.039260},
		{"Wetlands", 2, 0, 1, 0, -3517.750000, -913.401001, 8.866250, 2.607050},
		{"Alterac Mountains", 2, 2, 1, 0, 275.049011, -652.044006, 130.296005, 0.502032},
		{"Arathi HighLands", 2, 2, 1, 0, -1581.449951, -2704.060059, 35.416801, 0.490373},
		{"StrangleThorn Vale", 2, 2, 1, 0, -11921.70195, -59.543999, 39.726200, 3.735740},
		{"BadLands", 2, 2, 1, 0, -6782.560059, -3128.139893, 240.479996, 5.659120},
		{"Swamp of Sorrows", 2, 2, 1, 0, -10368.599609, -2731.300049, 21.653700, 5.292380},
		{"The HinterLands", 2, 2, 1, 0, 112.405998, -3929.739990, 136.358002, 0.981903},
		{"Searing Gorge", 2, 2, 1, 0, -6686.330078, -1198.550049, 240.026978, 0.916887},
		{"The Blasted Lands", 2, 2, 1, 0, -11184.700195, -3019.310059, 7.292380, 3.205420},
		{"Burning Steppes", 2, 2, 1, 0, -7980.850098, -2106.816406, 127.943581, 5.509886},
		{"Western PlagueLands", 2, 2, 1, 0, 1745.388916, -1723.411987, 59.671574, 4.970188},
		{"Eastern PlagueLands", 2, 2, 1, 0, 2280.639893, -5275.049805, 82.016602, 4.747900},
		{"Isle of Quel'Danas", 2, 2, 1, 530, 12806.500000, -6911.109863, 41.115601, 2.229350},
	},
	[2] = {"|cff000000Kalimdor|r", 2, 2,
		{"Azuremyste Isle", 2, 0, 1, 530, -4192.620117, -12576.700195, 36.759800, 1.628130},
		{"Teldrassil", 2, 0, 1, 1, 9887.541992, 918.218750, 1307.431885, 0.313330},
		{"Bloodmyst Isle", 2, 0, 1, 530, -2095.699951, -11841.099609, 51.155701, 6.192880},
		{"Durotar", 2, 1, 1, 1, 228.977997, 4741.870117, 10.102662, 0.416883},
		{"Mulgore", 2, 1, 1, 1, -2473.870117, -501.225006, -9.424650, 0.652500},
		{"The Barrens", 2, 1, 1, 1, -575.771973, -2652.449951, 95.638397, 0.006469},
		{"DarkShore", 2, 0, 1, 1, 6463.250000, 683.986023, 8.927920, 4.335340},
		{"StoneTalon Mountains", 2, 2, 1, 1, 1577.100586, 1031.691772, 137.103836, 4.586700},
		{"Ashenvale Forest", 2, 2, 1, 1, 1919.770020, -2169.679932, 94.672897, 6.141770},
		{"Thousand Needles", 2, 1, 1, 1, -5375.529785, -2509.199951, -40.431999, 2.418850},
		{"Desolace", 2, 2, 1, 1, -656.056030, 1510.119995, 88.374603, 3.295530},
		{"Dustwallow Marsh", 2, 2, 1, 1, -3350.120117, -3064.850098, 33.036400, 5.228760},
		{"Feralas", 2, 0, 1, 1, -4808.310059, 1040.510010, 103.768997, 2.906550},
		{"Tanaris Desert", 2, 0, 1, 1, -6940.910156, -3725.699951, 48.938099, 3.111740},
		{"Azshara", 2, 0, 1, 1, 3117.120117, -4387.970215, 91.905899, 5.498970},
		{"Felwood", 2, 0, 1, 1, 3898.800049, -1283.329956, 220.518982, 0.757063},
		{"Un'Goro Crater", 2, 2, 1, 1, -6291.549805, -1158.619995, -258.138000, 0.457099},
		{"Silithis", 2, 2, 1, 1, -6815.250000, 730.015015, 40.948299, 2.390660},
		{"Winterspring", 2, 2, 1, 1, 6658.493652, -4558.605469, 717.373352, 2.985695},
	},
	[3] = {"|cff000000Outland|r", 2, 2,
		{"HellFire Peninsula", 2, 2, 1, 530, -207.335007, 2035.920044, 96.463997, 1.596760},
		{"Zangarmarsh", 2, 2, 1, 530, -220.296997, 5378.580078, 23.322300, 1.617180},
		{"Terokkar Forest", 2, 2, 1, 530, -2266.229980, 4244.729980, 1.477280, 3.684260},
		{"Nagrand", 2, 2, 1, 530, -1610.849976, 7733.620117, -17.277300, 1.335220},
		{"Blade's Edge Mountains", 2, 2, 1, 530, 2029.750000, 6232.069824, 133.494980, 1.303950},
		{"NetherStorm", 2, 2, 1, 530, 3271.199951, 3811.610107, 143.153000, 3.425308},
		{"ShadowMoon Valley", 2, 2, 1, 530, -3681.010010, 2350.760010, 76.586998, 4.259950},
		{"Shattrath", 2, 2, 1, 530, -1822, 5417, 1, 3},
	},
	[4] = {"|cff000000Northrend|r", 2, 2,
		{"Borean Tundra", 2, 2, 1, 571, 2954.239990, 5379.129883, 60.453800, 2.555440},
		{"Howling Fjord", 2, 2, 1, 571, 682.848022, -3978.300049, 230.160995, 1.542070},
		{"Dragonblight", 2, 2, 1, 571, 2678.169922, 891.825989, 4.374940, 0.101121},
		{"Grizzly Hills", 2, 2, 1, 571, 4017.350098, -3403.850098, 290.000000, 5.354310},
		{"Zul'Drak", 2, 2, 1, 571, 5560.229980, -3211.659912, 371.709015, 5.550550},
		{"Sholazar Basin", 2, 2, 1, 571, 5614.669922, 5818.859863, -69.722000, 3.608070},
		{"Crystalsong Forest", 2, 2, 2, 1, 571, 5411.169922, -699.369995, 167.082001, 1.571670},
		{"Storm Peaks", 2, 2, 1, 571, 6120.459961, -1013.890015, 408.390015, 5.123220},
		{"Icecrown", 2, 2, 1, 571, 8323.280273, 2763.500000, 655.093018, 2.872230},
		{"Wintergrasp", 2, 2, 1, 571, 4522.229980, 2828.010010, 389.975006, 0.215009},
	},
	[5] = {"|cff000000Classic Dungeons|r", 9, 2,
		{"Gnomeregan", 2, 0, 1, 0, -5163.540036, 925.422974, 257.179596, 1.472128},
		{"The Deadmines", 2, 0, 1, 0, 11209.599609, 1666.540039, 24.697399, 1.420530},
		{"The Stockade", 2, 0, 1, 0, -8799.150391, 832.718018, 97.634804, 6.040850},
		{"RageFire Chasm", 2, 1, 1, 1, 1811.780029, -4410.500000, -18.470400, 5.201650},
		{"Razorfen Downs", 2, 1, 1, 1, -4657.299805, -2519.350098, 81.052902, 4.548080},
		{"Razorfen Kraul", 2, 1, 1, 1, -4470.279785, -1677.770020, 81.392746, 1.163020},
		{"Scarlet Monastery", 2, 1, 1, 0, 2873.149902, -764.523010, 160.332001, 5.104470},
		{"ShadowFang Keep", 2, 1, 1, 0, -234.675003, 1561.630005, 76.892097, 1.240310},
		{"Wailing Caverns", 2, 1, 1, 1, -731.606995, -2218.389893, 17.028099, 2.784860},
		{"Blackfathom Deeps", 2, 2, 1, 1, 4249.990234, 740.101990, -25.671000, 1.340620},
		{"Blackrock Depths", 2, 2, 1, 0, -7179.339844, -921.211975, 165.820999, 5.095990},
		{"Blackrock Spire", 2, 2, 1, 0, -7527.049805, -1226.770020, 285.731995, 5.296260},
		{"Dire Maul", 2, 2, 1, 1, -3520.139893, 1119.380005, 161.024994, 4.704540},
		{"Maraudon", 2, 2, 1, 1, -1421.420044, 2907.830078, 137.414993, 1.707180},
		{"Scholomance", 2, 2, 1, 0, 1269.640015, -2556.209961, 93.608795, 0.620623},
		{"Stratholme", 2, 2, 1, 0, 3352.919922, -3379.030029, 144.781998, 6.259780},
		{"Sunken Temple", 2, 2, 1, 0, -10177.900391, -3994.899902, -111.253235, 6.018850},
		{"Uldaman", 2, 2, 1, 0, -6071.370117, -2955.159912, 209.781998, 0.015708},
		{"Zul'Farrak", 2, 2, 1, 1, -6801.189941, -2893.020020, 9.003880, 0.158639},
	},
	[6] = {"|cff000000Burning Crusades Dungeons|r", 9, 2,
		{"Auchindoun", 2, 2, 1, 530, -3324.489990, 4943.450195, -101.238998, 4.639010},
		{"Caverns of Time", 2, 2, 1, 1, -8369.650391, -4253.109863, -204.272003, 3.577925},
		{"Coilfang Reservoir", 2, 2, 1, 530, 738.864990, 6865.770020, -69.456904, 6.276550},
		{"Hellfire Citadel", 2, 2, 1, 530, -347.290009, 3089.820069, 21.393999, 5.681140},
		{"Magisters' Terrace", 2, 2, 1, 530, 12884.599609, -7317.689941, 65.502296, 4.799000},
		{"Tempest Keep", 2, 2, 1, 530, 3100.479980, 1536.489990, 190.300003, 4.622260},
	},
	[7] = {"|cff000000Wotlk Dungeons|r", 9, 2,
		{"Azjol-Nerub", 2, 2, 1, 571, 3707.860107, 2150.229980, 36.756954, 3.220000},
		{"The Culling of Stratholme", 2, 2, 1, 1, -8756.389648, -4440.680176, -199.489014, 4.662890},
		{"Trial of the Champion", 2, 2, 1, 571, 8590.950195, 791.791992, 558.234985, 3.119493},
		{"Drak'Tharon Keep", 2, 2, 1, 571, 4759.796875, -2045.651611, 229.394989, 0.062958},
		{"Gundrak", 2, 2, 1, 571, 6722.439941, -4640.669922, 450.631989, 3.911230},
		{"IceCrown Citidel Dungeons", 2, 2, 1, 571, 5637.354492, 2067.713867, 798.058411, 4.622055},
		{"The Nexus Dungeons", 2, 2, 1, 571, 3771.220459, 6948.192383, 105.802040, 0.443879},
		{"The Violet Hold", 2, 2, 1, 571, 5693.080078, 502.588013, 652.671997, 4.076307},
		{"Halls of Lightning", 2, 2, 1, 571, 9136.519531, -1311.810059, 1066.290039, 5.191130},
		{"Halls of Stone", 2, 2, 1, 571, 8922.120117, -1009.159973, 1039.560059, 1.570440},
		{"Utgarde Keep", 2, 2, 1, 571, 1203.410034, -4868.589844, 41.248600, 0.283237},
		{"Utgarde Pinnacle", 2, 2, 1, 571, 1203.410034, -4868.589844, 41.248600, 0.283237},
	},
	[8] = {"|cff000000Raid Locations|r", 9, 2,
		{"Black Temple", 2, 2, 1, 530, -3649.919922, 317.468994, 35.282700, 2.942850},
		{"BlackWing Lair", 2, 2, 1, 229, 152.451004, -474.881012, 116.839996, 0.001073},
		{"Hyjal Summit", 2, 2, 1, 530, -8177.890137, -4181.229980, -167.552002, 0.913338},
		{"Serpentshrine Cavern", 2, 2, 1, 530, 797.854980, 6865.770020, -65.416496, 0.005938},
		{"Trial of the Crusader", 2, 2, 1, 571, 8515.610352, 714.153015, 558.247986, 1.577530},
		{"Gruul's Lair", 2, 2, 1, 530, 3530.060059, 5104.080078, 3.508610, 5.511170},
		{"Magtheridon's Lair", 2, 2, 1, 530, -336.411011, 3130.459961, -102.928001, 5.203220},
		{"ICC", 2, 2, 1, 571, 5786.502930, 2069.897461, 636.064697, 3.578990},
		{"Karazhan", 2, 2, 1, 0, -11118.900391, -2010.329956, 47.081814, 0.649895},
		{"Molten Core", 2, 2, 1, 230, 1126.640015, -459.940002, -102.535011, 3.460950},
		{"Naxxramas", 2, 2, 1, 571, 3668.719971, -1262.459961, 243.621994, 4.785000},
		{"Onyxia's Lair", 2, 2, 1, 1, -4708.270020, -3727.639893, 54.558887, 3.727860},
		{"Ruins of Ahn'Qiraj", 2, 2, 1, 1, -8409.820313, 1499.060059, 27.716608, 2.412651},
		{"Sunwell Platue", 2, 2, 1, 530, 12574.099609, -6774.810059, 15.090400, 3.137880},
		{"The Eye", 2, 2, 1, 530, 3088.489990, 1381.569946, 184.863007, 4.619730},
		{"Temple of Ahn'Qiraj", 2, 2, 1, 1, -8240.089844, 1991.319946, 129.071960, 0.941603},
		{"The Eye of Eternity", 2, 2, 1, 571, 3784.169922, 7028.839844, 161.257996, 5.799930},
		{"The Obsidian Sanctum", 2, 2, 1, 571, 3472.429932, 264.923004, -120.146004, 3.279230},
		{"Ulduar", 2, 2, 1, 571, 9333.450195, -1114.741333, 1245.146973, 6.244076},
		{"Vault of Archavon", 2, 2, 1, 571, 5453.720215, 2840.790039, 421.277069, 0.000000},
		{"Zul'Gurub", 2, 2, 1, 0, -11916.231445, -1215.714233, 92.288994, 4.724540},
		{"Zul'Aman", 2, 0, 1, 530, 6851.779785, -7972.569824, 179.242004, 4.646910},
	},
	[9] = {"|cff000000Malls|r", 10, 2,
		{"|cffFF0000Orgrimmar|r", 1, 1, 1, 1, 1600.981689, -4378.820313, 9.998322, 5.248190}, -- Horde
		{"|cff0000FFIronForge|r", 1, 0, 1, 0, -4902.000488, -960.816162, 501.458954, 2.207237}, -- Ally
		{"Shattrath", 1, 2, 1, 530, -1887.619995, 5359.089844, -12.427900, 1.258830},
	},
	[10] = {"|cff000000Custom Location|r", 10, 2,
		{"StormWind", 2, 0, 1, 0, -8842.089844, 626.357971, 94.086632, 0.440620},
		{"Darnassus", 2, 0, 1, 1, 9870.209961, 2493.469971, 1315.876221, 5.974544},
		{"Exodar", 2, 0, 1, 530, -3864.919922, -11643.700195, -137.644012, 2.410226},
		{"Thunder Bluff", 2, 1, 1, 1, -1274.449951, 71.860100, 128.158981, 0.707645},
		{"Undercity", 2, 1, 1, 0, 1637.209961, 240.132004, -43.103401, 3.131470},
		{"Silvermoon City", 2, 1, 1, 530, 9741.669922, -7454.189941, 13.557200, 3.142310},
		{"Dalaran", 2, 2, 1, 571, 5807.060059, 506.243988, 657.575989, 5.544610},
		{"Booty Bay", 2, 2, 1, 0, -14281.988281, 552.414001, 8.904944, 4.063786},
		{"GuruBashi Arena", 9, 2, 1, 0, -13232.232422, 220.996262, 32.145123, 1.095633},
		{"Dragon Canyon", 10, 2, 1, 1, -8409.820313, 1499.060059, 27.716608, 2.412651},
		{"|cffFF0000The Gauntlet|r", 10, 1, 1, 1, 738.690002, -4625.069824, -4.332900, 5.544397}, -- Horde
		{"|cff0000FFThe Gauntlet|r", 10, 0, 1, 0, -5178.426758, -392.500763, 391.259338, 0.159174}, -- ally
		{"|cffFF0000Orgrimmar Gates|r", 9, 2, 1, 1, 1300, -4389.887207, 26.267605, 0.182955}, -- Horde
		{"|cff0000FFIronForge Gates|r", 9, 2, 1, 0, -5093.258301, -730.136536, 469.578156, 4.620017}, -- Ally
		{"|cffFF0000Noobz Farming Wolf Coin's.|r", 10, 1, 1, 1, -741.013977, -3920.419922, 22.467699, 5.026390}, -- Horde
		{"|cff0000FFNoobz Farming Wolf Coin's.|r", 10, 0, 1, 0, -5334.794434, 254.176254, 388.133789, 5.049850}, -- Ally
		{"Snowmen", 10, 2, 1, 571, 5505.497070, 4748.402344, -193.848892, 2.587100},
		{"Mummiez", 10, 2, 1, 1, -2473.870117, -501.225006, -9.424650, 0.652500},
		{"|cffFF0000Pugz|r", 10, 1, 1, 530, 8981.298828, -6672.629883, 16.565063, 1.346674}, -- Horde
		{"|cff0000FFPugz|r", 10, 0, 1, 530, 8981.114258, -6692.90039, 16.535664, 4.60607}, -- Ally
		{"|cffFF0000Zombiez|r", 10, 1, 1, 530, -3702.305176, 2356.432373, 78.245857, 4.813656},
		{"|cff0000FFZombiez|r", 10, 0, 1, 530, -3702.305176, 2356.432373, 78.245857, 4.813656},
	},
	[11] = {"|cff000000Event areas|r", 10, 2,
	},
	[12] = {"|cff000000GM Locations|r", 10, 3,
	},
};

local function TeleportStoneOnHello(event, player, unit, sender, intid, code)

	if (player:IsInCombat()~=true)then	-- Show main menu
	    
		for i, v in ipairs(Teleporter) do

			if(v[3] == 2)or(v[3] == player:GetTeam())or(player:IsGM() == true)then
				player:GossipMenuAddItem(v[2], v[1], i, 0)
			end
		end
	    	player:GossipSendMenu(1, unit)
	else
		player:SendNotification("You are in combat.")
	end
end

local function TeleporterOnGossipSelect(event, player, unit, sender, intid, code)

	if (sender == 0) then -- return to main menu
	TeleportStoneOnHello(event, player, unit)
	return
	end

	if (intid == 0) then -- Show teleport sub-menu
	
		for i, v in ipairs(Teleporter[sender]) do
		
		    if (i > 3) then
		    
		    	if((Teleporter[sender][i][3] == 2 or Teleporter[sender][i][3] == player:GetTeam())or(player:IsGM() == true))then
		        	player:GossipMenuAddItem(v[2], "|cff000000".. v[1].."|r", sender, i)
		        end
		    end
		end
		player:GossipMenuAddItem(7, "Back..", 0, 0)
		player:GossipSendMenu(1, unit)
	return
	else
	
	-- teleport --
	
	local name, icon, team, level, map, x, y, z, o = table.unpack(Teleporter[sender][intid])
	player:Teleport(map, x, y, z, o)
	end
	player:GossipComplete()
end

RegisterItemGossipEvent(itemid, 1, TeleportStoneOnHello)
RegisterItemGossipEvent(itemid, 2, TeleporterOnGossipSelect)
print("+Teleporter Online+")
print("+-+-+-+-+-+-+-+-+-+")
