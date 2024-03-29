`timescale 1ns / 1ps

module tb_clock_generator;
reg     clk;
reg     clock_en;
wire    o_clk;

// clk gen
always
    #5 clk = ~clk;

initial begin
$display("initialize value [%d]", $time);
    clk         <= 0;
        clock_en        <= 0;
# 100
        clock_en        <= 1;
# 100
        clock_en        <= 0;
# 100
$display("Finish! [%d]", $time);
$finish;
end

clock_gating_model u_clock_gating_model(
    .i_clk                              (clk            ),
    .i_clock_en                 (clock_en       ),
    .o_clk                              (o_clk          )
    );



endmodule
