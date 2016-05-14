///cut_from_to(string,pos1,pos2);
payload = argument0;
pos1 = argument1;
pos2 = argument2;
payload = string_delete(payload,pos1,pos2-pos1);
return payload;
