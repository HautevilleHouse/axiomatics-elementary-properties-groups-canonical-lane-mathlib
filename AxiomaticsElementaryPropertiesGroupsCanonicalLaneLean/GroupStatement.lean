import HautevilleHouse.AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean.FinalTheorem
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean

open canonicalLaneMathlib.AdmissibleClass

structure MathlibProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String

def mathlibProofObligation : MathlibProofObligation :=
  { sourceKey := "axiomatics-elementary-properties-groups-canonical-lane"
  , theoremObject := "Every group satisfies its elementary properties"
  , commonCoreImported := true
  , theoremSpecificDefinitionsNative := true
  , theoremSpecificBridgeNative := true
  , theoremSpecificAdmittedClosureNative := true
  , unrestrictedClassicalClosureNative := false
  , carriedGap := "Group axioms closure is brought to the admitted object boundary; unrestricted classical logical closure remains outside the package"
  }

theorem theorem_specific_endgame_pilot_checked : forall A : AdmissibleClass, ConstrainedGroupClosure A :=
  λ A => constrained_group_endgame A

end AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean
end HautevilleHouse
