///string_metadata(string);
if(string_count("<metadata",argument0)>0){
    for(i=0;i<string_count("<metadata",argument0);i++){
    a=string_pos("<metadata",argument0);
    b=1;
    for(i=0;string_char_at(argument0,a+i)!=">" ;i++){
        b+=1;
    }
    payload = string_delete(argument0,a,b)
    }
}
return payload;
