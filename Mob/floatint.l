%{
    #include<stdio.h>
    int inti=0;
    int floati=0;

%}
%%
[0-9]+"."[0-9]+ {floati++;}
[+-]?[0-9]+ {inti++;}
%%
int yywrap(){
    return 1;
}
int main(){
    printf("enter the numbers");
    yylex();
    printf("floting numbers count=%d\n integer numbers count=%d",floati,inti);  
    return 0;
}