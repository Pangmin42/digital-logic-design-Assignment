LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;



ENTITY led IS
  PORT (
  ------------------------------------------------------------------------------
  --Insert input ports below
    en         : IN  std_logic;
    dat        : IN  std_logic_vector(2 DOWNTO 0);

    display    : OUT std_logic_vector(7 downto 0)
    );
END led;

--------------------------------------------------------------------------------
--Complete your VHDL description below
--------------------------------------------------------------------------------

ARCHITECTURE bhv OF led IS

BEGIN
	process(en,dat)
	begin
		if en='0' then
			display <= "ZZZZZZZZ";
		else
			case dat is
				when "000" => display <= "11111011";
				when "001" => display <= "00111111";
				when "010" => display <= "00011011";
				when "011" => display <= "01111011";
				when "100" => display <= "10001111";
				when "101" => display <= "11110111";
				when others => display <= "00000000";
			end case;
		end if;
	end process;

END bhv;
