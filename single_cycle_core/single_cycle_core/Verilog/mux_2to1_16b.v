//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.09.2019 18:21:25
// Design Name: 
// Module Name: mux_2to1_16b
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
// ---------------------------------------------------------------------------
//-- mux_2to1_16b.vhd - 16-bit 2-to-1 Multiplexer Implementation
//--
//-- Copyright (C) 2006 
//-- All Rights Reserved. 
//-- Written by Lih Wen Koh (lwkoh@cse.unsw.edu.au) in VHDL
//-- Translated into Verilog by Sajid Hussain (sajid.hussain@unsw.edu.au)
//--
//--
//-- The single-cycle processor core is provided AS IS, with no warranty of 
//-- any kind, express or implied. The user of the program accepts full 
//-- responsibility for the application of the program and the use of any 
//-- results. This work may be downloaded, compiled, executed, copied, and 
//-- modified solely for nonprofit, educational, noncommercial research, and 
//-- noncommercial scholarship purposes provided that this notice in its 
//-- entirety accompanies all copies. Copies of the modified software can be 
//-- delivered to persons who use it solely for nonprofit, educational, 
//-- noncommercial research, and noncommercial scholarship purposes provided 
//-- that this notice in its entirety accompanies all copies.
//--
//---------------------------------------------------------------------------
//////////////////////////////////////////////////////////////////////////////////

module mux_2to1_16b(input mux_select, input[15:0] data_a, input[15:0] data_b, output[15:0] data_out);
    genvar i;
    
    generate
        for (i=0; i<16; i=i+1) begin
            mux_2to1_1b bit_mux(
                .mux_select(mux_select),
                .data_a(data_a[i]),
                .data_b(data_b[i]),
                .data_out(data_out[i])
            );
        end
    endgenerate
endmodule