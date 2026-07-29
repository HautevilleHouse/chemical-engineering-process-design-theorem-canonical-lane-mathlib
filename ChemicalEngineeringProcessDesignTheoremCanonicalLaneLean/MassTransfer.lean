import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessDesignTheoremCanonicalLaneLean

structure MassTransferPackage where
  diffusionModel : Prop
  convectiveMassTransfer : Prop
  filmTheory : Prop
  penetrationModel : Prop
  overallCoefficient : Prop

structure MassTransferEvidence (M : MassTransferPackage) where
  diffusionModelClosed : M.diffusionModel
  convectiveMassTransferClosed : M.convectiveMassTransfer
  filmTheoryClosed : M.filmTheory
  penetrationModelClosed : M.penetrationModel
  overallCoefficientClosed : M.overallCoefficient

def MassTransferClosed (M : MassTransferPackage) : Prop :=
  M.diffusionModel ∧ M.convectiveMassTransfer ∧ M.filmTheory ∧ M.penetrationModel ∧ M.overallCoefficient

theorem mass_transfer_closed_from_evidence (M : MassTransferPackage) (E : MassTransferEvidence M) :
    MassTransferClosed M := by
  exact And.intro E.diffusionModelClosed
    (And.intro E.convectiveMassTransferClosed
      (And.intro E.filmTheoryClosed
        (And.intro E.penetrationModelClosed E.overallCoefficientClosed)))

end ChemicalEngineeringProcessDesignTheoremCanonicalLaneLean
end HautevilleHouse