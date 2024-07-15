import Mathlib

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators
noncomputable section

theorem Rudin_exercise_1_1a
  (x : ℝ) (y : ℚ) :
  ( Irrational x ) -> Irrational ( x + y ) :=
sorry

theorem Rudin_exercise_1_1b
(x : ℝ)
(y : ℚ)
(h : y ≠ 0)
: ( Irrational x ) -> Irrational ( x * y ) :=
sorry

theorem Rudin_exercise_1_2 : ¬ ∃ (x : ℚ), ( x ^ 2 = 12 ) :=
sorry

theorem Rudin_exercise_1_4
(α : Type*) [PartialOrder α]
(s : Set α)
(x y : α)
(h₀ : Set.Nonempty s)
(h₁ : x ∈ lowerBounds s)
(h₂ : y ∈ upperBounds s)
: x ≤ y :=
sorry

theorem Rudin_exercise_1_5 (A minus_A : Set ℝ) (hA : A.Nonempty)
  (hA_bdd_below : BddBelow A) (hminus_A : minus_A = {x | -x ∈ A}) :
  Inf A = Sup minus_A :=
sorry

theorem Rudin_exercise_1_8 : ¬ ∃ (r : ℂ → ℂ → Prop), IsLinearOrder ℂ r :=
  sorry

theorem Rudin_exercise_1_11a (z : ℂ) :
  ∃ (r : ℝ) (w : ℂ), abs w = 1 ∧ z = r * w :=
sorry

theorem Rudin_exercise_1_12 (n : ℕ) (f : ℕ → ℂ) :
  abs (∑ i in range n, f i) ≤ ∑ i in range n, abs (f i) :=
sorry

theorem Rudin_exercise_1_13 (x y : ℂ) :
  |(abs x) - (abs y)| ≤ abs (x - y) :=
sorry

theorem Rudin_exercise_1_14
  (z : ℂ) (h : abs z = 1)
  : (abs (1 + z)) ^ 2 + (abs (1 - z)) ^ 2 = 4 :=
sorry

theorem Rudin_exercise_1_16a
  (n : ℕ)
  (d r : ℝ)
  (x y z : EuclideanSpace ℝ (Fin n)) -- R^n
  (h₁ : n ≥ 3)
  (h₂ : ‖x - y‖ = d)
  (h₃ : d > 0)
  (h₄ : r > 0)
  (h₅ : 2 * r > d)
  : Set.Infinite {z : EuclideanSpace ℝ (Fin n) | ‖z - x‖ = r ∧ ‖z - y‖ = r} :=
sorry

theorem Rudin_exercise_1_17
  (n : ℕ)
  (x y : EuclideanSpace ℝ (Fin n)) -- R^n
  : ‖x + y‖^2 + ‖x - y‖^2 = 2*‖x‖^2 + 2*‖y‖^2 :=
sorry

theorem Rudin_exercise_1_18a
  (n : ℕ)
  (h : n > 1)
  (x : EuclideanSpace ℝ (Fin n)) -- R^n
  : ∃ (y : EuclideanSpace ℝ (Fin n)), y ≠ 0 ∧ (inner x y) = (0 : ℝ) :=
sorry

theorem Rudin_exercise_1_18b
  : ¬ ∀ (x : ℝ), ∃ (y : ℝ), y ≠ 0 ∧ x * y = 0 :=
sorry

theorem Rudin_exercise_1_19
  (n : ℕ)
  (a b c x : EuclideanSpace ℝ (Fin n))
  (r : ℝ)
  (h₁ : r > 0)
  (h₂ : 3 • c = 4 • b - a)
  (h₃ : 3 * r = 2 * ‖x - b‖)
  : ‖x - a‖ = 2 * ‖x - b‖ ↔ ‖x - c‖ = r :=
sorry

theorem Rudin_exercise_2_19a {X : Type*} [MetricSpace X]
  (A B : Set X) (hA : IsClosed A) (hB : IsClosed B) (hAB : Disjoint A B) :
  SeparatedNhds A B :=
sorry

theorem Rudin_exercise_2_24 {X : Type*} [MetricSpace X]
  (hX : ∀ (A : Set X), Infinite A → ∃ (x : X), x ∈ closure A) :
  SeparableSpace X :=
sorry

theorem Rudin_exercise_2_25 {K : Type*} [MetricSpace K] [CompactSpace K] :
  ∃ (B : Set (Set K)), Set.Countable B ∧ IsTopologicalBasis B :=
sorry

