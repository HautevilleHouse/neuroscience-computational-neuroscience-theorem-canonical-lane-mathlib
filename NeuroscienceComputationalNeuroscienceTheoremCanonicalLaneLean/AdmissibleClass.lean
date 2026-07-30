import NeuroscienceComputationalNeuroscienceTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace NeuroscienceComputationalNeuroscienceTheoremCanonicalLaneLean

structure AdmissibleClass where
  lane : NeuroscienceComputationalNeuroscienceAdmittedObject
  solverDecidesProjectedLanguage : Decides lane.solver lane.projectedLanguage
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  Decides A.lane.solver A.lane.projectedLanguage ∧
  (A.endpointSatisfied ∨ A.remainderRecorded)

end NeuroscienceComputationalNeuroscienceTheoremCanonicalLaneLean
end HautevilleHouse