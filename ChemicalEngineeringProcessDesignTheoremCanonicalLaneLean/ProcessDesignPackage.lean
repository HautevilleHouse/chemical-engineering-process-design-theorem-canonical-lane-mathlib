import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessDesignTheoremCanonicalLaneLean

structure ProcessDesignPackage where
  flowsheetSynthesis : Prop
  unitOperationSelection : Prop
  economicOptimization : Prop
  safetyAnalysis : Prop
  environmentalCompliance : Prop

structure ProcessDesignEvidence (D : ProcessDesignPackage) where
  flowsheetSynthesisClosed : D.flowsheetSynthesis
  unitOperationSelectionClosed : D.unitOperationSelection
  economicOptimizationClosed : D.economicOptimization
  safetyAnalysisClosed : D.safetyAnalysis
  environmentalComplianceClosed : D.environmentalCompliance

def ProcessDesignClosed (D : ProcessDesignPackage) : Prop :=
  D.flowsheetSynthesis ∧ D.unitOperationSelection ∧ D.economicOptimization ∧ D.safetyAnalysis ∧ D.environmentalCompliance

theorem process_design_closed_from_evidence (D : ProcessDesignPackage) (E : ProcessDesignEvidence D) :
    ProcessDesignClosed D := by
  exact And.intro E.flowsheetSynthesisClosed
    (And.intro E.unitOperationSelectionClosed
      (And.intro E.economicOptimizationClosed
        (And.intro E.safetyAnalysisClosed E.environmentalComplianceClosed)))

end ChemicalEngineeringProcessDesignTheoremCanonicalLaneLean
end HautevilleHouse
