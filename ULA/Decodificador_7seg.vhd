LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Decodificador_7seg IS
PORT(
    Entrada : IN  STD_LOGIC_VECTOR(3 downto 0);
    Display : OUT STD_LOGIC_VECTOR(6 downto 0)
);
END Decodificador_7seg;

ARCHITECTURE comportamental OF Decodificador_7seg IS
BEGIN

    PROCESS(Entrada)
    BEGIN
        CASE Entrada IS

            WHEN "0000" => Display <= "1000000"; -- 0
            WHEN "0001" => Display <= "1111001"; -- 1
            WHEN "0010" => Display <= "0100100"; -- 2
            WHEN "0011" => Display <= "0110000"; -- 3
            WHEN "0100" => Display <= "0011001"; -- 4
            WHEN "0101" => Display <= "0010010"; -- 5
            WHEN "0110" => Display <= "0000010"; -- 6
            WHEN "0111" => Display <= "1111000"; -- 7
            WHEN "1000" => Display <= "0000000"; -- 8
            WHEN "1001" => Display <= "0010000"; -- 9
            WHEN "1010" => Display <= "0001000"; -- A
            WHEN "1011" => Display <= "0000011"; -- b
            WHEN "1100" => Display <= "1000110"; -- C
            WHEN "1101" => Display <= "0100001"; -- d
            WHEN "1110" => Display <= "0000110"; -- E
            WHEN "1111" => Display <= "0001110"; -- F

            WHEN OTHERS => Display <= "1111111"; -- apagado

        END CASE;
    END PROCESS;

END comportamental;