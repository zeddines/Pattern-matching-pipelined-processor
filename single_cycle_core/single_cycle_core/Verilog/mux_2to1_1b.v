//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.09.2019 18:02:30
// Design Name: 
// Module Name: mux_2to1_1b
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
//---------------------------------------------------------------------------
//-- mux_2to1_1b.vhd - Single-bit 2-to-1 Multiplexer Implementation
//-- 
//--
//-- Copyright (C) 2006 by Lih Wen Koh (lwkoh@cse.unsw.edu.au)
//-- All Rights Reserved. 
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

module mux_2to1_1b(
    input mux_select, 
    input data_a, 
    input data_b, 
    output data_out
    );
 
    assign data_out = (mux_select == 0) ? data_a : (mux_select == 1) ? data_b : 1'bx; 
endmodule