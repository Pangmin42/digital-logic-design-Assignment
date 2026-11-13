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

ENTITY JK_Flip_Flop IS
  PORT (
    	   clk : IN std_logic;
        j   : IN std_logic;
        k   : IN std_logic;
        q   : OUT std_logic

    );
END JK_Flip_Flop;

--------------------------------------------------------------------------------
--Complete your VHDL description below
--------------------------------------------------------------------------------

ARCHITECTURE bhv OF JK_Flip_Flop IS
	signal q_int : std_logic := '0';
BEGIN
    process(clk)
    begin
        if rising_edge(clk) then
            if j = '0' and k = '0' then
                q_int <= q_int;

            elsif j = '0' and k = '1' then
                q_int <= '0';

            elsif j = '1' and k = '0' then
                q_int <= '1';

            elsif j = '1' and k = '1' then
                q_int <= not q_int;
            end if;
        end if;
    end process;

    q <= q_int;

END bhv;
