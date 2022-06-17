%{ 
 #include<stdio.h>
 int n=0;
%}
%%
"auto"|"break"|"case"|"char"|"const"|"continue"|"default"|"do"|"double"|"else"|"enum"|"extern"|
"float"|"for"|"goto"|"if"|"int"|"long"|"register"|"return"|"short"|"signed"|"sizeof"|
"static"|"struct"|"switch"|"typedef"|"union"|"unsigned"|
"void"|"volatile"|"while"|"{n++; printf("\t keywords: %s",yytext);}
[a-zA-Z_][a-zA-Z0-9_]* {n++; printf("\t Identifier: %s",yytext);}
"<="|"=="|"="|"++"|"-"|"*"|"+" {n++; printf("\t operator: %s",yytext);}
"("|")"|"{"|"}"|","|";" {n++; printf("\t Seperators: %s",yytext);}
[0-9]*"."[0-9]+ {n++; printf("\t Float %s",yytext);}
[0-9]+ {n++; printf("\t Integer: %s",yytext);}
. ;
%%
int yywrap(){return 1;}
int main()
{
yylex();
printf("\nTotal number of token = %d \n",n);
return 0;
}

