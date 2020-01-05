%token L_CBR;
%token R_CBR;
%token L_SBR;
%token R_SBR;
%token COLON;
%token COMMA;
%token STRING;
%token NUM;
%token V_TRUE;
%token V_FALSE;
%token V_NULL;
%token WHITE;
%token CHAR;
%%
text :
  WHITE value WHITE
  ;
value :
  V_FALSE |
  V_NULL |
  V_TRUE |
  object |
  array |
  NUM |
  STRING
  ;
object :
  L_CBR R_CBR |
  L_CBR members R_CBR
  ;
members :
  member |
  members COMMA member
  ;
member :
  STRING COLON value
  ;
array :
  L_SBR R_SBR |
  L_SBR values R_SBR
  ;
values :
  value |
  values COMMA value
  ;
