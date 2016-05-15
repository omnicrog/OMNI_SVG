///string_remove_DOC(string);
//<!DOCTYPE
//>
if(string_count("<!DOCTYPE",argument0)>0){
    a=string_pos("<!DOCTYPE",argument0);
    b=1;
    for(i=0;string_char_at(argument0,a+i)!=">" ;i++){
        b+=1;
    }
    payload = string_delete(argument0,a,b);
}

return payload;
