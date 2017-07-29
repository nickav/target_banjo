/// DebugLogAdd(array, key, text, frames, indent, color);

var dla, dls, ek, et, ef, ei, ec, index;

dla   = argument0;
dls   = array_length_2d(dla, 0);
ek    = argument1;
et    = argument2;
ef    = argument3;
ei    = argument4;
ec    = argument5;
index = -1;

for (var i = 0; i < dls; i++) {
    // Find something with matching key, matching text or an entry that's not in use
    if (dla[@ 0, i] == ek
		|| dla[@ 1, i] == et
		|| dla[@ 2, i] == 0) {
        index = i;
        break;
    }
}

if (index >= 0) {
	dla[@ 0, index] = ek;
	dla[@ 1, index] = et;
	dla[@ 2, index] = ef;
	dla[@ 3, index] = ei;
	dla[@ 4, index] = ec;
}