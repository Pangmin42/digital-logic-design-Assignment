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

ENTITY RS_Latch IS
  PORT (
  		s : IN std_logic;
		r : IN std_logic;
		q : OUT std_logic
	);
END RS_Latch;

--------------------------------------------------------------------------------
--Complete your VHDL description below
--------------------------------------------------------------------------------

ARCHITECTURE bhv OF RS_Latch IS

BEGIN
process(s, r)
	begin
		if s = '1' and r = '0' then
			q <= '1';
		elsif s = '0' and r = '1' then
			q <= '0';
		elsif s = '1' and r = '1' then
			q <= 'X';
		end if;
	end process;

END bhv;
