
/* A Bison parser, made by GNU Bison 2.4.1.  */

/* Skeleton interface for Bison's Yacc-like parsers in C
   
      Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
   Free Software Foundation, Inc.
   
   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.
   
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.
   
   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */


/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     bib_calcul = 258,
     mc_if = 259,
     mc_sup = 260,
     mc_inf = 261,
     deuxP = 262,
     mc_for = 263,
     mc_while = 264,
     mc_affect = 265,
     mc_add = 266,
     mc_sub = 267,
     mc_mul = 268,
     str = 269,
     bib_boucle = 270,
     bib_tab = 271,
     mc_include = 272,
     erreur = 273,
     pv = 274,
     mc_const = 275,
     idf = 276,
     vergule = 277,
     croch_ouv = 278,
     par_ouv = 279,
     par_fer = 280,
     mc_read = 281,
     mc_print = 282,
     g = 283,
     slash = 284,
     num = 285,
     croch_fer = 286,
     mc_prgrm = 287,
     acc_ouv = 288,
     acc_fer = 289,
     mc_int = 290,
     mc_char = 291,
     mc_double = 292,
     mc_string = 293
   };
#endif



#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif

extern YYSTYPE yylval;


