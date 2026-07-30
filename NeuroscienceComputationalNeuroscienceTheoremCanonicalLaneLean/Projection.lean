import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuroscienceComputationalNeuroscienceTheoremCanonicalLaneLean.NeuralCircuitAdmissible

namespace HautevilleHouse
namespace NeuroscienceComputationalNeuroscienceTheoremCanonicalLaneLean

structure NeuralCircuitState where
  circuit : NeuralCircuit
  dynamics : String

def projection : Projection NeuralCircuitState :=
  { toFun := λ x => x,
    idempotent := by
      intro x
      rfl }

theorem projection_idempotent (x : NeuralCircuitState) :
    projection.toFun (projection.toFun x) = projection.toFun x := by
  exact projection.idempotent x

end NeuroscienceComputationalNeuroscienceTheoremCanonicalLaneLean
end HautevilleHouse