/*
 * Author: Ori Weiss
 * Date 10/1/2018
 * Comp 232
 */


#include "scanner.h"

//
// Created by Ori's Lenovo on 9/26/2018.
//

#include "scanner.h"

TOKEN *ungottenToken = NULL; // used by parser

TOKEN * scannerAdHoc() { //way of not having to change the main
    return scannerNestedCases();
}
void ungetToken(TOKEN **token)
{
    ungottenToken = *token;
    *token = NULL;
}

//
// clean up the token structure
//
void freeToken(TOKEN **token)
{
    if (token == NULL)
        return;

    if (*token == NULL)
        return;

    if ((*token)->strVal != NULL)
        free((*token)->strVal);

    free(*token);

    *token = NULL;
}

//
// check if a collected sequence of characters is a keyword
//
bool isKeyword(TOKEN *token, char *str)
{
    if (strcmp(str, "repeat") == 0)
        token->type = REPEAT_TOKEN;
    else if (strcmp(str, "print") == 0)
        token->type = PRINT_TOKEN;
    else
        return false;

    return true;
}

//
// scan input for a token using the ad hoc method
//
TOKEN *scannerNestedCases()
{
    // reuse any token returned to the input
    if (ungottenToken != NULL)
    {
        TOKEN *tok = ungottenToken;
        ungottenToken = NULL;
        return tok;
    }

    TOKEN *token = (TOKEN *) malloc(sizeof(TOKEN));
    token->type = INVALID_TOKEN; // assume that the token is invalid to start with
    token->strVal = NULL;

    int state = INVALID_TOKEN;
    int index = 0;
    char buffer[BUF_SIZE] = ""; //place to hold my a...z and 0...9
    while(true){
        char currChar = (char) fgetc(stdin); //get a character from the standard input
        switch(state){
            case INVALID_TOKEN: //the first case which token starts off as
                switch(currChar){
                    case '\t': //ignore white space
                        break;
                    case '\n': //ignore white space
                        break;
                    case '\r': //ignore white space
                        break;
                    case ' ': //ignore white space
                        break;
                    case EOF: //ignore white space
                        return NULL;
                    case 'a'...'z':
                        state = IDENT_TOKEN;
                        token->type = IDENT_TOKEN;
                        buffer[index] = currChar; //add the inputted character into a string to be considered a identity
                        index++; //increment the counter to allow buffer to input into correct index
                        break;
                    case '0'...'9':
                        state = NUMBER_TOKEN;
                        token->type=NUMBER_TOKEN;
                        buffer[index] =currChar; //add the inputted character into a array to be considered a large number
                        index++; //increment the counter to allow buffer to input into correct index
                        break;
                    case '=':
                        state = ASSIGNMENT_TOKEN;
                        token->type=state;
                        break;
                    case ';':
                        state = SEMICOLON_TOKEN;
                        token->type=state;
                        break;
                    case '(':
                        state =LPAREN_TOKEN;
                        token->type=state;
                        break;
                    case ')':
                        state = RPAREN_TOKEN;
                        token->type=state;
                        break;
                    case '+':
                        state = PLUS_TOKEN;
                        token->type=state;
                        break;
                    case '-':
                        state = MINUS_TOKEN;
                        token->type=state;
                        break;
                    case '*':
                        state = MULT_TOKEN;
                        token->type=state;
                        break;
                    case '/':
                        state = DIV_TOKEN;
                        token->type=state;
                        break;
                    case '%':
                        state = MOD_TOKEN;
                        token->type=state;
                        break;

                    default:
                        token->strVal = malloc( (2) * sizeof(char) ); //add 2 since its going to be the character itself and \0
                        token->strVal[0] = currChar;
                        token->strVal[1] = '\0';
                        return token;
                }
                break;
            case NUMBER_TOKEN:
                switch(currChar){
                    case '0'...'9':
                        buffer[index] = currChar;
                        index++;
                        break;
                    default: //if the inputted character is not a letter
                        token->strVal = malloc( (index + 1) * sizeof(char) ); //allocate space for the buffer
                        strcpy(token->strVal,buffer); //place the buffer into the string value
                        ungetc(currChar,stdin); //place currChar back into stdin to be used in the next run
                        return token;
                }
                break;
            case IDENT_TOKEN:
                switch(currChar){
                    case 'a'...'z':
                        buffer[index] = currChar;
                        index++;
                        break;
                    default: //if the inputted character is not a letter
                        token->strVal = malloc( (index + 1) * sizeof(char) ); //allocate space for the buffer
                        strcpy(token->strVal,buffer); //place the buffer into the string value
                        ungetc(currChar,stdin); //place currChar back into stdin to be used in the next run
                        isKeyword(token, token->strVal); //check if the word inputted is a keyword
                        return token;
                }
                break;
            case ASSIGNMENT_TOKEN:
                token->strVal = malloc(sizeof(char) + sizeof(char) ); //allocate space needed for the token and end char
                token->strVal[0] = '='; //add the token itself
                token->strVal[1] = '\0'; //add the end character
                ungetc(currChar,stdin); //place the character back in standard in
                return token;

            case SEMICOLON_TOKEN:
                token->strVal = malloc( sizeof(char) + sizeof(char) );
                token->strVal[0] = ';';
                token->strVal[1] = '\0';
                ungetc(currChar,stdin);
                return token;
            case LPAREN_TOKEN:
                token->strVal = malloc( sizeof(char) + sizeof(char));
                token->strVal[0] = '(';
                token->strVal[1] = '\0';
                ungetc(currChar,stdin);
                return token;
            case RPAREN_TOKEN:
                token->strVal = malloc( sizeof(char) + sizeof(char) );
                token->strVal[0] = ')';
                token->strVal[1] = '\0';
                ungetc(currChar,stdin);
                return token;
            case PLUS_TOKEN:
                token->strVal = malloc( sizeof(char) + sizeof(char) );
                token->strVal[0] = '+';
                token->strVal[1] = '\0';
                ungetc(currChar,stdin);
                return token;
            case MINUS_TOKEN:
                token->strVal = malloc( sizeof(char) + sizeof(char) );
                token->strVal[0] = '-';
                token->strVal[1] = '\0';
                ungetc(currChar,stdin);
                return token;
            case MULT_TOKEN:
                token->strVal = malloc( sizeof(char) + sizeof(char));
                token->strVal[0] = '*';
                token->strVal[1] = '\0';
                ungetc(currChar,stdin);
                return token;
            case DIV_TOKEN:
                token->strVal = malloc( sizeof(char) + sizeof(char) );
                token->strVal[0] = '/';
                token->strVal[1] = '\0';
                ungetc(currChar,stdin);
                return token;
            case MOD_TOKEN:
                token->strVal = malloc(sizeof(char) + sizeof(char) );
                token->strVal[0] = '%';
                token->strVal[1] = '\0';
                ungetc(currChar,stdin);
                return token;
        }
    }
}