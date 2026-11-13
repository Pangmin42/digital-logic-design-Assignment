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

ENTITY D_Flip_Flop_Asy IS
  PORT (
    clk : IN std_logic;
    d   : IN std_logic;
    set : IN std_logic;
    clr : IN std_logic;
    q   : OUT std_logic
    );
END D_Flip_Flop_Asy;

--------------------------------------------------------------------------------
--Complete your VHDL description below
--------------------------------------------------------------------------------

ARCHITECTURE bhv OF D_Flip_Flop_Asy IS

BEGIN
    process(clk, set, clr)
    begin
        if clr = '1' then
            q <= '0';

        elsif set = '1' then
            q <= '1';

        elsif rising_edge(clk) then
            q <= d;
        end if;
    end process;

END bhv;
