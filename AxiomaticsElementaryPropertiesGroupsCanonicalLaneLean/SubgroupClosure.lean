import AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean.GroupStructure

namespace HautevilleHouse
namespace AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean

structure SubgroupPackage (G : GroupObject) where
  subset : G.carrier → Prop
  contains_one : subset G.one
  closed_under_mul : ∀ a b, subset a → subset b → subset (G.mul a b)
  closed_under_inv : ∀ a, subset a → subset (G.inv a)

structure SubgroupEvidence {G : GroupObject} (S : SubgroupPackage G) where
  contains_one_closed : S.contains_one
  closed_under_mul_closed : S.closed_under_mul
  closed_under_inv_closed : S.closed_under_inv

def SubgroupClosed {G : GroupObject} (S : SubgroupPackage G) : Prop :=
  S.contains_one ∧ S.closed_under_mul ∧ S.closed_under_inv

theorem subgroup_closed_from_evidence {G : GroupObject} (S : SubgroupPackage G)
    (E : SubgroupEvidence S) : SubgroupClosed S := by
  exact And.intro E.contains_one_closed
    (And.intro E.closed_under_mul_closed E.closed_under_inv_closed)

end AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean
end HautevilleHouse