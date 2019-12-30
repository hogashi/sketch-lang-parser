notbsl [^"\\]
bslitself \\\\
escapenotq \\[^"\\]
escapeq [^\\]?\\\"
%%
\{ { printf("L_CBR\n"); }
\} { printf("R_CBR\n"); }
\[ { printf("L_SBR\n"); }
\] { printf("R_SBR\n"); }
: { printf("COLON\n"); }
, { printf("COMMA\n"); }
\"({notbsl}|{bslitself}|{escapenotq}|{escapeq}|{bslitself}{escapeq})*\" { printf("STRING\n"); }
[0-9]+ { printf("NUM\n"); }
true { printf("V_TRUE\n"); }
false { printf("V_FALSE\n"); }
null { printf("V_NULL\n"); }
" " { printf("WHITE\n"); }
. { printf("CHAR\n"); }
