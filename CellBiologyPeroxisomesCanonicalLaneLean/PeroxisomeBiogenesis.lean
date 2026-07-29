import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyPeroxisomesCanonicalLaneLean

/-- PEX genes encode peroxins required for peroxisome biogenesis. This package records the genetic evidence. -/
structure PeroxisomeBiogenesisPackage where
  pexGeneCount : Nat
  peroxinLocalization : Prop
  membraneAssembly : Prop
  matrixProteinImport : Prop
  pexGeneCountClosed : pexGeneCount = 14
  peroxinLocalizationClosed : peroxinLocalization
  membraneAssemblyClosed : membraneAssembly
  matrixProteinImportClosed : matrixProteinImport

structure PeroxisomeBiogenesisEvidence (P : PeroxisomeBiogenesisPackage) where
  pexGeneCountClosed : P.pexGeneCount = 14
  peroxinLocalizationClosed : P.peroxinLocalization
  membraneAssemblyClosed : P.membraneAssembly
  matrixProteinImportClosed : P.matrixProteinImport

def PeroxisomeBiogenesisClosed (P : PeroxisomeBiogenesisPackage) : Prop :=
  (P.pexGeneCount = 14) ∧ P.peroxinLocalization ∧ P.membraneAssembly ∧ P.matrixProteinImport

theorem peroxisome_biogenesis_closed_from_evidence (P : PeroxisomeBiogenesisPackage) (E : PeroxisomeBiogenesisEvidence P) : PeroxisomeBiogenesisClosed P := by
  exact And.intro E.pexGeneCountClosed (And.intro E.peroxinLocalizationClosed (And.intro E.membraneAssemblyClosed E.matrixProteinImportClosed))

end CellBiologyPeroxisomesCanonicalLaneLean
end HautevilleHouse