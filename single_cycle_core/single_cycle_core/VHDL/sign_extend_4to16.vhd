---------------------------------------------------------------------------
-- sign_extend_4to16.vhd - Sign-Extend A 4-bit Value to A 16-bit Value
-- 
--
-- Copyright (C) 2006 by Lih Wen Koh (lwkoh@cse.unsw.edu.au)
-- All Rights Reserved. 
--
-- The single-cycle processor core is provided AS IS, with no warranty of 
-- any kind, express or implied. The user of the program accepts full 
-- responsibility for the application of the program and the use of any 
-- results. This work may be downloaded, compiled, executed, copied, and 
-- modified solely for nonprofit, educational, noncommercial research, and 
-- noncommercial scholarship purposes provided that this notice in its 
-- entirety accompanies all copies. Copies of the modified software can be 
-- delivered to persons who use it solely for nonprofit, educational, 
-- noncommercial research, and noncommercial scholarship purposes provided 
-- that this notice in its entirety accompanies all copies.
--
---------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity unsign_sign_extend_8to16 is
    port ( data_in  : in  std_logic_vector(7 downto 0);
           unsign_sel : in std_logic;
           data_out : out std_logic_vector(15 downto 0) );
end unsign_sign_extend_8to16;

architecture behavioral of unsign_sign_extend_8to16 is

begin
    
    sign_extend : process ( data_in, unsign_sel) is
    begin
        if (unsign_sel = '0') then
            data_out(7 downto 0) <= data_in(7 downto 0);
    
            -- the extended bits take on the value of the most significant
            -- bit (MSB) of data_in
            for i in 15 downto 8 loop
                data_out(i) <= data_in(7);
            end loop;
        else
            data_out(7 downto 0) <= data_in(7 downto 0);
            for i in 15 downto 8 loop
                  data_out(i) <= '0';
            end loop;
        end if;
    end process;
end behavioral;
