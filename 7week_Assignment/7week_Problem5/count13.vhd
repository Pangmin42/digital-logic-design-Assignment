LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

ENTITY count13 IS
    PORT (
        en      : IN std_logic;
        vt      : IN std_logic_vector(13 DOWNTO 1);
        display : OUT std_logic_vector(7 DOWNTO 0)
    );
END count13;

ARCHITECTURE bhv OF count13 IS
BEGIN
    process(en, vt)
    variable sum : integer range 0 to 15;
    begin
        sum := 0;

        for i in 1 to 13 loop
            if vt(i) = '1' then
                sum := sum + 1;
            end if;
        end loop;

        if en = '0' then
            display <= "ZZZZZZZZ";
        else
            case sum is
                when 0  => display <= "11111100"; -- 0
                when 1  => display <= "01100000"; -- 1
                when 2  => display <= "11011010"; -- 2
                when 3  => display <= "11110010"; -- 3
                when 4  => display <= "01100110"; -- 4
                when 5  => display <= "10110110"; -- 5
                when 6  => display <= "10111110"; -- 6
                when 7  => display <= "11100000"; -- 7
                when 8  => display <= "11111110"; -- 8
                when 9  => display <= "11110110"; -- 9
                
                when 10 => display <= "11101111"; -- A
                when 11 => display <= "11111111"; -- B
                when 12 => display <= "10011101"; -- C
                when 13 => display <= "11111101"; -- D
                when 14 => display <= "10011111"; -- E
                when 15 => display <= "10001111"; -- F
                
                when others => display <= "00000000";
            end case;
        end if;
    end process;
END bhv;
