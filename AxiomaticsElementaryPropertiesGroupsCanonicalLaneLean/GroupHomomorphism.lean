import AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean.GroupDefinition

namespace HautevilleHouse
namespace AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean

structure GroupHomomorphism (G H : GroupObject) where
  map : G.carrier → H.carrier
  map_mul : ∀ a b : G.carrier, map (G.mul a b) = H.mul (map a) (map b)
  map_one : map G.one = H.one

structure GroupHomomorphismEvidence {G H : GroupObject} (f : GroupHomomorphism G H) where
  map_mul_closed : f.map_mul
  map_one_closed : f.map_one

def GroupHomomorphismClosed {G H : GroupObject} (f : GroupHomomorphism G H) : Prop :=
  f.map_mul ∧ f.map_one

theorem group_homomorphism_closed_from_evidence {G H : GroupObject} (f : GroupHomomorphism G H) (E : GroupHomomorphismEvidence f) :
    GroupHomomorphismClosed f := by
  exact And.intro E.map_mul_closed E.map_one_closed

end AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean
end HautevilleHouse