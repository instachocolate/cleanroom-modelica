model AHU_chem
  parameter Modelica.Units.SI.MassFlowRate m_air_flowrate = 17.48 "Air Mass Flow Rate kg/s" annotation(
    Placement(visible = false, transformation(extent = {{0, 0}, {0, 0}})));
  Buildings.Fluid.HeatExchangers.DryCoilCounterFlow coil_preheat(redeclare package Medium1 = Buildings.Media.Water "Water", redeclare package Medium2 = Buildings.Media.Air "Moist air", m1_flow_nominal = 4.52, m2_flow_nominal = m_air_flowrate, dp1_nominal = 20000, dp2_nominal = 35, UA_nominal = 4600) annotation(
    Placement(transformation(origin = {-244, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Buildings.Fluid.HeatExchangers.WetCoilCounterFlow coil_precool(redeclare package Medium1 = Buildings.Media.Water "Water", redeclare package Medium2 = Buildings.Media.Air "Moist air", m1_flow_nominal = 10.5, m2_flow_nominal = m_air_flowrate, dp1_nominal = 30000, dp2_nominal = 160, UA_nominal = 33002) annotation(
    Placement(transformation(origin = {-106, -8}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Buildings.Fluid.HeatExchangers.WetCoilCounterFlow coil_postcool(redeclare package Medium1 = Buildings.Media.Water "Water", redeclare package Medium2 = Buildings.Media.Air "Moist air", m1_flow_nominal = 7.52, m2_flow_nominal = m_air_flowrate, dp1_nominal = 35000, dp2_nominal = 148, UA_nominal = 45036) annotation(
    Placement(transformation(origin = {238, -8}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Buildings.Fluid.HeatExchangers.DryCoilCounterFlow coil_postheat(redeclare package Medium1 = Buildings.Media.Water "Water", redeclare package Medium2 = Buildings.Media.Air "Moist air", m1_flow_nominal = 1.84, m2_flow_nominal = m_air_flowrate, dp1_nominal = 20000, dp2_nominal = 23, UA_nominal = 2791) annotation(
    Placement(transformation(origin = {406, -8}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Buildings.Fluid.FixedResistances.PressureDrop filter_amc(redeclare package Medium = Buildings.Media.Air "Moist air", m_flow_nominal = m_air_flowrate, dp_nominal = 94 + 105 + 20 + 20 + 38 + 42 + 36 + 500) annotation(
    Placement(transformation(origin = {-498, -2}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.Movers.FlowControlled_m_flow fan(redeclare package Medium = Buildings.Media.Air "Moist air", m_flow_nominal = m_air_flowrate, dp_nominal = 1376, per(efficiency(V_flow = {0}, eta = {0.75}))) annotation(
    Placement(transformation(origin = {554, -2}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.Sources.Outside boundary_air_outside(nPorts = 1, redeclare package Medium = Buildings.Media.Air "Moist air") annotation(
    Placement(transformation(origin = {-546, -2}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.Sensors.SpecificEnthalpyTwoPort sen_enth_preheat(redeclare package Medium = Buildings.Media.Air "Moist air", m_flow_nominal = m_air_flowrate) annotation(
    Placement(transformation(origin = {-214, -2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Constant setp_enth_preheat(k = 27500) annotation(
    Placement(transformation(origin = {-246, 32}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Controls.Continuous.LimPID conPID_preheat(Ti = 60, k = 0.001, reverseActing = true, controllerType = Modelica.Blocks.Types.SimpleController.P) annotation(
    Placement(transformation(origin = {-214, 32}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.Actuators.Valves.TwoWayEqualPercentage val_preheat(redeclare package Medium = Buildings.Media.Water "Water", dpValve_nominal = 500, m_flow_nominal = 154.14) annotation(
    Placement(transformation(origin = {-254, -50}, extent = {{-10, 10}, {10, -10}}, rotation = -90)));
  Buildings.Fluid.Actuators.Valves.TwoWayEqualPercentage val_precool(redeclare package Medium = Buildings.Media.Water "Water", dpValve_nominal = 500, m_flow_nominal = 182.81) annotation(
    Placement(transformation(origin = {-116, -50}, extent = {{-10, 10}, {10, -10}}, rotation = -90)));
  Buildings.Fluid.Actuators.Valves.TwoWayEqualPercentage val_postcool(redeclare package Medium = Buildings.Media.Water "Water", dpValve_nominal = 500, m_flow_nominal = 108.67) annotation(
    Placement(transformation(origin = {228, -50}, extent = {{-10, 10}, {10, -10}}, rotation = -90)));
  Modelica.Blocks.Sources.Constant setp_enth_postheat(k = 16 + 273.15) annotation(
    Placement(transformation(origin = {391, 32}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Controls.Continuous.LimPID conPID_temp_postheat(Ti = 60, k = 0.5, reverseActing = true, controllerType = Modelica.Blocks.Types.SimpleController.P) annotation(
    Placement(transformation(origin = {435, 32}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.Actuators.Valves.TwoWayEqualPercentage val_postheat(redeclare package Medium = Buildings.Media.Water "Water", dpValve_nominal = 500, m_flow_nominal = 41.28) annotation(
    Placement(transformation(origin = {396, -50}, extent = {{-10, 10}, {10, -10}}, rotation = -90)));
  Modelica.Blocks.Sources.Constant m_flow_air(k = m_air_flowrate) annotation(
    Placement(transformation(origin = {535, 32}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Constant setp_humidity(k = 7.2e-3) annotation(
    Placement(transformation(origin = {-336, 136}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.Sensors.MassFractionTwoPort sen_hum_postcool(redeclare package Medium = Buildings.Media.Air "Moist air", m_flow_nominal = m_air_flowrate) annotation(
    Placement(transformation(origin = {270, -2}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Controls.Continuous.LimPID conPID_hum_postcool(Ti = 60, k = 3000, reverseActing = false, controllerType = Modelica.Blocks.Types.SimpleController.P) annotation(
    Placement(transformation(origin = {270, 30}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.Sensors.SpecificEnthalpyTwoPort sen_enth_outside(redeclare package Medium = Buildings.Media.Air "Moist air", m_flow_nominal = m_air_flowrate) annotation(
    Placement(transformation(origin = {-424, -2}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.Sensors.SpecificEnthalpyTwoPort sen_enth_postcool(redeclare package Medium = Buildings.Media.Air "Moist air", m_flow_nominal = m_air_flowrate) annotation(
    Placement(transformation(origin = {306, -2}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.Sensors.TemperatureTwoPort sen_temp_precool(redeclare package Medium = Buildings.Media.Air "Moist air", m_flow_nominal = m_air_flowrate) annotation(
    Placement(transformation(origin = {-74, -2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Constant setp_temp_precool(k = 15 + 273.15) annotation(
    Placement(transformation(origin = {-104, 124}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Controls.Continuous.LimPID conPID_temp_precool(Ti = 60, controllerType = Modelica.Blocks.Types.SimpleController.P, k = 0.5, reverseActing = false) annotation(
    Placement(transformation(origin = {-74, 124}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.Sensors.MassFractionTwoPort sen_hum_precool(redeclare package Medium = Buildings.Media.Air "Moist air", m_flow_nominal = m_air_flowrate) annotation(
    Placement(transformation(origin = {0, -2}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.Sensors.TemperatureTwoPort sen_temp_preheat(redeclare package Medium = Buildings.Media.Air "Moist air", m_flow_nominal = m_air_flowrate) annotation(
    Placement(transformation(origin = {-184, -2}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.Sensors.MassFractionTwoPort sen_hum_preheat(redeclare package Medium = Buildings.Media.Air "Moist air", m_flow_nominal = m_air_flowrate) annotation(
    Placement(transformation(origin = {-154, -2}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.Sensors.TemperatureTwoPort sen_temp_postheat(redeclare package Medium = Buildings.Media.Air "Moist air", m_flow_nominal = m_air_flowrate) annotation(
    Placement(transformation(origin = {436, -2}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.Sensors.MassFractionTwoPort sen_hum_postheat(redeclare package Medium = Buildings.Media.Air "Moist air", m_flow_nominal = m_air_flowrate) annotation(
    Placement(transformation(origin = {466, -2}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.Sensors.TemperatureTwoPort sen_temp_postcool(redeclare package Medium = Buildings.Media.Air "Moist air", m_flow_nominal = m_air_flowrate) annotation(
    Placement(transformation(origin = {336, -2}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.Sensors.TemperatureWetBulbTwoPort sen_wetbulb_humer(redeclare package Medium = Buildings.Media.Air "Moist air", m_flow_nominal = m_air_flowrate) annotation(
    Placement(transformation(origin = {98, -2}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.Sensors.MassFractionTwoPort sen_hum_outside(redeclare package Medium = Buildings.Media.Air "Moist air", m_flow_nominal = m_air_flowrate) annotation(
    Placement(transformation(origin = {-456, -2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Logical.Greater summer_cond_hum annotation(
    Placement(transformation(origin = {-278, 160}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.BooleanToReal booleanToReal annotation(
    Placement(transformation(origin = {-176, 180}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.Sensors.SpecificEnthalpyTwoPort sen_enth_precool(redeclare package Medium = Buildings.Media.Air "Moist air", m_flow_nominal = m_air_flowrate) annotation(
    Placement(transformation(origin = {-36, -2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.MathBoolean.Not not1 annotation(
    Placement(transformation(origin = {-228, 144}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.BooleanToReal booleanToReal1 annotation(
    Placement(transformation(origin = {-176, 144}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Product product annotation(
    Placement(transformation(origin = {4, 150}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Product product1 annotation(
    Placement(transformation(origin = {4, 98}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Max max annotation(
    Placement(transformation(origin = {42, 122}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.Sensors.SpecificEnthalpyTwoPort sen_enth_postheat(redeclare package Medium = Buildings.Media.Air "Moist air", m_flow_nominal = m_air_flowrate) annotation(
    Placement(transformation(origin = {496, -2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Fluid.Interfaces.FluidPort_a port_hw_sup(redeclare package Medium = Buildings.Media.Water) annotation(
    Placement(transformation(origin = {-234, -196}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-14, -110}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Fluid.Interfaces.FluidPort_b port_hw_ret(redeclare package Medium = Buildings.Media.Water) annotation(
    Placement(transformation(origin = {-254, -196}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-44, -110}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Fluid.Interfaces.FluidPort_a port_chw_sup(redeclare package Medium = Buildings.Media.Water) annotation(
    Placement(transformation(origin = {-96, -196}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {46, -110}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Fluid.Interfaces.FluidPort_b port_chw_ret(redeclare package Medium = Buildings.Media.Water) annotation(
    Placement(transformation(origin = {-116, -196}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {16, -110}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Fluid.Interfaces.FluidPort_a port_chwl_sup(redeclare package Medium = Buildings.Media.Water) annotation(
    Placement(transformation(origin = {248, -196}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {106, -110}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Fluid.Interfaces.FluidPort_b port_chwl_ret(redeclare package Medium = Buildings.Media.Water) annotation(
    Placement(transformation(origin = {228, -196}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {76, -110}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.FixedResistances.Junction jun(redeclare package Medium = Buildings.Media.Water "Water", dp_nominal = {0, 0, 0}, m_flow_nominal = {195.42, -154.14, -41.28}) annotation(
    Placement(transformation(origin = {-234, -126}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Buildings.Fluid.FixedResistances.Junction jun1(redeclare package Medium = Buildings.Media.Water "Water", dp_nominal = {0, 0, 0}, m_flow_nominal = {154.14, -195.42, 41.28}) annotation(
    Placement(transformation(origin = {-254, -106}, extent = {{10, -10}, {-10, 10}}, rotation = 90)));
  Modelica.Fluid.Interfaces.FluidPort_b port_mau_air_supply(redeclare package Medium = Buildings.Media.Air) annotation(
    Placement(transformation(origin = {596, -2}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {110, 0}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.HeatExchangers.DryCoilCounterFlow coil_antifreeze_heat(redeclare package Medium1 = Buildings.Media.Water "Water", redeclare package Medium2 = Buildings.Media.Air "Moist air", UA_nominal = 443, dp1_nominal = 20000, dp2_nominal = 10, m1_flow_nominal = 0.272, m2_flow_nominal = m_air_flowrate) annotation(
    Placement(transformation(origin = {-382, -8}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Buildings.Fluid.Sensors.SpecificEnthalpyTwoPort sen_enth_antifreeze_heat(redeclare package Medium = Buildings.Media.Air "Moist air", m_flow_nominal = m_air_flowrate) annotation(
    Placement(transformation(origin = {-352, -2}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.Actuators.Valves.TwoWayEqualPercentage val_antifreeze_heat(redeclare package Medium = Buildings.Media.Water "Water", dpValve_nominal = 500, m_flow_nominal = 3.93) annotation(
    Placement(transformation(origin = {-392, -50}, extent = {{-10, 10}, {10, -10}}, rotation = -90)));
  Buildings.Fluid.Sensors.TemperatureTwoPort sen_temp_antifreeze_heat(redeclare package Medium = Buildings.Media.Air "Moist air", m_flow_nominal = m_air_flowrate) annotation(
    Placement(transformation(origin = {-322, -2}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.Sensors.MassFractionTwoPort sen_hum_antifreeze_heat(redeclare package Medium = Buildings.Media.Air "Moist air", m_flow_nominal = m_air_flowrate) annotation(
    Placement(transformation(origin = {-292, -2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Fluid.Interfaces.FluidPort_a port_hw_sup1(redeclare package Medium = Buildings.Media.Water) annotation(
    Placement(transformation(origin = {-372, -196}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-74, -110}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Fluid.Interfaces.FluidPort_b port_hw_ret1(redeclare package Medium = Buildings.Media.Water) annotation(
    Placement(transformation(origin = {-392, -196}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-104, -110}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Constant setp_enth_antifreeze_heat(k = 8 + 273.15) annotation(
    Placement(transformation(origin = {-354, 34}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Controls.Continuous.LimPID conPID_temp_antifreeze_heat(Ti = 60, controllerType = Modelica.Blocks.Types.SimpleController.P, k = 0.5, reverseActing = true) annotation(
    Placement(transformation(origin = {-322, 34}, extent = {{-10, -10}, {10, 10}})));
  Buildings.BoundaryConditions.WeatherData.Bus weaBus annotation(
    Placement(transformation(origin = {-590, -2}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-110, 0}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Controls.Continuous.LimPID conPID_temp_precool1(Ti = 60, controllerType = Modelica.Blocks.Types.SimpleController.P, k = 0.5, reverseActing = false) annotation(
    Placement(transformation(origin = {-38, 80}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(filter_amc.port_a, boundary_air_outside.ports[1]) annotation(
    Line(points = {{-508, -2}, {-536, -2}}, color = {0, 127, 255}));
  connect(setp_enth_preheat.y, conPID_preheat.u_s) annotation(
    Line(points = {{-235, 32}, {-227, 32}}, color = {0, 0, 127}));
  connect(sen_enth_preheat.h_out, conPID_preheat.u_m) annotation(
    Line(points = {{-214, 9}, {-214, 19}}, color = {0, 0, 127}));
  connect(conPID_preheat.y, val_preheat.y) annotation(
    Line(points = {{-203, 32}, {-199, 32}, {-199, -30}, {-266.5, -30}, {-266.5, -50}, {-266, -50}}, color = {0, 0, 127}));
  connect(setp_enth_postheat.y, conPID_temp_postheat.u_s) annotation(
    Line(points = {{402, 32}, {424, 32}}, color = {0, 0, 127}));
  connect(conPID_temp_postheat.y, val_postheat.y) annotation(
    Line(points = {{446, 32}, {450, 32}, {450, -28}, {376, -28}, {376, -50}, {384, -50}}, color = {0, 0, 127}));
  connect(m_flow_air.y, fan.m_flow_in) annotation(
    Line(points = {{546, 32}, {554, 32}, {554, 10}}, color = {0, 0, 127}));
  connect(sen_hum_postcool.X, conPID_hum_postcool.u_m) annotation(
    Line(points = {{270, 9}, {270, 18}}, color = {0, 0, 127}));
  connect(sen_hum_postcool.port_b, sen_enth_postcool.port_a) annotation(
    Line(points = {{280, -2}, {296, -2}}, color = {0, 127, 255}));
  connect(coil_precool.port_b2, sen_temp_precool.port_a) annotation(
    Line(points = {{-96, -2}, {-84, -2}}, color = {0, 127, 255}));
  connect(sen_temp_precool.T, conPID_temp_precool.u_m) annotation(
    Line(points = {{-74, 9}, {-74, 112}}, color = {0, 0, 127}));
  connect(setp_temp_precool.y, conPID_temp_precool.u_s) annotation(
    Line(points = {{-93, 124}, {-87, 124}}, color = {0, 0, 127}));
  connect(coil_postcool.port_b2, sen_hum_postcool.port_a) annotation(
    Line(points = {{248, -2}, {260, -2}}, color = {0, 127, 255}));
  connect(conPID_hum_postcool.y, val_postcool.y) annotation(
    Line(points = {{281, 30}, {288, 30}, {288, -28}, {208, -28}, {208, -50}, {216, -50}}, color = {0, 0, 127}));
  connect(coil_preheat.port_b2, sen_enth_preheat.port_a) annotation(
    Line(points = {{-234, -4}, {-229, -4}, {-229, -2}, {-224, -2}}, color = {0, 127, 255}));
  connect(sen_enth_preheat.port_b, sen_temp_preheat.port_a) annotation(
    Line(points = {{-204, -2}, {-194, -2}}, color = {0, 127, 255}));
  connect(sen_temp_preheat.port_b, sen_hum_preheat.port_a) annotation(
    Line(points = {{-174, -2}, {-164, -2}}, color = {0, 127, 255}));
  connect(sen_hum_preheat.port_b, coil_precool.port_a2) annotation(
    Line(points = {{-144, -2}, {-116, -2}}, color = {0, 127, 255}));
  connect(coil_postheat.port_b2, sen_temp_postheat.port_a) annotation(
    Line(points = {{416, -2}, {426, -2}}, color = {0, 127, 255}));
  connect(sen_temp_postheat.port_b, sen_hum_postheat.port_a) annotation(
    Line(points = {{446, -2}, {456, -2}}, color = {0, 127, 255}));
  connect(sen_temp_postheat.T, conPID_temp_postheat.u_m) annotation(
    Line(points = {{436, 9}, {436, 19}}, color = {0, 0, 127}));
  connect(sen_enth_postcool.port_b, sen_temp_postcool.port_a) annotation(
    Line(points = {{316, -2}, {326, -2}}, color = {0, 127, 255}));
  connect(sen_temp_postcool.port_b, coil_postheat.port_a2) annotation(
    Line(points = {{346, -2}, {396, -2}}, color = {0, 127, 255}));
  connect(filter_amc.port_b, sen_hum_outside.port_a) annotation(
    Line(points = {{-488, -2}, {-466, -2}}, color = {0, 127, 255}));
  connect(sen_hum_outside.port_b, sen_enth_outside.port_a) annotation(
    Line(points = {{-446, -2}, {-434, -2}}, color = {0, 127, 255}));
  connect(sen_hum_outside.X, summer_cond_hum.u1) annotation(
    Line(points = {{-456, 9}, {-456, 160}, {-290, 160}}, color = {0, 0, 127}));
  connect(sen_temp_precool.port_b, sen_enth_precool.port_a) annotation(
    Line(points = {{-64, -2}, {-46, -2}}, color = {0, 127, 255}));
  connect(summer_cond_hum.y, booleanToReal.u) annotation(
    Line(points = {{-267, 160}, {-255, 160}, {-255, 180}, {-189, 180}}, color = {255, 0, 255}));
  connect(summer_cond_hum.y, not1.u) annotation(
    Line(points = {{-267, 160}, {-255, 160}, {-255, 144}, {-243, 144}}, color = {255, 0, 255}));
  connect(not1.y, booleanToReal1.u) annotation(
    Line(points = {{-216, 144}, {-188, 144}}, color = {255, 0, 255}));
  connect(conPID_temp_precool.y, product.u2) annotation(
    Line(points = {{-63, 124}, {-55, 124}, {-55, 144}, {-8, 144}}, color = {0, 0, 127}));
  connect(booleanToReal.y, product.u1) annotation(
    Line(points = {{-165, 180}, {-103, 180}, {-103, 156}, {-8, 156}}, color = {0, 0, 127}));
  connect(booleanToReal1.y, product1.u1) annotation(
    Line(points = {{-165, 144}, {-145, 144}, {-145, 104}, {-8, 104}}, color = {0, 0, 127}));
  connect(product.y, max.u1) annotation(
    Line(points = {{15, 150}, {23, 150}, {23, 128}, {29, 128}}, color = {0, 0, 127}));
  connect(product1.y, max.u2) annotation(
    Line(points = {{15, 98}, {23, 98}, {23, 116}, {29, 116}}, color = {0, 0, 127}));
  connect(max.y, val_precool.y) annotation(
    Line(points = {{53, 122}, {56, 122}, {56, -30}, {-128, -30}, {-128, -50}}, color = {0, 0, 127}));
  connect(sen_enth_precool.port_b, sen_hum_precool.port_a) annotation(
    Line(points = {{-26, -2}, {-10, -2}}, color = {0, 127, 255}));
  connect(sen_hum_precool.port_b, sen_wetbulb_humer.port_a) annotation(
    Line(points = {{10, -2}, {88, -2}}, color = {0, 127, 255}));
  connect(sen_hum_postheat.port_b, sen_enth_postheat.port_a) annotation(
    Line(points = {{476, -2}, {486, -2}}, color = {0, 127, 255}));
  connect(sen_enth_postheat.port_b, fan.port_a) annotation(
    Line(points = {{506, -2}, {544, -2}}, color = {0, 127, 255}));
  connect(jun1.port_2, port_hw_ret) annotation(
    Line(points = {{-254, -116}, {-254, -196}}, color = {0, 127, 255}));
  connect(fan.port_b, port_mau_air_supply) annotation(
    Line(points = {{564, -2}, {596, -2}}, color = {0, 127, 255}));
  connect(jun.port_2, coil_preheat.port_a1) annotation(
    Line(points = {{-234, -116}, {-234, -16}}, color = {0, 127, 255}));
  connect(coil_precool.port_a1, port_chw_sup) annotation(
    Line(points = {{-96, -14}, {-96, -196}}, color = {0, 127, 255}));
  connect(port_chwl_sup, coil_postcool.port_a1) annotation(
    Line(points = {{248, -196}, {248, -14}}));
  connect(jun.port_3, coil_postheat.port_a1) annotation(
    Line(points = {{-224, -126}, {418, -126}, {418, -14}, {416, -14}}, color = {0, 127, 255}));
  connect(jun.port_1, port_hw_sup) annotation(
    Line(points = {{-234, -136}, {-234, -196}}, color = {0, 127, 255}));
  connect(coil_preheat.port_b1, val_preheat.port_a) annotation(
    Line(points = {{-254, -16}, {-254, -40}}, color = {0, 127, 255}));
  connect(val_preheat.port_b, jun1.port_1) annotation(
    Line(points = {{-254, -60}, {-254, -96}}, color = {0, 127, 255}));
  connect(coil_precool.port_b1, val_precool.port_a) annotation(
    Line(points = {{-116, -14}, {-116, -40}}, color = {0, 127, 255}));
  connect(val_precool.port_b, port_chw_ret) annotation(
    Line(points = {{-116, -60}, {-116, -196}}, color = {0, 127, 255}));
  connect(coil_postcool.port_b1, val_postcool.port_a) annotation(
    Line(points = {{228, -14}, {228, -40}}, color = {0, 127, 255}));
  connect(val_postcool.port_b, port_chwl_ret) annotation(
    Line(points = {{228, -60}, {228, -196}}, color = {0, 127, 255}));
  connect(coil_postheat.port_b1, val_postheat.port_a) annotation(
    Line(points = {{396, -14}, {396, -40}}, color = {0, 127, 255}));
  connect(val_postheat.port_b, jun1.port_3) annotation(
    Line(points = {{396, -60}, {396, -106}, {-244, -106}}, color = {0, 127, 255}));
  connect(coil_antifreeze_heat.port_b2, sen_enth_antifreeze_heat.port_a) annotation(
    Line(points = {{-372, -2}, {-362, -2}}, color = {0, 127, 255}));
  connect(sen_enth_antifreeze_heat.port_b, sen_temp_antifreeze_heat.port_a) annotation(
    Line(points = {{-342, -2}, {-332, -2}}, color = {0, 127, 255}));
  connect(sen_temp_antifreeze_heat.port_b, sen_hum_antifreeze_heat.port_a) annotation(
    Line(points = {{-312, -2}, {-302, -2}}, color = {0, 127, 255}));
  connect(sen_temp_antifreeze_heat.T, conPID_temp_antifreeze_heat.u_m) annotation(
    Line(points = {{-322, 9}, {-322, 21}}, color = {0, 0, 127}));
  connect(setp_enth_antifreeze_heat.y, conPID_temp_antifreeze_heat.u_s) annotation(
    Line(points = {{-343, 34}, {-335, 34}}, color = {0, 0, 127}));
  connect(conPID_temp_antifreeze_heat.y, val_antifreeze_heat.y) annotation(
    Line(points = {{-311, 34}, {-307, 34}, {-307, -30}, {-404, -30}, {-404, -50}}, color = {0, 0, 127}));
  connect(sen_enth_outside.port_b, coil_antifreeze_heat.port_a2) annotation(
    Line(points = {{-414, -2}, {-392, -2}}, color = {0, 127, 255}));
  connect(sen_hum_antifreeze_heat.port_b, coil_preheat.port_a2) annotation(
    Line(points = {{-282, -2}, {-268, -2}, {-268, -4}, {-254, -4}}, color = {0, 127, 255}));
  connect(coil_antifreeze_heat.port_a1, port_hw_sup1) annotation(
    Line(points = {{-372, -14}, {-372, -196}}, color = {0, 127, 255}));
  connect(coil_antifreeze_heat.port_b1, val_antifreeze_heat.port_a) annotation(
    Line(points = {{-392, -14}, {-392, -40}}, color = {0, 127, 255}));
  connect(val_antifreeze_heat.port_b, port_hw_ret1) annotation(
    Line(points = {{-392, -60}, {-392, -196}}, color = {0, 127, 255}));
  connect(boundary_air_outside.weaBus, weaBus) annotation(
    Line(points = {{-556, -2}, {-590, -2}}, color = {255, 204, 51}, thickness = 0.5));
  connect(sen_wetbulb_humer.port_b, coil_postcool.port_a2) annotation(
    Line(points = {{108, -2}, {228, -2}}, color = {0, 127, 255}));
  connect(setp_humidity.y, summer_cond_hum.u2) annotation(
    Line(points = {{-324, 136}, {-306, 136}, {-306, 152}, {-290, 152}}, color = {0, 0, 127}));
  connect(setp_humidity.y, conPID_hum_postcool.u_s) annotation(
    Line(points = {{-324, 136}, {-306, 136}, {-306, 112}, {-180, 112}, {-180, 30}, {258, 30}}, color = {0, 0, 127}));
  connect(sen_temp_precool.T, conPID_temp_precool1.u_m) annotation(
    Line(points = {{-74, 10}, {-74, 44}, {-38, 44}, {-38, 68}}, color = {0, 0, 127}));
  connect(setp_enth_postheat.y, conPID_temp_precool1.u_s) annotation(
    Line(points = {{402, 32}, {412, 32}, {412, 56}, {-62, 56}, {-62, 80}, {-50, 80}}, color = {0, 0, 127}));
  connect(conPID_temp_precool1.y, product1.u2) annotation(
    Line(points = {{-26, 80}, {-18, 80}, {-18, 92}, {-8, 92}}, color = {0, 0, 127}));
  annotation(
    uses(Buildings(version = "12.1.0"), Modelica(version = "4.0.0")),
    Diagram(coordinateSystem(extent = {{-600, -200}, {600, 200}})));
end AHU_chem;
