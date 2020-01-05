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
begin_array :
  WHITE L_SBR WHITE
  ;
end_array :
  WHITE R_SBR WHITE
  ;
begin_object :
  WHITE L_CBR WHITE
  ;
end_object :
  WHITE R_CBR WHITE
  ;
name_separator :
  WHITE COLON WHITE
  ;
value_separator :
  WHITE COMMA WHITE
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
  begin_object end_object |
  begin_object members end_object
  ;
members :
  member |
  members value_separator member
  ;
member :
  STRING name_separator value
  ;
array :
  begin_array end_array |
  begin_array values end_array
  ;
values :
  value |
  values value_separator value
  ;
