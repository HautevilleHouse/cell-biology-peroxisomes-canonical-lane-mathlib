import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyPeroxisomesCanonicalLaneLean

structure BetaOxidationPackage where
  straightChainFattyAcids : Prop
  branchedChainFattyAcids : Prop
  bileAcidSynthesis : Prop
  veryLongChainFattyAcidDegradation : Prop

structure BetaOxidationEvidence (B : BetaOxidationPackage) where
  straightChainFattyAcidsClosed : B.straightChainFattyAcids
  branchedChainFattyAcidsClosed : B.branchedChainFattyAcids
  bileAcidSynthesisClosed : B.bileAcidSynthesis
  veryLongChainFattyAcidDegradationClosed : B.veryLongChainFattyAcidDegradation

def BetaOxidationClosed (B : BetaOxidationPackage) : Prop :=
  B.straightChainFattyAcids ∧ B.branchedChainFattyAcids ∧ B.bileAcidSynthesis ∧ B.veryLongChainFattyAcidDegradation

theorem beta_oxidation_closed_from_evidence (B : BetaOxidationPackage) (E : BetaOxidationEvidence B) : BetaOxidationClosed B := by
  exact And.intro E.straightChainFattyAcidsClosed (And.intro E.branchedChainFattyAcidsClosed (And.intro E.bileAcidSynthesisClosed E.veryLongChainFattyAcidDegradationClosed))

end CellBiologyPeroxisomesCanonicalLaneLean
end HautevilleHouse