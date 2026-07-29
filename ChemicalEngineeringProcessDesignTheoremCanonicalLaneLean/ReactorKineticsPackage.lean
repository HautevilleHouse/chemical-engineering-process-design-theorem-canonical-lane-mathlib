import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessDesignTheoremCanonicalLaneLean

structure ReactorKineticsPackage where
  reactionMechanism : Prop
  rateLaw : Prop
  activationEnergy : Prop
  rateConstant : Prop
  steadyStateAssumption : Prop

structure ReactorKineticsEvidence (R : ReactorKineticsPackage) where
  reactionMechanismClosed : R.reactionMechanism
  rateLawClosed : R.rateLaw
  activationEnergyClosed : R.activationEnergy
  rateConstantClosed : R.rateConstant
  steadyStateAssumptionClosed : R.steadyStateAssumption

def ReactorKineticsClosed (R : ReactorKineticsPackage) : Prop :=
  R.reactionMechanism ∧ R.rateLaw ∧ R.activationEnergy ∧ R.rateConstant ∧ R.steadyStateAssumption

theorem reactor_kinetics_closed_from_evidence (R : ReactorKineticsPackage) (E : ReactorKineticsEvidence R) :
    ReactorKineticsClosed R := by
  exact And.intro E.reactionMechanismClosed
    (And.intro E.rateLawClosed
      (And.intro E.activationEnergyClosed
        (And.intro E.rateConstantClosed E.steadyStateAssumptionClosed)))

end ChemicalEngineeringProcessDesignTheoremCanonicalLaneLean
end HautevilleHouse
