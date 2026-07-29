import ChemicalEngineeringProcessDesignTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessDesignTheoremCanonicalLaneLean

structure HeatIntegrationNetworkDesignPackage where
  pinchAnalysis : Prop
  heatExchangerNetwork : Type u
  energyTarget : Prop
  minimumUtilityConsumption : Prop

structure HeatIntegrationNetworkDesignEvidence (H : HeatIntegrationNetworkDesignPackage) where
  pinchAnalysisClosed : H.pinchAnalysis
  energyTargetClosed : H.energyTarget
  minimumUtilityConsumptionClosed : H.minimumUtilityConsumption

def HeatIntegrationNetworkDesignClosed (H : HeatIntegrationNetworkDesignPackage) : Prop :=
  H.pinchAnalysis ∧ H.energyTarget ∧ H.minimumUtilityConsumption

theorem heat_integration_network_design_closed_from_evidence
    (H : HeatIntegrationNetworkDesignPackage) (E : HeatIntegrationNetworkDesignEvidence H) :
    HeatIntegrationNetworkDesignClosed H := by
  exact And.intro E.pinchAnalysisClosed (And.intro E.energyTargetClosed E.minimumUtilityConsumptionClosed)

end ChemicalEngineeringProcessDesignTheoremCanonicalLaneLean
end HautevilleHouse