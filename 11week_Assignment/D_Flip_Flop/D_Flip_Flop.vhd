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

ENTITY D_Flip_Flop IS
  PORT (

    clk : IN std_logic;
    d   : IN std_logic;
    q   : OUT std_logic

    );
END D_Flip_Flop;

--------------------------------------------------------------------------------
--Complete your VHDL description below
--------------------------------------------------------------------------------

ARCHITECTURE bhv OF D_Flip_Flop IS

BEGIN
    process(clk)
    begin
        if rising_edge(clk) then
            q <= d;
        end if;
    end process;

END bhv;
