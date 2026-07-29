import ChemicalEngineeringProcessDesignTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessDesignTheoremCanonicalLaneLean

structure ProcessSynthesisOptimizationPackage where
  flowsheetSuperstructure : Type u
  objectiveFunction : Type v
  constraints : Prop
  optimalDesignFound : Prop

structure ProcessSynthesisOptimizationEvidence (P : ProcessSynthesisOptimizationPackage) where
  constraintsClosed : P.constraints
  optimalDesignFoundClosed : P.optimalDesignFound

def ProcessSynthesisOptimizationClosed (P : ProcessSynthesisOptimizationPackage) : Prop :=
  P.constraints ∧ P.optimalDesignFound

theorem process_synthesis_optimization_closed_from_evidence
    (P : ProcessSynthesisOptimizationPackage) (E : ProcessSynthesisOptimizationEvidence P) :
    ProcessSynthesisOptimizationClosed P := by
  exact And.intro E.constraintsClosed E.optimalDesignFoundClosed

end ChemicalEngineeringProcessDesignTheoremCanonicalLaneLean
end HautevilleHouse