import CellBiologyPeroxisomesCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CellBiologyPeroxisomesCanonicalLaneLean

structure AdmissibleClass where
  object : PeroxisomeAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  PeroxisomeWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyPeroxisomesCanonicalLaneLean
end HautevilleHouse