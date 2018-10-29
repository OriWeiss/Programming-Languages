/*
 * Author: Ori Weiss
 * Date 10/13/2018
 * comp232
 */
#include "eval.h"
#include "parser.h"

void printProgram(NODE *node)
{
    printf("=> START program\n");
    if (node->leftNode != NULL)
        printStatement(node->leftNode);
    if (node->rightNode != NULL)
        printProgram(node->rightNode);
    printf("=> END program\n");
}

void printStatement(NODE *node) {
//   TODO: implement
    printf("=> START statement\n");
    switch (node->leftNode->type) {
        case ASSIGN_STMT_NODE:
            printAssignStmt(node->leftNode);
            break;
        case REPEAT_STMT_NODE:
            printRepeatStmt(node->leftNode);
            break;
        case PRINT_STMT_NODE:
            printPrintStmt(node->leftNode);
            break;
        default:
            printf("ERROR");
    }

    printf("=> END statement\n");

}
void printAssignStmt(NODE *node)
{
    //   TODO: implement
    printf("=> START assign\n");
    if(node->leftNode!=NULL) {
        printId(node->leftNode);
        if(node->rightNode != NULL){
            printExpr(node->rightNode);
        }
        else{
        printf("Error");
        }
    }
    else{
        printf("ERROR");
    }
    printf("=> END program\n");
}

void printRepeatStmt(NODE *node)
{
    //   TODO: implement
    printf("=> START repeat\n");
    if(node->leftNode!=NULL) {
        printExpr(node->leftNode);
        if(node->rightNode!=NULL){
            printStatement(node->rightNode);
        }
        else{
            printf("ERROR");
        }
    }
    else{
        printf("ERROR");
    }
    printf("=> END repeat\n");

}

void printPrintStmt(NODE *node)
{
    //   TODO: implement
    printf("=> START print\n");
    if(node->leftNode != NULL){
        printExpr(node->leftNode);
    }
    else{
        printf("error");
    }
    printf("=> END print\n");

}

void printExpr(NODE *node)
{
//   TODO: implement
    printf("=> START expression\n");
    if(node->leftNode != NULL){
        printTerm(node->leftNode);
        if(node->rightNode!=NULL) {
            //printf("<operator %c>\n", node->data.op);
            switch (node->data.op){
                case '-':
                    printf("<minus>\n");
                    break;
                case '+':
                    printf("<plus>\n");
                    break;
            }
            printExpr(node->rightNode);
        }
    }
    else{
        printf("Error");
    }
    printf("=> END expression\n");
}

void printTerm(NODE *node)
{
//   TODO: implement
    printf("=> START term\n");
    if(node->leftNode!=NULL){
        printFactor(node->leftNode);
        if(node->rightNode != NULL){
           // printf("<operator %c>\n", node->data.op);
            switch (node->data.op){
                case '%':
                    printf("<modulus>\n");
                    break;
                case'*':
                    printf("<times>\n");
                    break;
                case '/':
                    printf("<divide>\n");
                    break;
            }
            printExpr(node->rightNode);
        }
    }
    else{
        printf("Error");
    }

    printf("=> END term\n");
}

void printFactor(NODE *node)
{
//   TODO: implement
    printf("=> START factor\n");
    switch(node->leftNode->type){
        case IDENTIFIER_NODE:
            printId(node->leftNode);
            break;
        case NUMBER_NODE:
            printNumber(node->leftNode);
            break;
        case FACTOR_NODE: //not sure about this
            printf("<minus>\n");
            printFactor(node->leftNode);
            break;
        case EXPR_NODE:
            printExpr(node->leftNode);
            break;
        default:
            error("No correct cases found");
        }
    printf("=> END factor\n");
}

void printId(NODE *node)
{
//   TODO: implement
    printf("=> START identifier\n");
    printf("<id> %s\n",node->data.identifier);
    printf("=> END identifier\n");

}

void printNumber(NODE *node)
{
//   TODO: implement
    printf("=> START number\n");
    printf("<number> %lf\n",node->data.number);
    printf("=> END number\n");
}

