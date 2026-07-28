import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean.GroupAdmissibleClass

namespace HautevilleHouse
namespace AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.identityClosed

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.identityClosed

end AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean
end HautevilleHouse