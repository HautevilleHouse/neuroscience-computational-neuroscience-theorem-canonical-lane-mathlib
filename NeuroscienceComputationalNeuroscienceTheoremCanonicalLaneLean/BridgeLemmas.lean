import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuroscienceComputationalNeuroscienceTheoremCanonicalLaneLean.NeuralCircuitAdmissible

namespace HautevilleHouse
namespace NeuroscienceComputationalNeuroscienceTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  Decides A.lane.functionalConnectivity A.lane.circuit.dynamics

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.solverDecidesProjectedLanguage

end NeuroscienceComputationalNeuroscienceTheoremCanonicalLaneLean
end HautevilleHouse