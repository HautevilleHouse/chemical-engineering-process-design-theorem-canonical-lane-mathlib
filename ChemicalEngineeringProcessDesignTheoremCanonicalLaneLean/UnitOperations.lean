import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessDesignTheoremCanonicalLaneLean

structure UnitOperationsPackage where
  reactionKineticsModel : Prop
  massTransferCoefficient : Prop
  heatTransferCoefficient : Prop
  separationEfficiency : Prop
  equilibriumStages : Prop

structure UnitOperationsEvidence (U : UnitOperationsPackage) where
  reactionKineticsModelClosed : U.reactionKineticsModel
  massTransferCoefficientClosed : U.massTransferCoefficient
  heatTransferCoefficientClosed : U.heatTransferCoefficient
  separationEfficiencyClosed : U.separationEfficiency
  equilibriumStagesClosed : U.equilibriumStages

def UnitOperationsClosed (U : UnitOperationsPackage) : Prop :=
  U.reactionKineticsModel ∧ U.massTransferCoefficient ∧
  U.heatTransferCoefficient ∧ U.separationEfficiency ∧
  U.equilibriumStages

theorem unit_operations_closed_from_evidence (U : UnitOperationsPackage)
    (E : UnitOperationsEvidence U) : UnitOperationsClosed U := by
  exact And.intro E.reactionKineticsModelClosed
    (And.intro E.massTransferCoefficientClosed
      (And.intro E.heatTransferCoefficientClosed
        (And.intro E.separationEfficiencyClosed E.equilibriumStagesClosed)))

end ChemicalEngineeringProcessDesignTheoremCanonicalLaneLean
end HautevilleHouse