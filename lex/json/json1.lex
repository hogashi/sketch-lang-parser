notbsl [^"\\]
bslitself \\\\
escapenotq \\[^"\\]
escapeq [^\\]?\\\"
minus -
plus \+
dot \.
napiere [eE]
digit19 [1-9]
digit [0-9]
%%
\{ { printf("L_CBR\n"); }
\} { printf("R_CBR\n"); }
\[ { printf("L_SBR\n"); }
\] { printf("R_SBR\n"); }
: { printf("COLON\n"); }
, { printf("COMMA\n"); }
\"({notbsl}|{bslitself}|{escapenotq}|{escapeq}|{bslitself}{escapeq})*\" { printf("STRING\n"); }
{minus}?{digit19}{digit}*({dot}{digit}+)?({napiere}({minus}|{plus})?{digit}+)? { printf("NUM\n"); }
true { printf("V_TRUE\n"); }
false { printf("V_FALSE\n"); }
null { printf("V_NULL\n"); }
" " { printf("WHITE\n"); }
. { printf("CHAR\n"); }
