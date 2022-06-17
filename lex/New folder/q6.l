%{ 
#include<stdio.h>
int Wc=0, WSc=0, Cc=0;
%} 
%% 
" " {Wc++;WSc++;}
[^\n\t] {Cc++;}
[\t\n] {Wc++;}

%% 
int yywrap(){ return 1;}
int main() 
{
extern FILE *yyin,*yyout;
yyin=fopen("input.txt","r");
yyout=fopen("output.txt","w"); 
yylex();
{fprintf(yyout,"\n total no. of Words = %d\n",Wc);}
{fprintf(yyout,"\n total no. of White Spaces = %d\n",WSc);}
{fprintf(yyout,"\n total no. of Characters = %d\n",Cc);} 
return 0; 
}
