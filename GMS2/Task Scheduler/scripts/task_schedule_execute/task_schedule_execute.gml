/// task_schedule_execute(function, arguments);
/// @arg function
/// @arg arguments
var func = argument[0];
var args = undefined;
if argument_count > 1 {
    args = argument[1];
} 

if is_undefined(args) {
    script_execute(func);
    exit;
}

// Go through loop
var count = array_length_1d(args);
switch(count) {
    case 1: script_execute(func,args[0]); break;
    case 2: script_execute(func,args[0],args[1]); break;
    case 3: script_execute(func,args[0],args[1],args[2]); break;
	case 4: script_execute(func,args[0],args[1],args[2],args[3]); break;
	case 5: script_execute(func,args[0],args[1],args[2],args[3],args[4]); break;
	case 6: script_execute(func,args[0],args[1],args[2],args[3],args[4],args[5]); break;
	case 7: script_execute(func,args[0],args[1],args[2],args[3],args[4],args[5],args[6]); break;
	case 8: script_execute(func,args[0],args[1],args[2],args[3],args[4],args[5],args[6],args[7]); break;
	case 9: script_execute(func,args[0],args[1],args[2],args[3],args[4],args[5],args[6],args[7],args[8]); break;
	case 10: script_execute(func,args[0],args[1],args[2],args[3],args[4],args[5],args[6],args[7],args[8],args[9]); break;
	case 11: script_execute(func,args[0],args[1],args[2],args[3],args[4],args[5],args[6],args[7],args[8],args[9],args[10]); break;
	case 12: script_execute(func,args[0],args[1],args[2],args[3],args[4],args[5],args[6],args[7],args[8],args[9],args[10],args[11]); break;
	case 13: script_execute(func,args[0],args[1],args[2],args[3],args[4],args[5],args[6],args[7],args[8],args[9],args[10],args[11],args[12]); break;
	case 14: script_execute(func,args[0],args[1],args[2],args[3],args[4],args[5],args[6],args[7],args[8],args[9],args[10],args[11],args[12],args[13]); break;
	case 15: script_execute(func,args[0],args[1],args[2],args[3],args[4],args[5],args[6],args[7],args[8],args[9],args[10],args[11],args[12],args[13],args[14]); break;
	case 16: script_execute(func,args[0],args[1],args[2],args[3],args[4],args[5],args[6],args[7],args[8],args[9],args[10],args[11],args[12],args[13],args[14],args[15]); break;
}