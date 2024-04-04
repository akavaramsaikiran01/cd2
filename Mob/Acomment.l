%{
  
  #include<string.h>
  int count=0;
%}
%%
"/*"[a-zA-Z0-9.* \t\n]+"*/" {count++;}
"//"[a-zA-Z0-9.*  \t]+ {count++;}
. ECHO;
%%
int yywrap(){
    return 1;
}
int main(){
    yyin=fopen("1.c","r");
    yyout=fopen("2.c","w");
    yylex();
    printf("number of comment lines=%d",count);
    return 0;
}