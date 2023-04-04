# Compiler-Design
This repository contains some lex programs.

Flex (fast lexical analyzer generator) is a free and open-source software alternative to lex.
It is a computer program that generates lexical analyzers (also known as "scanners" or "lexers").


HOW TO INSTALL FLEX :-
To install flex in Ubuntu write the following commands on the terminal.

1. sudo apt-get update
2. sudo apt-get install flex


BASIC SYNTAX OF A LEX PROGRAM :-

%{

// Definition Section - Declare the files and the variables/constants to be needed.

%}

%%

//  Rules Section - Declare the rules here.

%%

// User-code Section or Auxiliary Code Section.


HOW TO RUN :-
1. Save the file using .l extension
2. Open the terminal in the same directory which contains lex code to be compiled.
3. Now type the following commands.

   3.1 -> lex file-name.lex
   
   3.2 -> gcc lex.yy.c
   
   3.3 -> ./a.out
 
 
You can read more about flex on the wikipedia page - https://en.wikipedia.org/wiki/Flex_(lexical_analyser_generator) 
