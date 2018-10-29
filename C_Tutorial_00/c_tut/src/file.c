#include <stdio.h>

int main(void) {
	/* file handles */
	FILE *outputFile=NULL;
	char fileHandle[50];
	FILE *inputFile=NULL;
	/* open files for writing*/

	printf("Please input a file handle: ");
	scanf("%s",fileHandle);
	inputFile = fopen("data.txt","r");
	outputFile = fopen(fileHandle, "w");
	char c;
	while((c = fgetc(inputFile)) != EOF){
		fputc(c,outputFile);
	}

	if(outputFile == NULL)
		return(1);    /* need to do explicit ERROR CHECKING */
	
	/* write some data into the file */
   // fprintf(outputFile, "Hello there");
	
	/* don’t forget to close file handles */
	fclose(outputFile);
	fclose(inputFile);
    return 0;
}
