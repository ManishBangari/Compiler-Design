/* Design a LEX Code to identify and print integer and float value in given Input pattern. */

%{
#include<stdio.h>
%}

%%
[0-9]+"."[0-9]+ {printf("\nFloating-point Number\n");}  
[0-9]+ {printf("\nDecimal Number\n");}			
%%

int yywrap(){
    return 1;
}

int main(void){
yylex();
return 0;
}