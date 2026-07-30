import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuroscienceComputationalNeuroscienceTheoremCanonicalLaneLean.HebbianPlasticityBridge

namespace HautevilleHouse
namespace NeuroscienceComputationalNeuroscienceTheoremCanonicalLaneLean

definition OscillationFrequency (A : AdmissibleClass) : ℝ :=
  A.lane.classicalObject.language.frequency

theorem frequency_locked (A : AdmissibleClass) (t : ℕ) :
  OscillationFrequency A > 0 := by
  sorry

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end NeuroscienceComputationalNeuroscienceTheoremCanonicalLaneLean
end HautevilleHouse
