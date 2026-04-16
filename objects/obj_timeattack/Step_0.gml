live_auto_call;

if global.timeattack
{
	if !instance_exists(obj_endlevelfade) && room != rank_room
		global.tatime++;
	timer_y = Approach(timer_y, 0, 1);
	barfill_x -= 0.2;
}
else
{
	timer_y = global.hud == HUD_STYLES.minimal ? 64 : 150;
	lost_clock = false;
}

if !variable_global_exists("timeattack") exit;
with obj_player
{
	if targetDoor == "TIMED" && global.timeattack
	{
	    global.prank_cankillenemy = true
	}
}
