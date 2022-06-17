%{
#include<stdio.h>
int c=0;
%}
%%
^[a-z A-Z _][a-z A-Z 0-9 _]* {c++;} printf("Valid Identifier");
.* printf("Invalid Identifier");
%%
int yywrap() { return 1;}
int main(){
yylex();
printf("Total valid identifiers=%d\n",c);
return 0;
}
