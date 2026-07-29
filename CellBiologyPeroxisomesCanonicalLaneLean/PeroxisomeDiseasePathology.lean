import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyPeroxisomesCanonicalLaneLean

structure PeroxisomeDiseasePathologyPackage where
  zellwegerSyndrome : Prop
  adrenoleukodystrophy : Prop
  rhizomelicChondrodysplasia : Prop
  diseaseMechanismElucidated : Prop
  genotypePhenotypeCorrelation : Prop

structure PeroxisomeDiseasePathologyEvidence (D : PeroxisomeDiseasePathologyPackage) where
  zellwegerSyndromeClosed : D.zellwegerSyndrome
  adrenoleukodystrophyClosed : D.adrenoleukodystrophy
  rhizomelicChondrodysplasiaClosed : D.rhizomelicChondrodysplasia
  diseaseMechanismElucidatedClosed : D.diseaseMechanismElucidated
  genotypePhenotypeCorrelationClosed : D.genotypePhenotypeCorrelation

def PeroxisomeDiseasePathologyClosed (D : PeroxisomeDiseasePathologyPackage) : Prop :=
  D.zellwegerSyndrome ∧ D.adrenoleukodystrophy ∧ D.rhizomelicChondrodysplasia ∧
  D.diseaseMechanismElucidated ∧ D.genotypePhenotypeCorrelation

theorem peroxisome_disease_pathology_closed_from_evidence
    (D : PeroxisomeDiseasePathologyPackage)
    (E : PeroxisomeDiseasePathologyEvidence D) : PeroxisomeDiseasePathologyClosed D := by
  exact And.intro E.zellwegerSyndromeClosed
    (And.intro E.adrenoleukodystrophyClosed
      (And.intro E.rhizomelicChondrodysplasiaClosed
        (And.intro E.diseaseMechanismElucidatedClosed E.genotypePhenotypeCorrelationClosed)))

end CellBiologyPeroxisomesCanonicalLaneLean
end HautevilleHouse