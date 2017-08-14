create_clock -period 20.000 -name clk clk

derive_clock_uncertainty

set_false_path -to [get_ports {leds*}]
