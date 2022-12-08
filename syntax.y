%{
extern nb_lignes;
int nb_err_syn=0;
extern nb_err_lex;
extern yytext;

%}
%token  char bib_calcul mc_if mc_sup mc_inf deuxP mc_for mc_while mc_affect mc_add mc_sub mc_mul str bib_boucle bib_tab mc_include erreur pv mc_const idf vergule
croch_ouv par_ouv par_fer mc_read mc_print g g1 slash num croch_fer mc_prgrm acc_ouv acc_fer mc_int mc_char mc_double mc_string

%%
S:BIB PROG
BIB: mc_include library cmntr BIB|;
library:bib_boucle|bib_calcul|bib_tab;
PROG:mc_prgrm idf acc_ouv cmntr BODY acc_fer cmntr;
BODY: declare BODY|op_arithmetique BODY|READ BODY|PRINT BODY|boucle_for BODY|boucle_while BODY|IF BODY|;
READ: mc_read par_ouv idf tab par_fer pv cmntr;
PRINT: mc_print par_ouv contenu par_fer pv cmntr;
contenu: idf tab|g str g;
op_arithmetique: idf tab mc_affect op2 operation2 pv cmntr;
op:mc_add|mc_affect|mc_sub|slash|mc_mul;
operation2: op op2 operation2|;
op2: idf|num|g str g|g1 char g1;
declare:TYPE CONST idf tab others pv cmntr;
TYPE: mc_int|mc_char|mc_double|mc_string;
others: vergule idf tab others|;
CONST: mc_const|;
tab: croch_ouv num croch_fer|;
boucle_for: mc_for par_ouv idf mc_affect val deuxP val deuxP val par_fer acc_ouv bloc acc_fer cmntr;
val: idf|num;
bloc:op_arithmetique bloc|READ bloc|PRINT bloc|;
boucle_while: mc_while par_ouv cond par_fer acc_ouv bloc acc_fer cmntr;
cond: idf op_logique op2;
op_logique:mc_affect|mc_sup|mc_inf;
IF: mc_if par_ouv cond par_fer acc_ouv bloc acc_fer cmntr;
cmntr:slash slash str slash slash cmntr |;


%%
yyerror()
{
nb_err_syn++;
printf("erreur syntaxique a la ligne %d  generee par '%s'  \n",nb_lignes,yytext);
return 1;
}
int main()
{
yyparse();
if (nb_err_syn==0 && nb_err_lex==0)
printf("Code correcte");
else
printf("Code incorrecte");
return 0;
}
