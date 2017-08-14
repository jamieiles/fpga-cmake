module Top(input logic clk,
           input logic next,
           output logic [7:0] leds);

initial leds = 8'b0;

// Increment on negative edge of switch press (active low)
reg next_prev;
wire button_press = ~next & (next ^ next_prev);

always_ff @(posedge clk)
    next_prev <= next;

always_ff @(posedge clk)
    if (button_press)
        leds <= leds + 1'b1;

endmodule
