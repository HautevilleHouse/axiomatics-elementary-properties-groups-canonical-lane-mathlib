import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean.GroupAdmissibleClass
import HautevilleHouse.AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean.GroupSubgroupProperties

namespace HautevilleHouse
namespace AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean

structure LeftCoset (G : GroupObject) (H : SubgroupObject G) (a : G.carrier) where
  elems : Set G.carrier := { x | ∃ h : H.subcarrier, G.mul a h = x }
  nonempty : ∃ x, x ∈ elems

structure CosetEvidence (G : GroupObject) (H : SubgroupObject G) (a : G.carrier)
    (C : LeftCoset G H a) where
  nonemptyTerm : C.nonempty

def CosetClosed (G : GroupObject) (H : SubgroupObject G) (a : G.carrier) (C : LeftCoset G H a) : Prop :=
  C.nonempty

theorem coset_closed_from_evidence (G : GroupObject) (H : SubgroupObject G) (a : G.carrier)
    (C : LeftCoset G H a) (E : CosetEvidence G H a C) : CosetClosed G H a C := by
  exact E.nonemptyTerm

end AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean
end HautevilleHouse