import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessDesignTheoremCanonicalLaneLean

structure MassTransferPackage where
  diffusionCoefficient : Prop
  convectiveMassTransfer : Prop
  filmModel : Prop
  interfaceEquilibrium : Prop
  overallMassTransfer : Prop

structure MassTransferEvidence (M : MassTransferPackage) where
  diffusionCoefficientClosed : M.diffusionCoefficient
  convectiveMassTransferClosed : M.convectiveMassTransfer
  filmModelClosed : M.filmModel
  interfaceEquilibriumClosed : M.interfaceEquilibrium
  overallMassTransferClosed : M.overallMassTransfer

def MassTransferClosed (M : MassTransferPackage) : Prop :=
  M.diffusionCoefficient ∧ M.convectiveMassTransfer ∧ M.filmModel ∧ M.interfaceEquilibrium ∧ M.overallMassTransfer

theorem mass_transfer_closed_from_evidence (M : MassTransferPackage) (E : MassTransferEvidence M) :
    MassTransferClosed M := by
  exact And.intro E.diffusionCoefficientClosed
    (And.intro E.convectiveMassTransferClosed
      (And.intro E.filmModelClosed
        (And.intro E.interfaceEquilibriumClosed E.overallMassTransferClosed)))

end ChemicalEngineeringProcessDesignTheoremCanonicalLaneLean
end HautevilleHouse
