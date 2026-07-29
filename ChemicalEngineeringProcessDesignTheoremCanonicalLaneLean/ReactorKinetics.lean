import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessDesignTheoremCanonicalLaneLean

structure ReactorKineticsPackage where
  reactionMechanism : Prop
  rateLaw : Prop
  for: Prop
  back: Prop
  equilibriumConst: Prop
  activationEnergy: Prop
  preExponentialFactor: Prop

structure ReactorKineticsEvidence (R : ReactorKineticsPackage) where
  reactionMechanismClosed : R.reactionMechanism
  rateLawClosed : R.rateLaw
  forwardClosed : R.for
  backwardClosed : R.back
  equilibriumConstClosed : R.equilibriumConst
  activationEnergyClosed : R.activationEnergy
  preExponentialFactorClosed : R.preExponentialFactor

def ReactorKineticsClosed (R : ReactorKineticsPackage) : Prop :=
  R.reactionMechanism ∧ R.rateLaw ∧ R.for ∧ R.back ∧ R.equilibriumConst ∧ R.activationEnergy ∧ R.preExponentialFactor

theorem reactor_kinetics_closed_from_evidence (R : ReactorKineticsPackage) (E : ReactorKineticsEvidence R) :
    ReactorKineticsClosed R := by
  exact And.intro E.reactionMechanismClosed
    (And.intro E.rateLawClosed
      (And.intro E.forwardClosed
        (And.intro E.backwardClosed
          (And.intro E.equilibriumConstClosed
            (And.intro E.activationEnergyClosed E.preExponentialFactorClosed)))))

end ChemicalEngineeringProcessDesignTheoremCanonicalLaneLean
end HautevilleHouse