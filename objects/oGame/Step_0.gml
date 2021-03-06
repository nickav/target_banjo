/* */
// Debug //////////////////////////////////////////
if (!debug) return;

DebugLogUpdate(_debugLog);

// Input variables for debug room traversal
var kRestart, kExit, kPrev, kNext, kMute, kSlow;

kRestart = keyboard_check_pressed(ord("R"));
kExit    = keyboard_check_pressed(vk_escape);
kPrev    = keyboard_check_pressed(vk_subtract);
kNext    = keyboard_check_pressed(vk_add);
kMute    = keyboard_check_pressed(ord("M"));
kSlow    = keyboard_check_pressed(ord("P"));

// Restart and exit game
if (kRestart)
    room_restart();
if (kExit)
    game_end();

// Iterate through rooms backward
if (kPrev) {
    if (room == room_first) room_goto(room_last);
    else room_goto_previous();
}

// Iterate through rooms forwards
if (kNext) {
    if (room == room_last) room_goto(room_first);
    else room_goto_next();
}

// Toggle mute
if (kMute) {
	vol = !vol;
	audio_master_gain(vol);
}

if (kSlow) {
	room_speed = 10;
}