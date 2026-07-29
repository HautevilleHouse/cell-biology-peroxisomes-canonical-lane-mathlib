import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyPeroxisomesCanonicalLaneLean

structure PeroxisomalTransportPackage where
  pex5Receptor : Prop
  pex7Receptor : Prop
  pex13Docking : Prop
  pex14Docking : Prop
  cargoTranslocation : Prop

structure PeroxisomalTransportEvidence (T : PeroxisomalTransportPackage) where
  pex5ReceptorClosed : T.pex5Receptor
  pex7ReceptorClosed : T.pex7Receptor
  pex13DockingClosed : T.pex13Docking
  pex14DockingClosed : T.pex14Docking
  cargoTranslocationClosed : T.cargoTranslocation

def PeroxisomalTransportClosed (T : PeroxisomalTransportPackage) : Prop :=
  T.pex5Receptor ∧ T.pex7Receptor ∧ T.pex13Docking ∧ T.pex14Docking ∧ T.cargoTranslocation

theorem peroxisomal_transport_closed_from_evidence (T : PeroxisomalTransportPackage) (E : PeroxisomalTransportEvidence T) : PeroxisomalTransportClosed T := by
  exact And.intro E.pex5ReceptorClosed (And.intro E.pex7ReceptorClosed (And.intro E.pex13DockingClosed (And.intro E.pex14DockingClosed E.cargoTranslocationClosed)))

end CellBiologyPeroxisomesCanonicalLaneLean
end HautevilleHouse