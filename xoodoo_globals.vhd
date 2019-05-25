-- Xoodoo permutation VHDL implementation by Guido Bertoni,

-- To the extent possible under law, the implementer has waived all copyright
-- and related or neighboring rights to the source code in this file.
-- http://creativecommons.org/publicdomain/zero/1.0/


library STD;
 use STD.textio.all;


  library IEEE;
    use IEEE.std_logic_1164.all;
    use IEEE.std_logic_misc.all;
    use IEEE.std_logic_arith.all;
    

library work;


package xoodoo_globals is

--types
type x_plane_type is array (0 to 3) of std_logic_vector(31 downto 0);
type x_state_type is array (0 to 2) of x_plane_type;



end package;