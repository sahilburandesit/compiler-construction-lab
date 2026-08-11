%{

#include <stdio.h>
#include <stdlib.h>

int yylex();
int yyerror(char *s);
%}

%token NUM

%%
E:E'+'T|T
T:T'*'F|F
F:'('E')'|NUM;
%%
int yyerror(char * s){
	printf("Invalid Expressions\n");
	exit(0);
}

int main(){
	printf("enter expression: ");
	yyparse();
	printf("valid Expression");
	return 0;
}
