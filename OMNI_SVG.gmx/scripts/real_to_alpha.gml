///real_to_alpha(#);
int=real(argument0);
chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
U=0;
T=0;
H=0;
TH=0;
for(i=0;i<int;i++){
    U+=1;
    if(U>25){
        U=0;
        T+=1;
        if(T>25){
            T=0;
            H+=1;
            if(H>25){
                H=0;
                TH+=1;
            }
        }
    }
}
if(TH>0){
    a=string_char_at(chars,TH+1);  
}else{
    a="";
}
if(H>0){
    b=string_char_at(chars,H+1);
}else{
    b="";
}
c=string_char_at(chars,T+1);
d=string_char_at(chars,U+1);



return string(a+b+c+d);
