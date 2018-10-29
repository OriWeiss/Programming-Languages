/*
 * Author: Ori Weiss
 * Date 10/13/2018
 * comp232
 */
#include "eval.h"

int main(void)
{
    freopen("input.txt", "r", stdin);
    NODE *fullProgram = program();
    printf("Done parsing...\n");
    printProgram(fullProgram);

    exit(0);
}