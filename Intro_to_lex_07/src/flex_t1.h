/*
 * Author: Ori Weiss
 * Comp 232
 * 10/22/2018
 * Flex Lab
 */
#ifndef __flex_t1_h_
#define __flex_t1_h_

#include <stdio.h>

typedef enum {
      IF_TOKEN = 258, // since Bison will start token at that number
      THEN_TOKEN,
      WHILE_TOKEN,
      DO_TOKEN,
      PRINT_TOKEN, //262
      LPAREN_TOKEN,
      RPAREN_TOKEN,
    SEMICOLON_TOKEN,
    ID_TOKEN,
    NUMBER_TOKEN,
    PLUS_TOKEN,
    MINUS_TOKEN,
    MULT_TOKEN,
    DIVIDE_TOKEN,
    MOD_TOKEN,
    EQUALS_TOKEN, //258+15


      // and so on...
   } TOKEN;

int yylex(void);
void yyerror(char *s);

#endif
