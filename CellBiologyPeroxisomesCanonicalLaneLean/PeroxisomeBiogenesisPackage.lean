import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyPeroxisomesCanonicalLaneLean

structure PeroxisomeBiogenesisPackage where
  membraneProteinImport : Prop
  matrixProteinImport : Prop
  receptorCycling : Prop
  membraneFusion : Prop
  proliferationControl : Prop

structure PeroxisomeBiogenesisEvidence (P : PeroxisomeBiogenesisPackage) where
  membraneProteinImportClosed : P.membraneProteinImport
  matrixProteinImportClosed : P.matrixProteinImport
  receptorCyclingClosed : P.receptorCycling
  membraneFusionClosed : P.membraneFusion
  proliferationControlClosed : P.proliferationControl

def PeroxisomeBiogenesisClosed (P : PeroxisomeBiogenesisPackage) : Prop :=
  P.membraneProteinImport ∧ P.matrixProteinImport ∧ P.receptorCycling ∧
  P.membraneFusion ∧ P.proliferationControl

theorem peroxisome_biogenesis_closed_from_evidence (P : PeroxisomeBiogenesisPackage)
    (E : PeroxisomeBiogenesisEvidence P) : PeroxisomeBiogenesisClosed P := by
  exact And.intro E.membraneProteinImportClosed
    (And.intro E.matrixProteinImportClosed
      (And.intro E.receptorCyclingClosed
        (And.intro E.membraneFusionClosed E.proliferationControlClosed)))

end CellBiologyPeroxisomesCanonicalLaneLean
end HautevilleHouse