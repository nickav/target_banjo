/// trace(...);
/// @function trace

if (!instance_exists(oGame) || !oGame.debug) return;

var r = string(argument[0]), i;
for (i = 1; i < argument_count; i++) {
    r += ", " + string(argument[i])
}

// write to debug log
var file = file_text_open_append(oGame._logFilePath);
file_text_write_string(file, r);
file_text_writeln(file);
file_text_close(file);

// write to screen
if (is_array(oGame._debugLog)) {
	var pos = string_pos(":", r);
	var key = (pos > 0) ? string_copy(r, 1, pos) : r;
    DebugLogAdd(oGame._debugLog, string_upper(key), r, 5, false, c_white);
}