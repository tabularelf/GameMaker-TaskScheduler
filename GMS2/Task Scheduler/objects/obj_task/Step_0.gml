/// @description Process Tasks

task_schedule_step();

if keyboard_check_released(vk_space) task_force_execute();

if keyboard_check_released(vk_alt) repeat(20) task_priority_add(id,0,400,"instance_create",[irandom(room_width),irandom(room_height),obj_test]);

if keyboard_check_released(ord("S")) task_priority_add(id,40,40,"background_blend");

if keyboard_check_released(ord("A")) task_schedule_reset(); 