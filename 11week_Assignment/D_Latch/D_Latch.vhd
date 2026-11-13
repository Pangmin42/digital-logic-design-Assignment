--------------------------------------------------------------------------------
-- Project :
-- File    :
-- Autor   :
-- Date    :
--
--------------------------------------------------------------------------------
-- Description :
--
--------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY D_Latch IS
  PORT (
	d  : IN std_logic;
	en : IN std_logic;
	q  : OUT std_logic
	);
END D_Latch;

--------------------------------------------------------------------------------
--Complete your VHDL description below
--------------------------------------------------------------------------------

ARCHITECTURE bhv OF D_Latch IS

BEGIN
	process(d, en)
	begin
		if en = '1' then
			q <= d;
		end if;
	end process;

END bhv;
