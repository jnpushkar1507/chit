%{
#include<stdio.h>
%}
%S A
%%
<INITIAL>0 BEGIN INITIAL;
<INITIAL>1 BEGIN A;
<INITIAL>\n {fprintf(yyout,"Not Accepted\n");}
<A>0 BEGIN INITIAL;
<A>1 BEGIN A;
<A>\n {fprintf(yyout,"Accepted\n");}
%%
int yywrap()
{
return 1;
}
int main()
{
yyin=fopen("input.txt","r");
yyout=fopen("output.txt","w");
yylex();
return 0;
}

