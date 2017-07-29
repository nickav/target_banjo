Singleton();

window_set_size( room_width * 4, room_height * 4 );
window_center();

/* */
// Debug //////////////////////////////////////////
debug = !code_is_compiled();

_logFilePath = working_directory + "\debug.log";
_debugLog = 0;
_debugLogSize = 10;
if (debug) {
	// clear debug file log
	var f = file_text_open_write(_logFilePath);
	file_text_write_string(f, "");
	file_text_close(f);
	
	// create array log
	_debugLog = DebugLogCreate(_debugLogSize);
}