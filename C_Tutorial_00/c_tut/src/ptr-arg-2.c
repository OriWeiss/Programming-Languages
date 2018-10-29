#include <stdio.h>

void swapIntegers(int *n1, int *n2) { /* passed and returned by using values of pointers */
    int temp;
    temp = *n1;
    *n1 = *n2;
    *n2 = temp;
}

void swapStrings(void **str1, void **str2){
    char *temp = *str2;
    *str2 = *str1;
    *str1 = temp;
}

int main(void) {
    /*
    int num1 = 5, num2 = 10;

    printf("Before the swap: num1 = %d and num2 = %d\n", num1, num2);
    swapIntegers(&num1, &num2);
    printf("After the swap: num1 = %d and num2 = %d\n", num1, num2);
    */
    char *sr1="I am string 1";
    char *sr2 = "I am string 2";
    printf("Before the swap: sr1 = %s and sr2 = %s\n", sr1, sr2);
    swapStrings((void **)&sr1,(void **)&sr2);
    printf("After the swap: sr1 = %s \n",sr1);
    printf("After the swap: sr2 = %s \n" , sr2);
    return 0;
}

