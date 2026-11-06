import Tiny.Func

inductive Rewrites : SortGeneratedTopCell → SortGeneratedTopCell → Prop where
  | tran {s1 s2 s3 : SortGeneratedTopCell} (t1 : Rewrites s1 s2) (t2 : Rewrites s2 s3) : Rewrites s1 s3
  | _0946dc9 {_DotVar0 : SortGeneratedCounterCell} {_DotVar1 : SortK} : Rewrites { k := { val := SortK.kseq ((@inj SortExp SortKItem) (SortExp.«_+__TINY_Exp_Exp_Exp» SortExp.zero SortExp.zero)) _DotVar1 }, generatedCounter := _DotVar0 } { k := { val := SortK.kseq ((@inj SortExp SortKItem) SortExp.one) _DotVar1 }, generatedCounter := _DotVar0 }
  | _56bb13a {_DotVar0 : SortGeneratedCounterCell} {_DotVar1 : SortK} : Rewrites { k := { val := SortK.kseq ((@inj SortExp SortKItem) (SortExp.succ SortExp.zero)) _DotVar1 }, generatedCounter := _DotVar0 } { k := { val := SortK.kseq ((@inj SortExp SortKItem) SortExp.zero) _DotVar1 }, generatedCounter := _DotVar0 }
  | _fb7c887 {_DotVar0 : SortGeneratedCounterCell} {_DotVar1 : SortK} : Rewrites { k := { val := SortK.kseq ((@inj SortExp2 SortKItem) SortExp2.three) _DotVar1 }, generatedCounter := _DotVar0 } { k := { val := SortK.kseq ((@inj SortExp SortKItem) SortExp.one) _DotVar1 }, generatedCounter := _DotVar0 }