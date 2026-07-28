import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean.GroupAdmissibleClass

namespace HautevilleHouse
namespace AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean

structure SubgroupObject (G : GroupObject) where
  subcarrier : Set G.carrier
  mulClosed : ∀ a b, a ∈ subcarrier → b ∈ subcarrier → G.mul a b ∈ subcarrier
  oneClosed : G.one ∈ subcarrier
  invClosed : ∀ a, a ∈ subcarrier → G.inv a ∈ subcarrier

structure SubgroupEvidence (G : GroupObject) (H : SubgroupObject G) where
  mulClosedTerm : H.mulClosed
  oneClosedTerm : H.oneClosed
  invClosedTerm : H.invClosed

def SubgroupClosed (G : GroupObject) (H : SubgroupObject G) : Prop :=
  H.mulClosed ∧ H.oneClosed ∧ H.invClosed

theorem subgroup_closed_from_evidence (G : GroupObject) (H : SubgroupObject G)
    (E : SubgroupEvidence G H) : SubgroupClosed G H := by
  exact And.intro E.mulClosedTerm (And.intro E.oneClosedTerm E.invClosedTerm)

end AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean
end HautevilleHouse