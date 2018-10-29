/*
 * Author: Ori Weiss
 * Comp 232
 * 10/22/2018
 * Flex Lab
 */
/* NOTE: % must be in the first column (no indentation) */

%option noyywrap
%option nounput
%option noinput

digit  [0-9]
letter [A-Za-z]



%{
   #include "flex_t1.h"
%}

%%

"if"        {return IF_TOKEN;}
"then"      {return THEN_TOKEN;}
"while"     {return WHILE_TOKEN;}
"do"        {return DO_TOKEN;}
"print"     {return PRINT_TOKEN;}
"("         {return LPAREN_TOKEN;}
")"         {return RPAREN_TOKEN;}
";"         {return SEMICOLON_TOKEN;}
{letter}({letter}|{digit}|"_")* {return ID_TOKEN;}
({digit})+("."({digit})+)? {return NUMBER_TOKEN;}
"+"         {return PLUS_TOKEN;}
"-"         {return MINUS_TOKEN;}
"*"         {return MULT_TOKEN;}
"/"         {return DIVIDE_TOKEN;}
"%"         {return MOD_TOKEN;}
"="         {return EQUALS_TOKEN;}

%%

void yyerror(char *s) {/* dummy */}
