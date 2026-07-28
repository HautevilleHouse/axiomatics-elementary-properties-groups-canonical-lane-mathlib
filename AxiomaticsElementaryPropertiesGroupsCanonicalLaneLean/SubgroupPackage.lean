import canonicalLaneMathlib.AdmissibleClass
import AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean.GroupAxioms

namespace HautevilleHouse
namespace AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean

structure SubgroupPackage (G : GroupAxiomsPackage) where
  H : G.carrier → Prop
  H_one : H G.one
  H_mul : ∀ a b, H a → H b → H (G.mul a b)
  H_inv : ∀ a, H a → H (G.inv a)

structure SubgroupEvidence {G : GroupAxiomsPackage} (S : SubgroupPackage G) where
  H_oneClosed : S.H_one
  H_mulClosed : S.H_mul
  H_invClosed : S.H_inv

def SubgroupClosed {G : GroupAxiomsPackage} (S : SubgroupPackage G) : Prop :=
  S.H_one ∧ S.H_mul ∧ S.H_inv

theorem subgroup_closed_from_evidence {G : GroupAxiomsPackage} (S : SubgroupPackage G) (E : SubgroupEvidence S) : SubgroupClosed S := by
  exact And.intro E.H_oneClosed (And.intro E.H_mulClosed E.H_invClosed)

end AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean
end HautevilleHouse