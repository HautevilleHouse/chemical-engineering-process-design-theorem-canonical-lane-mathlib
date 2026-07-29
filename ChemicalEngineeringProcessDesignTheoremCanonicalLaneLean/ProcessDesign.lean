import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessDesignTheoremCanonicalLaneLean

structure ProcessDesignPackage where
  flowsheetSynthesis : Prop
  equipmentSizing : Prop
  costOptimization : Prop
  safetyConstraints : Prop
  environmentalCompliance : Prop

structure ProcessDesignEvidence (D : ProcessDesignPackage) where
  flowsheetSynthesisClosed : D.flowsheetSynthesis
  equipmentSizingClosed : D.equipmentSizing
  costOptimizationClosed : D.costOptimization
  safetyConstraintsClosed : D.safetyConstraints
  environmentalComplianceClosed : D.environmentalCompliance

def ProcessDesignClosed (D : ProcessDesignPackage) : Prop :=
  D.flowsheetSynthesis ∧ D.equipmentSizing ∧
  D.costOptimization ∧ D.safetyConstraints ∧
  D.environmentalCompliance

theorem process_design_closed_from_evidence (D : ProcessDesignPackage)
    (E : ProcessDesignEvidence D) : ProcessDesignClosed D := by
  exact And.intro E.flowsheetSynthesisClosed
    (And.intro E.equipmentSizingClosed
      (And.intro E.costOptimizationClosed
        (And.intro E.safetyConstraintsClosed E.environmentalComplianceClosed)))

end ChemicalEngineeringProcessDesignTheoremCanonicalLaneLean
end HautevilleHouse