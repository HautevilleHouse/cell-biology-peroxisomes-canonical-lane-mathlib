import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyPeroxisomesCanonicalLaneLean

structure PlasmalogenSynthesisPackage where
  dihydroxyacetonePhosphateAcyltransferase : Prop
  alkyldihydroxyacetonePhosphateSynthase : Prop
  reductionStep : Prop
  desaturationStep : Prop
  membraneIncorporation : Prop

structure PlasmalogenSynthesisEvidence (P : PlasmalogenSynthesisPackage) where
  dihydroxyacetonePhosphateAcyltransferaseClosed : P.dihydroxyacetonePhosphateAcyltransferase
  alkyldihydroxyacetonePhosphateSynthaseClosed : P.alkyldihydroxyacetonePhosphateSynthase
  reductionStepClosed : P.reductionStep
  desaturationStepClosed : P.desaturationStep
  membraneIncorporationClosed : P.membraneIncorporation

def PlasmalogenSynthesisClosed (P : PlasmalogenSynthesisPackage) : Prop :=
  P.dihydroxyacetonePhosphateAcyltransferase ∧ P.alkyldihydroxyacetonePhosphateSynthase ∧
  P.reductionStep ∧ P.desaturationStep ∧ P.membraneIncorporation

theorem plasmalogen_synthesis_closed_from_evidence (P : PlasmalogenSynthesisPackage)
    (E : PlasmalogenSynthesisEvidence P) : PlasmalogenSynthesisClosed P := by
  exact And.intro E.dihydroxyacetonePhosphateAcyltransferaseClosed
    (And.intro E.alkyldihydroxyacetonePhosphateSynthaseClosed
      (And.intro E.reductionStepClosed
        (And.intro E.desaturationStepClosed E.membraneIncorporationClosed)))

end CellBiologyPeroxisomesCanonicalLaneLean
end HautevilleHouse