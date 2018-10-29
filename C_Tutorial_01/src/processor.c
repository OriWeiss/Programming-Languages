/*
 * Author: Ori Weiss
 * Lab 1 part 1
 * 9/12/2018
 */

#include "processor.h"

MESSAGE messageCache[CACHE_SIZE];
int mRead = 0;//counts the amount of messages read by the scanner
int amount[5];/*PLEASE READ
    amount[0] counter for MSG_TYPE_1
    amount[1] counter for MSG_TYPE_2
    amount[2] counter for MSG_TYPE_3,
    amount[3] counter for MSG_TYPE_4
    amount[4] counter for number of batches processed
    */
void addMessageToCache(char *inputLine)
{
     _Bool errorFlag = false; //error flag to validate type is acceptable
     int type = 0;//reset type
     int *pType = &type;//create a pointer for type
     sscanf(inputLine, "%d", &type); //takes in the message type number
     switch (*pType) { //uses the message type number as a switch for what type of scanning to do
         case 1:
             messageCache[mRead].type = MSG_TYPE_1;
             int length = strlen(inputLine); //get the length of the message including
             messageCache[mRead].content.string = (char *) malloc(length); // allocate the memory, no +1 since type is included in length
             if(messageCache[mRead].content.string == NULL){ //error check malloc to be sure memory was allocated
                 printf("Error! Failed to allocate memory.");
                 abort(); //aborting the program since the memory can not be allocated
             }

             sscanf(inputLine, "%d %s",&type, messageCache[mRead].content.string);
             amount[0]=amount[0] + 1;
             break;
         case 2:
             messageCache[mRead].type = MSG_TYPE_2;
             sscanf(inputLine, "%d %d %d %d %d %d",&type, &messageCache[mRead].content.integers[0], &messageCache[mRead].content.integers[1],
                    &messageCache[mRead].content.integers[2], &messageCache[mRead].content.integers[3], &messageCache[mRead].content.integers[4]);
             amount[1]=amount[1] + 1;
             break;
         case 3:
             messageCache[mRead].type = MSG_TYPE_3;
             sscanf(inputLine, "%d %f %f %f %f",&type, &messageCache[mRead].content.doubles[0], &messageCache[mRead].content.doubles[1], &messageCache[mRead].content.doubles[2],
                    &messageCache[mRead].content.doubles[3]);
             amount[2]=amount[2] + 1;
             break;
         case 4:
             messageCache[mRead].type = MSG_TYPE_4;
             sscanf(inputLine, "%d %s %s %s %s %s",&type, messageCache[mRead].content.words[0], messageCache[mRead].content.words[1], messageCache[mRead].content.words[2],
                    messageCache[mRead].content.words[3], messageCache[mRead].content.words[4]);
             amount[3]=amount[3] + 1;
             break;
         default:
             printf("Not a valid message type");
             errorFlag = true;
             break;
     }
     if(errorFlag == false) { //check to make sure valid input
         mRead = mRead + 1;
     }
     if(mRead == CACHE_SIZE){
        messageDispatcher();
     }
    // TODO See the description of the Task 10
}

void messageDispatcher(void)
{
    if (mRead != 0) { //checking to make sure an empty batch is not being processed
        for (int i = 0; i <
                        mRead; ++i) {//go only until mread to avoid processing messages from the previous batch when sentinel is entered
            processMessage(&messageCache[i]);
        }

        for (int i = 0; i < mRead; ++i) { //go only until mread to avoid processing messages from the previous batch when sentinel is entered
            if (messageCache[i].type == MSG_TYPE_1) {
                free(messageCache[i].content.string); //free the previously allocated space for type 1
            }
        }

        amount[4] = amount[4] + 1; //increment the amount of batches (counter)
        mRead = 0; //rest mRead

        //reset the amount of messages read
    }

    // TODO See the description of the Task 10
}

void processMessage(MESSAGE *message)
{
    switch(message->type){
        case MSG_TYPE_1:
            printf("Type 1:  %s", message->content.string);
            break;
        case MSG_TYPE_2:
            printf("Type 2:  %d,%d,%d,%d,%d", message->content.integers[0], message->content.integers[1], message->content.integers[2], message->content.integers[3], message->content.integers[4]);
            break;
        case MSG_TYPE_3:
            printf("Type 3:  %f/%f/%f/%f", message->content.doubles[0], message->content.doubles[1], message->content.doubles[2], message->content.doubles[3]);
            break;
        case MSG_TYPE_4:
            printf("Type 4:  %s %s %s %s %s", message->content.words[0], message->content.words[1], message->content.words[2], message->content.words[3], message->content.words[4]);
            break;
    }
    printf("\n"); //add a new line for readability

    // TODO See the description of the Task 10
}

void printStatistics(void)
{
    printf("Number of message batches: %d\n",amount[4]);
    printf("Messages processed:\n");
    printf("Total: %d\n",amount[0]+amount[1]+amount[2]+amount[3]);
    printf("Type 1: %d\n", amount[0]);
    printf("Type 2: %d\n", amount[1]);
    printf("Type 3: %d\n", amount[2]);
    printf("Type 4: %d\n", amount[3]);
    // TODO See the description of the Task 10
}
