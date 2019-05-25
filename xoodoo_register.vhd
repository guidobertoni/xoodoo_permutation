-- Xoodoo permutation VHDL implementation by Guido Bertoni,

-- To the extent possible under law, the implementer has waived all copyright
-- and related or neighboring rights to the source code in this file.
-- http://creativecommons.org/publicdomain/zero/1.0/



library work;
	use work.xoodoo_globals.all;
	
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;


entity xoodoo_register is
port (
	clk: in std_logic;
    state_in     : in  x_state_type;    
    state_out    : out x_state_type);

end xoodoo_register;

architecture rtl of xoodoo_register is


  ----------------------------------------------------------------------------
  -- Internal signal declarations
  ----------------------------------------------------------------------------

  
begin  -- Rtl

	begReg: process( clk )
	begin
		if rising_edge( clk ) then
			state_out <= state_in;			
		end if;
	end process;


end rtl;
