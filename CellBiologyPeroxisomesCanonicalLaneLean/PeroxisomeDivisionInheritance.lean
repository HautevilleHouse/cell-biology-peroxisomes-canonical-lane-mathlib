import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyPeroxisomesCanonicalLaneLean

structure PeroxisomeDivisionInheritancePackage where
  divisionMachineryIdentified : Prop
  dynaminProteins : Prop
  membraneFission : Prop
  inheritanceMechanism : Prop
  organelleNumberControl : Prop

structure PeroxisomeDivisionInheritanceEvidence (D : PeroxisomeDivisionInheritancePackage) where
  divisionMachineryIdentifiedClosed : D.divisionMachineryIdentified
  dynaminProteinsClosed : D.dynaminProteins
  membraneFissionClosed : D.membraneFission
  inheritanceMechanismClosed : D.inheritanceMechanism
  organelleNumberControlClosed : D.organelleNumberControl

def PeroxisomeDivisionInheritanceClosed (D : PeroxisomeDivisionInheritancePackage) : Prop :=
  D.divisionMachineryIdentified ∧ D.dynaminProteins ∧ D.membraneFission ∧
  D.inheritanceMechanism ∧ D.organelleNumberControl

theorem peroxisome_division_inheritance_closed_from_evidence
    (D : PeroxisomeDivisionInheritancePackage)
    (E : PeroxisomeDivisionInheritanceEvidence D) : PeroxisomeDivisionInheritanceClosed D := by
  exact And.intro E.divisionMachineryIdentifiedClosed
    (And.intro E.dynaminProteinsClosed
      (And.intro E.membraneFissionClosed
        (And.intro E.inheritanceMechanismClosed E.organelleNumberControlClosed)))

end CellBiologyPeroxisomesCanonicalLaneLean
end HautevilleHouse