
%{ #include<math.h> #include"y.tab.h" extern int yylval;
%}
%%
[0-9]+ {yylval=atof(yytext); return num;} sqrt {return SQRT;}
[\t];
[\n] return 0;
. return yytext[0];
%%
int yywrap()
{
return 1;
}
