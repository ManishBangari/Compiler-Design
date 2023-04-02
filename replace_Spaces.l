/* Design a LEX Code to replace white spaces of ‘Input.txt’ file by a single blank character into ‘Output.txt’ file. */

%{
#include<stdio.h>
%}

%%
[\t" "]+ fprintf(yyout," ");		
.|\n fprintf(yyout,"%s",yytext);	
%%

int yywrap(){
return 1;
}

int main(void)
{
yyin=fopen("Input.txt","r");		
yyout=fopen("Output.txt","w");
yylex();
return 0;
}
