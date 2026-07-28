import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean.GroupAdmissibleClass
import HautevilleHouse.AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean.GroupSubgroupProperties

namespace HautevilleHouse
namespace AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean

structure NormalSubgroupObject (G : GroupObject) extends SubgroupObject G where
  normal : ∀ a : G.carrier, ∀ h : subcarrier, G.mul (G.mul a h) (G.inv a) ∈ subcarrier

structure NormalSubgroupEvidence (G : GroupObject) (N : NormalSubgroupObject G) where
  normalTerm : N.normal

def NormalSubgroupClosed (G : GroupObject) (N : NormalSubgroupObject G) : Prop :=
  N.normal

theorem normal_subgroup_closed_from_evidence (G : GroupObject) (N : NormalSubgroupObject G)
    (E : NormalSubgroupEvidence G N) : NormalSubgroupClosed G N := by
  exact E.normalTerm

end AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean
end HautevilleHouse