//
// Lab5
// scanner_transition_table.c
///*
// * Author: Ori Weiss
// * Date 10/9/2018
// * Comp 232
// */
// Assumes lectures: 1, 2, 3, 4
//[row][column]
#include "scanner.h"

TOKEN *ungottenToken = NULL; // may be used by parser in the next lab

//
// return token to the input, so it can be analyzed again
//
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
void updateTypeIfKeyword(TOKEN *token)
{
    // TODO Implement the function
   // printf("string val is %s", token->strVal);
    if (strcmp(token->strVal, "repeat") == 0) //if the string is repeat change the token type
        token->type = REPEAT;
    else if (strcmp(token->strVal, "print") == 0) //if the string is print change the token type
        token->type = PRINT;
}
/*
void printClass(char * line) //used this function for testing
{
    int letter = 0;
    switch(line[letter]) {
        case '\n': printf("\\n");
            break;
        case '\r': printf("\\r");
            break;
        case '\t': printf("\\t");
            break;
        case ' ':  printf("\\s");
            break;
        default:   putchar(line[letter]);
    }
    ++letter;
    for (; letter < strlen(line); ++letter) {
        switch(line[letter]) {
            case '\n':
                printf("\\n");
                break;
            case '\r':
                printf("\\r");
                break;
            case '\t':
                printf("\\t");
                break;
            case ' ':
                printf("\\s");
                break;
            default:
                putchar(line[letter]);
        }
    }
}

void printLine(int positions, char * line) //used this function for testing
{
    for (int pos = 0; pos < positions; ++pos) {
        switch(line[pos]) {
            case 'a':
            case 'S':
            case 'E':
                printf("%3c ", line[pos]);
                break;
            default:
                printf("%3hhd ", line[pos]); //from wikipedia "For integer types, causes printf to expect an int-sized integer argument which was promoted from a char."
        }
    }
}

void printTable(TRANS_TABLE_TYPE * table) //used this function for testing
{
    //print size info
    printf("States: %d  Classes: %d\n", table->numberOfStates, table->numberOfClasses);

    //print class types
    printClass(table->inputSymbolClasses[0]);
    for (int index = 1; index <table->numberOfClasses; ++index) {
        printf(", ");
        printClass(table->inputSymbolClasses[index]);
    }
    printf("\n");

    //print table info
    for (int line = 0; line < table->numberOfStates; ++line) {
        printLine(table->numberOfClasses+1, table->table[line]);
        printf("\n");
    }
    printf("\n");
}

*/

void editEscapeCharacters(char * buffer) //function that changes all the escape characters to processable forms
{
    char * pos = strchr(buffer, '\\'); //position of '\'
    while (pos != NULL) { //while position is found
        switch (pos[1]) { //look at the next token
            case 'n':
                *(pos) = '\n';
                strcpy(pos+1, pos+2); //copy onto itself/makes this simal to a for loop but need to check when NULL
                break;
            case 't':
                *(pos) = '\t';
                strcpy(pos+1, pos+2);
                break;
            case 'r':
                *(pos) = '\r';
                strcpy(pos+1, pos+2);
                break;
            case 's':
                *(pos) = ' ';
                strcpy(pos+1, pos+2);
                break;
            default:
                break;
        }
        pos = strchr(pos, '\\');
    }
}

void parseSymbolInputClasses(TRANS_TABLE_TYPE * returnTable, char * buffer)
{
    returnTable->inputSymbolClasses = (char **) malloc(sizeof(char *) * returnTable->numberOfClasses); //allocate memory for the input symbols
    for (int i = 0; i < returnTable->numberOfClasses-1; i++) { //fill input symbol clases
        scanf("%[^,],",buffer); //use scanf to delimit by ','
        editEscapeCharacters(buffer); //replace '\\'&'n' with '\n'
        returnTable->inputSymbolClasses[i] = malloc( sizeof(char)*strlen(buffer) + 1 ); //allocate space
        strcpy(returnTable->inputSymbolClasses[i], buffer); //store buffer into inputSymbolClasses
    }
    //grabs last class because last class is delimited by \n not by ,
    scanf("%[^\r\n]",buffer); //delimit by new line character
    editEscapeCharacters(buffer); //replace '\\'&'n' with '\n'
    returnTable->inputSymbolClasses[returnTable->numberOfClasses-1] = malloc((sizeof(char) * (strlen(buffer)) + 1)); //allocate space
    strcpy(returnTable->inputSymbolClasses[returnTable->numberOfClasses-1], buffer); //store buffer into inputSymbolClasses
}

