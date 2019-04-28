/// task_schedule_step

// Check if we can execute/timer ended.
if (task_scheduler_timer == 0) {
	// Check if function is valid
   if !is_undefined(task_scheduler_func) {
	   // Check if instance & script is valid
		if instance_exists(task_scheduler_id) && script_exists(task_scheduler_func) {
			 // Execute function
			with(task_scheduler_id) task_schedule_execute(other.task_scheduler_func,other.task_scheduler_arguments);   
		}
   }

    // Get new task if not empty
    if !ds_priority_empty(task_scheduler) {
			var task = ds_priority_delete_max(task_scheduler);
			//var task = ds_queue_dequeue(task_scheduler);
			
			// Check for valid entry.
			if is_array(task) {
				var idd = task[taskSchedule.ID];
				var time = task[taskSchedule.TIME];
				var func = task[taskSchedule.FUNCTION];
				var args = task[taskSchedule.ARGUMENTS];
			
				if !is_undefined(func) {
					// Update Variables
					task_scheduler_id = idd;
					task_scheduler_timer = time;
					task_scheduler_func = func;
					task_scheduler_arguments = args;
				} else task_scheduler_func = undefined;
		} else {
			// Report invalid entry.
			show_debug_message("NOT AN ARRAY " + string(task));	
		}
    } else {
		// Reset the values
		if !is_undefined(task_scheduler_func) task_cancel();
	}
	// Let's tick down the timer if timer is still on.
} else task_scheduler_timer--;