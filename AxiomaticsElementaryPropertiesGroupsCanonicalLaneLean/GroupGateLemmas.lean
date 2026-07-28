import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean.GroupAdmissibleClass

namespace HautevilleHouse
namespace AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.inverseClosed

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.inverseClosed

end AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean
end HautevilleHouse