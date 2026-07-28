import AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean.GroupDefinition

namespace HautevilleHouse
namespace AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean

structure GroupAction (G : GroupObject) (X : Type u) where
  act : G.carrier → X → X
  one_act : ∀ x : X, act G.one x = x
  mul_act : ∀ (g h : G.carrier) (x : X), act (G.mul g h) x = act g (act h x)

structure GroupActionEvidence {G : GroupObject} {X : Type u} (A : GroupAction G X) where
  one_act_closed : A.one_act
  mul_act_closed : A.mul_act

def GroupActionClosed {G : GroupObject} {X : Type u} (A : GroupAction G X) : Prop :=
  A.one_act ∧ A.mul_act

theorem group_action_closed_from_evidence {G : GroupObject} {X : Type u} (A : GroupAction G X) (E : GroupActionEvidence A) :
    GroupActionClosed A := by
  exact And.intro E.one_act_closed E.mul_act_closed

end AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean
end HautevilleHouse