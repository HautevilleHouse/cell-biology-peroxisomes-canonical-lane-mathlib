import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyPeroxisomesCanonicalLaneLean

structure PeroxisomeDisordersPackage where
  zellwegerSyndromeSpectrum : Prop
  adrenoleukodystrophy : Prop
  rhizomelicChondrodysplasiaPunctata : Prop
  refsumDisease : Prop

structure PeroxisomeDisordersEvidence (D : PeroxisomeDisordersPackage) where
  zellwegerSyndromeSpectrumClosed : D.zellwegerSyndromeSpectrum
  adrenoleukodystrophyClosed : D.adrenoleukodystrophy
  rhizomelicChondrodysplasiaPunctataClosed : D.rhizomelicChondrodysplasiaPunctata
  refsumDiseaseClosed : D.refsumDisease

def PeroxisomeDisordersClosed (D : PeroxisomeDisordersPackage) : Prop :=
  D.zellwegerSyndromeSpectrum ∧ D.adrenoleukodystrophy ∧
  D.rhizomelicChondrodysplasiaPunctata ∧ D.refsumDisease

theorem peroxisome_disorders_closed_from_evidence
    (D : PeroxisomeDisordersPackage) (E : PeroxisomeDisordersEvidence D) :
    PeroxisomeDisordersClosed D := by
  exact And.intro E.zellwegerSyndromeSpectrumClosed
    (And.intro E.adrenoleukodystrophyClosed
      (And.intro E.rhizomelicChondrodysplasiaPunctataClosed E.refsumDiseaseClosed))

end CellBiologyPeroxisomesCanonicalLaneLean
end HautevilleHouse
