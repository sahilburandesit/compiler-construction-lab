%{
#include <stdio.h>
%}

%%
.*COM[ \t]*$    { printf("Ends with COM\n"); }
.*              { printf("Does not end with COM\n"); }
%%

int yywrap() {
    return 1;
}

int main() {
    yylex();
    return 0;
}
