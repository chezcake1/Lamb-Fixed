function scr_achievements_pto()
{
	// Obtained by beating Grinch Race
	add_achievement_notify("pal_grinch", noone, function(data)
	{
		var type = data[0], arr = data[1];
		if type == notifs.end_level && arr[0] == "grinch"
		{
			if !MOD.EasyMode
				palette_unlock(name, "grinch", 12, spr_pattern_grinch);
		}
	}, false, "Palettes", "grinch");
	
	// Obtained by using the abandoned computer in the Outerfloor
	add_achievement_notify("pal_mario", noone, function(data)
	{
		var type = data[0];
		if type == notifs.msdos_marior
			palette_unlock(name, "mario", 12, spr_pattern_mario);
	}, false, "Palettes", "mario");
	
	
	// Obtained by beating Cosmic Cone
	add_achievement_notify("pal_cosmic", noone, function(data)
	{
		var type = data[0];
		if type == notifs.end_level && MOD.CosmicClones
			palette_unlock(name, "cosmic", 12, spr_pattern_cosmic);
	}, false, "Palettes", "cosmic");
	
	// Obtained by beating a time attack par
	add_achievement_notify("pal_time", noone, function(data)
	{
		var type = data[0];
		if type == notifs.end_level && global.timeattack && global.tatime <= global.tasrank
			palette_unlock(name, "time", 12, spr_pattern_time);
	}, false, "Palettes", "time");
	
	// Obtained by beating VVVVVV
	add_achievement_notify("pal_arrows", noone, function(data)
	{
		var type = data[0];
		if type == notifs.end_level && MOD.GravityJump
			palette_unlock(name, "arrows", 12, spr_pattern_arrows);
	}, false, "Palettes", "arrows");
	
	// Obtained by beating Lights Out
	add_achievement_notify("pal_storm", noone, function(data)
	{
		var type = data[0];
		if type == notifs.end_level && MOD.Spotlight
			palette_unlock(name, "storm", 12, spr_pattern_storm);
	}, false, "Palettes", "storm");
	
	// Obtained by getting a highscore
	add_achievement_notify("pal_redcrown", noone, function(data)
	{
		var type = data[0];
		if type == notifs.end_level && global.leveltosave == "entrance" or global.leveltosave == "medieval" or global.leveltosave == "ruin" or global.leveltosave == "dungeon" && (global.collect >= 150000)
			palette_unlock(name, "redcrown", 12, spr_pattern_redcrown);
	}, false, "Palettes", "redcrown");
	
	add_achievement_notify("pal_steven", noone, function(data)
	{
		var type = data[0];
		if type == notifs.end_level && global.leveltosave == "badland" or global.leveltosave == "graveyard" or global.leveltosave == "farm" or global.leveltosave == "saloon" && (global.collect >= 200000)
			palette_unlock(name, "steven", 12, spr_pattern_steven);
	}, false, "Palettes", "steven");
	
	add_achievement_notify("pal_drug", noone, function(data)
	{
		var type = data[0];
		if type == notifs.end_level && global.leveltosave == "plage" or global.leveltosave == "forest" or global.leveltosave == "space" or global.leveltosave == "minigolf" && (global.collect >= 250000)
			palette_unlock(name, "drug", 12, spr_pattern_drug);
	}, false, "Palettes", "drug");
	
	add_achievement_notify("pal_smash", noone, function(data)
	{
		var type = data[0];
		if type == notifs.end_level && global.leveltosave == "street" or global.leveltosave == "industrial" or global.leveltosave == "freezer" or global.leveltosave == "sewer" && (global.collect >= 300000)
			palette_unlock(name, "smash", 12, spr_pattern_smash);
	}, false, "Palettes", "smash");
	
	add_achievement_notify("pal_astral", noone, function(data)
	{
		var type = data[0];
		if type == notifs.end_level && global.leveltosave == "chateau" or global.leveltosave == "kidsparty" or global.leveltosave == "war" && (global.collect >= 350000)
			palette_unlock(name, "astral", 12, spr_pattern_astral);
	}, false, "Palettes", "astral");
}
