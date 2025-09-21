model AHU_fac
  parameter Modelica.Units.SI.MassFlowRate m_air_flowrate = 19.58 "Air Mass Flow Rate kg/s" annotation(
    Placement(visible = false, transformation(extent = {{0, 0}, {0, 0}})));
  Buildings.Fluid.HeatExchangers.DryCoilCounterFlow coil_preheat(redeclare package Medium1 = Buildings.Media.Water "Water", redeclare package Medium2 = Buildings.Media.Air "Moist air", m1_flow_nominal = 12.22, m2_flow_nominal = m_air_flowrate, dp1_nominal = 20000, dp2_nominal = 38, UA_nominal = 13529) annotation(
    Placement(transformation(origin = {-150, -8}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Buildings.Fluid.HeatExchangers.WetCoilCounterFlow coil_precool(redeclare package Medium1 = Buildings.Media.Water "Water", redeclare package Medium2 = Buildings.Media.Air "Moist air", m1_flow_nominal = 23.24, m2_flow_nominal = m_air_flowrate, dp1_nominal = 35000, dp2_nominal = 173, UA_nominal = 81674) annotation(
    Placement(transformation(origin = {130, -8}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Buildings.Fluid.HeatExchangers.DryCoilCounterFlow coil_postheat(redeclare package Medium1 = Buildings.Media.Water "Water", redeclare package Medium2 = Buildings.Media.Air "Moist air", m1_flow_nominal = 0.73, m2_flow_nominal = m_air_flowrate, dp1_nominal = 20000, dp2_nominal = 20, UA_nominal = 2718) annotation(
    Placement(transformation(origin = {406, -8}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Buildings.Fluid.FixedResistances.PressureDrop filter_amc(redeclare package Medium = Buildings.Media.Air "Moist air", m_flow_nominal = m_air_flowrate, dp_nominal = 86 + 101 + 115 + 20 + 33 + 36 + 23 + 500) annotation(
    Placement(transformation(origin = {-500, -2}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.Movers.FlowControlled_m_flow fan(redeclare package Medium = Buildings.Media.Air "Moist air", m_flow_nominal = m_air_flowrate, dp_nominal = 1366, per(efficiency(V_flow = {0}, eta = {0.71}))) annotation(
    Placement(transformation(origin = {554, -2}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.Sources.Outside boundary_air_outside(nPorts = 1, redeclare package Medium = Buildings.Media.Air "Moist air") annotation(
    Placement(transformation(origin = {-548, -2}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.Sensors.SpecificEnthalpyTwoPort sen_enth_preheat(redeclare package Medium = Buildings.Media.Air "Moist air", m_flow_nominal = m_air_flowrate) annotation(
    Placement(transformation(origin = {-120, -2}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.Actuators.Valves.TwoWayEqualPercentage val_preheat(redeclare package Medium = Buildings.Media.Water "Water", dpValve_nominal = 500, m_flow_nominal = 154.14) annotation(
    Placement(transformation(origin = {-160, -50}, extent = {{-10, 10}, {10, -10}}, rotation = -90)));
  Buildings.Fluid.Actuators.Valves.TwoWayEqualPercentage val_precool(redeclare package Medium = Buildings.Media.Water "Water", dpValve_nominal = 500, m_flow_nominal = 182.81) annotation(
    Placement(transformation(origin = {120, -50}, extent = {{-10, 10}, {10, -10}}, rotation = -90)));
  Modelica.Blocks.Sources.Constant setp_enth_postheat(k = 16 + 273.15) annotation(
    Placement(transformation(origin = {391, 32}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Controls.Continuous.LimPID conPID_temp_postheat(Ti = 60, k = 0.5, reverseActing = true, controllerType = Modelica.Blocks.Types.SimpleController.P) annotation(
    Placement(transformation(origin = {435, 32}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.Actuators.Valves.TwoWayEqualPercentage val_postheat(redeclare package Medium = Buildings.Media.Water "Water", dpValve_nominal = 500, m_flow_nominal = 41.28) annotation(
    Placement(transformation(origin = {396, -50}, extent = {{-10, 10}, {10, -10}}, rotation = -90)));
  Modelica.Blocks.Sources.Constant m_flow_air(k = m_air_flowrate) annotation(
    Placement(transformation(origin = {535, 32}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Constant setp_humidity(k = 1e-2) annotation(
    Placement(transformation(origin = {-334, 112}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.Sensors.SpecificEnthalpyTwoPort sen_enth_outside(redeclare package Medium = Buildings.Media.Air "Moist air", m_flow_nominal = m_air_flowrate) annotation(
    Placement(transformation(origin = {-424, -2}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.Sensors.TemperatureTwoPort sen_temp_precool(redeclare package Medium = Buildings.Media.Air "Moist air", m_flow_nominal = m_air_flowrate) annotation(
    Placement(transformation(origin = {162, -2}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Controls.Continuous.LimPID conPID_temp_precool(Ti = 60, controllerType = Modelica.Blocks.Types.SimpleController.P, k = 0.5, reverseActing = false) annotation(
    Placement(transformation(origin = {162, 132}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.Sensors.MassFractionTwoPort sen_hum_precool(redeclare package Medium = Buildings.Media.Air "Moist air", m_flow_nominal = m_air_flowrate) annotation(
    Placement(transformation(origin = {236, -2}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.Sensors.TemperatureTwoPort sen_temp_preheat(redeclare package Medium = Buildings.Media.Air "Moist air", m_flow_nominal = m_air_flowrate) annotation(
    Placement(transformation(origin = {-90, -2}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.Sensors.MassFractionTwoPort sen_hum_preheat(redeclare package Medium = Buildings.Media.Air "Moist air", m_flow_nominal = m_air_flowrate) annotation(
    Placement(transformation(origin = {-60, -2}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.Sensors.TemperatureTwoPort sen_temp_postheat(redeclare package Medium = Buildings.Media.Air "Moist air", m_flow_nominal = m_air_flowrate) annotation(
    Placement(transformation(origin = {436, -2}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.Sensors.MassFractionTwoPort sen_hum_postheat(redeclare package Medium = Buildings.Media.Air "Moist air", m_flow_nominal = m_air_flowrate) annotation(
    Placement(transformation(origin = {466, -2}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.Sensors.TemperatureWetBulbTwoPort sen_wetbulb_humer(redeclare package Medium = Buildings.Media.Air "Moist air", m_flow_nominal = m_air_flowrate) annotation(
    Placement(transformation(origin = {274, -2}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.Sensors.MassFractionTwoPort sen_hum_outside(redeclare package Medium = Buildings.Media.Air "Moist air", m_flow_nominal = m_air_flowrate) annotation(
    Placement(transformation(origin = {-456, -2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.BooleanToReal booleanToReal annotation(
    Placement(transformation(origin = {-174, 156}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.Sensors.SpecificEnthalpyTwoPort sen_enth_precool(redeclare package Medium = Buildings.Media.Air "Moist air", m_flow_nominal = m_air_flowrate) annotation(
    Placement(transformation(origin = {200, -2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.MathBoolean.Not not1 annotation(
    Placement(transformation(origin = {-226, 104}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.BooleanToReal booleanToReal1 annotation(
    Placement(transformation(origin = {-174, 104}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Product product annotation(
    Placement(transformation(origin = {240, 150}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Product product1 annotation(
    Placement(transformation(origin = {240, 98}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Max max annotation(
    Placement(transformation(origin = {278, 122}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.Sensors.SpecificEnthalpyTwoPort sen_enth_postheat(redeclare package Medium = Buildings.Media.Air "Moist air", m_flow_nominal = m_air_flowrate) annotation(
    Placement(transformation(origin = {496, -2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Fluid.Interfaces.FluidPort_a port_hrw_sup(redeclare package Medium = Buildings.Media.Water) annotation(
    Placement(transformation(origin = {-140, -196}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {20, -110}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Fluid.Interfaces.FluidPort_b port_hrw_ret(redeclare package Medium = Buildings.Media.Water) annotation(
    Placement(transformation(origin = {-160, -196}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-20, -110}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Fluid.Interfaces.FluidPort_a port_chw_sup(redeclare package Medium = Buildings.Media.Water) annotation(
    Placement(transformation(origin = {140, -196}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {100, -110}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Fluid.Interfaces.FluidPort_b port_chw_ret(redeclare package Medium = Buildings.Media.Water) annotation(
    Placement(transformation(origin = {120, -196}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {60, -110}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.FixedResistances.Junction jun(redeclare package Medium = Buildings.Media.Water "Water", dp_nominal = {0, 0, 0}, m_flow_nominal = {195.42, -154.14, -41.28}) annotation(
    Placement(transformation(origin = {-140, -126}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Buildings.Fluid.FixedResistances.Junction jun1(redeclare package Medium = Buildings.Media.Water "Water", dp_nominal = {0, 0, 0}, m_flow_nominal = {154.14, -195.42, 41.28}) annotation(
    Placement(transformation(origin = {-160, -106}, extent = {{10, -10}, {-10, 10}}, rotation = 90)));
  Modelica.Fluid.Interfaces.FluidPort_b port_mau_air_supply(redeclare package Medium = Buildings.Media.Air) annotation(
    Placement(transformation(origin = {596, -2}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {110, 0}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.HeatExchangers.DryCoilCounterFlow coil_antifreeze_heat(redeclare package Medium1 = Buildings.Media.Water "Water", redeclare package Medium2 = Buildings.Media.Air "Moist air", UA_nominal = 67641, dp1_nominal = 100000, dp2_nominal = 200, m1_flow_nominal = 6.02, m2_flow_nominal = m_air_flowrate) annotation(
    Placement(transformation(origin = {-350, -8}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Buildings.Fluid.Sensors.SpecificEnthalpyTwoPort sen_enth_antifreeze_heat(redeclare package Medium = Buildings.Media.Air "Moist air", m_flow_nominal = m_air_flowrate) annotation(
    Placement(transformation(origin = {-320, -2}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.Actuators.Valves.TwoWayEqualPercentage val_antifreeze_heat(redeclare package Medium = Buildings.Media.Water "Water", dpValve_nominal = 500, m_flow_nominal = 3.93) annotation(
    Placement(transformation(origin = {-360, -50}, extent = {{-10, 10}, {10, -10}}, rotation = -90)));
  Buildings.Fluid.Sensors.TemperatureTwoPort sen_temp_antifreeze_heat(redeclare package Medium = Buildings.Media.Air "Moist air", m_flow_nominal = m_air_flowrate) annotation(
    Placement(transformation(origin = {-290, -2}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.Sensors.MassFractionTwoPort sen_hum_antifreeze_heat(redeclare package Medium = Buildings.Media.Air "Moist air", m_flow_nominal = m_air_flowrate) annotation(
    Placement(transformation(origin = {-260, -2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Fluid.Interfaces.FluidPort_a port_hw_sup(redeclare package Medium = Buildings.Media.Water) annotation(
    Placement(transformation(origin = {-340, -196}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-60, -110}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Fluid.Interfaces.FluidPort_b port_hw_ret(redeclare package Medium = Buildings.Media.Water) annotation(
    Placement(transformation(origin = {-360, -196}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-100, -110}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Constant setp_enth_antifreeze_heat(k = 8 + 273.15) annotation(
    Placement(transformation(origin = {-322, 34}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Controls.Continuous.LimPID conPID_temp_antifreeze_heat(Ti = 60, controllerType = Modelica.Blocks.Types.SimpleController.P, k = 0.5, reverseActing = true) annotation(
    Placement(transformation(origin = {-290, 34}, extent = {{-10, -10}, {10, 10}})));
  Buildings.BoundaryConditions.WeatherData.Bus weaBus annotation(
    Placement(transformation(origin = {-590, -2}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-110, 0}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Controls.Continuous.LimPID conPID_hum_precool1(Ti = 60, controllerType = Modelica.Blocks.Types.SimpleController.P, k = 3000, reverseActing = false) annotation(
    Placement(transformation(origin = {198, 80}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Controls.Continuous.LimPID conPID_temp_antifreeze_heat1(Ti = 60, controllerType = Modelica.Blocks.Types.SimpleController.P, k = 0.5, reverseActing = true) annotation(
    Placement(transformation(origin = {-90, 30}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Logical.Less summer_cond_hum annotation(
    Placement(transformation(origin = {-278, 136}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(filter_amc.port_a, boundary_air_outside.ports[1]) annotation(
    Line(points = {{-510, -2}, {-538, -2}}, color = {0, 127, 255}));
  connect(setp_enth_postheat.y, conPID_temp_postheat.u_s) annotation(
    Line(points = {{402, 32}, {424, 32}}, color = {0, 0, 127}));
  connect(conPID_temp_postheat.y, val_postheat.y) annotation(
    Line(points = {{446, 32}, {450, 32}, {450, -28}, {376, -28}, {376, -50}, {384, -50}}, color = {0, 0, 127}));
  connect(m_flow_air.y, fan.m_flow_in) annotation(
    Line(points = {{546, 32}, {554, 32}, {554, 10}}, color = {0, 0, 127}));
  connect(coil_precool.port_b2, sen_temp_precool.port_a) annotation(
    Line(points = {{140, -2}, {152, -2}}, color = {0, 127, 255}));
  connect(sen_temp_precool.T, conPID_temp_precool.u_m) annotation(
    Line(points = {{162, 9}, {162, 120}}, color = {0, 0, 127}));
  connect(coil_preheat.port_b2, sen_enth_preheat.port_a) annotation(
    Line(points = {{-140, -2}, {-130, -2}}, color = {0, 127, 255}));
  connect(sen_enth_preheat.port_b, sen_temp_preheat.port_a) annotation(
    Line(points = {{-110, -2}, {-100, -2}}, color = {0, 127, 255}));
  connect(sen_temp_preheat.port_b, sen_hum_preheat.port_a) annotation(
    Line(points = {{-80, -2}, {-70, -2}}, color = {0, 127, 255}));
  connect(sen_hum_preheat.port_b, coil_precool.port_a2) annotation(
    Line(points = {{-50, -2}, {120, -2}}, color = {0, 127, 255}));
  connect(coil_postheat.port_b2, sen_temp_postheat.port_a) annotation(
    Line(points = {{416, -2}, {426, -2}}, color = {0, 127, 255}));
  connect(sen_temp_postheat.port_b, sen_hum_postheat.port_a) annotation(
    Line(points = {{446, -2}, {456, -2}}, color = {0, 127, 255}));
  connect(sen_temp_postheat.T, conPID_temp_postheat.u_m) annotation(
    Line(points = {{436, 9}, {436, 19}}, color = {0, 0, 127}));
  connect(filter_amc.port_b, sen_hum_outside.port_a) annotation(
    Line(points = {{-490, -2}, {-466, -2}}, color = {0, 127, 255}));
  connect(sen_hum_outside.port_b, sen_enth_outside.port_a) annotation(
    Line(points = {{-446, -2}, {-434, -2}}, color = {0, 127, 255}));
  connect(sen_temp_precool.port_b, sen_enth_precool.port_a) annotation(
    Line(points = {{172, -2}, {190, -2}}, color = {0, 127, 255}));
  connect(not1.y, booleanToReal1.u) annotation(
    Line(points = {{-214, 104}, {-186, 104}}, color = {255, 0, 255}));
  connect(conPID_temp_precool.y, product.u2) annotation(
    Line(points = {{173, 132}, {181, 132}, {181, 144}, {228, 144}}, color = {0, 0, 127}));
  connect(booleanToReal.y, product.u1) annotation(
    Line(points = {{-163, 156}, {228, 156}}, color = {0, 0, 127}));
  connect(booleanToReal1.y, product1.u1) annotation(
    Line(points = {{-163, 104}, {228, 104}}, color = {0, 0, 127}));
  connect(product.y, max.u1) annotation(
    Line(points = {{251, 150}, {259, 150}, {259, 128}, {265, 128}}, color = {0, 0, 127}));
  connect(product1.y, max.u2) annotation(
    Line(points = {{251, 98}, {259, 98}, {259, 116}, {265, 116}}, color = {0, 0, 127}));
  connect(max.y, val_precool.y) annotation(
    Line(points = {{289, 122}, {292, 122}, {292, -30}, {108, -30}, {108, -50}}, color = {0, 0, 127}));
  connect(sen_enth_precool.port_b, sen_hum_precool.port_a) annotation(
    Line(points = {{210, -2}, {226, -2}}, color = {0, 127, 255}));
  connect(sen_hum_precool.port_b, sen_wetbulb_humer.port_a) annotation(
    Line(points = {{246, -2}, {264, -2}}, color = {0, 127, 255}));
  connect(sen_hum_postheat.port_b, sen_enth_postheat.port_a) annotation(
    Line(points = {{476, -2}, {486, -2}}, color = {0, 127, 255}));
  connect(sen_enth_postheat.port_b, fan.port_a) annotation(
    Line(points = {{506, -2}, {544, -2}}, color = {0, 127, 255}));
  connect(jun1.port_2, port_hrw_ret) annotation(
    Line(points = {{-160, -116}, {-160, -196}}, color = {0, 127, 255}));
  connect(fan.port_b, port_mau_air_supply) annotation(
    Line(points = {{564, -2}, {596, -2}}, color = {0, 127, 255}));
  connect(jun.port_2, coil_preheat.port_a1) annotation(
    Line(points = {{-140, -116}, {-140, -14}}, color = {0, 127, 255}));
  connect(coil_precool.port_a1, port_chw_sup) annotation(
    Line(points = {{140, -14}, {140, -196}}, color = {0, 127, 255}));
  connect(jun.port_3, coil_postheat.port_a1) annotation(
    Line(points = {{-130, -126}, {418, -126}, {418, -14}, {416, -14}}, color = {0, 127, 255}));
  connect(jun.port_1, port_hrw_sup) annotation(
    Line(points = {{-140, -136}, {-140, -196}}, color = {0, 127, 255}));
  connect(coil_preheat.port_b1, val_preheat.port_a) annotation(
    Line(points = {{-160, -14}, {-160, -40}}, color = {0, 127, 255}));
  connect(val_preheat.port_b, jun1.port_1) annotation(
    Line(points = {{-160, -60}, {-160, -96}}, color = {0, 127, 255}));
  connect(coil_precool.port_b1, val_precool.port_a) annotation(
    Line(points = {{120, -14}, {120, -40}}, color = {0, 127, 255}));
  connect(val_precool.port_b, port_chw_ret) annotation(
    Line(points = {{120, -60}, {120, -196}}, color = {0, 127, 255}));
  connect(coil_postheat.port_b1, val_postheat.port_a) annotation(
    Line(points = {{396, -14}, {396, -40}}, color = {0, 127, 255}));
  connect(val_postheat.port_b, jun1.port_3) annotation(
    Line(points = {{396, -60}, {396, -106}, {-150, -106}}, color = {0, 127, 255}));
  connect(coil_antifreeze_heat.port_b2, sen_enth_antifreeze_heat.port_a) annotation(
    Line(points = {{-340, -2}, {-330, -2}}, color = {0, 127, 255}));
  connect(sen_enth_antifreeze_heat.port_b, sen_temp_antifreeze_heat.port_a) annotation(
    Line(points = {{-310, -2}, {-300, -2}}, color = {0, 127, 255}));
  connect(sen_temp_antifreeze_heat.port_b, sen_hum_antifreeze_heat.port_a) annotation(
    Line(points = {{-280, -2}, {-270, -2}}, color = {0, 127, 255}));
  connect(sen_temp_antifreeze_heat.T, conPID_temp_antifreeze_heat.u_m) annotation(
    Line(points = {{-290, 9}, {-290, 21}}, color = {0, 0, 127}));
  connect(setp_enth_antifreeze_heat.y, conPID_temp_antifreeze_heat.u_s) annotation(
    Line(points = {{-311, 34}, {-303, 34}}, color = {0, 0, 127}));
  connect(conPID_temp_antifreeze_heat.y, val_antifreeze_heat.y) annotation(
    Line(points = {{-279, 34}, {-275, 34}, {-275, -30}, {-372, -30}, {-372, -50}}, color = {0, 0, 127}));
  connect(sen_enth_outside.port_b, coil_antifreeze_heat.port_a2) annotation(
    Line(points = {{-414, -2}, {-360, -2}}, color = {0, 127, 255}));
  connect(sen_hum_antifreeze_heat.port_b, coil_preheat.port_a2) annotation(
    Line(points = {{-250, -2}, {-160, -2}}, color = {0, 127, 255}));
  connect(coil_antifreeze_heat.port_a1, port_hw_sup) annotation(
    Line(points = {{-340, -14}, {-340, -196}}, color = {0, 127, 255}));
  connect(coil_antifreeze_heat.port_b1, val_antifreeze_heat.port_a) annotation(
    Line(points = {{-360, -14}, {-360, -40}}, color = {0, 127, 255}));
  connect(val_antifreeze_heat.port_b, port_hw_ret) annotation(
    Line(points = {{-360, -60}, {-360, -196}}, color = {0, 127, 255}));
  connect(boundary_air_outside.weaBus, weaBus) annotation(
    Line(points = {{-558, -2}, {-590, -2}}, color = {255, 204, 51}, thickness = 0.5));
  connect(conPID_hum_precool1.y, product1.u2) annotation(
    Line(points = {{209, 80}, {217, 80}, {217, 92}, {227, 92}}, color = {0, 0, 127}));
  connect(sen_temp_preheat.T, conPID_temp_antifreeze_heat1.u_m) annotation(
    Line(points = {{-90, 9}, {-90, 17}}, color = {0, 0, 127}));
  connect(sen_wetbulb_humer.port_b, coil_postheat.port_a2) annotation(
    Line(points = {{284, -2}, {396, -2}}, color = {0, 127, 255}));
  connect(setp_enth_postheat.y, conPID_temp_antifreeze_heat1.u_s) annotation(
    Line(points = {{402, 32}, {412, 32}, {412, 56}, {-112, 56}, {-112, 30}, {-102, 30}}, color = {0, 0, 127}));
  connect(conPID_temp_antifreeze_heat1.y, val_preheat.y) annotation(
    Line(points = {{-78, 30}, {-74, 30}, {-74, -30}, {-172, -30}, {-172, -50}}, color = {0, 0, 127}));
  connect(setp_humidity.y, conPID_hum_precool1.u_s) annotation(
    Line(points = {{-323, 112}, {-306, 112}, {-306, 80}, {186, 80}}, color = {0, 0, 127}));
  connect(sen_hum_precool.X, conPID_hum_precool1.u_m) annotation(
    Line(points = {{236, 10}, {236, 34}, {198, 34}, {198, 68}}, color = {0, 0, 127}));
  connect(sen_hum_outside.X, summer_cond_hum.u1) annotation(
    Line(points = {{-456, 10}, {-456, 136}, {-290, 136}}, color = {0, 0, 127}));
  connect(summer_cond_hum.y, booleanToReal.u) annotation(
    Line(points = {{-267, 136}, {-255, 136}, {-255, 156}, {-187, 156}}, color = {255, 0, 255}));
  connect(summer_cond_hum.y, not1.u) annotation(
    Line(points = {{-267, 136}, {-255, 136}, {-255, 104}, {-240, 104}}, color = {255, 0, 255}));
  connect(setp_humidity.y, summer_cond_hum.u2) annotation(
    Line(points = {{-322, 112}, {-306, 112}, {-306, 128}, {-290, 128}}, color = {0, 0, 127}));
  connect(setp_enth_postheat.y, conPID_temp_precool.u_s) annotation(
    Line(points = {{402, 32}, {412, 32}, {412, 56}, {140, 56}, {140, 132}, {150, 132}}, color = {0, 0, 127}));
  annotation(
    uses(Buildings(version = "12.1.0"), Modelica(version = "4.0.0")),
    Diagram(coordinateSystem(extent = {{-600, -200}, {600, 200}})));
end AHU_fac;