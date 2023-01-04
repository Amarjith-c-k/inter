%{ #include<stdio.h> #include<math.h> int flag=0;
%}
%token num %token SQRT %left'+''-' %left'*''/' %left'('')'
%%
ArithmeticExpression:exp {printf("\nAnswer=%d\n",$$); return 0;
};
exp:exp'+'exp{$$=$1+$3;}
|exp'-'exp{$$=$1-$3;} |exp'*'exp{$$=$1*$3;} |exp'/'exp{$$=$1/$3;} |SQRT'('exp')' {$$=sqrt($3);} |num {$$=$1;}
;
%%
void main() {
}
printf("\n Enter expression:"); yyparse();
if(flag==0)
printf("valid");
void yyerror() { printf("ERROR!"); flag=1;
}
/*char *s; {
printf("ERROR"); }*/
