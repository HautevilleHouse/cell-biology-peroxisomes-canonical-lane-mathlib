import CellBiologyPeroxisomesCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CellBiologyPeroxisomesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure PeroxisomeSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure PeroxisomeAdmittedObject where
  space : PeroxisomeSpace
  closedThreeManifold : Prop
  simplyConnected : Prop
  sphereModel : Type
  sphereTopology : TopologicalSpace sphereModel
  homeomorphicToSphere : Prop
  conclusion : homeomorphicToSphere

structure PeroxisomeEndgameState where
  object : PeroxisomeAdmittedObject

def PeroxisomeWitnessClosed (O : PeroxisomeAdmittedObject) : Prop :=
  O.homeomorphicToSphere

end CellBiologyPeroxisomesCanonicalLaneLean
end HautevilleHouse