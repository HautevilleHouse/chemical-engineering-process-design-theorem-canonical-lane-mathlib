import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessDesignTheoremCanonicalLaneLean

structure ProcessOptimizationPackage where
  objectiveFunction : Prop
  constraints : Prop
  decisionVariables : Prop
  sensitivityAnalysis : Prop
  multiObjectiveTradeoff : Prop
  optimalityConditions : Prop

structure ProcessOptimizationEvidence (P : ProcessOptimizationPackage) where
  objectiveFunctionClosed : P.objectiveFunction
  constraintsClosed : P.constraints
  decisionVariablesClosed : P.decisionVariables
  sensitivityAnalysisClosed : P.sensitivityAnalysis
  multiObjectiveTradeoffClosed : P.multiObjectiveTradeoff
  optimalityConditionsClosed : P.optimalityConditions

def ProcessOptimizationClosed (P : ProcessOptimizationPackage) : Prop :=
  P.objectiveFunction ∧ P.constraints ∧ P.decisionVariables ∧
  P.sensitivityAnalysis ∧ P.multiObjectiveTradeoff ∧ P.optimalityConditions

theorem process_optimization_closed_from_evidence
    (P : ProcessOptimizationPackage)
    (E : ProcessOptimizationEvidence P) : ProcessOptimizationClosed P := by
  exact And.intro E.objectiveFunctionClosed
    (And.intro E.constraintsClosed
      (And.intro E.decisionVariablesClosed
        (And.intro E.sensitivityAnalysisClosed
          (And.intro E.multiObjectiveTradeoffClosed E.optimalityConditionsClosed))))

end ChemicalEngineeringProcessDesignTheoremCanonicalLaneLean
end HautevilleHouse