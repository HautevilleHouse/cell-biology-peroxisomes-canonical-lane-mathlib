import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyPeroxisomesCanonicalLaneLean

structure ReactiveOxygenMetabolismPackage where
  catalaseFunction : Prop
  hydrogenPeroxideDetox : Prop
  superoxideDismutase : Prop
  oxidativeStressResponse : Prop
  redoxSignaling : Prop

structure ReactiveOxygenMetabolismEvidence (R : ReactiveOxygenMetabolismPackage) where
  catalaseFunctionClosed : R.catalaseFunction
  hydrogenPeroxideDetoxClosed : R.hydrogenPeroxideDetox
  superoxideDismutaseClosed : R.superoxideDismutase
  oxidativeStressResponseClosed : R.oxidativeStressResponse
  redoxSignalingClosed : R.redoxSignaling

def ReactiveOxygenMetabolismClosed (R : ReactiveOxygenMetabolismPackage) : Prop :=
  R.catalaseFunction ∧ R.hydrogenPeroxideDetox ∧ R.superoxideDismutase ∧
  R.oxidativeStressResponse ∧ R.redoxSignaling

theorem reactive_oxygen_metabolism_closed_from_evidence (R : ReactiveOxygenMetabolismPackage)
    (E : ReactiveOxygenMetabolismEvidence R) : ReactiveOxygenMetabolismClosed R := by
  exact And.intro E.catalaseFunctionClosed
    (And.intro E.hydrogenPeroxideDetoxClosed
      (And.intro E.superoxideDismutaseClosed
        (And.intro E.oxidativeStressResponseClosed E.redoxSignalingClosed)))

end CellBiologyPeroxisomesCanonicalLaneLean
end HautevilleHouse