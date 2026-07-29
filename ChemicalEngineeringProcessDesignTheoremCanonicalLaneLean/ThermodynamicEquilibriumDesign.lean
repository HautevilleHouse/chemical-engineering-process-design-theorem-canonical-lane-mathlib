import ChemicalEngineeringProcessDesignTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessDesignTheoremCanonicalLaneLean

structure ThermodynamicEquilibriumDesignPackage where
  phaseEquilibrium : Type u
  energyMinimization : Prop
  entropyMaximization : Prop
  equilibriumConstantModel : Prop

structure ThermodynamicEquilibriumDesignEvidence (T : ThermodynamicEquilibriumDesignPackage) where
  energyMinimizationClosed : T.energyMinimization
  entropyMaximizationClosed : T.entropyMaximization
  equilibriumConstantModelClosed : T.equilibriumConstantModel

def ThermodynamicEquilibriumDesignClosed (T : ThermodynamicEquilibriumDesignPackage) : Prop :=
  T.energyMinimization ∧ T.entropyMaximization ∧ T.equilibriumConstantModel

theorem thermodynamic_equilibrium_design_closed_from_evidence
    (T : ThermodynamicEquilibriumDesignPackage) (E : ThermodynamicEquilibriumDesignEvidence T) :
    ThermodynamicEquilibriumDesignClosed T := by
  exact And.intro E.energyMinimizationClosed (And.intro E.entropyMaximizationClosed E.equilibriumConstantModelClosed)

end ChemicalEngineeringProcessDesignTheoremCanonicalLaneLean
end HautevilleHouse