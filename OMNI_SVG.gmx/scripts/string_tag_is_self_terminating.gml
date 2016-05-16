///string_tag_is_self_terminating(string);
pos = string_pos(" ",argument0)-1;
payload=string_copy(argument0,1,pos);
switch(payload){
case "<line":
case "<path":
case "<use":
case "<polygon":
case "<rect":
case "<circle":
case "<ellipse":
case "<polyline":
case "<feGaussianBlur":
case "<feOffset":
case "<feBlend":
case "<feColorMatrix":
case "<feComposite":
case "<fePointLight":
case "<feMergeNode":
case "<stop":
case "<animate":
case "<animateMotion":
case "<animateTransform":
case "<?":
case "<!":return true;
default:return false;
}
