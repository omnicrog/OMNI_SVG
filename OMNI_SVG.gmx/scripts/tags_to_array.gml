///tags_to_array(string);
payload = '<g><g><g><a class="class_name">some random text<line "some stuff"/></a></g></g></g>';

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
        tags[i]=string_copy(payload,1,next_pos);
        payload=string_delete(payload,1,next_pos);
    }
    else
    if(string_count("<",payload)==1){
        tags[i]=string_copy(payload,1,string_length(payload));
        payload=string_delete(payload,1,string_length(payload));
    }
}
return tags;
