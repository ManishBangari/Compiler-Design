%{
%}

%%
"<"[^>][a-zA-Z]+> fprintf(yyout,"%s\n",yytext);  
.;
%%    
  
int yywrap(){return 1;}
       
int main()
{
    yyin = fopen("index.html","r"); 
    yyout=fopen("Output.txt","w");
    yylex(); 
    fclose(yyin);
    fclose(yyout);
  
    return 0;
}