import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessDesignTheoremCanonicalLaneLean

structure SeparationProcessesPackage where
  distillation : Prop
  absorption : Prop
  extraction : Prop
  membraneSeparation : Prop
  adsorption : Prop

structure SeparationProcessesEvidence (S : SeparationProcessesPackage) where
  distillationClosed : S.distillation
  absorptionClosed : S.absorption
  extractionClosed : S.extraction
  membraneSeparationClosed : S.membraneSeparation
  adsorptionClosed : S.adsorption

def SeparationProcessesClosed (S : SeparationProcessesPackage) : Prop :=
  S.distillation ∧ S.absorption ∧ S.extraction ∧ S.membraneSeparation ∧ S.adsorption

theorem separation_processes_closed_from_evidence (S : SeparationProcessesPackage) (E : SeparationProcessesEvidence S) :
    SeparationProcessesClosed S := by
  exact And.intro E.distillationClosed
    (And.intro E.absorptionClosed
      (And.intro E.extractionClosed
        (And.intro E.membraneSeparationClosed E.adsorptionClosed)))

end ChemicalEngineeringProcessDesignTheoremCanonicalLaneLean
end HautevilleHouse