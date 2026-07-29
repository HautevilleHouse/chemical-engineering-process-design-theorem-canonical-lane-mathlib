import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessDesignTheoremCanonicalLaneLean

structure ThermodynamicEquilibriumPackage where
  enthalpyBalance : Prop
  entropyGeneration : Prop
  gibbsFreeEnergy : Prop
  equilibriumConstant : Prop
  phaseEquilibrium : Prop

structure ThermodynamicEquilibriumEvidence (E : ThermodynamicEquilibriumPackage) where
  enthalpyBalanceClosed : E.enthalpyBalance
  entropyGenerationClosed : E.entropyGeneration
  gibbsFreeEnergyClosed : E.gibbsFreeEnergy
  equilibriumConstantClosed : E.equilibriumConstant
  phaseEquilibriumClosed : E.phaseEquilibrium

def ThermodynamicEquilibriumClosed (E : ThermodynamicEquilibriumPackage) : Prop :=
  E.enthalpyBalance ∧ E.entropyGeneration ∧ E.gibbsFreeEnergy ∧ E.equilibriumConstant ∧ E.phaseEquilibrium

theorem thermodynamic_equilibrium_closed_from_evidence (E : ThermodynamicEquilibriumPackage) (Ev : ThermodynamicEquilibriumEvidence E) :
    ThermodynamicEquilibriumClosed E := by
  exact And.intro Ev.enthalpyBalanceClosed
    (And.intro Ev.entropyGenerationClosed
      (And.intro Ev.gibbsFreeEnergyClosed
        (And.intro Ev.equilibriumConstantClosed Ev.phaseEquilibriumClosed)))

end ChemicalEngineeringProcessDesignTheoremCanonicalLaneLean
end HautevilleHouse
