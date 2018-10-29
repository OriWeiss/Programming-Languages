/*
 * Author: Ori Weiss
 * 9/25/2018
 * Comp 232
 * Lab03
 */
#include "person.h"

LIST *head = NULL, *tail = NULL;

void inputPersonalData(PERSON *person)
{
    printf("Please in put your name, age, height, and your bday\n");
    scanf("%s %d %f %d/%d/%d", person->name,&person->age,&person->height,&person->bday.month,&person->bday.day,&person->bday.year);
    // TODO-DONE Implement the function
}

void addPersonalDataToDatabase(PERSON *person)
{
    add(&head,&tail,person);

    // TODO-DONE Implement the function

}

void displayDatabase()
{
    printf("Displaying database\n");
    if (head == NULL)
        return;

    LIST *currNode = head;
    while(currNode != NULL) { //check to be sure not going to operate with empty node
        PERSON *temp = currNode->data;
        printf("Name is: %s ",temp->name);
        printf("Age is: %d ",temp->age);
        printf("Height is: %f ",temp->height);
        printf("Birthday is: %d/%d/%d \n",temp->bday.month,temp->bday.day,temp->bday.year);

        currNode = currNode->next; //move the next pointer
    }
    // TODO-DONE Implement the function

}

void displayPerson(PERSON *person)
{
    printf("Name is: %s ",person->name);
    printf("Age is: %d ",person->age);
    printf("Height is: %f ",person->height);
    printf("Birthday is: %d/%d/%d\n",person->bday.month,person->bday.day,person->bday.year);
    // TODO-DONE Implement the function
}

PERSON *findPersonInDatabase(char *name)
{
    if (head == NULL) //check if the entire list is null
        return NULL;
    LIST *currNode = head;
    while(currNode != NULL) { //check to be sure not going to operate with empty node
        PERSON *temp = currNode->data; //convert into person type inorder to analyze name
        if(strncmp(name,temp->name,strlen(name)) == 0) { //do a comparison if true, we found the person
            return temp;
        }
        currNode = currNode->next; //move the next pointer
    }

    // TODO-DONE Implement the function

    return NULL; // if the node is not found will return nothing
}

void removePersonFromDatabase(char *name)
{
    delete(&head,&tail,name); //delete takes care of the searching and deleting

    // TODO-DONE Implement the function
}

void clearDatabase()
{
    clearRecursively(&head,&tail);
    //clearIteratively(&head,&tail);
    // TODO-DONE Implement the function
}
