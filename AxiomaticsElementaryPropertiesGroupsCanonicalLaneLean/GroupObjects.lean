import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean

structure GroupAxiomsPackage where
  carrier : Type u
  mul : carrier → carrier → carrier
  one : carrier
  inv : carrier → carrier
  mulAssoc : Prop
  oneMul : Prop
  mulOne : Prop
  mulLeftInv : Prop

structure GroupAxiomsEvidence (G : GroupAxiomsPackage) where
  mulAssocClosed : G.mulAssoc
  oneMulClosed : G.oneMul
  mulOneClosed : G.mulOne
  mulLeftInvClosed : G.mulLeftInv

def GroupAxiomsClosed (G : GroupAxiomsPackage) : Prop :=
  G.mulAssoc ∧ G.oneMul ∧ G.mulOne ∧ G.mulLeftInv

theorem group_axioms_closed_from_evidence (G : GroupAxiomsPackage) (E : GroupAxiomsEvidence G) :
    GroupAxiomsClosed G :=
  And.intro E.mulAssocClosed (And.intro E.oneMulClosed (And.intro E.mulOneClosed E.mulLeftInvClosed))

end AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean
end HautevilleHouse
