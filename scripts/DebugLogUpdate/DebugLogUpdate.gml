/// DebugLogUpdate(array);

var dla, dls;

dla  = argument0;
dls  = array_length_2d(dla, 0);

for (var i = 0; i < dls; i++) {
    if (dla[@ 2, i] > 0) {
        dla[@ 2, i]--;
        
        // If entry dies
        if (dla[@ 2, i] == 0) {
            // Shift all remaining entries forward
            for (var j = (i + 1); j < dls; j++) {
                if (dla[@ 2, j] > 0) {
                    for (var k = 0; k < 5; k++)
                        dla[@ k, (j - 1)] = dla[@ k, j];
                    dla[@ 2, j] = 0; 
                }
            }
            
            //i--;
        }
    }
}