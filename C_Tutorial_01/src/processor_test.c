/*
 * Author: Ori Weiss
 * Lab 1 part 1
 * 9/12/2018
 */

#include "processor.h"

int main(void)
{
    char inputBuffer[BUFFER_SIZE];

    while(true)
    {
        // get a line of input from he user
        scanf(" %[^\n]", inputBuffer);
        if (strncmp(inputBuffer, SENTINEL, SENTINEL_LEN) == 0) {
            // stop when "END" is read in
            messageDispatcher();
            printStatistics();
            break;
        }
        // add the message to the cache
        addMessageToCache(inputBuffer);
    }
}
