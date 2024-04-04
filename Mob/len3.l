%{
   #include<stdio.h>
   int length;
   void fun(int l);
%}
%%
[a-zA-Z0-9]+ {length=yyleng;fun(length);}
%%
 void fun(int l){
    if(yytext[0]=='A'){
        if(length==3){
            printf("%s is word with length=3",yytext);
        }
    }
}
int yywrap(){ 
     return 1;
}
int main(){
    printf("enter the strings");
    yylex();
    
}