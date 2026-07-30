import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuroscienceComputationalNeuroscienceTheoremCanonicalLaneLean.NeuralCircuitAdmissible

namespace HautevilleHouse
namespace NeuroscienceComputationalNeuroscienceTheoremCanonicalLaneLean

structure SynapticWeight where
  preNeuron : Nat
  postNeuron : Nat
  weight : Float

def SpikeTimingDependentPlasticity (deltaT : Float) : Float :=
  if deltaT > 0 then 0.1 * Float.exp (-deltaT / 20.0) else -0.12 * Float.exp (deltaT / 20.0)

theorem stdp_causal_weight_increase :
    forall (deltaT : Float), deltaT > 0 → SpikeTimingDependentPlasticity deltaT > 0 := by
  intro deltaT hpos
  have : 0.1 * Float.exp (-deltaT / 20.0) > 0 := by
    nlinarith [Float.exp_pos (-deltaT / 20.0)]
  exact this

theorem stdp_acausal_weight_decrease :
    forall (deltaT : Float), deltaT < 0 → SpikeTimingDependentPlasticity deltaT < 0 := by
  intro deltaT hneg
  have : -0.12 * Float.exp (deltaT / 20.0) < 0 := by
    have : Float.exp (deltaT / 20.0) > 0 := Float.exp_pos (deltaT / 20.0)
    nlinarith
  exact this

def bridgeClosed (A : AdmissibleClass) : Prop :=
  Decides A.lane.functionalConnectivity A.lane.circuit.dynamics

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.solverDecidesProjectedLanguage

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

def ConstrainedSynapticPlasticityClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_synaptic_plasticity_endgame (A : AdmissibleClass) :
    ConstrainedSynapticPlasticityClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end NeuroscienceComputationalNeuroscienceTheoremCanonicalLaneLean
end HautevilleHouse