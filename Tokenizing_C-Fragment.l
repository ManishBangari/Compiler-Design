/* Design a LEX Code for Tokenizing (Identify and print OPERATORS, SEPERATORS, KEYWORDS, IDENTIFERS) the following C-fragment: */

%{
#include<stdio.h>
%}

%%
auto|double|int|struct|break|else|long|switch|case|enum|register|typedef|char|extern|return|union|continue|for|signed|void|do|if|static|while|default|goto|sizeof|volatile|const|float|short     {printf("Keyword\n");} 						
[{};,()]   {printf("Separator\t");}						
[+-/=*%]   {printf("Operator\t");}						
([a-zA-Z][0-9])+|[a-zA-Z]* {printf("Identifier\t");}    
.|\n ; 															
%%

int yywrap(){
return 1;
}

int main(void){
yylex();
return 0;
}

/* 
int p=1,d=0,r=4,
float m=0.0, n=200.0,
while (p <= 3)
{ if(d==0)
{ m= m+n*r+4.5, d++, }
else
{ r++, m=m+r+1000.0, }
p++, } 
*/