theorem Rudin_exercise_2_27a (k : ℕ) (E P : Set (EuclideanSpace ℝ (Fin k)))
  (hE : E.Nonempty ∧ ¬ Set.Countable E)
  (hP : P = {x | ∀ U ∈ 𝓝 x, ¬ Set.Countable (P ∩ E)}) :
  IsClosed P ∧ P = {x | ClusterPt x (𝓟 P)}  :=
sorry

theorem Rudin_exercise_2_27b (k : ℕ) (E P : Set (EuclideanSpace ℝ (Fin k)))
  (hE : E.Nonempty ∧ ¬ Set.Countable E)
  (hP : P = {x | ∀ U ∈ 𝓝 x, (P ∩ E).Nonempty ∧ ¬ Set.Countable (P ∩ E)}) :
  Set.Countable (E \ P) :=
sorry

theorem Rudin_exercise_2_28 (X : Type*) [MetricSpace X] [SeparableSpace X]
  (A : Set X) (hA : IsClosed A) :
  ∃ P₁ P₂ : Set X, A = P₁ ∪ P₂ ∧
  IsClosed P₁ ∧ P₁ = {x | ClusterPt x (𝓟 P₁)} ∧
  Set.Countable P₂ :=
sorry

theorem Rudin_exercise_2_29 (U : Set ℝ) (hU : IsOpen U) :
  ∃ (f : ℕ → Set ℝ), (∀ n, ∃ a b : ℝ, f n = {x | a < x ∧ x < b}) ∧ (∀ n, f n ⊆ U) ∧
  (∀ n m, n ≠ m → f n ∩ f m = ∅) ∧
  U = ⋃ n, f n :=
sorry

theorem Rudin_exercise_3_1a
  (f : ℕ → ℝ)
  (h : ∃ (a : ℝ), Tendsto (λ (n : ℕ) => f n) atTop (𝓝 a))
  : ∃ (a : ℝ), Tendsto (λ (n : ℕ) => |f n|) atTop (𝓝 a) :=
sorry

theorem Rudin_exercise_3_2a
  : Tendsto (λ (n : ℝ) => (sqrt (n^2 + n) - n)) atTop (𝓝 (1/2)) :=
sorry

noncomputable def f : ℕ → ℝ
| 0 => sqrt 2
| (n + 1) => sqrt (2 + sqrt (f n))

theorem Rudin_exercise_3_3
  : ∃ (x : ℝ), Tendsto f atTop (𝓝 x) ∧ ∀ n, f n < 2 :=
sorry

theorem Rudin_exercise_3_5
  (a b : ℕ → ℝ)
  (h : limsup a + limsup b ≠ 0) :
  limsup (λ n => a n + b n) ≤ limsup a + limsup b :=
sorry

def g (n : ℕ) : ℝ := sqrt (n + 1) - sqrt n

theorem Rudin_exercise_3_6a
: Tendsto (λ (n : ℕ) => (∑ i in range n, g i)) atTop atTop :=
sorry

theorem Rudin_exercise_3_7
  (a : ℕ → ℝ)
  (h : ∃ y, (Tendsto (λ n => (∑ i in (range n), a i)) atTop (𝓝 y))) :
  ∃ y, Tendsto (λ n => (∑ i in (range n), sqrt (a i) / n)) atTop (𝓝 y) :=
sorry

theorem Rudin_exercise_3_8
  (a b : ℕ → ℝ)
  (h1 : ∃ y, (Tendsto (λ n => (∑ i in (range n), a i)) atTop (𝓝 y)))
  (h2 : Monotone b)
  (h3 : Bornology.IsBounded (Set.range b)) :
  ∃ y, Tendsto (λ n => (∑ i in (range n), (a i) * (b i))) atTop (𝓝 y) :=
sorry

theorem Rudin_exercise_3_13
  (a b : ℕ → ℝ)
  (ha : ∃ y, (Tendsto (λ n => (∑ i in (range n), |a i|)) atTop (𝓝 y)))
  (hb : ∃ y, (Tendsto (λ n => (∑ i in (range n), |b i|)) atTop (𝓝 y))) :
  ∃ y, (Tendsto (λ n => (∑ i in (range n),
  λ i => (∑ j in range (i + 1), a j * b (i - j)))) atTop (𝓝 y)) :=
sorry

theorem Rudin_exercise_3_20 {X : Type*} [MetricSpace X]
  (p : ℕ → X) (l : ℕ) (r : X)
  (hp : CauchySeq p)
  (hpl : Tendsto (λ n => p (l * n)) atTop (𝓝 r)) :
  Tendsto p atTop (𝓝 r) :=
sorry

