/// DebugLogDraw(x, y, array);

// Param(s)
var ox, oy, dla, dls;

ox  = argument0;
oy  = argument1;
dla = argument2;
dls = array_length_2d(dla, 0);

// Property(ies)
var pKey, pText, pFrames, pIndent, pColor;

pKey    = 0;
pText   = 1;
pFrames = 2;
pIndent = 3;
pColor  = 4;

// Draw offsets
var th, iw;
th = 8;            // Height of a text string (vertical distance between entries)
iw = 8;             // Additional offset for indented entries

for (var i = 0; i < dls; i++) {          
    if ((dla[@ pFrames, i] > 0) || (dla[@ pFrames, i] == (-1))) {
        draw_set_color(dla[@ pColor, i]);
        draw_text((ox + (dla[@ pIndent, i] * iw)), (oy + (th * i)), dla[@ pText, i]);
    }    
}

// Reset draw color
draw_set_color(c_white);