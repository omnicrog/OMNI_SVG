///state_GETTINGFILENAME()
NAME=get_open_filename(".svg","untitled.svg");
if(NAME=="")
{
 STATE="state_PROGRAMLOADED";
}else
{
 FILE = file_text_open_read(name);
 STATE="state_READINGFILE";
}

