LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Extensor_Aritmetico IS
PORT(
    M  : IN  STD_LOGIC;
    S1 : IN  STD_LOGIC;
    S0 : IN  STD_LOGIC;
    B  : IN  STD_LOGIC_VECTOR(15 downto 0);
    EA : OUT STD_LOGIC_VECTOR(15 downto 0)
);
END Extensor_Aritmetico;

ARCHITECTURE comportamental OF Extensor_Aritmetico IS
    SIGNAL Sel : STD_LOGIC_VECTOR(2 downto 0);
BEGIN

    Sel <= M & S1 & S0;

    PROCESS(Sel, B)
    BEGIN
        CASE Sel IS

            WHEN "000" =>
                EA <= B;

            WHEN "001" =>
                EA <= NOT B;

            WHEN "010" =>
                EA <= (OTHERS => '0');

            WHEN "011" =>
                EA <= (OTHERS => '0');

            WHEN "100" =>
                EA <= (OTHERS => '0');

            WHEN "101" =>
                EA <= (OTHERS => '0');

            WHEN "110" =>
                EA <= (OTHERS => '0');

            WHEN "111" =>
                EA <= (OTHERS => '0');

            WHEN OTHERS =>
                EA <= (OTHERS => '0');

        END CASE;
    END PROCESS;

END comportamental;