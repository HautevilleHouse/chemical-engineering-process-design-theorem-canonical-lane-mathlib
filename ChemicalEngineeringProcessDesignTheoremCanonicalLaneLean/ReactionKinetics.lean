import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessDesignTheoremCanonicalLaneLean

structure ReactionKineticsPackage (A : AdmissibleClass) where
  rateLaw : Prop
  activationEnergy : Prop
  equilibriumConstant : Prop
  rateConstant : Prop
  reactionOrder : Prop

structure ReactionKineticsEvidence {A : AdmissibleClass} (K : ReactionKineticsPackage A) where
  rateLawClosed : K.rateLaw
  activationEnergyClosed : K.activationEnergy
  equilibriumConstantClosed : K.equilibriumConstant
  rateConstantClosed : K.rateConstant
  reactionOrderClosed : K.reactionOrder

def ReactionKineticsClosed {A : AdmissibleClass} (K : ReactionKineticsPackage A) : Prop :=
  K.rateLaw ∧ K.activationEnergy ∧ K.equilibriumConstant ∧ K.rateConstant ∧ K.reactionOrder

theorem reaction_kinetics_closed_from_evidence
    {A : AdmissibleClass} (K : ReactionKineticsPackage A) (E : ReactionKineticsEvidence K) :
    ReactionKineticsClosed K := by
  exact And.intro E.rateLawClosed
    (And.intro E.activationEnergyClosed
      (And.intro E.equilibriumConstantClosed
        (And.intro E.rateConstantClosed E.reactionOrderClosed)))

end ChemicalEngineeringProcessDesignTheoremCanonicalLaneLean
end HautevilleHouse
