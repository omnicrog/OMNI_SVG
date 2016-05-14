///string_extract_SVG(SVG-Text);
mystring = argument0;
if(string_count('<?',mystring)>0){
    a=string_pos('<?',mystring);
    b=string_pos('?>',mystring)+2;
    mystring = string_cut_AB(mystring,a,b);
}
return mystring;

