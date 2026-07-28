import canonicalLaneMathlib.AdmissibleClass
import AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean.GroupDefinition
import AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean.HomomorphismTheorem

namespace HautevilleHouse
namespace AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure GroupAdmittedObject where
  group : GroupPackage
  groupClosed : GroupClosed group

def bridgeClosed (A : AdmissibleClass) : Prop :=
  let obj : GroupAdmittedObject := A.object
  obj.groupClosed

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  let obj : GroupAdmittedObject := A.object
  exact obj.groupClosed

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

def ConstrainedGroupClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_group_endgame (A : AdmissibleClass) : ConstrainedGroupClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean
end HautevilleHouse