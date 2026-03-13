import Mathlib.Tactic

variable (P Q R S : Prop)
open Polynomial

section Intro
open Classical Set

example (n : ℕ) (hn : n ≤ 3) : n ≤ 5 := by
  apply le_trans
  · exact hn
  · norm_num

example (X Y : Type*) [TopologicalSpace X] [TopologicalSpace Y] (y : Y) :
    Continuous (fun x : X ↦ y) := by
  rw [continuous_def]
  intro u hU
  rw [preimage_const]
  split_ifs
  · exact isOpen_univ
  · exact isOpen_empty

end Intro
-- `⌘`

/- # exact, intro, apply, rfl-/

-- Use of the `exact` tactic

example (hP : P) : P := by
  exact hP

-- Use of the `apply` tactic

example (h : P → Q) (hP : P) : Q := by
  apply h
  apply hP

-- Use of the `intro` tactic

example : P → P := by
  intro hP
  exact hP

-- Use `\.` to write `·`

example : (P → Q → R) → ((P → Q) → (P → R)) := by
  intros hPQR hPQ hP
  apply hPQR
  · exact hP
  · apply hPQ
    exact hP


-- Use of the `rfl` tactic

example : P = P := by
  rfl


example : 3 = 2 + 1 := by
  rfl

-- `⌘`

-- # `rw`

-- `P` is not a proposition: it is a True/False statement for terms in `α`.

example (α : Type) (P : α → Prop) (x y : α) (hx : P x) (h : y = x) : P y := by
  rw [← h] at hx
  exact hx


example (α : Type) (P Q : α → Prop) (x : α) (hP : P x) (h : P = Q) : Q x := by
  rw [h] at hP
  exact hP


example (α : Type) (P Q : α → Prop) (x : α) (hP : P x) (h : P = Q) : Q x := by
  rw [h] at hP
  exact hP

-- `⌘`

/- # Conjunction / And
  Use `\and` to write `∧` -/


example : P → Q → P ∧ Q := by
  intros hP hQ
  constructor
  · exact hP
  · exact hQ

example : P ∧ Q → P := by
  intro hPQ
  exact hPQ.left

/-  # Disjunction / Or
  Use `\or` to write `∨` -/


example : P → P ∨ Q := by
  intro hP
  left
  exact hP

/- Symmetry of `∨`, and use of `assumption`  -/
example : P ∨ Q → Q ∨ P := by
  intro hPQ
  cases hPQ
  · right
    assumption
  · left
    assumption


/- The result of `cases` can be given explicit names, by using `rcases ? with ?1 | ?h2 `-/
example : P ∨ Q → (P → R) → (Q → R) → R := by
  intros hPQ hPR hQR
  cases hPQ
  · apply hPR
    assumption
  · apply hQR
    assumption

-- `⌘`

/- Use of the `by_cases` tactic. -/
example : R ∨ ¬ R := by
  by_cases h : R
  · left
    exact h
  · right
    exact h

-- `⌘`

/- # Types -/

#check 2
#check ℕ
#check (2 : ℤ)
#check 2 < 3
#check (∀ n : ℕ, ∀ x y z : ℤ, 2 < n → x ^ n + y ^ n = z ^ n → x*y*z = 0)
#check Real.sin
#check (Real.sin : ℝ → ℝ)


example : (1 : ℕ) = (1 : ℝ) := by
  sorry


example : (1 : ℕ) = (1 : ℚ) := by
  rfl


example : (1 : ℚ) = (1 : ℚ[X]):= by
  sorry

-- `⌘`

/- ## Prop types -/

#check 37 < 1
#check True
#check False
#check trivial
#check true
#check false
#check Bool

example : True := by
  exact trivial

example : true = True := by
  exact Bool.coe_true

example : true = false → False := by
  contrapose
  intros h1 h2
  rw [Bool.true_eq_false] at h2
  exact h2

-- `⌘`

/- # Exercises -/

-- Modus Ponens: if `P → Q` then `Q` can be deduced from `P`
-- **Exercise**
example : P → (P → Q) → Q := by
  sorry


-- Transitivity of `→`
-- **Exercise**
example : (P → Q) → (Q → R) → P → R := by
  sorry

-- **Exercise**
example (hP : P) : Q → (hP = hP) := by
  sorry

-- **Exercise**
example (hP : P) : R → P → Q → (hP = hP) := by
  sorry

-- **Exercise**
example (n : ℕ) (h : n = 5) : n = 2 + 3 := by
  sorry

-- **Exercise**
example (n m : ℕ) (hn : n = 5) (hm : 11 = m) : m = n + 6 := by
  sorry

-- **Exercise**
example (α : Type) (a b c : α) (H : (a = b) → P ) (h1 : c = a) (h2 : b = c) : P := by
  sorry

-- **Exercise**
example : P ∧ Q → Q := by
  sorry

-- **Exercise**
example : (P → Q → R) → P ∧ Q → R := by
  sorry

-- `∧` is symmetric
-- **Exercise**
example : P ∧ Q → Q ∧ P := by
  sorry


-- `∧` is transitive
-- **Exercise**
example : P ∧ Q → Q ∧ R → P ∧ R := by
  sorry

-- **Exercise**
example : False → P ∨ False := by
  sorry

-- **Exercise**
example : (P ∧ Q → R) → P → Q → R := by
  sorry

-- **Exercise**
example : Q → P ∨ Q := by
  sorry

-- **Exercise**
example : (P → R) → (Q → S) → P ∨ Q → R ∨ S := by
  sorry


-- **Exercise**
example : (P → Q) → P ∨ R → Q ∨ R := by
  sorry
