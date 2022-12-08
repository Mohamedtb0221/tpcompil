flex lexical.l
bison -d syntax.y
gcc lex.yy.c syntax.tab.c -lfl -ly -o test.exe
test.exe<test.txt