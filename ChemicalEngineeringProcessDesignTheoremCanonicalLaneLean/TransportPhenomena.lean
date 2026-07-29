import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessDesignTheoremCanonicalLaneLean

structure TransportPhenomenaPackage where
  momentumTransfer : Prop
  heatTransfer : Prop
  massTransfer : Prop
  constitutiveEquations : Prop
  boundaryConditions : Prop
  dimensionlessNumbers : Prop

structure TransportPhenomenaEvidence (T : TransportPhenomenaPackage) where
  momentumTransferClosed : T.momentumTransfer
  heatTransferClosed : T.heatTransfer
  massTransferClosed : T.massTransfer
  constitutiveEquationsClosed : T.constitutiveEquations
  boundaryConditionsClosed : T.boundaryConditions
  dimensionlessNumbersClosed : T.dimensionlessNumbers

def TransportPhenomenaClosed (T : TransportPhenomenaPackage) : Prop :=
  T.momentumTransfer ∧ T.heatTransfer ∧ T.massTransfer ∧
  T.constitutiveEquations ∧ T.boundaryConditions ∧ T.dimensionlessNumbers

theorem transport_phenomena_closed_from_evidence
    (T : TransportPhenomenaPackage)
    (E : TransportPhenomenaEvidence T) : TransportPhenomenaClosed T := by
  exact And.intro E.momentumTransferClosed
    (And.intro E.heatTransferClosed
      (And.intro E.massTransferClosed
        (And.intro E.constitutiveEquationsClosed
          (And.intro E.boundaryConditionsClosed E.dimensionlessNumbersClosed))))

end ChemicalEngineeringProcessDesignTheoremCanonicalLaneLean
end HautevilleHouse