///string_SVG_to_array(string);
payload=argument0;
SVG = 0;
CONTENTS = 0;
OBJECT = 0;
PROPERTIES = 0;
for(i=0;payload!="";i++){
    posA=string_pos("<",payload);
    posB=string_pos(">",payload);
    element=string_copy(payload,posA,posB);
    if(string_tag_is_self_terminating(element)){
        tagposA     = string_pos("<",payload)+1;
        tagposB     = string_pos(" ",payload);
        tagposC     = string_pos(">",payload);
        
        tag         = string_copy(payload,tagposA,tagposB);
        properties  = string_copy(payload,tagposB,tagposC);
        
        for(ii=0;i<string_count("=",properties);ii++){
            PROPERTIES[ii]=0;
        }
        
        OBJECT[0]   = tag;
        OBJECT[1]   = PROPERTIES;
        OBJECT[2]   = 0;
    }
    
}

SVG[0]=PROPERTIES;
SVG[1]=CONTENTS;
return SVG;
