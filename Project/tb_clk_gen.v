`timescale 1ns / 1ps

module tb_clock_generator;
reg clk;

// clk gen
always
    #5 clk = ~clk;

initial begin
$display("initialize value [%d]", $time);
    clk     <= 0;
$display("Start! [%d]", $time);
# 100
$display("Finish! [%d]", $time);
$finish;
end


endmodule
