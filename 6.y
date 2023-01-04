%{
#include<stdio.h>
#include<stdlib.h> %}
%token digit letter
%%
var : letter |var digit
|var letter; %%
int yyerror() {
printf("\n Invalid identifier \n");
exit(1); }
int main() {
printf("\nEnter the identifier\n"); yyparse();
printf("Valid identifier\n"); return 0;
}
int yywrap(){
return 1; }
