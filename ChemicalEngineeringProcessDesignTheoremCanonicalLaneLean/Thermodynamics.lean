import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessDesignTheoremCanonicalLaneLean

structure ThermodynamicsPackage where
  phaseEquilibrium : Prop
  enthalpyBalance : Prop
  entropyGeneration : Prop
  gibbsFreeEnergy : Prop
  activityCoefficient : Prop

structure ThermodynamicsEvidence (T : ThermodynamicsPackage) where
  phaseEquilibriumClosed : T.phaseEquilibrium
  enthalpyBalanceClosed : T.enthalpyBalance
  entropyGenerationClosed : T.entropyGeneration
  gibbsFreeEnergyClosed : T.gibbsFreeEnergy
  activityCoefficientClosed : T.activityCoefficient

def ThermodynamicsClosed (T : ThermodynamicsPackage) : Prop :=
  T.phaseEquilibrium ∧ T.enthalpyBalance ∧ T.entropyGeneration ∧ T.gibbsFreeEnergy ∧ T.activityCoefficient

theorem thermodynamics_closed_from_evidence (T : ThermodynamicsPackage) (E : ThermodynamicsEvidence T) :
    ThermodynamicsClosed T := by
  exact And.intro E.phaseEquilibriumClosed
    (And.intro E.enthalpyBalanceClosed
      (And.intro E.entropyGenerationClosed
        (And.intro E.gibbsFreeEnergyClosed E.activityCoefficientClosed)))

end ChemicalEngineeringProcessDesignTheoremCanonicalLaneLean
end HautevilleHouse