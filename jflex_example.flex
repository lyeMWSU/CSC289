/*
This comment will be copied into the generated Java class
*/

%%
%class YourClassName
%line
%column
%char
%unicode
%standalone

reserved = if|else|int|return|void|while 
letter = [a-zA-Z]
digit = [0-9]
identifier = {letter}({letter}|{digit})[@]{letter}({letter}|{digit}*

%%
/*If a string matches both reserved and identifier, the pattern listed first has higher priority.*/
{reserved}    {System.out.printf("%s on line %d at column %d\n", yytext(), yyline, yycolumn);}
{identifier}  {System.out.printf("%s on line %d at column %d\n", yytext(), yyline, yycolumn);}
