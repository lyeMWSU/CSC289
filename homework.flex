/*
This comment will be copied into the generated Java class
*/

%%
%class Homework1
%line
%column
%char
%unicode
%standalone

Ip		= ({octo}\.){3}{octo}
Email 	= {letter}({letter}|[-0-9999])*@{letter}*.{letter}*
letter 	= [a-zA-Z]
octo	= (1?([0-9])?([0-9]))|(25[0-5])|(2[0-4][0-9])


%%
/*If a string matches both reserved and identifier, the pattern listed first has higher priority.*/
{Ip}    	{System.out.printf("Valid: %s\n", yytext(), yyline, yycolumn);}
{Email}  	{System.out.printf("Valid: %s\n", yytext(), yyline, yycolumn);}
