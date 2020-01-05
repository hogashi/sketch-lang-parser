#include <stdio.h>

extern char *yytext;

#include "y.tab.c";
#include "lex.yy.c";

int main(void) {
  printf("running...\n");
  yyparse();
  return 0;
}
