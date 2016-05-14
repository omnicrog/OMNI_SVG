///string_save_SVG(string - ***saves a string to a SVG***)
if(object_filename.name=""){
    show_message("Epic Fail!!");
}else{
    name = get_save_filename(".svg","untitled.svg")
    if (name!=""){
        myfile = file_text_open_write(name);
        package = object_open_button.payload;
        mysvg = remove_ws_chars(package);
        compressedsvg = extract_svg(mysvg);
        compressedsvg = serialize_classes(compressedsvg);
        compressedsvg = serialize_IDs(compressedsvg);
        file_text_write_string(myfile,compressedsvg);
        file_text_close(myfile);
        int1=string_length(object_open_button.payload);
        int2=string_length(compressedsvg);
        show_message("Reduced by: "+string(100-((int2/int1)*100))+"%");
    }
}

