import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceComputationalNeuroscienceTheoremCanonicalLaneLean

structure NeuralPopulation where
  size : ℕ
  firingRate : ℕ → ℝ
  connectivity : ℕ → ℕ → ℝ

definition PopulationActivity (p : NeuralPopulation) : ℕ → ℝ := λ t => (p.firingRate t) + ∑_{i=0}^{p.size-1} (p.connectivity i (t%p.size))

theorem population_activity_bounded (p : NeuralPopulation) (t : ℕ) :
  PopulationActivity p t ≤ (max_{i} p.firingRate i) + (p.size) * (max_{i,j} p.connectivity i j) := by
  have h1 : p.firingRate t ≤ max_{i} p.firingRate i := Finset.le_max' _ _ (by trivial)
  sorry

end NeuroscienceComputationalNeuroscienceTheoremCanonicalLaneLean
end HautevilleHouse
