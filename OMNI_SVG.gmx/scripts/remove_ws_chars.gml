///remove_ws_chars(string);
new_string = argument0;
for(i=0;i<32;i++){
    ws_char = chr(i);
    new_string = string_replace_all(new_string,ws_char," ");
}
repeat(20){
    new_string = string_replace_all(new_string,"  "," ");
}
new_string = string_replace_all(new_string," <","<");
return new_string;
