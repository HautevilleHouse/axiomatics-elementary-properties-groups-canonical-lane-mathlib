import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean

structure GroupPackage where
  carrier : Type u
  identity : carrier
  inverse : carrier → carrier
  multiplication : carrier → carrier → carrier
  associativity : ∀ a b c : carrier, multiplication (multiplication a b) c = multiplication a (multiplication b c)
  identityLeft : ∀ a : carrier, multiplication identity a = a
  identityRight : ∀ a : carrier, multiplication a identity = a
  inverseLeft : ∀ a : carrier, multiplication (inverse a) a = identity
  inverseRight : ∀ a : carrier, multiplication a (inverse a) = identity

structure GroupEvidence (G : GroupPackage) where
  associativityClosed : G.associativity
  identityLeftClosed : G.identityLeft
  identityRightClosed : G.identityRight
  inverseLeftClosed : G.inverseLeft
  inverseRightClosed : G.inverseRight

def GroupClosed (G : GroupPackage) : Prop :=
  G.associativity ∧ G.identityLeft ∧ G.identityRight ∧ G.inverseLeft ∧ G.inverseRight

theorem group_closed_from_evidence (G : GroupPackage) (E : GroupEvidence G) : GroupClosed G := by
  exact And.intro E.associativityClosed
    (And.intro E.identityLeftClosed
      (And.intro E.identityRightClosed
        (And.intro E.inverseLeftClosed E.inverseRightClosed)))

end AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean
end HautevilleHouse