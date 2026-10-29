LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

ENTITY vote25 IS
	PORT (
		vt     : IN std_logic_vector(25 DOWNTO 1);
		result : OUT std_logic
	);
END vote25;

ARCHITECTURE bhv OF vote25 IS
BEGIN
	process(vt)
		variable sum : integer range 0 to 25;
	begin
		sum := 0;

		for i in 1 to 25 loop
			if vt(i) = '1' then
				sum := sum + 1;
			end if;
		end loop;

		if sum >= 13 then
			result <= '1';
		else
			result <= '0';
		end if;

	end process;
END bhv;
