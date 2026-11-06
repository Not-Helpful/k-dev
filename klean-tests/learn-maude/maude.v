Inductive modPNat : Type :=
| Zero
| Succ (n : modPNat).

Fixpoint modPNatplus (n : modPNat) (m : modPNat): modPNat :=
  match n with
  | Zero => m
  | (Succ x) => modPNatplus x (Succ m)
  end.

