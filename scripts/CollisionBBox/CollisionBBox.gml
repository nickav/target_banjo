/// @param self
/// @param other
var obj, objOther;

obj = argument0;
objOther = argument1;

return (instance_exists(obj) && instance_exists(objOther)) &&
!(
	obj.bbox_left > objOther.bbox_right ||
	obj.bbox_right < objOther.bbox_left ||
	obj.bbox_top > objOther.bbox_bottom || obj.bbox_bottom < objOther.bbox_top
);