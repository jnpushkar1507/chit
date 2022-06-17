%{
#include<stdio.h>
int lc=0,sc=0,tc=0,chc=0;
%}
%%
\n lc++;
[ ] sc++;
\t tc++;
. chc++;
%%

int yywrap(void) {}

int main()
{
yylex();
printf("\nNumber of lines are: %d",lc);
printf("\nNumber of spaces are: %d",sc);
printf("\nNumber of tabs are: %d",tc);
printf("\nNumber of rest characters are: %d\n",chc);
return 0;
}

