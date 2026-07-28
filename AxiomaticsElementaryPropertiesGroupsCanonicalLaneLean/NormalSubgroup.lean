import AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean.Subgroup

namespace HautevilleHouse
namespace AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean

structure NormalSubgroup (G : GroupObject) extends Subgroup G where
  normal : ∀ (g : G.carrier) (h : G.carrier), h ∈ subset → G.mul (G.mul g h) (G.inv g) ∈ subset

structure NormalSubgroupEvidence {G : GroupObject} (N : NormalSubgroup G) where
  subgroup_closed : SubgroupClosed N.toSubgroup
  normal_closed : N.normal

def NormalSubgroupClosed {G : GroupObject} (N : NormalSubgroup G) : Prop :=
  SubgroupClosed N.toSubgroup ∧ N.normal

theorem normal_subgroup_closed_from_evidence {G : GroupObject} (N : NormalSubgroup G) (E : NormalSubgroupEvidence N) :
    NormalSubgroupClosed N := by
  exact And.intro E.subgroup_closed E.normal_closed

end AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean
end HautevilleHouse