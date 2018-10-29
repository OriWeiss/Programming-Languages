#include <stdio.h>

int main(void) {
    int nStudents = 0; /* Initialization, required */
    int faculty = 0;
    float ratio = 0;
    printf("How many students does CSUCI have ?:");
    scanf("%d", &nStudents);  /* Read input */
    printf("CSUCI has %d students.\n", nStudents);
    printf("How many teachers does CSUCI have ?:");
    scanf("%d", &faculty);
    printf("CSUCI has %d teachers.\n", faculty);
    ratio = (float)nStudents/faculty;
    printf("Ratio of faculty to students is %.1f", ratio);
    return 0;
}
