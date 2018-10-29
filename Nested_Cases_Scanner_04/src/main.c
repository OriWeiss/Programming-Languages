/*
 * Author: Ori Weiss
 * Date 10/1/2018
 * Comp 232
 */
//  main.c (driver for a scanner test)
//
//  Created by Bieszczad, A.J. on 9/20/17.
//  Copyright (c) 2017 CSUCI. All rights reserved.
//
//  ASSUMES: Lecture 1, 2, 3, 4

#include "scanner.h"

int main(int argc,char *argv[])
{
    TOKEN *token = NULL;
    char *token2str[] = {"INVALID", "NUMBER", "IDENT", "ASSIGNMENT", "SEMICOLON", "LPAREN", "RPAREN", "PLUS", "MINUS",
                         "MULT", "DIV", "MOD", "REPEAT", "PRINT", "END_OF_INPUT"};
    printf("\n");
    if (argc > 1) //check if the file is in the edit configurations tab
    {
        freopen(argv[1],"r",stdin); //grab the text in the edit configurations and place in stdin
    }
    while ((token = scannerAdHoc()) != NULL)
    {
        printf("{%s, %s}\n", token2str[token->type], (token->strVal != NULL) ? token->strVal : "");
        freeToken(&token);
        fflush(stdout);
    }
    printf("\n");
}