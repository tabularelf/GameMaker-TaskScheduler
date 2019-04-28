/// @description Draw Results (Debugging Purposes)
var result = task_get();
var str = "";
str += string(result[0]) + "\n";
str += string(result[1]) + "\n";
if !is_undefined(result[2]) {
	str += string(script_get_name(result[2])) + "\n";	
}
str += string(result[3]) + "\n";
draw_text(4,4,str);