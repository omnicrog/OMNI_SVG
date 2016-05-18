///string_remove_whitespace(string);
payload = argument0;
for(i=0;i<32;i++){
    ws_char = chr(i);
    payload = string_replace_all(payload,ws_char," ");
}
ws_char = chr(127);
payload = string_replace_all(payload,ws_char," ");



do{
    payload = string_replace_all(payload,"  "," ");
}until(!string_count("  ",payload));
payload = string_replace_all(payload," <","<");
payload = string_replace_all(payload," >",">")
return payload;
