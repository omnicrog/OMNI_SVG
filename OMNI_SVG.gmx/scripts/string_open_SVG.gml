///string_open_SVG(***returns the raw SVG file as txt***)
name=get_open_filename(".svg","untitled.svg");

if (name!=""){
    object_filename.name = name;
    myfile = file_text_open_read(name);
    payload="";
    while(!file_text_eof(myfile)){
        text = file_text_readln(myfile);
        payload=payload+text;
    }
    file_text_close(myfile);
}
return payload;
