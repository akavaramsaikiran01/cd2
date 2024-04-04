%{
	#include<stdio.h>
	int lc=0,sc=0,tc=0,wc=0,ch=0,c=0;
%}
%%

\n {lc++;}
\t {tc++;}
([ ])+ {sc++;}
. {ch++;c++;}
[a-zA-Z0-9]+ {wc++;c=c+yyleng;}

%%
int yywrap(){
	return 1;
}
int main(){
        printf("enter the string");
	yylex();

	printf("line count=%d\n",lc);
	printf("tab count=%d\n",tc);
	printf("space count=%d\n",sc);
	printf("character count=%d\n",c);
	printf("word count=%d\n",(wc+ch));
	return 0;
}