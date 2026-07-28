import AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean.GroupDefinition

namespace HautevilleHouse
namespace AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean

structure Subgroup (G : GroupObject) where
  subset : Set G.carrier
  one_mem : G.one ∈ subset
  mul_mem : ∀ a b, a ∈ subset → b ∈ subset → G.mul a b ∈ subset
  inv_mem : ∀ a, a ∈ subset → G.inv a ∈ subset

structure SubgroupEvidence {G : GroupObject} (S : Subgroup G) where
  one_mem_closed : S.one_mem
  mul_mem_closed : S.mul_mem
  inv_mem_closed : S.inv_mem

def SubgroupClosed {G : GroupObject} (S : Subgroup G) : Prop :=
  S.one_mem ∧ S.mul_mem ∧ S.inv_mem

theorem subgroup_closed_from_evidence {G : GroupObject} (S : Subgroup G) (E : SubgroupEvidence S) :
    SubgroupClosed S := by
  exact And.intro E.one_mem_closed (And.intro E.mul_mem_closed E.inv_mem_closed)

end AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean
end HautevilleHouse