%{
int count = 0;
%}

%%
[aA][a-zA-Z]* { count++; }
%%

int main() {
	yylex();
	printf("Number of words starting with a or A are : %d\n",count);
}
int yywrap(){
	return 1;
}
