/* JFlex example:  RegEx Tester */
package CSC289;

%%
/*Options and Declarations*/
%class RegExTester
%unicode
%char
%line
%column
%standalone

/*Macro Definitions - Named RegEx*/
//EndWith_abb = (a|b)*abb
//WhiteSpace = [\t\n ]+
digit = [0-9]
nat   = {digit}+
signedNat = [+-]?{nat}
notdigit = [^0-9]+
notb = [ac]
example = ({notb}|b{notb})*(b?)

nota = b|c
example2 = ({nota}*a{nota}*a)*{nota}*
numeric = [+-]?{nat}([.]{nat})?(E[+-]?{nat})?

myletter = [A-z]
uppercaseletter = [A-Z]
lowercaseletter = [a-z]
letter = {uppercaseletter}|{lowercaseletter}
myfalsyid = {myletter}+
test  = {letter}{letter}*
test2 = (a|c)*|(a|c)*b(a|c)*

%%
/*	Lexical Rules 	*/
//{EndWith_abb}   {System.out.printf("Found [%s] at line %d, column %d\n", yytext(), yyline, yycolumn);}
//{WhiteSpace}    {/*Do nothing here*/}
//a|bc*           {System.out.printf("Found [%s] at line %d, column %d\n", yytext(), yyline, yycolumn);}
{example}     {System.out.printf("Found [%s] at line %d, column %d\n", yytext(), yyline, yycolumn);}
.               {/*Do nothing here*/}
