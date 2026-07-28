import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean.GroupAdmissibleClass

namespace HautevilleHouse
namespace AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean

structure GroupHomomorphism (G H : GroupObject) where
  map : G.carrier → H.carrier
  mapMul : ∀ a b : G.carrier, map (G.mul a b) = H.mul (map a) (map b)
  mapOne : map G.one = H.one
  mapInv : ∀ a : G.carrier, map (G.inv a) = H.inv (map a)

structure HomomorphismEvidence (G H : GroupObject) (φ : GroupHomomorphism G H) where
  mapMulTerm : φ.mapMul
  mapOneTerm : φ.mapOne
  mapInvTerm : φ.mapInv

def HomomorphismClosed (G H : GroupObject) (φ : GroupHomomorphism G H) : Prop :=
  φ.mapMul ∧ φ.mapOne ∧ φ.mapInv

theorem homomorphism_closed_from_evidence (G H : GroupObject) (φ : GroupHomomorphism G H)
    (E : HomomorphismEvidence G H φ) : HomomorphismClosed G H φ := by
  exact And.intro E.mapMulTerm (And.intro E.mapOneTerm E.mapInvTerm)

end AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean
end HautevilleHouse