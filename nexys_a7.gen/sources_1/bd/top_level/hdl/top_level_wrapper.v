//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
//Date        : Fri Feb  2 15:28:53 2024
//Host        : simtool-5 running 64-bit Ubuntu 20.04.6 LTS
//Command     : generate_target top_level_wrapper.bd
//Design      : top_level_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module top_level_wrapper
   (BTNC,
    CLK100MHZ,
    CPU_RESETN);
  input BTNC;
  input CLK100MHZ;
  input CPU_RESETN;

  wire BTNC;
  wire CLK100MHZ;
  wire CPU_RESETN;

  top_level top_level_i
       (.BTNC(BTNC),
        .CLK100MHZ(CLK100MHZ),
        .CPU_RESETN(CPU_RESETN));
endmodule
