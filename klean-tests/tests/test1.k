module TEST1

syntax Boolean ::= "true" | "false"
syntax Boolean ::= "not" Boolean [function]
syntax Boolean ::= Boolean "&&" Boolean [function]
syntax Boolean ::= "if" "(" Boolean ")" Boolean "else" Boolean [function]


rule true && true => true
rule false && _P => false 
rule _P && false => false

rule if (false) true else false => false
rule if (true) true else false => true

rule not true => false
rule not true => false
rule not false => true


endmodule







