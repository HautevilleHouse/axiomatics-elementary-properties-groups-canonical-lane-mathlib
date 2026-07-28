import HautevilleHouse.AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean.AdmissibleClass
import HautevilleHouse.AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean

structure ElementaryPropertiesClosure (A : AdmissibleClass) where
  bridge : bridgeClosed A
  gate : gateClosed A

structure ElementaryPropertiesClosureEvidence (A : AdmissibleClass) where
  bridgeTerm : bridgeClosed A
  gateTerm : gateClosed A

def ElementaryPropertiesClosureClosed (A : AdmissibleClass) : Prop :=
  ConstrainedGroupClosure A

theorem elementary_properties_closure_from_evidence (A : AdmissibleClass)
    (E : ElementaryPropertiesClosureEvidence A) : ElementaryPropertiesClosureClosed A :=
  And.intro E.bridgeTerm E.gateTerm

theorem elementary_properties_closure_from_endgame (A : AdmissibleClass) :
    ElementaryPropertiesClosureClosed A :=
  constrained_group_endgame A

end AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean
end HautevilleHouse
