/* Design a LEX Code to count the number of lines, space, tab-meta characters and rest of characters in a given input pattern. */

%{
#include<stdio.h>
#include<stdlib.h>
int lines=0,spaces=0,charc=0,tab=0;
%}

%%
[\n] lines++;
[" "] spaces++;
[\t] tab++;
[^\t " " \n] charc++;
.;
%%

int yywrap(){
return 1;
}

int main(){
printf("Enter string ::");
yylex();
printf("\n");
printf("number of chars::%d\n",charc);
printf("number of spaces::%d\n",spaces);
printf("number of tabs::%d\n",tab);
printf("new line::%d\n",lines);
}