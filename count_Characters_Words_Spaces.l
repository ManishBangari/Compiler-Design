/* Design a LEX Code to count and print the number of total characters, words, white spaces in given ‘Input.txt’ file. */

%{
#include <stdio.h>
int char_count = 0;
int word_count = 0;
int space_count = 0;
%}

%%
[a-zA-Z]+    { word_count++; char_count += strlen(yytext); }
" "          { space_count++; char_count++; }
\n           { char_count++; }
.            { char_count++; }
%%

int main(){
    yyin = fopen("Input.txt", "r");
    yylex();
    printf("Total Characters: %d\n", char_count);
    printf("Total Words: %d\n", word_count);
    printf("Total Spaces: %d\n", space_count);
    return 0;
}