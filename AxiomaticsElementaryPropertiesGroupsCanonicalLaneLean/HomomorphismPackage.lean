import canonicalLaneMathlib.AdmissibleClass
import AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean.GroupAxioms

namespace HautevilleHouse
namespace AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean

structure HomomorphismPackage (G H : GroupAxiomsPackage) where
  f : G.carrier → H.carrier
  f_mul : ∀ a b : G.carrier, f (G.mul a b) = H.mul (f a) (f b)
  f_one : f G.one = H.one

structure HomomorphismEvidence {G H : GroupAxiomsPackage} (φ : HomomorphismPackage G H) where
  f_mulClosed : φ.f_mul
  f_oneClosed : φ.f_one

def HomomorphismClosed {G H : GroupAxiomsPackage} (φ : HomomorphismPackage G H) : Prop :=
  φ.f_mul ∧ φ.f_one

theorem homomorphism_closed_from_evidence {G H : GroupAxiomsPackage} (φ : HomomorphismPackage G H) (E : HomomorphismEvidence φ) : HomomorphismClosed φ := by
  exact And.intro E.f_mulClosed E.f_oneClosed

end AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean
end HautevilleHouse