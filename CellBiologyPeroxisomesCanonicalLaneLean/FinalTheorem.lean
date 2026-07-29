import CellBiologyPeroxisomesCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CellBiologyPeroxisomesCanonicalLaneLean

def ConstrainedPeroxisomeClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_peroxisome_endgame (A : AdmissibleClass) :
    ConstrainedPeroxisomeClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyPeroxisomesCanonicalLaneLean
end HautevilleHouse