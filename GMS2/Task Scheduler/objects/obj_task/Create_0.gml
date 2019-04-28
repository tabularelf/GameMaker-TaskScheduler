/// @description Create Task Scheduler
task_schedule_init();
task_add(id,60,"trace",["Hello World!"]);
task_add(id,60,"trace",["Hello World!", "How are you?"]);
task_add(id,60,"trace",["Hello World!", "How are you?", "BREAK"]);
task_add(id,60,"trace",["Hello World!", "How are you?", "BREAK", "NOPE"]);
repeat(200) {
	task_add(id,30,"background_blend");	
}