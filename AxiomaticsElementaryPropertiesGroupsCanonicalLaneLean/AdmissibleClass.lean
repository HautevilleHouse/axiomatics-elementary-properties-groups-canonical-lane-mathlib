import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean

structure GroupAdmittedObject where
  carrier : Type u
  mul : carrier → carrier → carrier
  one : carrier
  inv : carrier → carrier
  mulAssoc : ∀ a b c : carrier, mul (mul a b) c = mul a (mul b c)
  oneMul : ∀ a : carrier, mul one a = a
  mulOne : ∀ a : carrier, mul a one = a
  mulLeftInv : ∀ a : carrier, mul (inv a) a = one

def GroupWitnessClosed (G : GroupAdmittedObject) : Prop :=
  G.mulAssoc ∧ G.oneMul ∧ G.mulOne ∧ G.mulLeftInv

structure AdmissibleClass where
  object : GroupAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GroupWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean
end HautevilleHouse