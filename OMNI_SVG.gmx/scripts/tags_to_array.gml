///tags_to_array(string);
payload = argument0;

tags=0;
count=string_count("<",payload);
for(i=0;i<count;i++){
    if(string_count("<",payload)>1){
        next_pos=0;
        for(ii=2;ii<string_length(payload);ii++){
            if(string_char_at(payload,ii)=="<"){
                next_pos=ii-1;
                break;
            }
        }
        tags[i,0]=string_copy(payload,1,next_pos);
        payload=string_delete(payload,1,next_pos);
    }
    else
    if(string_count("<",payload)==1){
        tags[i,0]=string_copy(payload,1,string_length(payload));
        payload=string_delete(payload,1,string_length(payload));
    }
}


level=0;
for(i=0;i<array_height_2d(tags);i++){
    
    
    if(string_count("/>",tags[i,0])==0){
        if(string_count("</",tags[i,0])==0){
            tags[i,1]=level;
            level+=1;
        }else{
            level-=1;
            tags[i,1]=level;
        }
    }else{
        tags[i,1]=level;
    }
    
    show_debug_message(string_repeat(" ",tags[i,1])+string(tags[i,0]))
}


/*
return tags;
*/
