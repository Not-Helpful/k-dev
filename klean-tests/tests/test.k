module TEST

imports INT
imports BOOL

syntax Exp ::= Int | a() | b() | c()  
> left: Exp "+" Exp [seqstrict]

configuration <k> $PGM:Exp </k>
<sum> 0 </sum>


rule <k> a() => 0 ...</k>
<sum> _ => 1 </sum>
rule <k> b() => 0 ...</k>
<sum> _ => 2 </sum>



rule <k> I1:Int + I2:Int => I1 +Int I2 ...</k>

syntax Bool ::= isKResult(K) [symbol(isKResult), function]
rule isKResult(_:Int) => true
rule isKResult(_) => false [owise]

endmodule