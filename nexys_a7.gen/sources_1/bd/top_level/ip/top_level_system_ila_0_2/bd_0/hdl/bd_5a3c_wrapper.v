//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_5a3c_wrapper.bd
//Design : bd_5a3c_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_5a3c_wrapper
   (clk,
    probe0,
    probe1,
    probe10,
    probe11,
    probe12,
    probe13,
    probe14,
    probe15,
    probe16,
    probe17,
    probe18,
    probe19,
    probe2,
    probe3,
    probe4,
    probe5,
    probe6,
    probe7,
    probe8,
    probe9);
  input clk;
  input [2:0]probe0;
  input [63:0]probe1;
  input [63:0]probe10;
  input [63:0]probe11;
  input [63:0]probe12;
  input [63:0]probe13;
  input [63:0]probe14;
  input [63:0]probe15;
  input [63:0]probe16;
  input [63:0]probe17;
  input [63:0]probe18;
  input [63:0]probe19;
  input [63:0]probe2;
  input [63:0]probe3;
  input [0:0]probe4;
  input [0:0]probe5;
  input [47:0]probe6;
  input [63:0]probe7;
  input [63:0]probe8;
  input [63:0]probe9;

  wire clk;
  wire [2:0]probe0;
  wire [63:0]probe1;
  wire [63:0]probe10;
  wire [63:0]probe11;
  wire [63:0]probe12;
  wire [63:0]probe13;
  wire [63:0]probe14;
  wire [63:0]probe15;
  wire [63:0]probe16;
  wire [63:0]probe17;
  wire [63:0]probe18;
  wire [63:0]probe19;
  wire [63:0]probe2;
  wire [63:0]probe3;
  wire [0:0]probe4;
  wire [0:0]probe5;
  wire [47:0]probe6;
  wire [63:0]probe7;
  wire [63:0]probe8;
  wire [63:0]probe9;

  bd_5a3c bd_5a3c_i
       (.clk(clk),
        .probe0(probe0),
        .probe1(probe1),
        .probe10(probe10),
        .probe11(probe11),
        .probe12(probe12),
        .probe13(probe13),
        .probe14(probe14),
        .probe15(probe15),
        .probe16(probe16),
        .probe17(probe17),
        .probe18(probe18),
        .probe19(probe19),
        .probe2(probe2),
        .probe3(probe3),
        .probe4(probe4),
        .probe5(probe5),
        .probe6(probe6),
        .probe7(probe7),
        .probe8(probe8),
        .probe9(probe9));
endmodule
