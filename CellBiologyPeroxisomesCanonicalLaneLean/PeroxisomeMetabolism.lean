import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyPeroxisomesCanonicalLaneLean

/-- Peroxisomes house beta-oxidation of very long chain fatty acids and synthesis of plasmalogens and bile acids. -/
structure PeroxisomeMetabolismPackage where
  betaOxidationVLCFA : Prop
  plasmalogenSynthesis : Prop
  bileAcidSynthesis : Prop
  hydrogenPeroxideMetabolism : Prop
  betaOxidationVLCFAClosed : betaOxidationVLCFA
  plasmalogenSynthesisClosed : plasmalogenSynthesis
  bileAcidSynthesisClosed : bileAcidSynthesis
  hydrogenPeroxideMetabolismClosed : hydrogenPeroxideMetabolism

structure PeroxisomeMetabolismEvidence (M : PeroxisomeMetabolismPackage) where
  betaOxidationVLCFAClosed : M.betaOxidationVLCFA
  plasmalogenSynthesisClosed : M.plasmalogenSynthesis
  bileAcidSynthesisClosed : M.bileAcidSynthesis
  hydrogenPeroxideMetabolismClosed : M.hydrogenPeroxideMetabolism

def PeroxisomeMetabolismClosed (M : PeroxisomeMetabolismPackage) : Prop :=
  M.betaOxidationVLCFA ∧ M.plasmalogenSynthesis ∧ M.bileAcidSynthesis ∧ M.hydrogenPeroxideMetabolism

theorem peroxisome_metabolism_closed_from_evidence (M : PeroxisomeMetabolismPackage) (E : PeroxisomeMetabolismEvidence M) : PeroxisomeMetabolismClosed M := by
  exact And.intro E.betaOxidationVLCFAClosed (And.intro E.plasmalogenSynthesisClosed (And.intro E.bileAcidSynthesisClosed E.hydrogenPeroxideMetabolismClosed))

end CellBiologyPeroxisomesCanonicalLaneLean
end HautevilleHouse