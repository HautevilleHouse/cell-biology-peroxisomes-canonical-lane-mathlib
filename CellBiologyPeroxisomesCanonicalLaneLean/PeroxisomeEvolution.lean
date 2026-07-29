import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyPeroxisomesCanonicalLaneLean

structure PeroxisomeEvolutionPackage where
  endosymbiontOriginHypothesis : Prop
  vesicleSculptingEvolution : Prop
  evolutionaryConservation : Prop
  diversificationInEukaryotes : Prop

structure PeroxisomeEvolutionEvidence (E : PeroxisomeEvolutionPackage) where
  endosymbiontOriginHypothesisClosed : E.endosymbiontOriginHypothesis
  vesicleSculptingEvolutionClosed : E.vesicleSculptingEvolution
  evolutionaryConservationClosed : E.evolutionaryConservation
  diversificationInEukaryotesClosed : E.diversificationInEukaryotes

def PeroxisomeEvolutionClosed (E : PeroxisomeEvolutionPackage) : Prop :=
  E.endosymbiontOriginHypothesis ∧ E.vesicleSculptingEvolution ∧
  E.evolutionaryConservation ∧ E.diversificationInEukaryotes

theorem peroxisome_evolution_closed_from_evidence
    (E : PeroxisomeEvolutionPackage) (EV : PeroxisomeEvolutionEvidence E) :
    PeroxisomeEvolutionClosed E := by
  exact And.intro EV.endosymbiontOriginHypothesisClosed
    (And.intro EV.vesicleSculptingEvolutionClosed
      (And.intro EV.evolutionaryConservationClosed EV.diversificationInEukaryotesClosed))

end CellBiologyPeroxisomesCanonicalLaneLean
end HautevilleHouse
