LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY display_7 IS
    PORT (
        hex_in  : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
        seg_out : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)  -- g-f-e-d-c-b-a
    );
END display_7;

ARCHITECTURE behavior OF display_7 IS
BEGIN
    PROCESS(hex_in)
    BEGIN

        CASE hex_in IS
            WHEN "0000" => seg_out <= "1000000";
            WHEN "0001" => seg_out <= "1111001";
            WHEN "0010" => seg_out <= "0100100";
            WHEN "0011" => seg_out <= "0110000";
            WHEN "0100" => seg_out <= "0011001";
            WHEN "0101" => seg_out <= "0010010";
            WHEN "0110" => seg_out <= "0000010";
            WHEN "0111" => seg_out <= "1111000";
            WHEN "1000" => seg_out <= "0000000";
            WHEN "1001" => seg_out <= "0010000";
            WHEN "1010" => seg_out <= "0001000";
            WHEN "1011" => seg_out <= "0000011";
            WHEN "1100" => seg_out <= "1000110";
            WHEN "1101" => seg_out <= "0100001";
            WHEN "1110" => seg_out <= "0000110";
            WHEN "1111" => seg_out <= "0001110";
            WHEN OTHERS => seg_out <= "1111111";
        END CASE;
    END PROCESS;
END behavior;
