/*
 * Author: Ori Weiss
 * Comp 232
 * 10/22/2018
 * Flex Lab
 */


#include "flex_t1.h"
#include "../cmake-build-debug/parser.h"


int main(void) {

   extern char *yytext;
   TOKEN tok;

   char *token[] = {"if", "then","while","do","print","lparen","rparen","semicolon","identifier","number","plus","minus","mult","divide","mod","assignment", /* and so on */};

   while ((tok = yylex()) != 0) {
      if ((tok - IF_TOKEN) <= 4) {
         printf("{<keyword> \"%s\"}", yytext);
      }
      else{
         printf("{\"%s\", %s}", token[tok - IF_TOKEN], yytext);
      }
   }
}