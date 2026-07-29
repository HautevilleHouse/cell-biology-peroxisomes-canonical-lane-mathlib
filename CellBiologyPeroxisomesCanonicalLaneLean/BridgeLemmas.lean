import CellBiologyPeroxisomesCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace CellBiologyPeroxisomesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  PeroxisomeWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CellBiologyPeroxisomesCanonicalLaneLean
end HautevilleHouse