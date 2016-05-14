///remove_white_chars(text);
payload = argument0;
for(i=0;i<32;i++){
    payload = string_replace_all(payload,chr(i)," ");   
}
repeat(20){
    payload = string_replace_all(payload,"  "," ");
}
payload = string_replace_all(new_string," <","<");
payload = string_replace_all(new_string,"> ",">");
return payload;