theorem Rudin_exercise_3_21
  {X : Type*} [MetricSpace X] [CompleteSpace X]
  (E : ℕ → Set X)
  (hE : ∀ n, E n ⊃ E (n + 1))
  (hE' : Tendsto (λ n => Metric.diam (E n)) atTop (𝓝 0)) :
  ∃ a, Set.iInter E = {a} :=
sorry

theorem Rudin_exercise_3_22 (X : Type*) [MetricSpace X] [CompleteSpace X]
  (G : ℕ → Set X) (hG : ∀ n, IsOpen (G n) ∧ Dense (G n)) :
  ∃ x, ∀ n, x ∈ G n :=
sorry

theorem Rudin_exercise_4_1a
  : ∃ (f : ℝ → ℝ), (∀ (x : ℝ), Tendsto (λ y => f (x + y) - f (x - y)) (𝓝 0) (𝓝 0)) ∧ ¬ Continuous f :=
sorry

theorem Rudin_exercise_4_2a
  {α : Type} [MetricSpace α]
  {β : Type} [MetricSpace β]
  (f : α → β)
  (h₁ : Continuous f)
  : ∀ (x : Set α), f '' (closure x) ⊆ closure (f '' x) :=
sorry

theorem Rudin_exercise_4_3
  {α : Type} [MetricSpace α]
  (f : α → ℝ) (h : Continuous f) (z : Set α) (g : z = f⁻¹' {0})
  : IsClosed z :=
sorry

theorem Rudin_exercise_4_4a
  {α : Type} [MetricSpace α]
  {β : Type} [MetricSpace β]
  (f : α → β)
  (s : Set α)
  (h₁ : Continuous f)
  (h₂ : Dense s)
  : f '' Set.univ ⊆ closure (f '' s) :=
sorry

theorem Rudin_exercise_4_4b
  {α : Type} [MetricSpace α]
  {β : Type} [MetricSpace β]
  (f g : α → β)
  (s : Set α)
  (h₁ : Continuous f)
  (h₂ : Continuous g)
  (h₃ : Dense s)
  (h₄ : ∀ x ∈ s, f x = g x)
  : f = g :=
sorry

theorem Rudin_exercise_4_5a
  (f : ℝ → ℝ)
  (E : Set ℝ)
  (h₁ : IsClosed E)
  (h₂ : ContinuousOn f E)
  : ∃ (g : ℝ → ℝ), Continuous g ∧ ∀ x ∈ E, f x = g x :=
sorry

theorem Rudin_exercise_4_5b
  : ∃ (E : Set ℝ) (f : ℝ → ℝ), (ContinuousOn f E) ∧
  (¬ ∃ (g : ℝ → ℝ), Continuous g ∧ ∀ x ∈ E, f x = g x) :=
sorry

theorem Rudin_exercise_4_6
  (f : ℝ → ℝ)
  (E : Set ℝ)
  (G : Set (ℝ × ℝ))
  (h₁ : IsCompact E)
  (h₂ : G = {(x, f x) | x ∈ E})
  : ContinuousOn f E ↔ IsCompact G :=
sorry

theorem Rudin_exercise_4_8a
  (E : Set ℝ) (f : ℝ → ℝ) (hf : UniformContinuousOn f E)
  (hE : Bornology.IsBounded E) : Bornology.IsBounded (Set.image f E) :=
sorry

theorem Rudin_exercise_4_8b
  (E : Set ℝ) :
  ∃ f : ℝ → ℝ, UniformContinuousOn f E ∧ ¬ Bornology.IsBounded (Set.image f E) :=
sorry

theorem Rudin_exercise_4_11a
  {X : Type*} [MetricSpace X]
  {Y : Type*} [MetricSpace Y]
  (f : X → Y) (hf : UniformContinuous f)
  (x : ℕ → X) (hx : CauchySeq x) :
  CauchySeq (λ n => f (x n)) :=
sorry

theorem Rudin_exercise_4_12
  {α β γ : Type*} [UniformSpace α] [UniformSpace β] [UniformSpace γ]
  {f : α → β} {g : β → γ}
  (hf : UniformContinuous f) (hg : UniformContinuous g) :
  UniformContinuous (g ∘ f) :=
sorry

theorem Rudin_exercise_4_15 {f : ℝ → ℝ}
  (hf : Continuous f) (hof : IsOpenMap f) :
  Monotone f :=
sorry

theorem Rudin_exercise_4_19
  {f : ℝ → ℝ} (hf : ∀ a b c, a < b → f a < c → c < f b → ∃ x, a < x ∧ x < b ∧ f x = c)
  (hg : ∀ r : ℚ, IsClosed {x | f x = r}) : Continuous f :=
sorry

theorem Rudin_exercise_4_21a {X : Type*} [MetricSpace X]
  (K F : Set X) (hK : IsCompact K) (hF : IsClosed F) (hKF : Disjoint K F) :
  ∃ (δ : ℝ), δ > 0 ∧ ∀ (p q : X), p ∈ K → q ∈ F → dist p q ≥ δ :=
sorry

theorem Rudin_exercise_4_24 {f : ℝ → ℝ}
  (hf : Continuous f) (a b : ℝ) (hab : a < b)
  (h : ∀ x y : ℝ, a < x → x < b → a < y → y < b → f ((x + y) / 2) ≤ (f x + f y) / 2) :
  ConvexOn ℝ (Set.Ioo a b) f :=
sorry

theorem Rudin_exercise_5_1
  {f : ℝ → ℝ} (hf : ∀ x y : ℝ, |(f x - f y)| ≤ (x - y) ^ 2) :
  ∃ c, f = λ x => c :=
sorry

theorem Rudin_exercise_5_2 {a b : ℝ}
  {f g : ℝ → ℝ} (hf : ∀ x ∈ Set.Ioo a b, deriv f x > 0)
  (hg : g = f⁻¹)
  (hg_diff : DifferentiableOn ℝ g (Set.Ioo a b)) :
  DifferentiableOn ℝ g (Set.Ioo a b) ∧
  ∀ x ∈ Set.Ioo a b, deriv g x = 1 / deriv f x :=
sorry

theorem Rudin_exercise_5_3 {g : ℝ → ℝ} (hg : Continuous g)
  (hg' : ∃ M : ℝ, ∀ x : ℝ, |deriv g x| ≤ M) :
  ∃ N, ∀ ε > 0, ε < N → Function.Injective (λ x : ℝ => x + ε * g x) :=
sorry

theorem Rudin_exercise_5_4 {n : ℕ}
  (C : ℕ → ℝ)
  (hC : ∑ i in (range (n + 1)), (C i) / (i + 1) = 0) :
  ∃ x, x ∈ (Set.Icc (0 : ℝ) 1) ∧ ∑ i in range (n + 1), (C i) * (x^i) = 0 :=
sorry

theorem Rudin_exercise_5_5
  {f : ℝ → ℝ}
  (hfd : Differentiable ℝ f)
  (hf : Tendsto (deriv f) atTop (𝓝 0)) :
  Tendsto (λ x => f (x + 1) - f x) atTop atTop :=
sorry

theorem Rudin_exercise_5_6
  {f : ℝ → ℝ}
  (hf1 : Continuous f)
  (hf2 : ∀ x, DifferentiableAt ℝ f x)
  (hf3 : f 0 = 0)
  (hf4 : Monotone (deriv f)) :
  MonotoneOn (λ x => f x / x) (Set.Ioi 0) :=
sorry

theorem Rudin_exercise_5_7
  {f g : ℝ → ℝ} {x : ℝ}
  (hf' : DifferentiableAt ℝ f 0)
  (hg' : DifferentiableAt ℝ g 0)
  (hg'_ne_0 : deriv g 0 ≠ 0)
  (f0 : f 0 = 0) (g0 : g 0 = 0) :
  Tendsto (λ x => f x / g x) (𝓝 x) (𝓝 (deriv f x / deriv g x)) :=
sorry

theorem Rudin_exercise_5_15 {f : ℝ → ℝ} (a M0 M1 M2 : ℝ)
  (hf' : DifferentiableOn ℝ f (Set.Ici a))
  (hf'' : DifferentiableOn ℝ (deriv f) (Set.Ici a))
  (hM0 : M0 = sSup {(|f x|) | x ∈ (Set.Ici a)})
  (hM1 : M1 = sSup {(|deriv f x|) | x ∈ (Set.Ici a)})
  (hM2 : M2 = sSup {(|deriv (deriv f) x|) | x ∈ (Set.Ici a)}) :
  (M1 ^ 2) ≤ 4 * M0 * M2 :=
sorry

theorem Rudin_exercise_5_17
  {f : ℝ → ℝ}
  (hf' : DifferentiableOn ℝ f (Set.Icc (-1) 1))
  (hf'' : DifferentiableOn ℝ (deriv f) (Set.Icc 1 1))
  (hf''' : DifferentiableOn ℝ (deriv (deriv f)) (Set.Icc 1 1))
  (hf0 : f (-1) = 0)
  (hf1 : f 0 = 0)
  (hf2 : f 1 = 1)
  (hf3 : deriv f 0 = 0) :
  ∃ x, x ∈ Set.Ioo (-1 : ℝ) 1 ∧ deriv (deriv (deriv f)) x ≥ 3 :=
sorry
