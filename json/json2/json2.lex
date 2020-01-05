unescaped [ !#-\[\]-􏿿]
escaped \\["\\/bfnrt]
escapedunicode \\u[0-9a-fA-F]{4}
minus -
plus \+
dot \.
napiere [eE]
digit19 [1-9]
digit [0-9]
%%
\{ { return L_CBR; }
\} { return R_CBR; }
\[ { return L_SBR; }
\] { return R_SBR; }
: { return COLON; }
, { return COMMA; }
\"({unescaped}|{escaped}|{escapedunicode})*\" { return STRING; }
{minus}?(0|{digit19}{digit}*)({dot}{digit}+)?({napiere}({minus}|{plus})?{digit}+)? { return NUM; }
true { return V_TRUE; }
false { return V_FALSE; }
null { return V_NULL; }
[ \t\n\r]+ { return WHITE; }
