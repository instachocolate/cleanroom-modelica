model hvac_heat_recovery
  parameter Modelica.Units.SI.MassFlowRate m_flow_chwl_total = 278.71 "Chilled Water Low Temperature kg/s";
  parameter Modelica.Units.SI.MassFlowRate m_flow_chw_total = 955.57 "Chilled Water kg/s";
  parameter Modelica.Units.SI.MassFlowRate m_flow_hrw_total = 358.34 "Heat Recovery Water kg/s";
  parameter Modelica.Units.SI.MassFlowRate m_flow_hw_total = 28.67 "Hot Water kg/s";
  parameter Modelica.Units.SI.MassFlowRate m_flow_cw_chwl = 334.45 "Cooling Water CHWL kg/s";
  parameter Modelica.Units.SI.MassFlowRate m_flow_cw_chw = 1146.67 "Cooling Water CHW kg/s";
  parameter Modelica.Units.SI.MassFlowRate m_flow_cw_hr = 716.67 "Cooling Water to Heat Recovery kg/s";
  parameter Modelica.Units.SI.MassFlowRate m_flow_cw_ct = 764.45 "Cooling Water to Cooling Tower kg/s";
  parameter Modelica.Units.SI.MassFlowRate m_flow_air_cleanroom = 915.25 "Cleanroom Air kg/s @ 90 vol/h";
  parameter Modelica.Units.SI.Pressure overpressure = 25 "Cleanroom Overpressure";
  MAU mau annotation(
    Placement(transformation(origin = {-299, 464}, extent = {{-24, -24}, {24, 24}})));
  Buildings.BoundaryConditions.WeatherData.ReaderTMY3 weaDat(computeWetBulbTemperature = false, filNam = "C:/Users/duo/OneDrive - Exyte/YZhu_Thesis/3-Calculations/1-Modelling/0-env/Buildings 12.1.0/Resources/weatherdata/BEL_BRU_Brussels.Natl.AP.064510_TMYx.2009-2023.mos") annotation(
    Placement(transformation(origin = {-768, 10}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Constant setp_hw_preheat(k = 50 + 273.15) annotation(
    Placement(transformation(origin = {-662, 244}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.FixedResistances.Junction jun(redeclare package Medium = Buildings.Media.Water "Water", dp_nominal = {0, 0, 0}, m_flow_nominal = {22, -11, -11}) annotation(
    Placement(transformation(origin = {-312, 88}, extent = {{-10, 10}, {10, -10}})));
  Buildings.Fluid.FixedResistances.Junction jun1(redeclare package Medium = Buildings.Media.Water "Water", dp_nominal = {0, 0, 0}, m_flow_nominal = {11, 11, -22}) annotation(
    Placement(transformation(origin = {-332, 118}, extent = {{10, 10}, {-10, -10}})));
  Buildings.Fluid.FixedResistances.Junction jun_chw_1(redeclare package Medium = Buildings.Media.Water "Water", dp_nominal = {0, 0, 0}, m_flow_nominal = {22, -11, -11}) annotation(
    Placement(transformation(origin = {-302, -284}, extent = {{-10, 10}, {10, -10}})));
  Buildings.Fluid.FixedResistances.Junction jun15(redeclare package Medium = Buildings.Media.Water "Water", dp_nominal = {0, 0, 0}, m_flow_nominal = {11, 11, -22}) annotation(
    Placement(transformation(origin = {-322, -256}, extent = {{10, 10}, {-10, -10}})));
  Buildings.Fluid.FixedResistances.Junction jun7(redeclare package Medium = Buildings.Media.Water "Water", dp_nominal = {0, 0, 0}, m_flow_nominal = {22, -11, -11}) annotation(
    Placement(transformation(origin = {-232, -570}, extent = {{-10, 10}, {10, -10}})));
  Buildings.Fluid.FixedResistances.Junction jun16(redeclare package Medium = Buildings.Media.Water "Water", dp_nominal = {0, 0, 0}, m_flow_nominal = {11, 11, -22}) annotation(
    Placement(transformation(origin = {-252, -542}, extent = {{10, 10}, {-10, -10}})));
  Modelica.Blocks.Sources.Constant setp_chw_precool(k = 12 + 273.15) annotation(
    Placement(transformation(origin = {-572, -244}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Constant setp_chwl_postcool(k = 5 + 273.15) annotation(
    Placement(transformation(origin = {-572, -446}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.FixedResistances.Junction jun71(redeclare package Medium = Buildings.Media.Water "Water", dp_nominal = {0, 0, 0}, m_flow_nominal = {22, -11, -11}) annotation(
    Placement(transformation(origin = {464, -492}, extent = {{-10, 10}, {10, -10}})));
  Buildings.Fluid.FixedResistances.Junction jun161(redeclare package Medium = Buildings.Media.Water "Water", dp_nominal = {0, 0, 0}, m_flow_nominal = {11, 11, -22}) annotation(
    Placement(transformation(origin = {440, -464}, extent = {{10, 10}, {-10, -10}})));
  Buildings.Fluid.FixedResistances.Junction jun2(redeclare package Medium = Buildings.Media.Water "Water", dp_nominal = {0, 0, 0}, m_flow_nominal = {22, -11, -11}) annotation(
    Placement(transformation(origin = {-22, 88}, extent = {{-10, 10}, {10, -10}})));
  Buildings.Fluid.FixedResistances.Junction jun11(redeclare package Medium = Buildings.Media.Water "Water", dp_nominal = {0, 0, 0}, m_flow_nominal = {11, 11, -22}) annotation(
    Placement(transformation(origin = {-42, 118}, extent = {{10, 10}, {-10, -10}})));
  Buildings.Fluid.FixedResistances.Junction jun_chw_3(redeclare package Medium = Buildings.Media.Water "Water", dp_nominal = {0, 0, 0}, m_flow_nominal = {22, -11, -11}) annotation(
    Placement(transformation(origin = {-2, -284}, extent = {{-10, 10}, {10, -10}})));
  Buildings.Fluid.FixedResistances.Junction jun151(redeclare package Medium = Buildings.Media.Water "Water", dp_nominal = {0, 0, 0}, m_flow_nominal = {11, 11, -22}) annotation(
    Placement(transformation(origin = {-22, -256}, extent = {{10, 10}, {-10, -10}})));
  Buildings.Fluid.FixedResistances.Junction jun72(redeclare package Medium = Buildings.Media.Water "Water", dp_nominal = {0, 0, 0}, m_flow_nominal = {22, -11, -11}) annotation(
    Placement(transformation(origin = {66, -570}, extent = {{-10, 10}, {10, -10}})));
  Buildings.Fluid.FixedResistances.Junction jun162(redeclare package Medium = Buildings.Media.Water "Water", dp_nominal = {0, 0, 0}, m_flow_nominal = {11, 11, -22}) annotation(
    Placement(transformation(origin = {46, -542}, extent = {{10, 10}, {-10, -10}})));
  Buildings.Fluid.FixedResistances.Junction jun21(redeclare package Medium = Buildings.Media.Water "Water", dp_nominal = {0, 0, 0}, m_flow_nominal = {22, -11, -11}) annotation(
    Placement(transformation(origin = {252, 88}, extent = {{-10, 10}, {10, -10}})));
  Buildings.Fluid.FixedResistances.Junction jun111(redeclare package Medium = Buildings.Media.Water "Water", dp_nominal = {0, 0, 0}, m_flow_nominal = {11, 11, -22}) annotation(
    Placement(transformation(origin = {236, 118}, extent = {{10, 10}, {-10, -10}})));
  Buildings.Fluid.FixedResistances.Junction jun621(redeclare package Medium = Buildings.Media.Water "Water", dp_nominal = {0, 0, 0}, m_flow_nominal = {22, -11, -11}) annotation(
    Placement(transformation(origin = {340, -284}, extent = {{-10, 10}, {10, -10}})));
  Buildings.Fluid.FixedResistances.Junction jun1511(redeclare package Medium = Buildings.Media.Water "Water", dp_nominal = {0, 0, 0}, m_flow_nominal = {11, 11, -22}) annotation(
    Placement(transformation(origin = {320, -256}, extent = {{10, 10}, {-10, -10}})));
  Modelica.Blocks.Sources.Constant setp_temp_ltpcw(k = 6 + 273.15) annotation(
    Placement(transformation(origin = {496, -302}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Buildings.Fluid.HeatExchangers.HeaterCooler_u load_pcw1(Q_flow_nominal = 3270000, redeclare package Medium = Buildings.Media.Water "Water", m_flow_nominal = 195.4, dp_nominal = 0) annotation(
    Placement(transformation(origin = {460, 24}, extent = {{10, -10}, {-10, 10}})));
  Buildings.Fluid.FixedResistances.Junction jun711(redeclare package Medium = Buildings.Media.Water "Water", dp_nominal = {0, 0, 0}, m_flow_nominal = {22, -11, -11}) annotation(
    Placement(transformation(origin = {472, -184}, extent = {{-10, 10}, {10, -10}})));
  Buildings.Fluid.FixedResistances.Junction jun1611(redeclare package Medium = Buildings.Media.Water "Water", dp_nominal = {0, 0, 0}, m_flow_nominal = {11, 11, -22}) annotation(
    Placement(transformation(origin = {448, -156}, extent = {{10, 10}, {-10, -10}})));
  Buildings.Fluid.FixedResistances.PressureDrop filter_pcw(m_flow_nominal = 130.2, dp_nominal = 20000, redeclare package Medium = Buildings.Media.Water "Water") annotation(
    Placement(transformation(origin = {470, -32}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Buildings.Fluid.Sensors.TemperatureTwoPort sen_temp_pcw_11(redeclare package Medium = Buildings.Media.Water "Water", m_flow_nominal = 195.4) annotation(
    Placement(transformation(origin = {470, 2}, extent = {{-9, 9}, {9, -9}}, rotation = 90)));
  Buildings.Fluid.Movers.FlowControlled_m_flow pump_pcw(redeclare package Medium = Buildings.Media.Water "Water", m_flow_nominal = 195.4) annotation(
    Placement(transformation(origin = {450, -12}, extent = {{10, -10}, {-10, 10}}, rotation = 90)));
  Modelica.Blocks.Sources.Constant setp_temp_pcw(k = 15 + 273.15) annotation(
    Placement(transformation(origin = {504, 34}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Buildings.Controls.Continuous.LimPID conPID_temp_pcw(Ti = 60, controllerType = Modelica.Blocks.Types.SimpleController.P, k = 0.5, reverseActing = false) annotation(
    Placement(transformation(origin = {504, 2}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Buildings.Fluid.Actuators.Valves.TwoWayButterfly val_pcw_chw(redeclare package Medium = Buildings.Media.Water "Water", m_flow_nominal = 130.2, dpFixed_nominal = 500) annotation(
    Placement(transformation(origin = {448, -94}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Buildings.Fluid.FixedResistances.Junction jun712(redeclare package Medium = Buildings.Media.Water "Water", dp_nominal = {0, 0, 0}, m_flow_nominal = {22, -11, -11}) annotation(
    Placement(transformation(origin = {592, -184}, extent = {{-10, 10}, {10, -10}})));
  Buildings.Fluid.FixedResistances.Junction jun1612(redeclare package Medium = Buildings.Media.Water "Water", dp_nominal = {0, 0, 0}, m_flow_nominal = {11, 11, -22}) annotation(
    Placement(transformation(origin = {568, -156}, extent = {{10, 10}, {-10, -10}})));
  Modelica.Blocks.Sources.Constant setp_temp_htpcw(k = 32 + 273.15) annotation(
    Placement(transformation(origin = {624, 36}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Buildings.Fluid.FixedResistances.Junction jun3(redeclare package Medium = Buildings.Media.Air "Moist air", m_flow_nominal = {129.55, -m_flow_air_cleanroom, m_flow_air_cleanroom - 129.55}, dp_nominal = {0, 0, 0}) annotation(
    Placement(transformation(origin = {-242, 464}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.FixedResistances.Junction jun31(redeclare package Medium = Buildings.Media.Air "Moist air", dp_nominal = {1e-6, 10, 1e-6}, m_flow_nominal = {m_flow_air_cleanroom, -129.55, -m_flow_air_cleanroom + 129.55}) annotation(
    Placement(transformation(origin = {-122, 464}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.HeatExchangers.DryCoilCounterFlow coil_cr_sens_cooling(redeclare package Medium1 = Buildings.Media.Water "Water", redeclare package Medium2 = Buildings.Media.Air "Moist air", dp2_nominal = 26, m2_flow_nominal = m_flow_air_cleanroom - 129.55, m1_flow_nominal = 22.25, UA_nominal = 104624, dp1_nominal = 21200) annotation(
    Placement(transformation(origin = {-202, 428}, extent = {{-10, 10}, {10, -10}})));
  Buildings.Fluid.HeatExchangers.HeaterCooler_u load_cr_recirc_air(Q_flow_nominal = 1545000, m_flow_nominal = m_flow_air_cleanroom - 129.55, dp_nominal = 0, redeclare package Medium = Buildings.Media.Air "Moist air") annotation(
    Placement(transformation(origin = {-142, 434}, extent = {{10, -10}, {-10, 10}})));
  Buildings.Fluid.Movers.FlowControlled_m_flow fan_cr_exhaust(redeclare package Medium = Buildings.Media.Air "Moist air", m_flow_nominal = 129.55, per(efficiency(V_flow = {0}, eta = {0.75}))) annotation(
    Placement(transformation(origin = {-92, 464}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.FixedResistances.PressureDrop dp_cleanroom(dp_nominal = 57.5 + 0.5, m_flow_nominal = m_flow_air_cleanroom, redeclare package Medium = Buildings.Media.Air "Moist air") annotation(
    Placement(transformation(origin = {-182, 464}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.Sources.Boundary_pT boundary_air_exhaust(redeclare package Medium = Buildings.Media.Air "Moist air", T = 294.15, nPorts = 1) annotation(
    Placement(transformation(origin = {-62, 464}, extent = {{10, -10}, {-10, 10}})));
  Buildings.Fluid.FixedResistances.Junction jun_chw_2(redeclare package Medium = Buildings.Media.Water "Water", dp_nominal = {0, 0, 0}, m_flow_nominal = {22, -11, -11}) annotation(
    Placement(transformation(origin = {-212, -284}, extent = {{-10, 10}, {10, -10}})));
  Buildings.Fluid.FixedResistances.Junction jun152(redeclare package Medium = Buildings.Media.Water "Water", dp_nominal = {0, 0, 0}, m_flow_nominal = {11, 11, -22}) annotation(
    Placement(transformation(origin = {-192, -256}, extent = {{10, 10}, {-10, -10}})));
  Buildings.Fluid.Sensors.TemperatureTwoPort sen_temp_cr_recirc_air(redeclare package Medium = Buildings.Media.Air "Moist air", m_flow_nominal = m_flow_air_cleanroom - 129.55) annotation(
    Placement(transformation(origin = {-232, 434}, extent = {{10, 10}, {-10, -10}})));
  Buildings.Fluid.Movers.FlowControlled_m_flow fan_process_exhaust1(redeclare package Medium = Buildings.Media.Air "Moist air", per(efficiency(V_flow = {0}, eta = {0.75})), m_flow_nominal = 17.48) annotation(
    Placement(transformation(origin = {186, 468}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.Sources.Boundary_pT boundary_air_exhaust1(redeclare package Medium = Buildings.Media.Air "Moist air", T = 294.15, nPorts = 1) annotation(
    Placement(transformation(origin = {218, 468}, extent = {{10, -10}, {-10, 10}})));
  Modelica.Blocks.Sources.Constant setp_temp_cr_sens_cool(k = 21.5 + 273.15) annotation(
    Placement(transformation(origin = {-252, 414}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Buildings.Controls.Continuous.LimPID conPID_temp_cr_sens_cooling(Ti = 60, controllerType = Modelica.Blocks.Types.SimpleController.P, k = 0.5, reverseActing = false) annotation(
    Placement(transformation(origin = {-252, 384}, extent = {{10, -10}, {-10, 10}}, rotation = 90)));
  Buildings.Fluid.FixedResistances.Junction jun3111(redeclare package Medium = Buildings.Media.Air "Moist air", dp_nominal = {0, 0, 0}, m_flow_nominal = {24.58, -19.58, -5}) annotation(
    Placement(transformation(origin = {496, 470}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.HeatExchangers.DryCoilCounterFlow coil_fac_sens_cooling(redeclare package Medium1 = Buildings.Media.Water "Water", redeclare package Medium2 = Buildings.Media.Air "Moist air", UA_nominal = 1085, m2_flow_nominal = 5, m1_flow_nominal = 1, dp1_nominal = 15000, dp2_nominal = 8) annotation(
    Placement(transformation(origin = {378, 426}, extent = {{-10, 10}, {10, -10}})));
  Buildings.Fluid.Movers.FlowControlled_m_flow fan_fac_exhaust(redeclare package Medium = Buildings.Media.Air "Moist air", per(efficiency(V_flow = {0}, eta = {0.75})), m_flow_nominal = 19.58) annotation(
    Placement(transformation(origin = {528, 470}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.Movers.FlowControlled_m_flow fan_fac_recirc_air(redeclare package Medium = Buildings.Media.Air "Moist air", m_flow_nominal = 5) annotation(
    Placement(transformation(origin = {410, 432}, extent = {{10, -10}, {-10, 10}})));
  Buildings.Fluid.Sources.Boundary_pT boundary_air_exhaust11(redeclare package Medium = Buildings.Media.Air "Moist air", T = 294.15, nPorts = 1) annotation(
    Placement(transformation(origin = {560, 470}, extent = {{10, -10}, {-10, 10}})));
  Buildings.Fluid.Sensors.TemperatureTwoPort sen_temp_fac_recirc(redeclare package Medium = Buildings.Media.Air "Moist air", m_flow_nominal = 19.58) annotation(
    Placement(transformation(origin = {464, 470}, extent = {{-10, 10}, {10, -10}})));
  Modelica.Blocks.Sources.Constant setp_temp_fac_sens_cool(k = 21.5 + 273.15) annotation(
    Placement(transformation(origin = {346, 412}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Buildings.Controls.Continuous.LimPID conPID_temp_fac_sens_cool(Ti = 60, controllerType = Modelica.Blocks.Types.SimpleController.P, k = 0.5, reverseActing = true) annotation(
    Placement(transformation(origin = {346, 382}, extent = {{10, -10}, {-10, 10}}, rotation = 90)));
  Buildings.Fluid.FixedResistances.Junction jun42(redeclare package Medium = Buildings.Media.Water "Water", dp_nominal = {0, 0, 0}, m_flow_nominal = {22, -11, -11}) annotation(
    Placement(transformation(origin = {-592, -146}, extent = {{10, 10}, {-10, -10}}, rotation = -90)));
  Buildings.Fluid.FixedResistances.Junction jun421(redeclare package Medium = Buildings.Media.Water "Water", dp_nominal = {0, 0, 0}, m_flow_nominal = {22, -11, -11}) annotation(
    Placement(transformation(origin = {-632, -166}, extent = {{10, -10}, {-10, 10}}, rotation = 90)));
  Buildings.Fluid.FixedResistances.Junction jun4211(redeclare package Medium = Buildings.Media.Water "Water", dp_nominal = {0, 0, 0}, m_flow_nominal = {22, -11, -11}) annotation(
    Placement(transformation(origin = {-592, 88}, extent = {{10, 10}, {-10, -10}}, rotation = -90)));
  Buildings.Fluid.FixedResistances.Junction jun4212(redeclare package Medium = Buildings.Media.Water "Water", dp_nominal = {0, 0, 0}, m_flow_nominal = {22, -11, -11}) annotation(
    Placement(transformation(origin = {-632, 118}, extent = {{10, -10}, {-10, 10}}, rotation = 90)));
  Buildings.Fluid.HeatExchangers.DryCoilCounterFlow coil_duct_chem(redeclare package Medium1 = Buildings.Media.Water "Water", redeclare package Medium2 = Buildings.Media.Air "Moist air", UA_nominal = 6240, m2_flow_nominal = 17.48, m1_flow_nominal = 1.15, dp1_nominal = 20000, dp2_nominal = 8) annotation(
    Placement(transformation(origin = {78, 462}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Buildings.Fluid.Sensors.TemperatureTwoPort sen_temp_chem(redeclare package Medium = Buildings.Media.Air "Moist air", m_flow_nominal = 17.48)  annotation(
    Placement(transformation(origin = {152, 468}, extent = {{-10, 10}, {10, -10}})));
  Buildings.Fluid.FixedResistances.Junction jun5(redeclare package Medium = Buildings.Media.Water "Water", dp_nominal = {0, 0, 0}, m_flow_nominal = {22, -11, -11}) annotation(
    Placement(transformation(origin = {88, 264}, extent = {{-10, 10}, {10, -10}})));
  Buildings.Fluid.FixedResistances.Junction jun12(redeclare package Medium = Buildings.Media.Water "Water", dp_nominal = {0, 0, 0}, m_flow_nominal = {11, 11, -22}) annotation(
    Placement(transformation(origin = {68, 294}, extent = {{10, 10}, {-10, -10}})));
  Modelica.Blocks.Sources.Constant setp_temp_duct_heat(k = 21.5 + 273.15) annotation(
    Placement(transformation(origin = {48, 416}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Buildings.Controls.Continuous.LimPID conPID_temp_chem_duct_heat(Ti = 60, controllerType = Modelica.Blocks.Types.SimpleController.P, k = 0.5, reverseActing = true) annotation(
    Placement(transformation(origin = {48, 380}, extent = {{10, -10}, {-10, 10}}, rotation = 90)));
  Buildings.Fluid.FixedResistances.Junction jun61111(redeclare package Medium = Buildings.Media.Water "Water", dp_nominal = {0, 0, 0}, m_flow_nominal = {22, -11, -11}) annotation(
    Placement(transformation(origin = {368, 264}, extent = {{-10, 10}, {10, -10}})));
  Buildings.Fluid.FixedResistances.Junction jun152111(redeclare package Medium = Buildings.Media.Water "Water", dp_nominal = {0, 0, 0}, m_flow_nominal = {11, 11, -22}) annotation(
    Placement(transformation(origin = {388, 294}, extent = {{10, 10}, {-10, -10}})));
  Buildings.HeatTransfer.Sources.PrescribedHeatFlow load_chem annotation(
    Placement(transformation(origin = {78, 534}, extent = {{-10, -10}, {10, 10}})));
  Buildings.HeatTransfer.Sources.PrescribedHeatFlow load_fac annotation(
    Placement(transformation(origin = {358, 544}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.HeatExchangers.PlateHeatExchangerEffectivenessNTU hx_heat_recovery(redeclare package Medium1 = Buildings.Media.Water "Water", redeclare package Medium2 = Buildings.Media.Water "Water", m1_flow_nominal = m_flow_hrw_total, m2_flow_nominal = m_flow_cw_hr, dp1_nominal = 24900, dp2_nominal = 10000, configuration = Buildings.Fluid.Types.HeatExchangerConfiguration.CounterFlow, use_Q_flow_nominal = true, Q_flow_nominal = -11250000, T_a1_nominal = 293.15, T_a2_nominal = 306.15) annotation(
    Placement(transformation(origin = {-612, -6}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.HeatPumps.Carnot_TCon hp_hw(redeclare package Medium1 = Buildings.Media.Water "Water", redeclare package Medium2 = Buildings.Media.Water "Water", QCon_flow_nominal = 2400000, dTEva_nominal = -5, dTCon_nominal = 20, dp1_nominal = 15500, dp2_nominal = 24200, m1_flow_nominal = m_flow_hw_total, m2_flow_nominal = 48.26, use_eta_Carnot_nominal = false, COP_nominal = 6.247, TCon_nominal = 323.15, TEva_nominal = 303.15, a = {0.9346, 1.217, -1.1422}) annotation(
    Placement(transformation(origin = {-612, 214}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.Chillers.Carnot_TEva chiller_chwl(redeclare package Medium1 = Buildings.Media.Water "Water", redeclare package Medium2 = Buildings.Media.Water "Water", m1_flow_nominal = m_flow_cw_chwl, m2_flow_nominal = m_flow_chwl_total, QEva_flow_nominal = -7000000, dTEva_nominal = -6, dTCon_nominal = 5, use_eta_Carnot_nominal = false, TCon_nominal = 306.15, TEva_nominal = 278.15, dp1_nominal = 29100, dp2_nominal = 46600, a = {0.24567204, 2.41379416, -1.67622659}) annotation(
    Placement(transformation(origin = {-542, -446}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.Chillers.Carnot_TEva chiller_chw(redeclare package Medium1 = Buildings.Media.Water "Water", redeclare package Medium2 = Buildings.Media.Water "Water", QEva_flow_nominal = -24000000, dTCon_nominal = 5, dTEva_nominal = -6, m1_flow_nominal = m_flow_cw_chw, m2_flow_nominal = m_flow_chw_total, use_eta_Carnot_nominal = false, TCon_nominal = 306.15, TEva_nominal = 285.15, a = {0.24567204, 2.41379416, -1.67622659}, dp1_nominal = 29100, dp2_nominal = 46600) annotation(
    Placement(transformation(origin = {-542, -244}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.Sensors.TemperatureTwoPort sen_temp_hrw(redeclare package Medium = Buildings.Media.Water "Water", m_flow_nominal = m_flow_hrw_total) annotation(
    Placement(transformation(origin = {-592, 34}, extent = {{10, -10}, {-10, 10}}, rotation = -90)));
  Modelica.Blocks.Sources.Constant setp_temp_hrw(k = 30 + 273.15) annotation(
    Placement(transformation(origin = {-572, 54}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Controls.Continuous.LimPID conPID_temp_hrw(Ti = 60, controllerType = Modelica.Blocks.Types.SimpleController.PI, k = 0.5, reverseActing = true) annotation(
    Placement(transformation(origin = {-542, 54}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.Movers.SpeedControlled_y pump_hrw_to_boost(redeclare package Medium = Buildings.Media.Water "Water", redeclare my_pump_per.per_pump_hrw per) annotation(
    Placement(transformation(origin = {-632, 154}, extent = {{10, -10}, {-10, 10}}, rotation = 90)));
  Buildings.Fluid.Movers.SpeedControlled_y pump_cw_chwl(redeclare package Medium = Buildings.Media.Water "Water", redeclare my_pump_per.per_pump_cw_chw per) annotation(
    Placement(transformation(origin = {-552, -406}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Buildings.Fluid.Movers.SpeedControlled_y pump_cw_chw(redeclare package Medium = Buildings.Media.Water "Water", redeclare my_pump_per.per_pump_cw_chwl per) annotation(
    Placement(transformation(origin = {-552, -206}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Buildings.Fluid.Sensors.TemperatureTwoPort sen_temp_hrw1(redeclare package Medium = Buildings.Media.Water "Water", m_flow_nominal = m_flow_hrw_total) annotation(
    Placement(transformation(origin = {-632, 184}, extent = {{-10, 10}, {10, -10}}, rotation = -90)));
  Modelica.Blocks.Sources.Constant setp_temp_hrw1(k = 20 + 273.15) annotation(
    Placement(transformation(origin = {-662, 204}, extent = {{10, -10}, {-10, 10}})));
  Buildings.Controls.Continuous.LimPID conPID_temp_hrw1(Ti = 60, controllerType = Modelica.Blocks.Types.SimpleController.PI, k = 0.5, reverseActing = false) annotation(
    Placement(transformation(origin = {-692, 204}, extent = {{10, -10}, {-10, 10}})));
  Buildings.Fluid.FixedResistances.Junction jun4213(redeclare package Medium = Buildings.Media.Water "Water", dp_nominal = {0, 0, 0}, m_flow_nominal = {22, -11, -11}) annotation(
    Placement(transformation(origin = {-632, -68}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Buildings.Fluid.Sensors.TemperatureTwoPort sen_temp_cw_chw(redeclare package Medium = Buildings.Media.Water "Water", m_flow_nominal = m_flow_hrw_total) annotation(
    Placement(transformation(origin = {-532, -186}, extent = {{10, -10}, {-10, 10}}, rotation = -90)));
  Modelica.Blocks.Sources.Constant setp_temp_cw_chw(k = 33 + 273.15) annotation(
    Placement(transformation(origin = {-512, -166}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Controls.Continuous.LimPID conPID_temp_cw_chw(Ti = 60, controllerType = Modelica.Blocks.Types.SimpleController.PI, k = 0.5, reverseActing = false) annotation(
    Placement(transformation(origin = {-482, -166}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.Sensors.TemperatureTwoPort sen_temp_hrw21(redeclare package Medium = Buildings.Media.Water "Water", m_flow_nominal = m_flow_hrw_total) annotation(
    Placement(transformation(origin = {-532, -386}, extent = {{10, -10}, {-10, 10}}, rotation = -90)));
  Modelica.Blocks.Sources.Constant setp_temp_hrw21(k = 33 + 273.15) annotation(
    Placement(transformation(origin = {-512, -366}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Controls.Continuous.LimPID conPID_temp_hrw21(Ti = 60, controllerType = Modelica.Blocks.Types.SimpleController.PI, k = 0.5, reverseActing = false) annotation(
    Placement(transformation(origin = {-482, -366}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.Movers.SpeedControlled_y pump_hw(redeclare package Medium = Buildings.Media.Water "Water", redeclare my_pump_per.per_pump_hw per) annotation(
    Placement(transformation(origin = {-390, 264}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.Movers.SpeedControlled_y pump_hrw(redeclare package Medium = Buildings.Media.Water "Water", redeclare my_pump_per.per_pump_hrw per) annotation(
    Placement(transformation(origin = {-390, 88}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.FixedResistances.Junction jun_chw_11(redeclare package Medium = Buildings.Media.Water "Water", dp_nominal = {0, 0, 0}, m_flow_nominal = {22, -11, -11}) annotation(
    Placement(transformation(origin = {-430, -284}, extent = {{-10, 10}, {10, -10}})));
  Buildings.Fluid.FixedResistances.Junction jun153(redeclare package Medium = Buildings.Media.Water "Water", dp_nominal = {0, 0, 0}, m_flow_nominal = {11, 11, -22}) annotation(
    Placement(transformation(origin = {-450, -256}, extent = {{10, 10}, {-10, -10}})));
  Buildings.Fluid.Movers.SpeedControlled_y pump_chw_fab(redeclare package Medium = Buildings.Media.Water "Water", redeclare my_pump_per.per_pump_chw_fab per) annotation(
    Placement(transformation(origin = {-390, -284}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.Movers.SpeedControlled_y pump_chw_pcw(redeclare package Medium = Buildings.Media.Water "Water", redeclare my_pump_per.per_pump_chw_pcw per) annotation(
    Placement(transformation(origin = {-390, -184}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Constant set_speed_11(k = 1) annotation(
    Placement(transformation(origin = {-430, 314}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.FixedResistances.Junction jun_chw_111(redeclare package Medium = Buildings.Media.Water "Water", dp_nominal = {0, 0, 0}, m_flow_nominal = {22, -11, -11}) annotation(
    Placement(transformation(origin = {-428, -570}, extent = {{-10, 10}, {10, -10}})));
  Buildings.Fluid.FixedResistances.Junction jun1531(redeclare package Medium = Buildings.Media.Water "Water", dp_nominal = {0, 0, 0}, m_flow_nominal = {11, 11, -22}) annotation(
    Placement(transformation(origin = {-448, -542}, extent = {{10, 10}, {-10, -10}})));
  Buildings.Fluid.Movers.SpeedControlled_y pump_chwl_fab(redeclare package Medium = Buildings.Media.Water "Water", redeclare my_pump_per.per_pump_chwl_fab per) annotation(
    Placement(transformation(origin = {-388, -570}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.Movers.SpeedControlled_y pump_chwl_pcw(redeclare package Medium = Buildings.Media.Water "Water", redeclare my_pump_per.per_pump_chwl_pcw per) annotation(
    Placement(transformation(origin = {-390, -492}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.Actuators.Valves.ThreeWayLinear val(redeclare package Medium = Buildings.Media.Water "Water", m_flow_nominal = m_flow_cw_hr, dpValve_nominal = 1e-6, dpFixed_nominal = {1e-6, 1e-6}) annotation(
    Placement(transformation(origin = {-592, -88}, extent = {{10, -10}, {-10, 10}}, rotation = -90)));
  Modelica.Blocks.Sources.Constant m_flow_ffu(k = 915.25) annotation(
    Placement(transformation(origin = {-230, 490}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.FixedResistances.PressureDrop dp_rmf_ras(dp_nominal = 8 + 2 + 2, m_flow_nominal = m_flow_air_cleanroom - 129.55, redeclare package Medium = Buildings.Media.Air "Moist air") annotation(
    Placement(transformation(origin = {-172, 434}, extent = {{10, -10}, {-10, 10}})));
  Buildings.Fluid.Movers.FlowControlled_m_flow fan_ffu(redeclare package Medium = Buildings.Media.Air "Moist air", m_flow_nominal = m_flow_air_cleanroom, per(efficiency(V_flow = {0}, eta = {0.35}))) annotation(
    Placement(transformation(origin = {-212, 464}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Constant m_flow_cr_exhaust(k = 129.55) annotation(
    Placement(transformation(origin = {-174, 498}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add_cr_exhaust_exfiltration annotation(
    Placement(transformation(origin = {-142, 516}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Constant overpressure_pa(k = overpressure) annotation(
    Placement(transformation(origin = {-244, 522}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Constant const_exfiltration(k = 3.4235) annotation(
    Placement(transformation(origin = {-214, 558}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Sqrt sqrt_overpressure annotation(
    Placement(transformation(origin = {-214, 522}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Product product_m_flow_exfiltration annotation(
    Placement(transformation(origin = {-178, 538}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.Actuators.Valves.TwoWayLinear val_cr_sens_cooling(m_flow_nominal = 22.25, dpValve_nominal = 500, redeclare package Medium = Buildings.Media.Water "Water") annotation(
    Placement(transformation(origin = {-192, 366}, extent = {{-10, 10}, {10, -10}}, rotation = -90)));
  Buildings.Fluid.Actuators.Valves.TwoWayLinear val_duct_heat(redeclare package Medium = Buildings.Media.Water "Water", dpValve_nominal = 500, m_flow_nominal = 1.15) annotation(
    Placement(transformation(origin = {68, 348}, extent = {{-10, 10}, {10, -10}}, rotation = -90)));
  Buildings.Fluid.Actuators.Valves.TwoWayLinear val_fac_sen_cool(redeclare package Medium = Buildings.Media.Water "Water", dpValve_nominal = 500, m_flow_nominal = 1) annotation(
    Placement(transformation(origin = {388, 356}, extent = {{-10, 10}, {10, -10}}, rotation = -90)));
  Buildings.Fluid.FixedResistances.Junction jun211(redeclare package Medium = Buildings.Media.Water "Water", dp_nominal = {0, 0, 0}, m_flow_nominal = {22, -11, -11}) annotation(
    Placement(transformation(origin = {214, 264}, extent = {{-10, 10}, {10, -10}})));
  Buildings.Fluid.FixedResistances.Junction jun1111(redeclare package Medium = Buildings.Media.Water "Water", dp_nominal = {0, 0, 0}, m_flow_nominal = {11, 11, -22}) annotation(
    Placement(transformation(origin = {194, 294}, extent = {{10, 10}, {-10, -10}})));
  Buildings.Fluid.FixedResistances.Junction jun4(redeclare package Medium = Buildings.Media.Water "Water", dp_nominal = {0, 0, 0}, m_flow_nominal = {22, -11, -11}) annotation(
    Placement(transformation(origin = {-346, 264}, extent = {{-10, 10}, {10, -10}})));
  Buildings.Fluid.FixedResistances.Junction jun13(redeclare package Medium = Buildings.Media.Water "Water", dp_nominal = {0, 0, 0}, m_flow_nominal = {11, 11, -22}) annotation(
    Placement(transformation(origin = {-366, 294}, extent = {{10, 10}, {-10, -10}})));
  AHU_chem ahu_chem annotation(
    Placement(transformation(origin = {0, 468}, extent = {{-25, -25}, {25, 25}})));
  Buildings.Fluid.FixedResistances.Junction jun41(redeclare package Medium = Buildings.Media.Water "Water", dp_nominal = {0, 0, 0}, m_flow_nominal = {22, -11, -11}) annotation(
    Placement(transformation(origin = {-56, 264}, extent = {{-10, 10}, {10, -10}})));
  Buildings.Fluid.FixedResistances.Junction jun131(redeclare package Medium = Buildings.Media.Water "Water", dp_nominal = {0, 0, 0}, m_flow_nominal = {11, 11, -22}) annotation(
    Placement(transformation(origin = {-76, 294}, extent = {{10, 10}, {-10, -10}})));
  Modelica.Blocks.Math.Division division annotation(
    Placement(transformation(origin = {-94, 552}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Product power_fan_cr_exhaust annotation(
    Placement(transformation(origin = {-60, 524}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.FixedResistances.Junction jun311(redeclare package Medium = Buildings.Media.Air "Moist air", dp_nominal = {1e-6, 10, 1e-6}, m_flow_nominal = {19.58, -24.58, 5}) annotation(
    Placement(transformation(origin = {340, 470}, extent = {{-10, -10}, {10, 10}})));
  AHU_fac ahu_fac annotation(
    Placement(transformation(origin = {285, 470}, extent = {{-25, -25}, {25, 25}})));
  Modelica.Blocks.Sources.Constant m_flow_chem_exhaust(k = 17.48) annotation(
    Placement(transformation(origin = {169, 500}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Constant m_flow_fac_exhaust(k = 19.58) annotation(
    Placement(transformation(origin = {504, 500}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Constant m_flow_fac_recirc_air(k = 5) annotation(
    Placement(transformation(origin = {388, 454}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Constant load_fac_w(k = 113000) annotation(
    Placement(transformation(origin = {330, 544}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Constant load_chem_w(k = 12375) annotation(
    Placement(transformation(origin = {50, 534}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.MixingVolumes.MixingVolume room_chem(nPorts = 2, redeclare package Medium = Buildings.Media.Air "Moist air", V = 2013, m_flow_nominal = 17.48) annotation(
    Placement(transformation(origin = {118, 512}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.MixingVolumes.MixingVolume room_fac(redeclare package Medium = Buildings.Media.Air "Moist air", V = 39032.3, nPorts = 2, m_flow_nominal = 19.58) annotation(
    Placement(transformation(origin = {398, 508}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.HeatExchangers.PlateHeatExchangerEffectivenessNTU hx_pcw(redeclare package Medium1 = Buildings.Media.Water "Water", redeclare package Medium2 = Buildings.Media.Water "Water", Q_flow_nominal = 3270000, T_a1_nominal = 292.15, T_a2_nominal = 285.15, configuration = Buildings.Fluid.Types.HeatExchangerConfiguration.CounterFlow, dp1_nominal = 18100, dp2_nominal = 24900, m1_flow_nominal = 195.4, m2_flow_nominal = 130.2, use_Q_flow_nominal = true) annotation(
    Placement(transformation(origin = {460, -64}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Constant m_flow_pcw(k = 195.4) annotation(
    Placement(transformation(origin = {410, -12}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.HeatExchangers.HeaterCooler_u load_htpcw(redeclare package Medium = Buildings.Media.Water "Water", Q_flow_nominal = 625000, dp_nominal = 0, m_flow_nominal = 37.4) annotation(
    Placement(transformation(origin = {580, 24}, extent = {{10, -10}, {-10, 10}})));
  Buildings.Fluid.FixedResistances.PressureDrop filter_htpcw(m_flow_nominal = 37.4, redeclare package Medium = Buildings.Media.Water "Water", dp_nominal = 20000) annotation(
    Placement(transformation(origin = {590, -34}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Buildings.Fluid.Sensors.TemperatureTwoPort sen_temp_htpcw(redeclare package Medium = Buildings.Media.Water "Water", m_flow_nominal = 37.4) annotation(
    Placement(transformation(origin = {590, 2}, extent = {{-9, 9}, {9, -9}}, rotation = 90)));
  Buildings.Fluid.Movers.FlowControlled_m_flow pump_htpcw(redeclare package Medium = Buildings.Media.Water "Water", m_flow_nominal = 37.4) annotation(
    Placement(transformation(origin = {570, -12}, extent = {{10, -10}, {-10, 10}}, rotation = 90)));
  Buildings.Controls.Continuous.LimPID conPID_temp_htpcw(Ti = 60, controllerType = Modelica.Blocks.Types.SimpleController.P, k = 0.5, reverseActing = false) annotation(
    Placement(transformation(origin = {624, 2}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Buildings.Fluid.Actuators.Valves.TwoWayButterfly val_htpcw_chw(redeclare package Medium = Buildings.Media.Water "Water", dpFixed_nominal = 500, m_flow_nominal = 24.9) annotation(
    Placement(transformation(origin = {568, -94}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Buildings.Fluid.HeatExchangers.PlateHeatExchangerEffectivenessNTU hx_htpcw(redeclare package Medium1 = Buildings.Media.Water "Water", redeclare package Medium2 = Buildings.Media.Water "Water", Q_flow_nominal = 625000, T_a1_nominal = 309.15, T_a2_nominal = 285.15, configuration = Buildings.Fluid.Types.HeatExchangerConfiguration.CounterFlow, dp1_nominal = 18700, dp2_nominal = 25000, m1_flow_nominal = 37.4, m2_flow_nominal = 24.9, use_Q_flow_nominal = true) annotation(
    Placement(transformation(origin = {580, -64}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Constant m_flow_htpcw(k = 37.4) annotation(
    Placement(transformation(origin = {540, -12}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.HeatExchangers.HeaterCooler_u load_ltpcw(redeclare package Medium = Buildings.Media.Water "Water", Q_flow_nominal = 330000, dp_nominal = 0, m_flow_nominal = 19.75) annotation(
    Placement(transformation(origin = {452, -315}, extent = {{10, -10}, {-10, 10}})));
  Buildings.Fluid.FixedResistances.PressureDrop filter_ltpcw(m_flow_nominal = 19.75, redeclare package Medium = Buildings.Media.Water "Water", dp_nominal = 20000) annotation(
    Placement(transformation(origin = {462, -373}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Buildings.Fluid.Sensors.TemperatureTwoPort sen_temp_htpcw1(redeclare package Medium = Buildings.Media.Water "Water", m_flow_nominal = 19.75) annotation(
    Placement(transformation(origin = {462, -337}, extent = {{-9, 9}, {9, -9}}, rotation = 90)));
  Buildings.Fluid.Movers.FlowControlled_m_flow pump_ltpcw(redeclare package Medium = Buildings.Media.Water "Water", m_flow_nominal = 19.75) annotation(
    Placement(transformation(origin = {442, -351}, extent = {{10, -10}, {-10, 10}}, rotation = 90)));
  Buildings.Controls.Continuous.LimPID conPID_temp_ltpcw(Ti = 60, controllerType = Modelica.Blocks.Types.SimpleController.P, k = 0.5, reverseActing = false) annotation(
    Placement(transformation(origin = {496, -337}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Buildings.Fluid.Actuators.Valves.TwoWayButterfly val_ltpcw_chw(redeclare package Medium = Buildings.Media.Water "Water", dpFixed_nominal = 500, m_flow_nominal = 13.1) annotation(
    Placement(transformation(origin = {440, -433}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Buildings.Fluid.HeatExchangers.PlateHeatExchangerEffectivenessNTU hx_ltpcw(redeclare package Medium1 = Buildings.Media.Water "Water", redeclare package Medium2 = Buildings.Media.Water "Water", Q_flow_nominal = 330000, T_a1_nominal = 283.15, T_a2_nominal = 278.15, configuration = Buildings.Fluid.Types.HeatExchangerConfiguration.CounterFlow, dp1_nominal = 24600, dp2_nominal = 24600, m1_flow_nominal = 19.75, m2_flow_nominal = 13.1, use_Q_flow_nominal = true) annotation(
    Placement(transformation(origin = {452, -401}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Constant m_flow_ltpcw(k = 19.75) annotation(
    Placement(transformation(origin = {412, -351}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.HeatExchangers.CoolingTowers.YorkCalc cooling_tower(redeclare package Medium = Buildings.Media.Water "Water") annotation(
    Placement(transformation(origin = {-698, -20}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Constant setp_temp_cw_ct(k = 28 + 273.15) annotation(
    Placement(transformation(origin = {-688, 18}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Controls.Continuous.LimPID conPID_temp_cw_ct(Ti = 60, controllerType = Modelica.Blocks.Types.SimpleController.PI, k = 0.5, reverseActing = false) annotation(
    Placement(transformation(origin = {-658, 18}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.FixedResistances.PressureDrop valve_end_hw(redeclare package Medium = Buildings.Media.Water "Water", dp_nominal = 1000000, m_flow_nominal = m_flow_hw_total) annotation(
    Placement(transformation(origin = {684, 278}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Buildings.Fluid.FixedResistances.PressureDrop valve_end_hrw(redeclare package Medium = Buildings.Media.Water "Water", dp_nominal = 1000000, m_flow_nominal = m_flow_hrw_total) annotation(
    Placement(transformation(origin = {702, 104}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Buildings.Fluid.FixedResistances.PressureDrop valve_end_chw_pcw(redeclare package Medium = Buildings.Media.Water "Water", dp_nominal = 1000000, m_flow_nominal = m_flow_chw_total) annotation(
    Placement(transformation(origin = {717, -170}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Buildings.Fluid.FixedResistances.PressureDrop valve_end_chw(redeclare package Medium = Buildings.Media.Water "Water", dp_nominal = 1000000, m_flow_nominal = m_flow_chw_total) annotation(
    Placement(transformation(origin = {718, -270}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Buildings.Fluid.FixedResistances.PressureDrop valve_end_chwl_pcw(redeclare package Medium = Buildings.Media.Water "Water", dp_nominal = 1000000, m_flow_nominal = m_flow_chwl_total) annotation(
    Placement(transformation(origin = {717, -478}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Buildings.Fluid.FixedResistances.PressureDrop valve_end_chwl(redeclare package Medium = Buildings.Media.Water "Water", dp_nominal = 1000000, m_flow_nominal = m_flow_chw_total) annotation(
    Placement(transformation(origin = {717, -554}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
equation
  connect(jun111.port_2, jun11.port_1) annotation(
    Line(points = {{226, 118}, {-32, 118}}, color = {0, 127, 255}));
  connect(jun11.port_2, jun1.port_1) annotation(
    Line(points = {{-52, 118}, {-322, 118}}, color = {0, 127, 255}));
  connect(jun.port_2, jun2.port_1) annotation(
    Line(points = {{-302, 88}, {-32, 88}}, color = {0, 127, 255}));
  connect(jun2.port_2, jun21.port_1) annotation(
    Line(points = {{-12, 88}, {242, 88}}, color = {0, 127, 255}));
  connect(load_pcw1.port_b, pump_pcw.port_a) annotation(
    Line(points = {{450, 24}, {450, -2}}, color = {0, 127, 255}));
  connect(sen_temp_pcw_11.T, conPID_temp_pcw.u_m) annotation(
    Line(points = {{479.9, 2}, {491.8, 2}}, color = {0, 0, 127}));
  connect(setp_temp_pcw.y, conPID_temp_pcw.u_s) annotation(
    Line(points = {{504, 23}, {504, 14}}, color = {0, 0, 127}));
  connect(conPID_temp_pcw.y, val_pcw_chw.y) annotation(
    Line(points = {{504, -9}, {504, -95}, {460, -95}}, color = {0, 0, 127}));
  connect(jun31.port_2, fan_cr_exhaust.port_a) annotation(
    Line(points = {{-112, 464}, {-102, 464}}, color = {0, 127, 255}));
  connect(fan_cr_exhaust.port_b, boundary_air_exhaust.ports[1]) annotation(
    Line(points = {{-82, 464}, {-72, 464}}, color = {0, 127, 255}));
  connect(mau.port_mau_air_supply, jun3.port_1) annotation(
    Line(points = {{-272.6, 464}, {-251.7, 464}}, color = {0, 127, 255}));
  connect(jun_chw_1.port_2, jun_chw_2.port_1) annotation(
    Line(points = {{-292, -284}, {-222, -284}}, color = {0, 127, 255}));
  connect(jun_chw_2.port_2, jun_chw_3.port_1) annotation(
    Line(points = {{-202, -284}, {-12, -284}}, color = {0, 127, 255}));
  connect(jun151.port_2, jun152.port_1) annotation(
    Line(points = {{-32, -256}, {-182, -256}}, color = {0, 127, 255}));
  connect(jun152.port_2, jun15.port_1) annotation(
    Line(points = {{-202, -256}, {-312, -256}}, color = {0, 127, 255}));
  connect(jun711.port_2, jun712.port_1) annotation(
    Line(points = {{482, -184}, {582, -184}}, color = {0, 127, 255}));
  connect(jun1612.port_2, jun1611.port_1) annotation(
    Line(points = {{558, -156}, {458, -156}}, color = {0, 127, 255}));
  connect(sen_temp_cr_recirc_air.port_b, jun3.port_3) annotation(
    Line(points = {{-242, 434}, {-242, 454}}, color = {0, 127, 255}));
  connect(jun31.port_3, load_cr_recirc_air.port_a) annotation(
    Line(points = {{-122, 454}, {-122, 434}, {-130, 434}}, color = {0, 127, 255}));
  connect(fan_process_exhaust1.port_b, boundary_air_exhaust1.ports[1]) annotation(
    Line(points = {{196, 468}, {208, 468}}, color = {0, 127, 255}));
  connect(setp_temp_cr_sens_cool.y, conPID_temp_cr_sens_cooling.u_s) annotation(
    Line(points = {{-252, 403}, {-252, 396}}, color = {0, 0, 127}));
  connect(sen_temp_cr_recirc_air.T, conPID_temp_cr_sens_cooling.u_m) annotation(
    Line(points = {{-232, 423}, {-232, 384}, {-240, 384}}, color = {0, 0, 127}));
  connect(setp_temp_fac_sens_cool.y, conPID_temp_fac_sens_cool.u_s) annotation(
    Line(points = {{346, 401}, {346, 395}}, color = {0, 0, 127}));
  connect(jun3111.port_2, fan_fac_exhaust.port_a) annotation(
    Line(points = {{506, 470}, {518, 470}}, color = {0, 127, 255}));
  connect(fan_fac_exhaust.port_b, boundary_air_exhaust11.ports[1]) annotation(
    Line(points = {{538, 470}, {550, 470}}, color = {0, 127, 255}));
  connect(jun1.port_2, jun4212.port_3) annotation(
    Line(points = {{-342, 118}, {-622, 118}}, color = {0, 127, 255}));
  connect(sen_temp_chem.port_b, fan_process_exhaust1.port_a) annotation(
    Line(points = {{162, 468}, {176, 468}}, color = {0, 127, 255}));
  connect(sen_temp_chem.T, conPID_temp_chem_duct_heat.u_m) annotation(
    Line(points = {{152, 457}, {152, 380}, {60, 380}}, color = {0, 0, 127}));
  connect(setp_temp_duct_heat.y, conPID_temp_chem_duct_heat.u_s) annotation(
    Line(points = {{48, 405}, {48, 392}}, color = {0, 0, 127}));
  connect(sen_temp_fac_recirc.port_b, jun3111.port_1) annotation(
    Line(points = {{474, 470}, {486, 470}}, color = {0, 127, 255}));
  connect(sen_temp_fac_recirc.T, conPID_temp_fac_sens_cool.u_m) annotation(
    Line(points = {{464, 459}, {464, 382}, {358, 382}}, color = {0, 0, 127}));
  connect(jun7.port_2, jun72.port_1) annotation(
    Line(points = {{-222, -570}, {56, -570}}, color = {0, 127, 255}));
  connect(jun162.port_2, jun16.port_1) annotation(
    Line(points = {{36, -542}, {-242, -542}}, color = {0, 127, 255}));
  connect(hp_hw.port_a2, jun4211.port_2) annotation(
    Line(points = {{-602, 208}, {-592, 208}, {-592, 98}}, color = {0, 127, 255}));
  connect(setp_hw_preheat.y, hp_hw.TSet) annotation(
    Line(points = {{-651, 244}, {-640, 244}, {-640, 223}, {-624, 223}}, color = {0, 0, 127}));
  connect(setp_chwl_postcool.y, chiller_chwl.TSet) annotation(
    Line(points = {{-561, -446}, {-558, -446}, {-558, -437}, {-554, -437}}, color = {0, 0, 127}));
  connect(setp_temp_hrw.y, conPID_temp_hrw.u_s) annotation(
    Line(points = {{-561, 54}, {-554, 54}}, color = {0, 0, 127}));
  connect(hx_heat_recovery.port_b1, sen_temp_hrw.port_a) annotation(
    Line(points = {{-602, 0}, {-592, 0}, {-592, 24}}, color = {0, 127, 255}));
  connect(sen_temp_hrw.port_b, jun4211.port_1) annotation(
    Line(points = {{-592, 44}, {-592, 78}}, color = {0, 127, 255}));
  connect(sen_temp_hrw.T, conPID_temp_hrw.u_m) annotation(
    Line(points = {{-581, 34}, {-541, 34}, {-541, 42}, {-542, 42}}, color = {0, 0, 127}));
  connect(jun421.port_2, pump_cw_chwl.port_a) annotation(
    Line(points = {{-632, -176}, {-632, -355}, {-552, -355}, {-552, -395}}, color = {0, 127, 255}));
  connect(pump_cw_chwl.port_b, chiller_chwl.port_a1) annotation(
    Line(points = {{-552, -416}, {-552, -440}}, color = {0, 127, 255}));
  connect(jun421.port_3, pump_cw_chw.port_a) annotation(
    Line(points = {{-622, -166}, {-552, -166}, {-552, -195}}, color = {0, 127, 255}));
  connect(pump_cw_chw.port_b, chiller_chw.port_a1) annotation(
    Line(points = {{-552, -216}, {-552, -238}}, color = {0, 127, 255}));
  connect(jun4212.port_2, hx_heat_recovery.port_a1) annotation(
    Line(points = {{-632, 108}, {-632, 0}, {-622, 0}}, color = {0, 127, 255}));
  connect(sen_temp_hrw1.T, conPID_temp_hrw1.u_m) annotation(
    Line(points = {{-643, 184}, {-692, 184}, {-692, 192}}, color = {0, 0, 127}));
  connect(setp_temp_hrw1.y, conPID_temp_hrw1.u_s) annotation(
    Line(points = {{-673, 204}, {-680, 204}}, color = {0, 0, 127}));
  connect(conPID_temp_hrw1.y, pump_hrw_to_boost.y) annotation(
    Line(points = {{-703, 204}, {-712, 204}, {-712, 154}, {-644, 154}}, color = {0, 0, 127}));
  connect(setp_chw_precool.y, chiller_chw.TSet) annotation(
    Line(points = {{-561, -244}, {-557.5, -244}, {-557.5, -234}, {-554, -234}}, color = {0, 0, 127}));
  connect(hp_hw.port_b2, sen_temp_hrw1.port_a) annotation(
    Line(points = {{-622, 208}, {-632, 208}, {-632, 194}}, color = {0, 127, 255}));
  connect(sen_temp_hrw1.port_b, pump_hrw_to_boost.port_a) annotation(
    Line(points = {{-632, 174}, {-632, 164}}, color = {0, 127, 255}));
  connect(pump_hrw_to_boost.port_b, jun4212.port_1) annotation(
    Line(points = {{-632, 144}, {-632, 128}}, color = {0, 127, 255}));
  connect(setp_temp_cw_chw.y, conPID_temp_cw_chw.u_s) annotation(
    Line(points = {{-501, -166}, {-495, -166}}, color = {0, 0, 127}));
  connect(sen_temp_cw_chw.T, conPID_temp_cw_chw.u_m) annotation(
    Line(points = {{-521, -186}, {-482, -186}, {-482, -178}}, color = {0, 0, 127}));
  connect(conPID_temp_cw_chw.y, pump_cw_chw.y) annotation(
    Line(points = {{-471, -166}, {-463, -166}, {-463, -206}, {-541, -206}}, color = {0, 0, 127}));
  connect(sen_temp_hrw21.T, conPID_temp_hrw21.u_m) annotation(
    Line(points = {{-521, -386}, {-483, -386}, {-483, -378}}, color = {0, 0, 127}));
  connect(setp_temp_hrw21.y, conPID_temp_hrw21.u_s) annotation(
    Line(points = {{-501, -366}, {-495, -366}}, color = {0, 0, 127}));
  connect(conPID_temp_hrw21.y, pump_cw_chwl.y) annotation(
    Line(points = {{-471, -366}, {-463, -366}, {-463, -406}, {-541, -406}}, color = {0, 0, 127}));
  connect(hx_heat_recovery.port_b2, jun4213.port_1) annotation(
    Line(points = {{-622, -12}, {-632, -12}, {-632, -58}}, color = {0, 127, 255}));
  connect(jun4213.port_2, jun421.port_1) annotation(
    Line(points = {{-632, -78}, {-632, -156}}, color = {0, 127, 255}));
  connect(chiller_chw.port_b1, sen_temp_cw_chw.port_a) annotation(
    Line(points = {{-532, -238}, {-532, -196}}, color = {0, 127, 255}));
  connect(sen_temp_cw_chw.port_b, jun42.port_3) annotation(
    Line(points = {{-532, -176}, {-532, -146}, {-582, -146}}, color = {0, 127, 255}));
  connect(chiller_chwl.port_b1, sen_temp_hrw21.port_a) annotation(
    Line(points = {{-532, -440}, {-532, -396}}, color = {0, 127, 255}));
  connect(sen_temp_hrw21.port_b, jun42.port_1) annotation(
    Line(points = {{-532, -376}, {-532, -316}, {-592, -316}, {-592, -156}}, color = {0, 127, 255}));
  connect(jun_chw_3.port_2, jun621.port_1) annotation(
    Line(points = {{8, -284}, {330, -284}}, color = {0, 127, 255}));
  connect(jun1511.port_2, jun151.port_1) annotation(
    Line(points = {{310, -256}, {-12, -256}}, color = {0, 127, 255}));
  connect(hp_hw.port_b1, pump_hw.port_a) annotation(
    Line(points = {{-602, 220}, {-592, 220}, {-592, 264}, {-400, 264}}, color = {0, 127, 255}));
  connect(jun4211.port_3, pump_hrw.port_a) annotation(
    Line(points = {{-582, 88}, {-400, 88}}, color = {0, 127, 255}));
  connect(pump_hrw.port_b, jun.port_1) annotation(
    Line(points = {{-380, 88}, {-322, 88}}, color = {0, 127, 255}));
  connect(jun1611.port_2, jun153.port_3) annotation(
    Line(points = {{438, -156}, {-450, -156}, {-450, -246}}, color = {0, 127, 255}));
  connect(jun15.port_2, jun153.port_1) annotation(
    Line(points = {{-332, -256}, {-440, -256}}, color = {0, 127, 255}));
  connect(jun153.port_2, chiller_chw.port_a2) annotation(
    Line(points = {{-460, -256}, {-532, -256}, {-532, -250}}, color = {0, 127, 255}));
  connect(chiller_chw.port_b2, jun_chw_11.port_1) annotation(
    Line(points = {{-552, -250}, {-552, -284}, {-440, -284}}, color = {0, 127, 255}));
  connect(pump_chw_pcw.port_b, jun711.port_1) annotation(
    Line(points = {{-380, -184}, {462, -184}}, color = {0, 127, 255}));
  connect(jun_chw_11.port_3, pump_chw_pcw.port_a) annotation(
    Line(points = {{-430, -274}, {-430, -184}, {-400, -184}}, color = {0, 127, 255}));
  connect(jun_chw_11.port_2, pump_chw_fab.port_a) annotation(
    Line(points = {{-420, -284}, {-400, -284}}, color = {0, 127, 255}));
  connect(pump_chw_fab.port_b, jun_chw_1.port_1) annotation(
    Line(points = {{-380, -284}, {-312, -284}}, color = {0, 127, 255}));
  connect(chiller_chwl.port_b2, jun_chw_111.port_1) annotation(
    Line(points = {{-552, -452}, {-552, -570}, {-438, -570}}, color = {0, 127, 255}));
  connect(jun_chw_111.port_2, pump_chwl_fab.port_a) annotation(
    Line(points = {{-418, -570}, {-398, -570}}, color = {0, 127, 255}));
  connect(pump_chwl_fab.port_b, jun7.port_1) annotation(
    Line(points = {{-378, -570}, {-242, -570}}, color = {0, 127, 255}));
  connect(jun16.port_2, jun1531.port_1) annotation(
    Line(points = {{-262, -542}, {-438, -542}}, color = {0, 127, 255}));
  connect(jun1531.port_2, chiller_chwl.port_a2) annotation(
    Line(points = {{-458, -542}, {-532, -542}, {-532, -452}}, color = {0, 127, 255}));
  connect(jun_chw_111.port_3, pump_chwl_pcw.port_a) annotation(
    Line(points = {{-428, -560}, {-428, -492}, {-400, -492}}, color = {0, 127, 255}));
  connect(pump_chwl_pcw.port_b, jun71.port_1) annotation(
    Line(points = {{-380, -492}, {454, -492}}, color = {0, 127, 255}));
  connect(jun161.port_2, jun1531.port_3) annotation(
    Line(points = {{430, -464}, {-448, -464}, {-448, -532}}, color = {0, 127, 255}));
  connect(set_speed_11.y, pump_hw.y) annotation(
    Line(points = {{-419, 314}, {-411, 314}, {-411, 304}, {-391, 304}, {-391, 276}}, color = {0, 0, 127}));
  connect(set_speed_11.y, pump_hrw.y) annotation(
    Line(points = {{-419, 314}, {-411, 314}, {-411, 124}, {-391, 124}, {-391, 100}}, color = {0, 0, 127}));
  connect(set_speed_11.y, pump_chw_pcw.y) annotation(
    Line(points = {{-419, 314}, {-411, 314}, {-411, -146}, {-391, -146}, {-391, -172}}, color = {0, 0, 127}));
  connect(set_speed_11.y, pump_chw_fab.y) annotation(
    Line(points = {{-419, 314}, {-411, 314}, {-411, -246}, {-391, -246}, {-391, -272}}, color = {0, 0, 127}));
  connect(set_speed_11.y, pump_chwl_pcw.y) annotation(
    Line(points = {{-419, 314}, {-411, 314}, {-411, -480}, {-390, -480}}, color = {0, 0, 127}));
  connect(set_speed_11.y, pump_chwl_fab.y) annotation(
    Line(points = {{-419, 314}, {-411, 314}, {-411, -558}, {-388, -558}}, color = {0, 0, 127}));
  connect(conPID_temp_hrw.y, val.y) annotation(
    Line(points = {{-531, 54}, {-523, 54}, {-523, -88}, {-580, -88}}, color = {0, 0, 127}));
  connect(jun42.port_2, val.port_1) annotation(
    Line(points = {{-592, -136}, {-592, -98}}, color = {0, 127, 255}));
  connect(val.port_2, hx_heat_recovery.port_a2) annotation(
    Line(points = {{-592, -78}, {-592, -12}, {-602, -12}}, color = {0, 127, 255}));
  connect(load_cr_recirc_air.port_b, dp_rmf_ras.port_a) annotation(
    Line(points = {{-152, 434}, {-162, 434}}, color = {0, 127, 255}));
  connect(dp_rmf_ras.port_b, coil_cr_sens_cooling.port_a2) annotation(
    Line(points = {{-182, 434}, {-192, 434}}, color = {0, 127, 255}));
  connect(coil_cr_sens_cooling.port_b2, sen_temp_cr_recirc_air.port_a) annotation(
    Line(points = {{-212, 434}, {-222, 434}}, color = {0, 127, 255}));
  connect(coil_cr_sens_cooling.port_a1, jun_chw_2.port_3) annotation(
    Line(points = {{-212, 422}, {-212, -274}}, color = {0, 127, 255}));
  connect(jun3.port_2, fan_ffu.port_a) annotation(
    Line(points = {{-232, 464}, {-222, 464}}, color = {0, 127, 255}));
  connect(fan_ffu.port_b, dp_cleanroom.port_a) annotation(
    Line(points = {{-202, 464}, {-192, 464}}, color = {0, 127, 255}));
  connect(dp_cleanroom.port_b, jun31.port_1) annotation(
    Line(points = {{-172, 464}, {-132, 464}}, color = {0, 127, 255}));
  connect(overpressure_pa.y, sqrt_overpressure.u) annotation(
    Line(points = {{-233, 522}, {-227, 522}}, color = {0, 0, 127}));
  connect(const_exfiltration.y, product_m_flow_exfiltration.u1) annotation(
    Line(points = {{-203, 558}, {-197, 558}, {-197, 544}, {-190, 544}}, color = {0, 0, 127}));
  connect(sqrt_overpressure.y, product_m_flow_exfiltration.u2) annotation(
    Line(points = {{-203, 522}, {-197, 522}, {-197, 532}, {-190, 532}}, color = {0, 0, 127}));
  connect(product_m_flow_exfiltration.y, add_cr_exhaust_exfiltration.u1) annotation(
    Line(points = {{-167, 538}, {-163, 538}, {-163, 522}, {-154, 522}}, color = {0, 0, 127}));
  connect(m_flow_cr_exhaust.y, add_cr_exhaust_exfiltration.u2) annotation(
    Line(points = {{-163, 498}, {-158, 498}, {-158, 510}, {-154, 510}}, color = {0, 0, 127}));
  connect(add_cr_exhaust_exfiltration.y, fan_cr_exhaust.m_flow_in) annotation(
    Line(points = {{-131, 516}, {-93, 516}, {-93, 476}, {-92, 476}}, color = {0, 0, 127}));
  connect(conPID_temp_cr_sens_cooling.y, val_cr_sens_cooling.y) annotation(
    Line(points = {{-252, 373}, {-252, 365}, {-204, 365}}, color = {0, 0, 127}));
  connect(coil_cr_sens_cooling.port_b1, val_cr_sens_cooling.port_a) annotation(
    Line(points = {{-192, 422}, {-192, 376}}, color = {0, 127, 255}));
  connect(val_cr_sens_cooling.port_b, jun152.port_3) annotation(
    Line(points = {{-192, 356}, {-192, -246}}, color = {0, 127, 255}));
  connect(conPID_temp_chem_duct_heat.y, val_duct_heat.y) annotation(
    Line(points = {{48, 369}, {48, 347}, {56, 347}}, color = {0, 0, 127}));
  connect(val_duct_heat.port_b, jun12.port_3) annotation(
    Line(points = {{68, 338}, {68, 304}}, color = {0, 127, 255}));
  connect(coil_duct_chem.port_b1, val_duct_heat.port_a) annotation(
    Line(points = {{68, 456}, {68, 358}}, color = {0, 127, 255}));
  connect(coil_duct_chem.port_a1, jun5.port_3) annotation(
    Line(points = {{88, 456}, {88, 274}}, color = {0, 127, 255}));
  connect(val_fac_sen_cool.port_b, jun152111.port_3) annotation(
    Line(points = {{388, 346}, {388, 304}}, color = {0, 127, 255}));
  connect(conPID_temp_fac_sens_cool.y, val_fac_sen_cool.y) annotation(
    Line(points = {{346, 371}, {346, 356}, {376, 356}}, color = {0, 0, 127}));
  connect(jun5.port_2, jun211.port_1) annotation(
    Line(points = {{98, 264}, {204, 264}}, color = {0, 127, 255}));
  connect(jun211.port_2, jun61111.port_1) annotation(
    Line(points = {{224, 264}, {358, 264}}, color = {0, 127, 255}));
  connect(jun152111.port_2, jun1111.port_1) annotation(
    Line(points = {{378, 294}, {204, 294}}, color = {0, 127, 255}));
  connect(jun1111.port_2, jun12.port_1) annotation(
    Line(points = {{184, 294}, {78, 294}}, color = {0, 127, 255}));
  connect(jun4.port_3, mau.port_hw_sup1) annotation(
    Line(points = {{-346, 274}, {-346, 308}, {-317, 308}, {-317, 438}}, color = {0, 127, 255}));
  connect(mau.port_hw_ret1, jun13.port_3) annotation(
    Line(points = {{-323.96, 437.6}, {-323.96, 329.6}, {-365.96, 329.6}, {-365.96, 303.6}}, color = {0, 127, 255}));
  connect(jun.port_3, mau.port_hw_sup) annotation(
    Line(points = {{-312, 98}, {-312, 172}, {-302, 172}, {-302, 438}}, color = {0, 127, 255}));
  connect(mau.port_hw_ret, jun1.port_3) annotation(
    Line(points = {{-309.56, 437.6}, {-309.56, 197.6}, {-331.56, 197.6}, {-331.56, 127.6}}, color = {0, 127, 255}));
  connect(jun_chw_1.port_3, mau.port_chw_sup) annotation(
    Line(points = {{-302, -274}, {-302, -130}, {-288, -130}, {-288, 438}}, color = {0, 127, 255}));
  connect(mau.port_chw_ret, jun15.port_3) annotation(
    Line(points = {{-295.16, 437.6}, {-295.16, -100.4}, {-322.16, -100.4}, {-322.16, -246.4}}, color = {0, 127, 255}));
  connect(jun7.port_3, mau.port_chwl_sup) annotation(
    Line(points = {{-232, -560}, {-232, -346}, {-274, -346}, {-274, 438}}, color = {0, 127, 255}));
  connect(mau.port_chwl_ret, jun16.port_3) annotation(
    Line(points = {{-280.76, 437.6}, {-280.76, -355.4}, {-252, -355.4}, {-252, -532}}, color = {0, 127, 255}));
  connect(weaDat.weaBus, mau.weaBus) annotation(
    Line(points = {{-758, 10}, {-726, 10}, {-726, 464}, {-326, 464}}, color = {255, 204, 51}, thickness = 0.5));
  connect(ahu_chem.port_mau_air_supply, coil_duct_chem.port_a2) annotation(
    Line(points = {{27.5, 468}, {68, 468}}, color = {0, 127, 255}));
  connect(weaDat.weaBus, ahu_chem.weaBus) annotation(
    Line(points = {{-758, 10}, {-726, 10}, {-726, 588}, {-38, 588}, {-38, 468}, {-28, 468}}, color = {255, 204, 51}, thickness = 0.5));
  connect(jun41.port_3, ahu_chem.port_hw_sup1) annotation(
    Line(points = {{-56, 274}, {-56, 338}, {-18, 338}, {-18, 440}}, color = {0, 127, 255}));
  connect(ahu_chem.port_hw_ret1, jun131.port_3) annotation(
    Line(points = {{-26, 440.5}, {-26, 352.5}, {-76, 352.5}, {-76, 304.5}}, color = {0, 127, 255}));
  connect(jun2.port_3, ahu_chem.port_hw_sup) annotation(
    Line(points = {{-22, 98}, {-22, 192}, {-4, 192}, {-4, 440}}, color = {0, 127, 255}));
  connect(ahu_chem.port_hw_ret, jun11.port_3) annotation(
    Line(points = {{-11, 440.5}, {-13, 440.5}, {-13, 222.5}, {-43, 222.5}, {-43, 128.5}}, color = {0, 127, 255}));
  connect(jun_chw_3.port_3, ahu_chem.port_chw_sup) annotation(
    Line(points = {{-2, -274}, {-2, -82}, {12, -82}, {12, 440}}, color = {0, 127, 255}));
  connect(ahu_chem.port_chw_ret, jun151.port_3) annotation(
    Line(points = {{4, 440.5}, {4, -41.5}, {-22, -41.5}, {-22, -245.5}}, color = {0, 127, 255}));
  connect(jun72.port_3, ahu_chem.port_chwl_sup) annotation(
    Line(points = {{66, -560}, {66, -362}, {26, -362}, {26, 440}}, color = {0, 127, 255}));
  connect(ahu_chem.port_chwl_ret, jun162.port_3) annotation(
    Line(points = {{19, 440.5}, {19, -393.5}, {46, -393.5}, {46, -532}}, color = {0, 127, 255}));
  connect(m_flow_ffu.y, fan_ffu.m_flow_in) annotation(
    Line(points = {{-219, 490}, {-213, 490}, {-213, 476}}, color = {0, 0, 127}));
  connect(add_cr_exhaust_exfiltration.y, division.u2) annotation(
    Line(points = {{-131, 516}, {-119, 516}, {-119, 546}, {-107, 546}}, color = {0, 0, 127}));
  connect(m_flow_cr_exhaust.y, division.u1) annotation(
    Line(points = {{-163, 498}, {-159, 498}, {-159, 558}, {-107, 558}}, color = {0, 0, 127}));
  connect(division.y, power_fan_cr_exhaust.u1) annotation(
    Line(points = {{-83, 552}, {-78, 552}, {-78, 530}, {-72, 530}}, color = {0, 0, 127}));
  connect(fan_cr_exhaust.P, power_fan_cr_exhaust.u2) annotation(
    Line(points = {{-81, 473}, {-79, 473}, {-79, 517}, {-73, 517}}, color = {0, 0, 127}));
  connect(pump_hw.port_b, jun4.port_1) annotation(
    Line(points = {{-380, 264}, {-356, 264}}, color = {0, 127, 255}));
  connect(jun4.port_2, jun41.port_1) annotation(
    Line(points = {{-336, 264}, {-66, 264}}, color = {0, 127, 255}));
  connect(jun41.port_2, jun5.port_1) annotation(
    Line(points = {{-46, 264}, {78, 264}}, color = {0, 127, 255}));
  connect(jun12.port_2, jun131.port_1) annotation(
    Line(points = {{58, 294}, {-66, 294}}, color = {0, 127, 255}));
  connect(jun131.port_2, jun13.port_1) annotation(
    Line(points = {{-86, 294}, {-356, 294}}, color = {0, 127, 255}));
  connect(jun13.port_2, hp_hw.port_a1) annotation(
    Line(points = {{-376, 294}, {-632, 294}, {-632, 220}, {-622, 220}}, color = {0, 127, 255}));
  connect(ahu_fac.port_mau_air_supply, jun311.port_1) annotation(
    Line(points = {{312.5, 470}, {330, 470}}, color = {0, 127, 255}));
  connect(weaDat.weaBus, ahu_fac.weaBus) annotation(
    Line(points = {{-758, 10}, {-726, 10}, {-726, 588}, {248, 588}, {248, 470}, {258, 470}}, color = {255, 204, 51}, thickness = 0.5));
  connect(jun211.port_3, ahu_fac.port_hw_sup) annotation(
    Line(points = {{214, 274}, {214, 314}, {270, 314}, {270, 442}}, color = {0, 127, 255}));
  connect(ahu_fac.port_hw_ret, jun1111.port_3) annotation(
    Line(points = {{260, 442}, {260, 326}, {194, 326}, {194, 304}}, color = {0, 127, 255}));
  connect(jun21.port_3, ahu_fac.port_hrw_sup) annotation(
    Line(points = {{252, 98}, {252, 164}, {290, 164}, {290, 442}}, color = {0, 127, 255}));
  connect(ahu_fac.port_hrw_ret, jun111.port_3) annotation(
    Line(points = {{280, 442}, {280, 200}, {236, 200}, {236, 128}}, color = {0, 127, 255}));
  connect(jun621.port_3, ahu_fac.port_chw_sup) annotation(
    Line(points = {{340, -274}, {340, -116}, {310, -116}, {310, 442}}, color = {0, 127, 255}));
  connect(ahu_fac.port_chw_ret, jun1511.port_3) annotation(
    Line(points = {{300, 442}, {300, -138}, {320, -138}, {320, -246}}, color = {0, 127, 255}));
  connect(m_flow_chem_exhaust.y, fan_process_exhaust1.m_flow_in) annotation(
    Line(points = {{180, 500}, {186, 500}, {186, 480}}, color = {0, 0, 127}));
  connect(m_flow_fac_exhaust.y, fan_fac_exhaust.m_flow_in) annotation(
    Line(points = {{516, 500}, {528, 500}, {528, 482}}, color = {0, 0, 127}));
  connect(jun3111.port_3, fan_fac_recirc_air.port_a) annotation(
    Line(points = {{496, 460}, {496, 432}, {420, 432}}, color = {0, 127, 255}));
  connect(room_chem.ports[1], coil_duct_chem.port_b2) annotation(
    Line(points = {{118, 502}, {116, 502}, {116, 468}, {88, 468}}, color = {0, 127, 255}));
  connect(room_chem.ports[2], sen_temp_chem.port_a) annotation(
    Line(points = {{118, 502}, {120, 502}, {120, 468}, {142, 468}}, color = {0, 127, 255}));
  connect(load_chem.port, room_chem.heatPort) annotation(
    Line(points = {{88, 534}, {98, 534}, {98, 512}, {108, 512}}, color = {191, 0, 0}));
  connect(room_fac.ports[1], jun311.port_2) annotation(
    Line(points = {{398, 498}, {396, 498}, {396, 470}, {350, 470}}, color = {0, 127, 255}));
  connect(room_fac.ports[2], sen_temp_fac_recirc.port_a) annotation(
    Line(points = {{398, 498}, {400, 498}, {400, 470}, {454, 470}}, color = {0, 127, 255}));
  connect(load_fac.port, room_fac.heatPort) annotation(
    Line(points = {{368, 544}, {380, 544}, {380, 508}, {388, 508}}, color = {191, 0, 0}));
  connect(hx_pcw.port_b2, val_pcw_chw.port_a) annotation(
    Line(points = {{450, -70}, {448, -70}, {448, -84}}, color = {0, 127, 255}));
  connect(pump_pcw.port_b, hx_pcw.port_a1) annotation(
    Line(points = {{450, -22}, {450, -58}}, color = {0, 127, 255}));
  connect(sen_temp_pcw_11.port_b, load_pcw1.port_a) annotation(
    Line(points = {{470, 11}, {470, 23}}, color = {0, 127, 255}));
  connect(val_pcw_chw.port_b, jun1611.port_3) annotation(
    Line(points = {{448, -104}, {448, -146}}, color = {0, 127, 255}));
  connect(m_flow_pcw.y, pump_pcw.m_flow_in) annotation(
    Line(points = {{421, -12}, {437, -12}}, color = {0, 0, 127}));
  connect(load_htpcw.port_b, pump_htpcw.port_a) annotation(
    Line(points = {{570, 24}, {570, -2}}, color = {0, 127, 255}));
  connect(sen_temp_htpcw.T, conPID_temp_htpcw.u_m) annotation(
    Line(points = {{599.9, 2}, {611.8, 2}}, color = {0, 0, 127}));
  connect(conPID_temp_htpcw.y, val_htpcw_chw.y) annotation(
    Line(points = {{624, -9}, {624, -95}, {580, -95}}, color = {0, 0, 127}));
  connect(hx_htpcw.port_b2, val_htpcw_chw.port_a) annotation(
    Line(points = {{570, -70}, {568, -70}, {568, -84}}, color = {0, 127, 255}));
  connect(pump_htpcw.port_b, hx_htpcw.port_a1) annotation(
    Line(points = {{570, -22}, {570, -58}}, color = {0, 127, 255}));
  connect(m_flow_htpcw.y, pump_htpcw.m_flow_in) annotation(
    Line(points = {{551, -12}, {557, -12}}, color = {0, 0, 127}));
  connect(val_htpcw_chw.port_b, jun1612.port_3) annotation(
    Line(points = {{568, -104}, {568, -146}}, color = {0, 127, 255}));
  connect(sen_temp_htpcw.port_b, load_htpcw.port_a) annotation(
    Line(points = {{590, 11}, {590, 23}}, color = {0, 127, 255}));
  connect(jun711.port_3, hx_pcw.port_a2) annotation(
    Line(points = {{472, -174}, {472, -70}, {470, -70}}, color = {0, 127, 255}));
  connect(hx_pcw.port_b1, filter_pcw.port_a) annotation(
    Line(points = {{470, -58}, {470, -42}}, color = {0, 127, 255}));
  connect(filter_pcw.port_b, sen_temp_pcw_11.port_a) annotation(
    Line(points = {{470, -22}, {470, -6}}, color = {0, 127, 255}));
  connect(jun712.port_3, hx_htpcw.port_a2) annotation(
    Line(points = {{592, -174}, {592, -70}, {590, -70}}, color = {0, 127, 255}));
  connect(hx_htpcw.port_b1, filter_htpcw.port_a) annotation(
    Line(points = {{590, -58}, {590, -44}}, color = {0, 127, 255}));
  connect(filter_htpcw.port_b, sen_temp_htpcw.port_a) annotation(
    Line(points = {{590, -24}, {590, -6}}, color = {0, 127, 255}));
  connect(setp_temp_htpcw.y, conPID_temp_htpcw.u_s) annotation(
    Line(points = {{624, 26}, {624, 14}}, color = {0, 0, 127}));
  connect(load_ltpcw.port_b, pump_ltpcw.port_a) annotation(
    Line(points = {{442, -315}, {442, -341}}, color = {0, 127, 255}));
  connect(sen_temp_htpcw1.T, conPID_temp_ltpcw.u_m) annotation(
    Line(points = {{471.9, -337}, {483.8, -337}}, color = {0, 0, 127}));
  connect(conPID_temp_ltpcw.y, val_ltpcw_chw.y) annotation(
    Line(points = {{496, -348}, {496, -434}, {452, -434}}, color = {0, 0, 127}));
  connect(hx_ltpcw.port_b2, val_ltpcw_chw.port_a) annotation(
    Line(points = {{442, -407}, {440, -407}, {440, -423}}, color = {0, 127, 255}));
  connect(pump_ltpcw.port_b, hx_ltpcw.port_a1) annotation(
    Line(points = {{442, -361}, {442, -395}}, color = {0, 127, 255}));
  connect(m_flow_ltpcw.y, pump_ltpcw.m_flow_in) annotation(
    Line(points = {{423, -351}, {429, -351}}, color = {0, 0, 127}));
  connect(sen_temp_htpcw1.port_b, load_ltpcw.port_a) annotation(
    Line(points = {{462, -328}, {462, -316}}, color = {0, 127, 255}));
  connect(hx_ltpcw.port_b1, filter_ltpcw.port_a) annotation(
    Line(points = {{462, -395}, {462, -383}}, color = {0, 127, 255}));
  connect(filter_ltpcw.port_b, sen_temp_htpcw1.port_a) annotation(
    Line(points = {{462, -363}, {462, -345}}, color = {0, 127, 255}));
  connect(jun71.port_3, hx_ltpcw.port_a2) annotation(
    Line(points = {{464, -482}, {464, -407}, {462, -407}}, color = {0, 127, 255}));
  connect(val_ltpcw_chw.port_b, jun161.port_3) annotation(
    Line(points = {{440, -442}, {440, -454}}, color = {0, 127, 255}));
  connect(setp_temp_ltpcw.y, conPID_temp_ltpcw.u_s) annotation(
    Line(points = {{496, -312}, {496, -324}}, color = {0, 0, 127}));
  connect(fan_fac_recirc_air.port_b, coil_fac_sens_cooling.port_a2) annotation(
    Line(points = {{400, 432}, {388, 432}}, color = {0, 127, 255}));
  connect(coil_fac_sens_cooling.port_b2, jun311.port_3) annotation(
    Line(points = {{368, 432}, {340, 432}, {340, 460}}, color = {0, 127, 255}));
  connect(val_fac_sen_cool.port_a, coil_fac_sens_cooling.port_b1) annotation(
    Line(points = {{388, 366}, {388, 420}}, color = {0, 127, 255}));
  connect(coil_fac_sens_cooling.port_a1, jun61111.port_3) annotation(
    Line(points = {{368, 420}, {368, 274}}, color = {0, 127, 255}));
  connect(setp_temp_cw_ct.y, conPID_temp_cw_ct.u_s) annotation(
    Line(points = {{-677, 18}, {-670, 18}}, color = {0, 0, 127}));
  connect(load_chem_w.y, load_chem.Q_flow) annotation(
    Line(points = {{62, 534}, {68, 534}}, color = {0, 0, 127}));
  connect(load_fac_w.y, load_fac.Q_flow) annotation(
    Line(points = {{342, 544}, {348, 544}}, color = {0, 0, 127}));
  connect(m_flow_fac_recirc_air.y, fan_fac_recirc_air.m_flow_in) annotation(
    Line(points = {{400, 454}, {410, 454}, {410, 444}}, color = {0, 0, 127}));
  connect(jun61111.port_2, valve_end_hw.port_a) annotation(
    Line(points = {{378, 264}, {684, 264}, {684, 268}}, color = {0, 127, 255}));
  connect(valve_end_hw.port_b, jun152111.port_1) annotation(
    Line(points = {{684, 288}, {684, 294}, {398, 294}}, color = {0, 127, 255}));
  connect(jun21.port_2, valve_end_hrw.port_a) annotation(
    Line(points = {{262, 88}, {702, 88}, {702, 94}}, color = {0, 127, 255}));
  connect(valve_end_hrw.port_b, jun111.port_1) annotation(
    Line(points = {{702, 114}, {702, 118}, {246, 118}}, color = {0, 127, 255}));
  connect(jun712.port_2, valve_end_chw_pcw.port_a) annotation(
    Line(points = {{602, -184}, {718, -184}, {718, -180}}, color = {0, 127, 255}));
  connect(valve_end_chw_pcw.port_b, jun1612.port_1) annotation(
    Line(points = {{718, -160}, {718, -156}, {578, -156}}, color = {0, 127, 255}));
  connect(jun621.port_2, valve_end_chw.port_a) annotation(
    Line(points = {{350, -284}, {718, -284}, {718, -280}}, color = {0, 127, 255}));
  connect(valve_end_chw.port_b, jun1511.port_1) annotation(
    Line(points = {{718, -260}, {718, -256}, {330, -256}}, color = {0, 127, 255}));
  connect(jun71.port_2, valve_end_chwl_pcw.port_a) annotation(
    Line(points = {{474, -492}, {718, -492}, {718, -488}}, color = {0, 127, 255}));
  connect(valve_end_chwl_pcw.port_b, jun161.port_1) annotation(
    Line(points = {{718, -468}, {718, -464}, {450, -464}}, color = {0, 127, 255}));
  connect(jun72.port_2, valve_end_chwl.port_a) annotation(
    Line(points = {{76, -570}, {718, -570}, {718, -564}}, color = {0, 127, 255}));
  connect(valve_end_chwl.port_b, jun162.port_1) annotation(
    Line(points = {{718, -544}, {718, -542}, {56, -542}}, color = {0, 127, 255}));
  connect(set_speed_11.y, load_cr_recirc_air.u) annotation(
    Line(points = {{-418, 314}, {-108, 314}, {-108, 440}, {-130, 440}}, color = {0, 0, 127}));
  connect(set_speed_11.y, load_pcw1.u) annotation(
    Line(points = {{-418, 314}, {-108, 314}, {-108, 60}, {478, 60}, {478, 30}, {472, 30}}, color = {0, 0, 127}));
  connect(set_speed_11.y, load_htpcw.u) annotation(
    Line(points = {{-418, 314}, {-108, 314}, {-108, 60}, {598, 60}, {598, 30}, {592, 30}}, color = {0, 0, 127}));
  connect(set_speed_11.y, load_ltpcw.u) annotation(
    Line(points = {{-418, 314}, {-108, 314}, {-108, -232}, {470, -232}, {470, -308}, {464, -308}}, color = {0, 0, 127}));
  connect(cooling_tower.TLvg, conPID_temp_cw_ct.u_m) annotation(
    Line(points = {{-687, -26}, {-658, -26}, {-658, 6}}, color = {0, 0, 127}));
  connect(weaDat.weaBus.TWetBul, cooling_tower.TAir) annotation(
    Line(points = {{-758, 10}, {-726, 10}, {-726, -16}, {-710, -16}}, color = {0, 0, 127}));
  connect(conPID_temp_cw_ct.y, cooling_tower.y) annotation(
    Line(points = {{-647, 18}, {-641, 18}, {-641, 0}, {-719, 0}, {-719, -12}, {-710, -12}}, color = {0, 0, 127}));
  connect(cooling_tower.port_b, jun4213.port_3) annotation(
    Line(points = {{-688, -20}, {-688, -68}, {-642, -68}}, color = {0, 127, 255}));
  connect(val.port_3, cooling_tower.port_a) annotation(
    Line(points = {{-602, -88}, {-708, -88}, {-708, -20}}, color = {0, 127, 255}));
  annotation(
    uses(Buildings(version = "12.1.0"), Modelica(version = "4.0.0")),
    Diagram(coordinateSystem(extent = {{-800, -600}, {800, 600}})));
end hvac_heat_recovery;
