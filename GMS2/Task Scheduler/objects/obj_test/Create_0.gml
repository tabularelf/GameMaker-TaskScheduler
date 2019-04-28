/// @description Add task
with(obj_task) {
	task_priority_add(other.id,10,irandom(201),"trace",["I'm here!",string(other.id)]);	
	repeat(4)	{
		task_priority_add(other.id,0,irandom(200),"move",[other.id,irandom_range(-4,4),irandom_range(-4,4)]);	
	}
}