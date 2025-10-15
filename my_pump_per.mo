package my_pump_per
record per_pump_hw "1x NKE 40-125/139AA2F2AESBQQEKWB"
  extends Buildings.Fluid.Movers.Data.Generic(
    final powerOrEfficiencyIsHydraulic=false,
    etaHydMet=Buildings.Fluid.Movers.BaseClasses.Types.HydraulicEfficiencyMethod.Power_VolumeFlowRate,
    power(
      V_flow = { 1e-6, 0.010555555556, 0.015277777778 },
      P      = { 1960.0, 3783.0, 4180.0 } ),
    pressure(
      V_flow = { 1e-6, 0.010555555556, 0.015277777778 },
      dp     = { 274091.9, 244725.0, 190885.5 } ));
  annotation (
defaultComponentPrefixes="parameter",
defaultComponentName="per_pump_hw");
end per_pump_hw;
  
  record per_pump_hrw "Parallel 3x NKE 150-400/343AA2F1AESBQQEUW3"
    extends Buildings.Fluid.Movers.Data.Generic(
      final powerOrEfficiencyIsHydraulic=false,
      etaHydMet=Buildings.Fluid.Movers.BaseClasses.Types.HydraulicEfficiencyMethod.Power_VolumeFlowRate,
      power(
        V_flow = { 1e-6, 0.269166666667, 0.416666666667 },
        P      = { 65480.0, 139500.0, 173120.0 } ),
      pressure(
        V_flow = { 1e-6, 0.269166666667, 0.416666666667 },
        dp     = { 389602.1, 391559.9, 298564.4 } ));
    annotation (
  defaultComponentPrefixes="parameter",
  defaultComponentName="per_pump_hrw");
  end per_pump_hrw;
  
  record per_pump_chw_fab "Parallel 3x NKE 150-315/310AA2F1AESBQQEUW3"
    extends Buildings.Fluid.Movers.Data.Generic(
      final powerOrEfficiencyIsHydraulic=false,
      etaHydMet=Buildings.Fluid.Movers.BaseClasses.Types.HydraulicEfficiencyMethod.Power_VolumeFlowRate,
      power(
        V_flow = { 1e-6, 0.434166666667, 0.541666666667 },
        P      = { 72000.0, 138420.0, 150000.0 } ),
      pressure(
        V_flow = { 1e-6, 0.434166666667, 0.541666666667 },
        dp     = { 281433.7, 244725.0, 195780.0 } ));
    annotation (
  defaultComponentPrefixes="parameter",
  defaultComponentName="per_pump_chw_fab");
  end per_pump_chw_fab;
  
  record per_pump_chw_pcw "Parallel 4x NKE 125-250/249AA2F2AESBQQEPWA"
    extends Buildings.Fluid.Movers.Data.Generic(
      final powerOrEfficiencyIsHydraulic=false,
      etaHydMet=Buildings.Fluid.Movers.BaseClasses.Types.HydraulicEfficiencyMethod.Power_VolumeFlowRate,
      power(
        V_flow = { 1e-6, 0.317777777778, 0.388888888889 },
        P      = { 28800.0, 63000.0, 67400.0 } ),
      pressure(
        V_flow = { 1e-6, 0.317777777778, 0.388888888889 },
        dp     = { 184033.2, 146835.0, 111594.6 } ));
    annotation (
  defaultComponentPrefixes="parameter",
  defaultComponentName="per_pump_chw_pcw");
  end per_pump_chw_pcw;
  
  record per_pump_chwl_fab "Parallel 2x NKE 125-315/290AA2F2AESBQQEQWA"
    extends Buildings.Fluid.Movers.Data.Generic(
      final powerOrEfficiencyIsHydraulic=false,
      etaHydMet=Buildings.Fluid.Movers.BaseClasses.Types.HydraulicEfficiencyMethod.Power_VolumeFlowRate,
      power(
        V_flow = { 1e-6, 0.106666666667, 0.155555555556 },
        P      = { 15600.0, 34400.0, 40500.0 } ),
      pressure(
        V_flow = { 1e-6, 0.106666666667, 0.155555555556 },
        dp     = { 263324.0, 244725.0, 174244.2 } ));
    annotation (
  defaultComponentPrefixes="parameter",
  defaultComponentName="per_pump_chwl_fab");
  end per_pump_chwl_fab;
  
  record per_pump_chwl_pcw "1x NKE 40-125/142AA2F2AESBQQELWB"
    extends Buildings.Fluid.Movers.Data.Generic(
      final powerOrEfficiencyIsHydraulic=false,
      etaHydMet=Buildings.Fluid.Movers.BaseClasses.Types.HydraulicEfficiencyMethod.Power_VolumeFlowRate,
      power(
        V_flow = { 1e-6, 0.013333333333, 0.016666666667 },
        P      = { 2150.0, 4653.0, 5100.0 } ),
      pressure(
        V_flow = { 1e-6, 0.013333333333, 0.016666666667 },
        dp     = { 298564.4, 244725.0, 213400.2 } ));
    annotation (
  defaultComponentPrefixes="parameter",
  defaultComponentName="per_pump_chwl_pcw");
  end per_pump_chwl_pcw;
  
  record per_pump_cw_chwl "1x NK 250-350/318AA2F1AESBQQEUW3"
    extends Buildings.Fluid.Movers.Data.Generic(
      final powerOrEfficiencyIsHydraulic=false,
      etaHydMet=Buildings.Fluid.Movers.BaseClasses.Types.HydraulicEfficiencyMethod.Power_VolumeFlowRate,
      power(
        V_flow = { 1e-6, 0.192222222222, 0.305555555556 },
        P      = { 27580.0, 56300.0, 54350.0 } ),
      pressure(
        V_flow = { 1e-6, 0.192222222222, 0.305555555556 },
        dp     = { 282412.6, 235621.2, 117663.8 } ));
    annotation (
  defaultComponentPrefixes="parameter",
  defaultComponentName="per_pump_cw_chwl");
  end per_pump_cw_chwl;
  
  record per_pump_cw_chw "Parallrel 5x NK 250-350/318AA2F1AESBQQEUW3"
    extends Buildings.Fluid.Movers.Data.Generic(
      final powerOrEfficiencyIsHydraulic=false,
      etaHydMet=Buildings.Fluid.Movers.BaseClasses.Types.HydraulicEfficiencyMethod.Power_VolumeFlowRate,
      power(
        V_flow = { 1e-6, 0.961111111111, 1.527777777778 },
        P      = { 137900.0, 281500.0, 271750.0 } ),
      pressure(
        V_flow = { 1e-6, 0.961111111111, 1.527777777778 },
        dp     = { 282412.6, 235621.2, 117663.8 } ));
    annotation (
  defaultComponentPrefixes="parameter",
  defaultComponentName="per_pump_cw_chw");
  end per_pump_cw_chw;
  annotation(
    uses(Buildings(version = "12.1.0")));
end my_pump_per;
