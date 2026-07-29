import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessDesignTheoremCanonicalLaneLean

structure ProcessControlPackage where
  feedbackLoop : Prop
  pidController : Prop
  stabilityCriterion : Prop
  setPointTracking : Prop
  disturbanceRejection : Prop

structure ProcessControlEvidence (C : ProcessControlPackage) where
  feedbackLoopClosed : C.feedbackLoop
  pidControllerClosed : C.pidController
  stabilityCriterionClosed : C.stabilityCriterion
  setPointTrackingClosed : C.setPointTracking
  disturbanceRejectionClosed : C.disturbanceRejection

def ProcessControlClosed (C : ProcessControlPackage) : Prop :=
  C.feedbackLoop ∧ C.pidController ∧ C.stabilityCriterion ∧ C.setPointTracking ∧ C.disturbanceRejection

theorem process_control_closed_from_evidence (C : ProcessControlPackage) (E : ProcessControlEvidence C) :
    ProcessControlClosed C := by
  exact And.intro E.feedbackLoopClosed
    (And.intro E.pidControllerClosed
      (And.intro E.stabilityCriterionClosed
        (And.intro E.setPointTrackingClosed E.disturbanceRejectionClosed)))

end ChemicalEngineeringProcessDesignTheoremCanonicalLaneLean
end HautevilleHouse
