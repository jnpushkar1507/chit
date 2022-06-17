%{
#include<stdio.h>
int kc=0;
int ic=0;
int oc=0;
int sc=0;
int fc=0;
int nc=0;
%}
%%
"auto"|"break"|"case"|"char"|"const"|"continue"|"default"|"do"|"double"|"else"|"enum"|"extern"|
"float"|"for"|"goto"|"if"|"int"|"long"|"register"|"return"|"short"|"signed"|"sizeof"|
"static"|"struct"|"switch"|"typedef"|"union"|"unsigned"|
"void"|"volatile"|"while"|"{kc++;}
[a-zA-Z_][a-zA-Z0-9_]* {ic++;}
"<="|"=="|"="|"++"|"-"|"*"|"+" {oc++;}
[(){}|, ;] {sc++;}
[0-9]*"."[0-9]+ {fc++;}  
[0-9]+ {nc++;}                   	 
. ;
%%
int yywrap(){return 1;}   
int main()
{ 
 extern FILE *yyin,*yyout;
 yyin=fopen("input.txt","r");
 yyout=fopen("output.txt","w"); 
 yylex();
 {fprintf(yyout,"\n total no. of Keywords = %d\n",kc);}
 {fprintf(yyout,"\n total no. of Identifiers = %d\n",ic);}
 {fprintf(yyout,"\n total no. of Operators = %d\n",oc);} 
 {fprintf(yyout,"\n total no. of Seperators = %d\n",sc);} 
 {fprintf(yyout,"\n total no. of Integer = %d\n",nc);} 
 {fprintf(yyout,"\n total no. of Float = %d\n",fc);} 
}
