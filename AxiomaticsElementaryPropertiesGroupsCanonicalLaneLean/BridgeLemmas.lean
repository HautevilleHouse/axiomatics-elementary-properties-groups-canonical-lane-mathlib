import canonicalLaneMathlib.AdmissibleClass
import AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GroupWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  have h : GroupWitnessClosed A.object := by
    exact And.intro A.object.mulAssoc (And.intro A.object.oneMul (And.intro A.object.mulOne A.object.mulLeftInv))
  exact h

end AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean
end HautevilleHouse