///string_remove_XML(string);
if(string_count("<?xml",argument0)>0){
    a=string_pos("<?xml",argument0);
    b=1;
    for(i=0;string_char_at(argument0,a+i)!=">" ;i++){
        b+=1;
    }
    payload = string_delete(argument0,a,b);
}

return payload;
