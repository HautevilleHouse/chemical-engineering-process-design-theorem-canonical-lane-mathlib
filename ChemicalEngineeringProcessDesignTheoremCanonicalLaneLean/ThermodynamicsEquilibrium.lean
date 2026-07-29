import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessDesignTheoremCanonicalLaneLean

structure ThermodynamicsEquilibriumPackage where
  gibbsFreeEnergy : Prop
  equilibriumConstant : Prop
  phaseEquilibria : Prop
  activityCoefficients : Prop
  heatTransfer : Prop
  entropyGeneration : Prop

structure ThermodynamicsEquilibriumEvidence (T : ThermodynamicsEquilibriumPackage) where
  gibbsFreeEnergyClosed : T.gibbsFreeEnergy
  equilibriumConstantClosed : T.equilibriumConstant
  phaseEquilibriaClosed : T.phaseEquilibria
  activityCoefficientsClosed : T.activityCoefficients
  heatTransferClosed : T.heatTransfer
  entropyGenerationClosed : T.entropyGeneration

def ThermodynamicsEquilibriumClosed (T : ThermodynamicsEquilibriumPackage) : Prop :=
  T.gibbsFreeEnergy ∧ T.equilibriumConstant ∧ T.phaseEquilibria ∧
  T.activityCoefficients ∧ T.heatTransfer ∧ T.entropyGeneration

theorem thermodynamics_equilibrium_closed_from_evidence
    (T : ThermodynamicsEquilibriumPackage)
    (E : ThermodynamicsEquilibriumEvidence T) : ThermodynamicsEquilibriumClosed T := by
  exact And.intro E.gibbsFreeEnergyClosed
    (And.intro E.equilibriumConstantClosed
      (And.intro E.phaseEquilibriaClosed
        (And.intro E.activityCoefficientsClosed
          (And.intro E.heatTransferClosed E.entropyGenerationClosed))))

end ChemicalEngineeringProcessDesignTheoremCanonicalLaneLean
end HautevilleHouse