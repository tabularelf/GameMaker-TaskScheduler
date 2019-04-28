/// task_prioriy_add(id, time, function)
/// @arg id
/// @arg time
/// @arg function
/// @arg priority
/// @arg arguments

// Setup Variables
var idd = argument[0];
var time = argument[1];
var priority = argument[2];
var function = argument[3];
var args = undefined;

if argument_count > 4 {
	args = argument[4];	
}

// Check if Instance Exists
if !instance_exists(idd) {
	show_debug_message("Instance doesn't exist. Skipping...");
	exit;
}

// Bake array
var arr;
arr[taskSchedule.ID] = idd;
arr[taskSchedule.TIME] = time;
arr[taskSchedule.FUNCTION] = asset_get_index(function);
arr[taskSchedule.ARGUMENTS] = args;

// Add to Task Scheduler
ds_priority_add(task_scheduler, arr, idd|priority<<32);