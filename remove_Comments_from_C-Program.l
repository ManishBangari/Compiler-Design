/* Design a LEX Code to remove the comments from any C-Program given at run-time and store into ‘out.c’ file. */

%{
%}

start \/\*
end  \*\/

%%
\/\/(.*) ;
{start}.*{end} ;  
%%

int main(int k,char **argcv){
yyin=fopen(argcv[1],"r");
yyout=fopen("out.c","w");
yylex();
return 0;
}