void parseTable(TRANS_TABLE_TYPE * returnTable, char * buffer)
{
    returnTable->table = malloc(sizeof(char *) * returnTable->numberOfStates+1); //allocate memory for rows of table
    for (int line = 0; line < returnTable->numberOfStates; line++) { //lines in the table
        returnTable->table[line] = (char *) malloc(sizeof(char) * (returnTable->numberOfClasses +1)); //allocate memory for columns
        for (int pos=0; pos < returnTable->numberOfClasses+1; ++pos) { //transitions in the line
            scanf("%s ", buffer);//scan the current input into buffer
            if (strchr(buffer, 'a') != NULL)
                returnTable->table[line][pos] = 'a'; //simply place characteer instead of dealing with stirngs in buffer
            else if (strchr(buffer, 'E') != NULL)
                returnTable->table[line][pos] = 'E';
            else if (strchr(buffer, 'S') != NULL)
                returnTable->table[line][pos] = 'S';
            else
                returnTable->table[line][pos] = (char)strtol(buffer, NULL, 10); //convert to long
        }
    }
}

TRANS_TABLE_TYPE *scanInit() //used helper functions to be able to cleanup
{
    // TODO-DONE Implement the function
    TRANS_TABLE_TYPE *returnTable = malloc(sizeof(TRANS_TABLE_TYPE)); //alloate the memory needed
    scanf("%d %d\n", &returnTable->numberOfClasses, &returnTable->numberOfStates); //scan in the states and classes
    char buffer[MAX_LINE_LENGTH] = ""; //create a buffer
    parseSymbolInputClasses(returnTable, buffer); //call my helper function
    parseTable(returnTable, buffer);//call my helper function which creates the table
   // printTable(returnTable);
    return returnTable;
}

int findIndexToClass(TRANS_TABLE_TYPE *table, char c)
{
    int otherIndex = -1; //if returned means nothing was found
    for (int i=0; i<table->numberOfClasses; ++i) {
        if (strcmp(table->inputSymbolClasses[i], "other") == 0) //look for the word other in case It's not in any of my knwon classes
            otherIndex = i; //if other is found mark its index for possible use
        if (strchr(table->inputSymbolClasses[i], c) != NULL) //check to see if character is found in input symbol classes
            return i; //if its found return the index at which its found
    }
    return otherIndex; //if I didn't return in my loop, return the index of other or -1 for error
}

TOKEN *scanner(TRANS_TABLE_TYPE *transitionTable)
{
    // TODO Implement the function
    TOKEN *token = NULL;
    char buffer[MAX_LINE_LENGTH] = ""; //place to store characters
    int index = 0;
    char state = 0;
    char prevState = 0;

    char currChar = (char)getchar(); //according to man this is equivalent to fgetc(stdin)
    if (currChar == EOF) //check if the end of file has been reached
        return NULL;


    while (true){
        int class = findIndexToClass(transitionTable,currChar); //get the type/index of the currentCharacter
        prevState = state; //keep track of the previous characrer for token assignment purposes
        state = transitionTable->table[state][class]; //grab the state from the table
        if( state == 'a'){ //check if its accept
            ungetc(currChar,stdin); //if it is than unget the current char since it will be handled next
            buffer[index] = '\0'; //add an end line input to buffer
            token = malloc(sizeof(TOKEN)); //allocate the token
            token->strVal = malloc(sizeof(char)*index + 1); //allocate the strval
            strcpy(token->strVal,buffer); //copy the buffer into strval
            token->type = transitionTable->table[prevState][transitionTable->numberOfClasses]; //get type of prevState since current state is no longer the correct curr Char
            updateTypeIfKeyword(token); //check for repeat and print
            return token;
        }
        else if (state == 'E'){ //erroor handling
            token = malloc(sizeof(TOKEN)); //allocate space for token
            token->type = INVALID_TOKEN; //declare its incalid
            token->strVal = malloc(sizeof(char) + sizeof(char)); //allocate space for the invalid token string
            token->strVal[0]= currChar;
            token->strVal[1] = '\0';
            return token;
        }
        else if (state == 0) {
            //if whitespace literally do nothing
        }
        else { //number or id uses this multiple times
            buffer[index] = currChar; //keep adding to buffer
            index++; //increment the index
        }
        currChar = (char) getchar(); //get the next character
    }
}


