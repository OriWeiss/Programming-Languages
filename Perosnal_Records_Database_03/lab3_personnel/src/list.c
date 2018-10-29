/*
 * Author: Ori Weiss
 * 9/25/2018
 * Comp 232
 * Lab03
 */

#include "list.h"
#include "person.h"

void add(LIST **head, LIST **tail, void *data)
{
    if (*tail == NULL)
    {
        *head = *tail = (LIST *) malloc(sizeof(LIST));
        (*head)->data = data;
        (*head)->next = NULL;
    } else
    {
        (*tail)->next = (LIST *) malloc(sizeof(LIST));
        *tail = (*tail)->next;
        (*tail)->data = data;
        (*tail)->next = NULL;
    }
}

void clearIteratively(LIST **head, LIST **tail)
{
    if (*head == NULL)
        return;

    LIST *currNode = *head;
    LIST *nextNode = NULL;
    do
    {
        nextNode = currNode->next;

        if (currNode->data != NULL)
            free(currNode->data);

        free(currNode);

        currNode = nextNode;

    } while (currNode != NULL);

    *head = NULL;
    *tail = NULL;
}

void clearRecursively(LIST **currNode, LIST **tail)
{

    if (*currNode == NULL)//this is my base case
        return;
    // traverse the linked list and then free it on the way back

    LIST *nextNode;
    nextNode = *currNode; //setting current to next in order to free
    nextNode = nextNode->next; //incrementing the current node
    clearRecursively(&nextNode, tail);
    free(nextNode);  //freeing the current node
    // TODO-DONE Complete this function

    *currNode = NULL;
    *tail = NULL;
}

void delete(LIST **head, LIST **tail, void *data)
{
    if (*head == NULL)
        return;

    if (data == NULL)
        return;

    if ((*head)->data == data)
    {
        LIST *newHead = (*head)->next;
        free((*head)->data);
        free(*head);
        *head = newHead;

        if (*head == NULL)
            *tail = NULL;

        return;
    }

    LIST *prevNode, *currNode;

    prevNode = (*head);
    currNode = (*head)->next;
    while (currNode != NULL) //compares the list from n=1 to end (not n=0)
    {
        LIST *temp = (LIST *) currNode->data;
        PERSON *tPerson = (PERSON *) temp;
        if(strcmp(data,tPerson->name) == 0) { //if the node is found
            prevNode->next = currNode->next; //change the order of the linked list
            free(tPerson); //free the malloc space
            break; //break out of the loop
        }

        else { //increment the nodes
            prevNode = currNode;
            currNode = currNode->next; //move the next pointer
        }

    }
    if (currNode == NULL) { //check that the while loop finished and then check the head node
        prevNode = (*head);
        LIST *temp = (LIST *) prevNode->data;
        PERSON *tPerson = (PERSON *) temp;
        if (strcmp(data, tPerson->name) == 0) { //check if the node was at position n=0
            *head = prevNode->next; //set the head node to the node at n=1
            free(tPerson); //free the malloc space
        }
        else {
                printf("Error could not delete Person. Please check that person is valid input");
        }

    }
    // TODO-DONE Complete this function
}