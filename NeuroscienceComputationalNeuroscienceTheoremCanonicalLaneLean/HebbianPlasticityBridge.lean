import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuroscienceComputationalNeuroscienceTheoremCanonicalLaneLean.NeuralModel

namespace HautevilleHouse
namespace NeuroscienceComputationalNeuroscienceTheoremCanonicalLaneLean

structure SynapticWeight (pre post : ℕ) where
  weight : ℝ
  plasticity : ℝ → ℝ

definition HebbianUpdate (w : SynapticWeight pre post) (preRate postRate : ℝ) : ℝ :=
  w.weight + w.plasticity (preRate * postRate)

theorem hebbian_stabilizes (w : SynapticWeight pre post) (preRate postRate : ℝ) :
  HebbianUpdate w preRate postRate ≥ w.weight := by
  sorry

def bridgeClosed (A : AdmissibleClass) : Prop :=
  Decides A.lane.solver A.lane.projectedLanguage

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.solverDecidesProjectedLanguage

end NeuroscienceComputationalNeuroscienceTheoremCanonicalLaneLean
end HautevilleHouse
