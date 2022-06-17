%{
#include<stdio.h>
%}
%%
"auto"|"break"|"case"|"char"|"const"|"continue"|"default"|"do"|"double"|"else"|"enum"|"extern"|"float"|"for"|"goto"|"if"|"int"|"long"|"register"|"return"|"short"|"signed"|"sizeof"|"static"|"struct"|"switch"|"typedef"|"union"|"unsigned"|"void"|"volatile"|"while" fprintf(yyout,"this is a keyword");
^[a-z A-Z _][a-z A-z 0-9 _]* fprintf(yyout,"Valid Identifier");
^[^a-z A-Z _] fprintf(yyout,"not a valid identifier");
. ;
%%
int yywrap() {return 1;}
int main()
{
extern FILE *yyin,*yyout;
yyin=fopen("input.txt","r");
yyout=fopen("output.txt","w");
yylex();
return 0;
}
