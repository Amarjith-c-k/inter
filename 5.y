%{
#include<stdio.h>
#include<stdlib.h> %}
%token digit letter %left '+''-''*''/'
%%
exp : exp '+' exp | exp '-' exp
|exp '*' exp
|exp '/' exp |'('exp')'
|digit
|letter;
%%
int yyerror()
{
printf("\n Invalid expression\n"); }
int main() {
exit(1);
printf("\n Enter the expression\n");
printf("Valid Expression\n"); }
int yywrap(){ return 1;
}
