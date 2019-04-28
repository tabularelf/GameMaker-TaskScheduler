/// @description Add new task

if keyboard_check_released(ord("W")) {
	with(obj_task) {
		repeat(20)	{
			task_priority_add(other.id,0,irandom(200),"move",[other.id,irandom_range(-4,4),irandom_range(-4,4)]);	
		}	
	}
}