import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceComputationalNeuroscienceTheoremCanonicalLaneLean

structure NeuralCircuit where
  neuronCount : Nat
  synapseCount : Nat
  dynamics : String

definition DefaultNeuralCircuit : NeuralCircuit :=
  { neuronCount := 1000, synapseCount := 100000, dynamics := "Izhikevich" }

structure AdmittedObject where
  circuit : NeuralCircuit
  functionalConnectivity : String
  decodesStimulus : Prop

structure AdmissibleClass where
  lane : AdmittedObject
  solverDecidesProjectedLanguage : Decides lane.functionalConnectivity lane.circuit.dynamics
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  Decides A.lane.functionalConnectivity A.lane.circuit.dynamics ∧
  (A.endpointSatisfied ∨ A.remainderRecorded)

end NeuroscienceComputationalNeuroscienceTheoremCanonicalLaneLean
end HautevilleHouse