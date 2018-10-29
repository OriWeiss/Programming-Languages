#include <stdio.h>

#define DANGER_LEVEL 5    /* C Preprocessor -
			- substitution on appearance */

/* like Java ‘final’ */
int main(void) {
    char level;

    /* if-then-else as in Java */

    /*Lif (level <= DANGER_LEVEL) replaced by 5
        printf("Low on gas!\n");
    else
        printf("Good driver !\n");

    return 0;
     */
    printf("Please enter the gas level ");
    scanf("%c", &level );
    switch(level){
        case'e':
            printf("Low on gas");
            break;
        case'h':
            printf("Low on gas");
            break;
        case'f':
            printf("Gas half full");
            break;
        default:
            printf("Not a valid entry");
            break;
    }
    return 0;
}
