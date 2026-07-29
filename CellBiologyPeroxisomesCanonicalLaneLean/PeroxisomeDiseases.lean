import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyPeroxisomesCanonicalLaneLean

structure PeroxisomeDiseasesPackage where
  zellwegerSyndrome : Prop
  adrenoleukodystrophy : Prop
  refsumDisease : Prop
  rhizomelicChondrodysplasiaPunctata : Prop

structure PeroxisomeDiseasesEvidence (D : PeroxisomeDiseasesPackage) where
  zellwegerSyndromeClosed : D.zellwegerSyndrome
  adrenoleukodystrophyClosed : D.adrenoleukodystrophy
  refsumDiseaseClosed : D.refsumDisease
  rhizomelicChondrodysplasiaPunctataClosed : D.rhizomelicChondrodysplasiaPunctata

def PeroxisomeDiseasesClosed (D : PeroxisomeDiseasesPackage) : Prop :=
  D.zellwegerSyndrome ∧ D.adrenoleukodystrophy ∧ D.refsumDisease ∧ D.rhizomelicChondrodysplasiaPunctata

theorem peroxisome_diseases_closed_from_evidence (D : PeroxisomeDiseasesPackage) (E : PeroxisomeDiseasesEvidence D) : PeroxisomeDiseasesClosed D := by
  exact And.intro E.zellwegerSyndromeClosed (And.intro E.adrenoleukodystrophyClosed (And.intro E.refsumDiseaseClosed E.rhizomelicChondrodysplasiaPunctataClosed))

end CellBiologyPeroxisomesCanonicalLaneLean
end HautevilleHouse