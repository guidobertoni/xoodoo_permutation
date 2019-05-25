-- Xoodoo permutation VHDL implementation by Guido Bertoni,

-- To the extent possible under law, the implementer has waived all copyright
-- and related or neighboring rights to the source code in this file.
-- http://creativecommons.org/publicdomain/zero/1.0/



library work;
	use work.xoodoo_globals.all;
	
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;	


entity xoodoo is

port (
	clk: in std_logic;
    state_in     : in  x_state_type;    
    state_out    : out x_state_type);

end xoodoo;

architecture rtl of xoodoo is
--components

component xoodoo_round
port (

    state_in     : in  x_state_type;
	rc			: in std_logic_vector(31 downto 0);
    state_out    : out x_state_type);

end component;

component xoodoo_register
port (

	clk : in std_logic;
    state_in     : in  x_state_type;
    state_out    : out x_state_type);

end component;

  ----------------------------------------------------------------------------
  -- Internal signal declarations
  ----------------------------------------------------------------------------
-- round constants
--x"00000058"
--x"00000038"
--x"000003C0"
--x"000000D0"
--x"00000120"
--x"00000014"
--x"00000060"
--x"0000002C"
--x"00000380"
--x"000000F0"
--x"000001A0"
--x"00000012"
  signal r00,r01,r02,r03,r04,r05,r06,r07,r08,r09,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23 : x_state_type;
  
begin  -- Rtl
rg00_map : xoodoo_register port map(clk,state_in,r00);
rd00_map : xoodoo_round port map(r00, x"00000058" ,r01);

rg01_map : xoodoo_register port map(clk,r01,r02);
rd01_map : xoodoo_round port map(r02, x"00000038" ,r03);

rg02_map : xoodoo_register port map(clk,r03,r04);
rd02_map : xoodoo_round port map(r04, x"000003C0" ,r05);

rg03_map : xoodoo_register port map(clk,r05,r06);
rd03_map : xoodoo_round port map(r06, x"000000D0" ,r07);

rg04_map : xoodoo_register port map(clk,r07,r08);
rd04_map : xoodoo_round port map(r08, x"00000120" ,r09);

rg05_map : xoodoo_register port map(clk,r09,r10);
rd05_map : xoodoo_round port map(r10, x"00000014" ,r11);

rg06_map : xoodoo_register port map(clk,r11,r12);
rd06_map : xoodoo_round port map(r12, x"00000060" ,r13);

rg07_map : xoodoo_register port map(clk,r13,r14);
rd07_map : xoodoo_round port map(r14, x"0000002C" ,r15);

rg08_map : xoodoo_register port map(clk,r15,r16);
rd08_map : xoodoo_round port map(r16, x"00000380" ,r17);

rg09_map : xoodoo_register port map(clk,r17,r18);
rd09_map : xoodoo_round port map(r18, x"000000F0" ,r19);

rg10_map : xoodoo_register port map(clk,r19,r20);
rd10_map : xoodoo_round port map(r20, x"000001A0" ,r21);

rg11_map : xoodoo_register port map(clk,r21,r22);
rd11_map : xoodoo_round port map(r22, x"00000012" ,r23);

 state_out <= r23;
end rtl;