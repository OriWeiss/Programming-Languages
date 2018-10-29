/*
 * Author: Ori Weiss
 * Comp 232
 * 10/26/2018
 *
 */

#include "calc.h"
#include <math.h>
void yyerror(char *s) {
   printf("\nERROR: %s\n", s);
   // note stderr that normally defaults to stdout, but can be redirected: ./src 2> src.log
   // CLion will display stderr in a different color from stdin and stdout
}

/*
 * The function to resolve a name of a function; i.e., to translate it to an int equivalent (if possible)
 * that can be used conveniently in the src() function.
 */
int resolveFunc(char *func) {
   // all functions are exactly as they appear in math.h; use man to get details
   char *funcs[] = {"neg", "abs", "exp", "sqrt", "add", "sub", "mult", "div", "remainder", "log", "pow", "max", "min",
                    ""};

   int i = 0;
   while (funcs[i][0] != '\0') {
      if (!strcmp(funcs[i], func))
         return i;

      i++;
   }
   yyerror("invalid function"); // paranoic -- should never happen
   return -1;
}

/*
 * The function to calculate simple math operation.
 *
 * The values of op1 and op2 may be omitted for functions that take one or no parameters.
 */
double calc(char *func, double op1, double op2) {
// TODO: implement the function, so it returns correct values for each set of parameters
   switch(resolveFunc(func)){
       case 0: //neg
           return op1 * -1;
       case 1: //abs
           if (op1 < 0){
               return op1*-1;
           }
           else{
               return op1;
           }
       case 2: //e to the x
           return exp(op1);
       case 3: //sqrt
            return sqrt(op1);
       case 4: //add
            return op1+op2;
       case 5: //sub
           return op1-op2;
       case 6: //mult
           return op1 * op2;
       case 7://div
            return op1/op2;
       case 8: //rem
           return remainder(op1,op2);
       case 9: //log
           return log10(op1);
       case 10: //pow
           return pow(op1,op2);
       case 11: //max
            return fmax(op1,op2);
       case 12: //min
            return fmin(op1,op2);
   }
    return 0.0;

}  
