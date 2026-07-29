import ChemicalEngineeringProcessDesignTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ChemicalEngineeringProcessDesignTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : ChemicalEngineeringAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ChemicalEngineeringWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ChemicalEngineeringProcessDesignTheoremCanonicalLaneLean
end HautevilleHouse