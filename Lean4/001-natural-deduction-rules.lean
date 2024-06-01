-- A, B and C are propositions
variable(A B C: Prop)

-- AND rules

-- introduction
example (a: A) (b: B): A ∧ B := And.intro a b

-- eliminate right
example (c: A ∧ B): A := And.left c
-- eliminate left
example (c: A ∧ B): B := And.right c

-- OR rules
-- function side in the name is the given side, i.e. use intro_left if A is given in A or B
-- and the first argument is the Prop being introduced

--introduction
example (a: A): A ∨ B := Or.intro_left B a
example (b: B): A ∨ B := Or.intro_right A b

--introduction - shorter form
example (a: A): A ∨ B := Or.inl a
example (b: B): A ∨ B := Or.inr b

--elimination
-- if A ∨ B is true and both A and B implies C then C is true
example (d: A ∨ B) (caseA : A → C) (caseB : B → C) : C :=
  Or.elim d caseA caseB

-- example takes no args and return a function that takes B and returns to A ∨ B
example: B → A ∨ B :=
  fun b:B => Or.inr b

example: A → A ∨ B := Or.inl

-- IMPLIES Rules

example (a: A) (f : A → B): B := f a

-- Negation Rule
-- can derive anything from contradiction
example (a: A) (notA: ¬A) : B := absurd a notA

-- get False from contradiction using function application
example (a: A) (notA: ¬A): False := notA a

-- proof of anything from proof of false via elimiation
example (impossible: False): A := False.elim impossible

-- playing around with negations
-- Note: equivalence of ¬A and A → False is built-in the following example are just playing around

example: (A → False) → ¬A :=
  fun h: (A → False) => show ¬A from h

example: (¬A) → (A → False) :=
  fun h:¬A => show A → False from h


-- Exercise

-- prove A → B, B → ¬A ⊢ ¬A

theorem example1 (aTob: A → B) (bToNota: B → ¬A) : ¬A :=
  fun (a:A) =>
  have proofB : B := aTob a
  have proofNotA: ¬A := bToNota proofB
  show False from proofNotA a -- otherway around doesn't work

theorem example2 (aOrNota: A ∨ ¬A) (bToa: B → A) (aToNotb: A → ¬B): ¬B := sorry
