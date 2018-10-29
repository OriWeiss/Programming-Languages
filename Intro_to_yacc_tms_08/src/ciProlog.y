/*
 * Author: Ori Weiss
 * Comp 232
 * 10/26/2018
 */

/*

 logexpr ::= 
   proposition
 | assert ( proposition )
 | retract ( proposition )
 | ( logexpr )
 | NOT logexpr
 | logexpr AND logexpr
 | logexpr OR logexpr

 letter ::= [a-zA-Z]
 proposition ::= '{letter}({letter}|\ )*'

 */

%{
#include "ciProlog.h"
%}

%union
{
   bool bval;
   char *sval;
};

%token <sval> PROPOSITION
%token ASSERT RETRACT NOT AND OR LPAREN RPAREN EOL HALT

%type <bval> logexpr

%%

program: logexpr EOL {
        //fprintf(stderr, "yacc: program ::= logexpr EOL\n");
        printf("=> %s\n", bool2str($1));
}
;

logexpr:
    HALT {
        //fprintf(stderr, "yacc: logexpr ::= HALT\n");
        exit(0);
    }
    /* TODO complete the definition of the grammar */
    | PROPOSITION{
        //fprintf(stderr, "yacc: logexpr ::= proposition\n");
        $$ = eval($1);
    }
    | ASSERT LPAREN PROPOSITION RPAREN{
        //fprintf(stderr, "yacc: logexpr ::= ASSERT\n");
        $$ = assert($3);
        //fprintf(stderr, "src returns %d \n", $$);
    }
    | RETRACT LPAREN PROPOSITION RPAREN{
        //fprintf(stderr, "yacc: logexpr ::= RETRACT\n");
        $$ = retract($3);
    }
    | LPAREN logexpr RPAREN{
        //fprintf(stderr, "yacc: logexpr ::= logexprLoop\n");
        $$ = $2;
    }
    | NOT logexpr{
        //fprintf(stderr, "yacc: logexpr ::= NOT\n");
        $$ = not($2);
    }
    | logexpr AND logexpr{
        //fprintf(stderr, "yacc: logexpr ::= AND\n");
        $$ = and($1,$3);
    }
    | logexpr OR logexpr{
        //fprintf(stderr, "yacc: logexpr ::= OR\n");
        $$ = or($1,$3);
    }

;


%%

