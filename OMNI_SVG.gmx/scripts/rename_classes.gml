///rename_classes(svg/text);
mysvg = argument0;
classes = ds_list_create();
cnt = string_count('class=',mysvg);
for (i=0;i<cnt;i++){
    cut = string_pos('class=',mysvg)+6;
    mysvg = string_delete(mysvg,1,cut);
    amt = string_pos('"',mysvg)-1;
    if (ds_list_find_index(classes,string_copy(mysvg,1,amt))<0){
        ds_list_add(classes,string_copy(mysvg,1,amt));
    }
    
    mysvg = string_delete(mysvg,1,amt);
}
for(i=0;i<ds_list_size(classes);i++){
    mysvg = string_replace_all(argument0,ds_list_find_value(classes,i),alpha_string(i));
}
return mysvg;
