import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuroscienceComputationalNeuroscienceTheoremCanonicalLaneLean.NeuralOscillationGate

namespace HautevilleHouse
namespace NeuroscienceComputationalNeuroscienceTheoremCanonicalLaneLean

def ConstrainedNeuroscienceClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_neuroscience_endgame (A : AdmissibleClass) :
    ConstrainedNeuroscienceClosure A := by
  have hb : bridgeClosed A := bridge_from_admissible_class A
  have hg : gateClosed A := gate_from_admissible_class A
  exact And.intro hb hg

end NeuroscienceComputationalNeuroscienceTheoremCanonicalLaneLean
end HautevilleHouse
