import Mathlib

open Filter Real Function
open scoped Topology
noncomputable section

theorem Pough_exercise_2_12a (f : ℕ → ℕ) (p : ℕ → ℝ) (a : ℝ)
  (hf : Injective f) (hp : Tendsto p atTop (𝓝 a)) :
  Tendsto (λ n => p (f n)) atTop (𝓝 a) :=
sorry

theorem Pough_exercise_2_26 {M : Type*} [TopologicalSpace M]
  (U : Set M) : IsOpen U ↔ ∀ x ∈ U, ¬ ClusterPt x (𝓟 Uᶜ) :=
sorry

theorem Pough_exercise_2_29 (M : Type*) [MetricSpace M]
  (O C : Set (Set M))
  (hO : O = {s | IsOpen s})
  (hC : C = {s | IsClosed s}) :
  ∃ f : O → C, Bijective f :=
sorry

theorem Pough_exercise_2_32a (A : Set ℕ) : IsClopen A :=
sorry

theorem Pough_exercise_2_41 (m : ℕ) {X : Type*} [NormedSpace ℝ ((Fin m) → ℝ)] :
  IsCompact (Metric.closedBall 0 1) :=
sorry

theorem Pough_exercise_2_46 {M : Type*} [MetricSpace M]
  {A B : Set M} (hA : IsCompact A) (hB : IsCompact B)
  (hAB : Disjoint A B) (hA₀ : A ≠ ∅) (hB₀ : B ≠ ∅) :
  ∃ a₀ b₀, a₀ ∈ A ∧ b₀ ∈ B ∧ ∀ (a : M) (b : M),
  a ∈ A → b ∈ B → dist a₀ b₀ ≤ dist a b :=
sorry

theorem Pough_exercise_2_57 {X : Type*} [TopologicalSpace X]
  : ∃ (S : Set X), IsConnected S ∧ ¬ IsConnected (interior S) :=
sorry

theorem Pough_exercise_2_92 {α : Type*} [TopologicalSpace α]
  {s : ℕ → Set α}
  (hs : ∀ i, IsCompact (s i))
  (hs : ∀ i, (s i).Nonempty)
  (hs : ∀ i, (s i) ⊃ (s (i + 1))) :
  (⋂ i, s i).Nonempty :=
sorry

theorem Pough_exercise_2_126 {E : Set ℝ}
  (hE : ¬ Set.Countable E) : ∃ (p : ℝ), ClusterPt p (𝓟 E) :=
sorry

theorem Pough_exercise_3_1 {f : ℝ → ℝ}
  (hf : ∀ x y, |f x - f y| ≤ |x - y| ^ 2) :
  ∃ c, f = λ x => c :=
sorry

theorem Pough_exercise_3_4 (n : ℕ) :
  Tendsto (λ n => (sqrt (n + 1) - sqrt n)) atTop (𝓝 0) :=
sorry

theorem Pough_exercise_3_63a (p : ℝ) (f : ℕ → ℝ) (hp : p > 1)
  (h : f = λ (k : ℕ) => (1 : ℝ) / (k * (log k) ^ p)) :
  ∃ l, Tendsto f atTop (𝓝 l) :=
sorry

theorem Pough_exercise_3_63b (p : ℝ) (f : ℕ → ℝ) (hp : p ≤ 1)
  (h : f = λ (k : ℕ) => (1 : ℝ) / (k * (log k) ^ p)) :
  ¬ ∃ l, Tendsto f atTop (𝓝 l) :=
sorry

theorem Pough_exercise_4_15a {α : Type*}
  (a b : ℝ) (F : Set (ℝ → ℝ)) :
  (∀ x : ℝ, ∀ ε > 0, ∃ U ∈ (𝓝 x),
  (∀ y z : U, ∀ f : ℝ → ℝ, f ∈ F → (dist (f y) (f z) < ε)))
  ↔
  ∃ (μ : ℝ → ℝ), ∀ (x : ℝ), (0 : ℝ) ≤ μ x ∧ Tendsto μ (𝓝 0) (𝓝 0) ∧
  (∀ (s t : ℝ) (f : ℝ → ℝ), f ∈ F → |(f s) - (f t)| ≤ μ (|s - t|)) :=
sorry
