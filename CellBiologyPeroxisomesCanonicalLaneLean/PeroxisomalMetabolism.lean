import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyPeroxisomesCanonicalLaneLean

structure PeroxisomalMetabolismPackage where
  fattyAcidBetaOxidation : Prop
  reactiveOxygenSpeciesMetabolism : Prop
  plasmalogenBiosynthesis : Prop
  bileAcidSynthesis : Prop
  glyoxylateMetabolism : Prop

structure PeroxisomalMetabolismEvidence (M : PeroxisomalMetabolismPackage) where
  fattyAcidBetaOxidationClosed : M.fattyAcidBetaOxidation
  reactiveOxygenSpeciesMetabolismClosed : M.reactiveOxygenSpeciesMetabolism
  plasmalogenBiosynthesisClosed : M.plasmalogenBiosynthesis
  bileAcidSynthesisClosed : M.bileAcidSynthesis
  glyoxylateMetabolismClosed : M.glyoxylateMetabolism

def PeroxisomalMetabolismClosed (M : PeroxisomalMetabolismPackage) : Prop :=
  M.fattyAcidBetaOxidation ∧ M.reactiveOxygenSpeciesMetabolism ∧
  M.plasmalogenBiosynthesis ∧ M.bileAcidSynthesis ∧ M.glyoxylateMetabolism

theorem peroxisomal_metabolism_closed_from_evidence
    (M : PeroxisomalMetabolismPackage) (E : PeroxisomalMetabolismEvidence M) :
    PeroxisomalMetabolismClosed M := by
  exact And.intro E.fattyAcidBetaOxidationClosed
    (And.intro E.reactiveOxygenSpeciesMetabolismClosed
      (And.intro E.plasmalogenBiosynthesisClosed
        (And.intro E.bileAcidSynthesisClosed E.glyoxylateMetabolismClosed)))

end CellBiologyPeroxisomesCanonicalLaneLean
end HautevilleHouse
