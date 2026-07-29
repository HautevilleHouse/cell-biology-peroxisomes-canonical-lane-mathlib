import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyPeroxisomesCanonicalLaneLean

structure BetaOxidationPathwayPackage where
  acylCoaOxidase : Prop
  enoylCoaHydratase : Prop
  hydroxyacylCoaDehydrogenase : Prop
  thiolase : Prop
  electronTransferChain : Prop
  chainShorteningCompleted : Prop

structure BetaOxidationPathwayEvidence (B : BetaOxidationPathwayPackage) where
  acylCoaOxidaseClosed : B.acylCoaOxidase
  enoylCoaHydrataseClosed : B.enoylCoaHydratase
  hydroxyacylCoaDehydrogenaseClosed : B.hydroxyacylCoaDehydrogenase
  thiolaseClosed : B.thiolase
  electronTransferChainClosed : B.electronTransferChain
  chainShorteningCompletedClosed : B.chainShorteningCompleted

def BetaOxidationPathwayClosed (B : BetaOxidationPathwayPackage) : Prop :=
  B.acylCoaOxidase ∧ B.enoylCoaHydratase ∧ B.hydroxyacylCoaDehydrogenase ∧
  B.thiolase ∧ B.electronTransferChain ∧ B.chainShorteningCompleted

theorem beta_oxidation_pathway_closed_from_evidence (B : BetaOxidationPathwayPackage)
    (E : BetaOxidationPathwayEvidence B) : BetaOxidationPathwayClosed B := by
  exact And.intro E.acylCoaOxidaseClosed
    (And.intro E.enoylCoaHydrataseClosed
      (And.intro E.hydroxyacylCoaDehydrogenaseClosed
        (And.intro E.thiolaseClosed
          (And.intro E.electronTransferChainClosed E.chainShorteningCompletedClosed))))

end CellBiologyPeroxisomesCanonicalLaneLean
end HautevilleHouse