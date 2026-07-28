import canonicalLaneMathlib.AdmissibleClass
import AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean.GroupDefinition

namespace HautevilleHouse
namespace AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean

structure HomomorphismPackage (G H : GroupPackage) where
  map : G.carrier → H.carrier
  preservesMultiplication : ∀ a b : G.carrier, map (G.multiplication a b) = H.multiplication (map a) (map b)
  kernel : Set G.carrier := {x | map x = H.identity}
  image : Set H.carrier := {y | ∃ x : G.carrier, map x = y}

structure HomomorphismEvidence {G H : GroupPackage} (φ : HomomorphismPackage G H) where
  preservesMultiplicationClosed : φ.preservesMultiplication

def HomomorphismClosed {G H : GroupPackage} (φ : HomomorphismPackage G H) : Prop :=
  φ.preservesMultiplication

theorem homomorphism_closed_from_evidence {G H : GroupPackage} (φ : HomomorphismPackage G H) (E : HomomorphismEvidence φ) : HomomorphismClosed φ := by
  exact E.preservesMultiplicationClosed

end AxiomaticsElementaryPropertiesGroupsCanonicalLaneLean
end HautevilleHouse