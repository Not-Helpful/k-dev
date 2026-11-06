module TINY
syntax Exp ::=
"zero" [symbol(zero)]
| "one" [symbol(one)]
| "succ" "(" Exp ")" [symbol(succ)]
| Exp "+" Exp
syntax Exp2 ::=
"three" [symbol(three)]



rule succ(zero) => zero
rule zero + zero => one
rule three => one
endmodule