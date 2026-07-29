import ChemicalEngineeringProcessDesignTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessDesignTheoremCanonicalLaneLean

structure ReactionKineticsDesignPackage where
  reactionNetwork : Type u
  rateConstants : Type v
  massActionLaw : Prop
  steadyStateAnalysis : Prop
  catalystDesign : Prop

structure ReactionKineticsDesignEvidence (R : ReactionKineticsDesignPackage) where
  massActionLawClosed : R.massActionLaw
  steadyStateAnalysisClosed : R.steadyStateAnalysis
  catalystDesignClosed : R.catalystDesign

def ReactionKineticsDesignClosed (R : ReactionKineticsDesignPackage) : Prop :=
  R.massActionLaw ∧ R.steadyStateAnalysis ∧ R.catalystDesign

theorem reaction_kinetics_design_closed_from_evidence
    (R : ReactionKineticsDesignPackage) (E : ReactionKineticsDesignEvidence R) :
    ReactionKineticsDesignClosed R := by
  exact And.intro E.massActionLawClosed (And.intro E.steadyStateAnalysisClosed E.catalystDesignClosed)

end ChemicalEngineeringProcessDesignTheoremCanonicalLaneLean
end HautevilleHouse