import AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean.GroupStructure

namespace HautevilleHouse
namespace AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GroupWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean
end HautevilleHouse