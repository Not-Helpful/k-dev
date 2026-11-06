module TINY
    syntax Exp ::= "zero" [symbol(zero)]
                 | "succ" "(" Exp ")" [symbol(succ)]

    rule succ(zero) => zero
endmodule