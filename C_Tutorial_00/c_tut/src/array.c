#include <stdio.h>

#define MAX_NUM_OF_CELLS 128

int main(void) {
    float number[MAX_NUM_OF_CELLS];
    /*
    int sum = 0;

    for (int index = 0; index < MAX_NUM_OF_CELLS; index++) {
        number[index] = index;
    }
     now, number[index]=index; //will cause error: why ?

    for (int index = 0; index < MAX_NUM_OF_CELLS; index = index + 1) {
        sum += number[index]; //sum array elements
    }

    printf("sum = %d\n", sum);

    return 0;
*/
    int size = 0;
    printf("Please provide a desired number of doubles ");
    scanf("%d",&size);
    if (size > MAX_NUM_OF_CELLS){
        printf("Number must be less than %d",MAX_NUM_OF_CELLS);
    }
    else{
        printf("Please input your doubles \n");
        for(int a = 0; a < size; a = a + 1 ) {
            scanf("%f", &number[a]);
        }
        for(int a = 0; a < size; a = a + 1 ) {
            printf("%.3f ", number[a]);
        }
    }

}
