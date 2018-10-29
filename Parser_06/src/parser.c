/*
 * Author: Ori Weiss
 * Date 10/13/2018
 * comp232
 */

#include "parser.h"
TOKEN *getNextToken(TOKEN **token)
{
    freeToken(token);
    return scannerAdHoc();
}

NODE *program()
{
    NODE *node = malloc(sizeof(NODE));
    node->type = PROGRAM_NODE;
    node->leftNode = statement();
    if (node->leftNode != NULL)
        node->rightNode = program();
    return node;
}

NODE *statement()
{
  //  printf("Im in statement");
//   TODO: implement
    NODE *node = malloc(sizeof(NODE));
    node->rightNode = NULL;
    node->type = STATEMENT_NODE;
    TOKEN *currentTok = getNextToken(NULL);
    //printf("%s\n",(*currentTok).strVal);
    if(currentTok == NULL){
        free(node);
        return NULL;
    }
    switch (currentTok->type) {
        case REPEAT_TOKEN:
            node->leftNode = repeatStmt(&currentTok);
            break;
        case PRINT_TOKEN:
            node->leftNode = printStmt(&currentTok);
            break;
        case IDENT_TOKEN:
            node->leftNode = assignStmt(&currentTok);
            break;
        default:
            error("No valid token given");
    }
    return node;

}

NODE *assignStmt(TOKEN **currToken)
{
//   TODO: implement
    NODE *node = malloc(sizeof(NODE));
 //   printf("Infinte L in assignStmt\n");
    if((*currToken)->type == IDENT_TOKEN) {
        node->leftNode = id(currToken);
        node->type = ASSIGN_STMT_NODE;
        *currToken = getNextToken(currToken);
        if((*currToken)->type == ASSIGNMENT_TOKEN){
            *currToken = getNextToken(currToken); //passing the beginning of the expr
            node->rightNode = expr(currToken);
            *currToken = getNextToken(currToken);
            if((*currToken)->type != SEMICOLON_TOKEN){
                error("no semicolon");
            }
        }
        else{
            error("no assignment or equals symbol");
        }
    }
    else{
        error("not beginning with a identifier token");
    }
    return node;
}

NODE *repeatStmt(TOKEN **currToken)
{
    //   TODO: implement
  //  printf("Infinte L in repeat\n");
    NODE *node = malloc(sizeof(NODE));
    if((*currToken)->type == REPEAT_TOKEN){
        node->type = REPEAT_STMT_NODE;
        *currToken = getNextToken(currToken);
        if ((*currToken)->type == LPAREN_TOKEN) {
            *currToken = getNextToken(currToken);
            node->leftNode = expr(currToken); //passing the beginning of the expr
            *currToken = getNextToken(currToken);
            if ((*currToken)->type == RPAREN_TOKEN) {
                node->rightNode = statement();
                *currToken = getNextToken(currToken);
                if ((*currToken)->type != SEMICOLON_TOKEN) {
                    error("No Semicolon fou");
                }
            } else {
                error("NO RPARREN FOUND");
            }
        } else {
            error("No LPAREN found");
        }
    }
    else{
        error("Not A repeat token");
    }
    return node;
    //<repeatStmt> ::= repeat ( <expr> ) <statement> ;

}

NODE *printStmt(TOKEN **currToken)
{
//   TODO: implement
    NODE *node = malloc(sizeof(NODE));
//    printf("Infinte L in print\n");
    node->rightNode = NULL;
    node->type = PRINT_STMT_NODE;
    if((*currToken)->type == PRINT_TOKEN){
        *currToken = getNextToken(currToken);
        node->leftNode = expr(currToken);
        *currToken = getNextToken(currToken);
        if((*currToken)->type != SEMICOLON_TOKEN){
            error("No Semicolon found");
        }
    }
    else{
        error("NOT a Print Token");
    }
    return node;
//<printStmt> ::= print <expr> ;
}

NODE *expr(TOKEN **currToken)
{
//   TODO: implement
    NODE *node = malloc(sizeof(NODE));
 //   printf("Infinte L in expr\n");
    node->type = EXPR_NODE;
    node->leftNode = term(currToken);  //passing the beginning of the term
    *currToken = getNextToken(currToken);
    if((*currToken)->type == PLUS_TOKEN||(*currToken)->type == MINUS_TOKEN){
        node->data.op = (*currToken)->strVal[0];
        *currToken = getNextToken(currToken); //passing the beginning of the expr
        node->rightNode = expr(currToken);
    }
    else{
        node->rightNode = NULL;
        ungetToken(currToken);
    }
    return node;
    //<expr> ::= <term> | <term> <addOp> <expr>
}

NODE *term(TOKEN **currToken)
{
//   TODO: implement
    NODE *node = malloc(sizeof(NODE));
   // printf("Infinte L in term\n");
    node->type = TERM_NODE;
    node->leftNode = factor(currToken); //i think im passing the beginign of factor
    *currToken = getNextToken(currToken);
    switch((*currToken)->type){
        case MULT_TOKEN:
            node->data.op='*';
            *currToken = getNextToken(currToken); //passing the beginning of the term
            node->rightNode = expr(currToken);
            break;
        case DIV_TOKEN:
            node->data.op='/';
            *currToken = getNextToken(currToken); //passing the beginning of the term
            node->rightNode = expr(currToken);
            break;
        case MOD_TOKEN:
            node->data.op='%';
            *currToken = getNextToken(currToken); //passing the beginning of the term
            node->rightNode = expr(currToken);
            break;
        default:
            node->rightNode = NULL;
            ungetToken(currToken);
            break;
    }
    return node;
}

NODE *factor(TOKEN **currToken)
{
    //   TODO: implement
    NODE *node = malloc(sizeof(NODE));
    node->type = FACTOR_NODE;
   // printf("Infinte L in factor\n");
    switch ((*currToken)->type){
        case IDENT_TOKEN:
            node->leftNode = id(currToken);
            node->rightNode = NULL;
            break;
        case NUMBER_TOKEN:
            node->leftNode = number(currToken);
            node->rightNode = NULL;
            break;
        case MINUS_TOKEN: //not sure about this
            *currToken = getNextToken(currToken);
            node->leftNode = factor(currToken);
            node->rightNode = NULL;
            break;
        case LPAREN_TOKEN:
            *currToken = getNextToken(currToken);
            node->leftNode = expr(currToken);
            node->rightNode = NULL;
            *currToken = getNextToken(currToken);
            if((*currToken)->type != RPAREN_TOKEN){
                error("Right paren not found");
            }
            break;
        default:error("No correct cases found");

    }
    return node;

//term passes in the first token of factor
}

NODE *id(TOKEN **currToken)
{
    //   TODO: implement
    NODE *node = malloc(sizeof(NODE));
    node->rightNode = NULL;
    node->leftNode=NULL;
    node->type = IDENTIFIER_NODE;
    strcpy(node->data.identifier, (*currToken)->strVal);

    return node;
}

NODE *number(TOKEN **currToken)
{
//   TODO: implement
    NODE *node = malloc(sizeof(NODE));
    node->rightNode = NULL;
    node->leftNode=NULL;
    node->type = NUMBER_NODE;
    node->data.number = strtod((*currToken)->strVal, NULL);
    return node;
}

void error(char *errorMessage)
{
    printf("PARSING ERROR: %s\nExiting...\n", errorMessage);
    exit(1);
}
