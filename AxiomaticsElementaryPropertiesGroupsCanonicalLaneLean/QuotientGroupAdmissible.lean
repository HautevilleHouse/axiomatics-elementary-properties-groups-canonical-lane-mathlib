import AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean.GroupStructure
import AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean.SubgroupClosure

namespace HautevilleHouse
namespace AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean

structure QuotientGroupPackage (G : GroupObject) (N : SubgroupPackage G) where
  normal : ∀ a, N.subset (G.mul a (G.mul (G.inv a) (G.mul a (G.inv a))))  -- placeholder for normality
  quotientCarrier : Type u
  quotientMul : quotientCarrier → quotientCarrier → quotientCarrier
  quotientInv : quotientCarrier → quotientCarrier
  quotientOne : quotientCarrier
  quotientGroup : GroupObject := GroupObject.mk quotientCarrier quotientMul quotientInv quotientOne sorry sorry sorry sorry sorry

def QuotientGroupAdmissible (G : GroupObject) (N : SubgroupPackage G) (Q : QuotientGroupPackage G N) : AdmissibleClass :=
  AdmissibleObject.mk (GroupAdmittedObject.mk Q.quotientGroup trivial) True True (Or.inl trivial)

end AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean
end HautevilleHouse