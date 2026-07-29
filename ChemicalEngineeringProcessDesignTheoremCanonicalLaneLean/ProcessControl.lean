import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessDesignTheoremCanonicalLaneLean

structure ProcessControlPackage where
  feedbackLoopStability : Prop
  optimalControlParameters : Prop
  disturbanceRejection : Prop
  setpointTracking : Prop
  constraintSatisfaction : Prop

structure ProcessControlEvidence (P : ProcessControlPackage) where
  feedbackLoopStabilityClosed : P.feedbackLoopStability
  optimalControlParametersClosed : P.optimalControlParameters
  disturbanceRejectionClosed : P.disturbanceRejection
  setpointTrackingClosed : P.setpointTracking
  constraintSatisfactionClosed : P.constraintSatisfaction

def ProcessControlClosed (P : ProcessControlPackage) : Prop :=
  P.feedbackLoopStability ∧ P.optimalControlParameters ∧
  P.disturbanceRejection ∧ P.setpointTracking ∧
  P.constraintSatisfaction

theorem process_control_closed_from_evidence (P : ProcessControlPackage)
    (E : ProcessControlEvidence P) : ProcessControlClosed P := by
  exact And.intro E.feedbackLoopStabilityClosed
    (And.intro E.optimalControlParametersClosed
      (And.intro E.disturbanceRejectionClosed
        (And.intro E.setpointTrackingClosed E.constraintSatisfactionClosed)))

end ChemicalEngineeringProcessDesignTheoremCanonicalLaneLean
end HautevilleHouse