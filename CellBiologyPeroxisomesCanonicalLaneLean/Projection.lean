import CellBiologyPeroxisomesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyPeroxisomesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def peroxisomeProjection : Projection PeroxisomeEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem peroxisome_projection_idempotent (x : PeroxisomeEndgameState) :
    peroxisomeProjection.toFun (peroxisomeProjection.toFun x) = peroxisomeProjection.toFun x := by
  exact peroxisomeProjection.idempotent x

end CellBiologyPeroxisomesCanonicalLaneLean
end HautevilleHouse