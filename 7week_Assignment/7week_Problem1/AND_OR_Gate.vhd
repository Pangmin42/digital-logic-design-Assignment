LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

ENTITY AND_OR_Gate IS
  PORT (
  ------------------------------------------------------------------------------
  --Insert input ports below
    a,b,c,d    : IN  std_logic;
  ------------------------------------------------------------------------------
  --Insert output ports below
    out1, out2 : OUT std_logic
    );
END AND_OR_Gate;

--------------------------------------------------------------------------------
--Complete your VHDL description below
--------------------------------------------------------------------------------

ARCHITECTURE bhv OF AND_OR_Gate IS

BEGIN
	out1 <= a and b and c and d;
	out2 <= a or b or c or d;


END ARCHITECTURE bhv;
