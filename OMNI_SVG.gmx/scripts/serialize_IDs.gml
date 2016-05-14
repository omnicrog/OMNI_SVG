///serialize_IDs(svg);
mysvg = argument0;
id_list = ds_list_create();
tag = 'id="';
closetag = '"';
ids = string_count(tag,mysvg);

for (i=0;i<ids;i++){
    a = string_pos(tag,mysvg)+string_length(tag);
    mysvg = cut_from_to(mysvg,1,a);
    b = string_pos(closetag,mysvg)-1;
    ds_list_add(id_list,string_copy(mysvg,1,b));
    mysvg = string_delete(mysvg,1,b);
}
mysvg = argument0;
for(i=0;i<ds_list_size(id_list);i++){
    myid = " "+tag+ds_list_find_value(id_list,i)+'"';
    mysvg = string_replace_all(mysvg,string(myid),""/*string(tag+alpha_string(i)+'"')*/);
    mysvg = string_replace_all(mysvg,string('#'+ds_list_find_value(id_list,i)),string('#'+alpha_string(i)));
    show_debug_message(alpha_string(i)+":"+ds_list_find_value(id_list,i));
}
return mysvg;
