/// Singleton();
/// @description call this in the create event

if (instance_number(object_index) > 1)
	instance_destroy(self, false);