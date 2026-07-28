import AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean.NormalSubgroup

namespace HautevilleHouse
namespace AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean

structure QuotientGroup (G : GroupObject) (N : NormalSubgroup G) where
  carrier : Type u
  proj : G.carrier → carrier
  mul : carrier → carrier → carrier
  one : carrier
  inv : carrier → carrier
  proj_mul : ∀ a b : G.carrier, proj (G.mul a b) = mul (proj a) (proj b)
  proj_one : proj G.one = one
  proj_inv : ∀ a : G.carrier, proj (G.inv a) = inv (proj a)

structure QuotientGroupEvidence {G : GroupObject} {N : NormalSubgroup G} (Q : QuotientGroup G N) where
  proj_mul_closed : Q.proj_mul
  proj_one_closed : Q.proj_one
  proj_inv_closed : Q.proj_inv

def QuotientGroupClosed {G : GroupObject} {N : NormalSubgroup G} (Q : QuotientGroup G N) : Prop :=
  Q.proj_mul ∧ Q.proj_one ∧ Q.proj_inv

theorem quotient_group_closed_from_evidence {G : GroupObject} {N : NormalSubgroup G} (Q : QuotientGroup G N) (E : QuotientGroupEvidence Q) :
    QuotientGroupClosed Q := by
  exact And.intro E.proj_mul_closed (And.intro E.proj_one_closed E.proj_inv_closed)

end AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean
end HautevilleHouse