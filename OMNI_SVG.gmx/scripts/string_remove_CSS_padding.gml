///string_remove_CSS_padding(string);
payload=string_replace_all(argument0,"<![CDATA[","");
payload=string_replace_all(payload,"]]>","");
payload=string_replace_all(payload,"<defs>","");
payload=string_replace_all(payload,"</defs>","");



return payload;
