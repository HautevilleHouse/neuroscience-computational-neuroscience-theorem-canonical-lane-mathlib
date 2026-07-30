import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuroscienceComputationalNeuroscienceTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace NeuroscienceComputationalNeuroscienceTheoremCanonicalLaneLean

def ConstrainedNeuroscienceClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_neuroscience_endgame (A : AdmissibleClass) :
    ConstrainedNeuroscienceClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end NeuroscienceComputationalNeuroscienceTheoremCanonicalLaneLean
end HautevilleHouse