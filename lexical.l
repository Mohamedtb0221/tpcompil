%{
#include "syntax.tab.h"
int nb_lignes=1;
int nb_err_lex=0;
int nb_col=0;
%}

IDF [A-Z][a-zA-Z0-9_]*
STR [a-zA-Z0-9_]*
NUM [1-9][0-9]*|0
char [a-zA-Z]


%%
# return mc_include;
calcul return bib_calcul;
boucle return bib_boucle;
tab return bib_tab;
; return pv;
int return mc_int;
double return mc_double;
char return mc_char;
string return mc_string;
const return mc_const;
\[ return croch_ouv;
\] return croch_fer;
\{ return acc_ouv;
\} return acc_fer;
\( return par_ouv;
\) return par_fer;
, return vergule;
\" return g;
\' return g1;
{IDF} {if(yyleng<=12)return idf;}
{NUM} {return num;}
{char} {return char;}
program return mc_prgrm;
\= return mc_affect;
\+ return mc_add;
\- return mc_sub;
\* return mc_mul;
\> return mc_sup;
\< return mc_inf;

[ \t] nb_col++;
\/ return slash;
read return mc_read;
print return mc_print;
for return mc_for;
while return mc_while;
if return mc_if;
\: return deuxP;
[\n] {nb_lignes++;}
{STR} return str;

. {nb_err_lex++;printf("erreur lexical a la ligne %d generee par %s \n",nb_lignes,yytext);return erreur;}

%%

