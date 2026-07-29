import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessDesignTheoremCanonicalLaneLean

structure ChemicalEquilibriumPackage (A : AdmissibleClass) where
  equilibriumConstantExpr : Prop
  reactionQuotient : Prop
  leChatelierPrinciple : Prop
  temperatureDependence : Prop
  pressureDependence : Prop

structure ChemicalEquilibriumEvidence {A : AdmissibleClass} (E : ChemicalEquilibriumPackage A) where
  equilibriumConstantClosed : E.equilibriumConstantExpr
  reactionQuotientClosed : E.reactionQuotient
  leChatelierPrincipleClosed : E.leChatelierPrinciple
  temperatureDependenceClosed : E.temperatureDependence
  pressureDependenceClosed : E.pressureDependence

def ChemicalEquilibriumClosed {A : AdmissibleClass} (E : ChemicalEquilibriumPackage A) : Prop :=
  E.equilibriumConstantExpr ∧ E.reactionQuotient ∧ E.leChatelierPrinciple ∧
  E.temperatureDependence ∧ E.pressureDependence

theorem chemical_equilibrium_closed_from_evidence
    {A : AdmissibleClass} (E : ChemicalEquilibriumPackage A) (Ev : ChemicalEquilibriumEvidence E) :
    ChemicalEquilibriumClosed E := by
  exact And.intro Ev.equilibriumConstantClosed
    (And.intro Ev.reactionQuotientClosed
      (And.intro Ev.leChatelierPrincipleClosed
        (And.intro Ev.temperatureDependenceClosed Ev.pressureDependenceClosed)))

end ChemicalEngineeringProcessDesignTheoremCanonicalLaneLean
end HautevilleHouse
