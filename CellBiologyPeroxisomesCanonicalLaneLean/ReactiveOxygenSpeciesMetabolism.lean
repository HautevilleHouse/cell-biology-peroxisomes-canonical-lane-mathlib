import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyPeroxisomesCanonicalLaneLean

structure ReactiveOxygenSpeciesMetabolismPackage where
  oxidaseEnzymes : Prop
  superoxideDismutase : Prop
  catalase : Prop
  redoxSignaling : Prop
  oxidativeBalanceMaintained : Prop

structure ReactiveOxygenSpeciesMetabolismEvidence (R : ReactiveOxygenSpeciesMetabolismPackage) where
  oxidaseEnzymesClosed : R.oxidaseEnzymes
  superoxideDismutaseClosed : R.superoxideDismutase
  catalaseClosed : R.catalase
  redoxSignalingClosed : R.redoxSignaling
  oxidativeBalanceMaintainedClosed : R.oxidativeBalanceMaintained

def ReactiveOxygenSpeciesMetabolismClosed (R : ReactiveOxygenSpeciesMetabolismPackage) : Prop :=
  R.oxidaseEnzymes ∧ R.superoxideDismutase ∧ R.catalase ∧ R.redoxSignaling ∧ R.oxidativeBalanceMaintained

theorem reactive_oxygen_species_metabolism_closed_from_evidence
    (R : ReactiveOxygenSpeciesMetabolismPackage)
    (E : ReactiveOxygenSpeciesMetabolismEvidence R) : ReactiveOxygenSpeciesMetabolismClosed R := by
  exact And.intro E.oxidaseEnzymesClosed
    (And.intro E.superoxideDismutaseClosed
      (And.intro E.catalaseClosed
        (And.intro E.redoxSignalingClosed E.oxidativeBalanceMaintainedClosed)))

end CellBiologyPeroxisomesCanonicalLaneLean
end HautevilleHouse