///serialize_classes(svg);
mysvg = argument0;
class_list = ds_list_create();
tag = 'class="';
closetag = '"';
classes = string_count(tag,mysvg);

for (i=0;i<classes;i++){
    a = string_pos(tag,mysvg)+string_length(tag);
    mysvg = cut_from_to(mysvg,1,a);
    b = string_pos(closetag,mysvg)-1;
    ds_list_add(class_list,string_copy(mysvg,1,b));
    mysvg = string_delete(mysvg,1,b);
}
mysvg = argument0;
for(i=0;i<ds_list_size(class_list);i++){
    myclass = tag+ds_list_find_value(class_list,i)+'"';
    mysvg = string_replace_all(mysvg,string(myclass),string(tag+alpha_string(i)+'"'));
    mysvg = string_replace_all(mysvg,string('.'+ds_list_find_value(class_list,i)),string('.'+alpha_string(i)));
}
return mysvg;
