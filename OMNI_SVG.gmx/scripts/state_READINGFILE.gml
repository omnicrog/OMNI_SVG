///state_READINGFILE(FILENAME,FILESIZE,PAYLOAD);
if(!file_text_eof(myfile)){
    PAYLOAD=PAYLOAD+file_text_readln(myfile);
    count+=1;
}else{
    file_text_close(myfile);
    package=payload;
    packagesize=string_length(PAYLOAD);
    tagsize =string_count(">",PAYLOAD);
    file_loaded=true;
    STATE="state_SCANNING";
}
