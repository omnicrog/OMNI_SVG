///extract_svg(string-XML);
mystring = argument0;
if(string_count('<?',mystring)>0){
    a=string_pos('<?',mystring);
    b=string_pos('?>',mystring)+2;
    mystring = cut_from_to(mystring,a,b);
}
if(string_count('<!DOC',mystring)>0){
    a=string_pos('<!DOC',mystring);
    b=string_pos('>',mystring)+1;
    mystring = cut_from_to(mystring,a,b);
}
if(string_count('<sodipodi:namedview',mystring)>0){
    a=string_pos('<sodipodi:namedview',mystring);
    b=string_pos('/>',mystring)+2;
    mystring = cut_from_to(mystring,a,b);
}
if(string_count('<metadata',mystring)>0){
    a=string_pos('<metadata',mystring);
    b=string_pos('/>',mystring)+2;
    mystring = cut_from_to(mystring,a,b);
}
if(string_count('<!--',mystring)>0){
    repeat(string_count('<!--',mystring)){
        a=string_pos('<!--',mystring);
        b=string_pos('-->',mystring)+3;
        mystring = cut_from_to(mystring,a,b);
    }
}
mystring=string_replace_all(mystring,"<![CDATA[","");
mystring=string_replace_all(mystring,"]]>","");
mystring=string_replace_all(mystring,' type="text/css"',"");
mystring=string_replace_all(mystring,'xmlns:xlink="http://www.w3.org/1999/xlink"',"");
mystring=string_replace_all(mystring,' version="1.1"',"");
mystring=string_replace_all(mystring,' xml:space="preserve"',"");
mystring=string_replace_all(mystring,'<defs>',"");
mystring=string_replace_all(mystring,'</defs>',"");
mystring=string_replace_all(mystring,'> .','>.');
mystring=string_replace_all(mystring,'; ',';');
mystring=string_replace_all(mystring,'" >','">');
mystring=string_replace_all(mystring,'" /','"/');
mystring=string_replace_all(mystring,'text-rendering:geometricPrecision;image-rendering:optimizeQuality;','');



return mystring;
