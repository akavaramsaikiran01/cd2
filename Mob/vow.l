%{
	 #include<stdio.h>
	 int vow=0;
	 int con=0;
%}
%%
[aeiouAEIOU] {vow++;}
[a-zA-Z] {con++;}

@ { return 1; }
%%
 int yywrap(){
return 1;
}
int main(){
	printf("enter the string");
	yylex();
	printf("vow count=%d\n con count=%d",vow,con);
	return 0;
}