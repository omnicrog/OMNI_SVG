///string_tag_is_self_terminating(string);
pos = string_pos(" ",argument0)-1;
payload=string_copy(argument0,1,pos);
switch(payload){
case "<line":show_debug_message("working");break;
case "<path":break;
case "<!DOCTYPE":break;
default:show_debug_message("not working");break;
}
