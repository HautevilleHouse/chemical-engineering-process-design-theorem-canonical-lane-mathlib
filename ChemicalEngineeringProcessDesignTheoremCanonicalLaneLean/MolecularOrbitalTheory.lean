import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessDesignTheoremCanonicalLaneLean

structure MolecularOrbitalTheoryPackage where
  orbitalWavefunctions : Prop
  energyLevels : Prop
  bondingAntibonding : Prop
  hybridization : Prop
  molecularSymmetry : Prop
  frontierOrbitals : Prop

structure MolecularOrbitalTheoryEvidence (M : MolecularOrbitalTheoryPackage) where
  orbitalWavefunctionsClosed : M.orbitalWavefunctions
  energyLevelsClosed : M.energyLevels
  bondingAntibondingClosed : M.bondingAntibonding
  hybridizationClosed : M.hybridization
  molecularSymmetryClosed : M.molecularSymmetry
  frontierOrbitalsClosed : M.frontierOrbitals

def MolecularOrbitalTheoryClosed (M : MolecularOrbitalTheoryPackage) : Prop :=
  M.orbitalWavefunctions ∧ M.energyLevels ∧ M.bondingAntibonding ∧
  M.hybridization ∧ M.molecularSymmetry ∧ M.frontierOrbitals

theorem molecular_orbital_theory_closed_from_evidence
    (M : MolecularOrbitalTheoryPackage)
    (E : MolecularOrbitalTheoryEvidence M) : MolecularOrbitalTheoryClosed M := by
  exact And.intro E.orbitalWavefunctionsClosed
    (And.intro E.energyLevelsClosed
      (And.intro E.bondingAntibondingClosed
        (And.intro E.hybridizationClosed
          (And.intro E.molecularSymmetryClosed E.frontierOrbitalsClosed))))

end ChemicalEngineeringProcessDesignTheoremCanonicalLaneLean
end HautevilleHouse