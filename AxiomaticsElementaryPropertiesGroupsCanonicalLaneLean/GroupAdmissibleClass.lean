import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean

structure GroupObject where
  carrier : Type u
  mul : carrier → carrier → carrier
  one : carrier
  inv : carrier → carrier
  mulAssoc : ∀ a b c : carrier, mul (mul a b) c = mul a (mul b c)
  oneMul : ∀ a : carrier, mul one a = a
  mulOne : ∀ a : carrier, mul a one = a
  mulLeftInv : ∀ a : carrier, mul (inv a) a = one

structure AdmissibleClass where
  object : GroupObject
  identityClosed : Prop
  inverseClosed : Prop
  closureWitness : identityClosed ∨ inverseClosed

end AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean
end HautevilleHouse