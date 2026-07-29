import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessDesignTheoremCanonicalLaneLean

structure ReactorKineticsPackage where
  reactionRateExpression : Type u
  rateConstants : Type v
  temperatureDependence : Prop
  concentrationProfiles : Prop
  reactionMechanism : Prop
  rateDeterminingStep : Prop

structure ReactorKineticsEvidence (R : ReactorKineticsPackage) where
  reactionRateExpressionClosed : R.reactionRateExpression
  rateConstantsClosed : R.rateConstants
  temperatureDependenceClosed : R.temperatureDependence
  concentrationProfilesClosed : R.concentrationProfiles
  reactionMechanismClosed : R.reactionMechanism
  rateDeterminingStepClosed : R.rateDeterminingStep

def ReactorKineticsClosed (R : ReactorKineticsPackage) : Prop :=
  R.reactionRateExpression ∧ R.rateConstants ∧ R.temperatureDependence ∧
  R.concentrationProfiles ∧ R.reactionMechanism ∧ R.rateDeterminingStep

theorem reactor_kinetics_closed_from_evidence (R : ReactorKineticsPackage)
    (E : ReactorKineticsEvidence R) : ReactorKineticsClosed R := by
  exact And.intro E.reactionRateExpressionClosed
    (And.intro E.rateConstantsClosed
      (And.intro E.temperatureDependenceClosed
        (And.intro E.concentrationProfilesClosed
          (And.intro E.reactionMechanismClosed E.rateDeterminingStepClosed))))

end ChemicalEngineeringProcessDesignTheoremCanonicalLaneLean
end HautevilleHouse