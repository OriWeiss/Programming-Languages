//
// Created by Ori's Lenovo on 9/5/2018.
//

//
// Created by Ori's Lenovo on 9/5/2018.
//

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
int  main (void){
    char *dest[20];
    char buffer;
    char *Sentinel = "END";
    int count = 0;
    printf("Please enter words, enter END to stop ");
    scanf("%s", buffer);

    int length = strlen(buffer) + 1;
    while(strcmp(buffer,Sentinel) != 0){
        length = strlen(buffer) + 1; //get the length of the inputed word
        dest[count] = (char *) malloc(length); //set aside space for the length of the word
        strcpy(dest[count],buffer); //copy the input to destination array
        count = count + 1; //increment count
        printf("Please enter words, enter END to stop "); //take in a new word
        scanf("%s", buffer); //scan in the new word
    }
    printf("The following %d words have been read: \n", count);
    for(int a = 0; a < count; a = a + 1 ) {
        printf("%s \n", dest[a]);
    }
}