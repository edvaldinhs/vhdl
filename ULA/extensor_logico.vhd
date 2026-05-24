LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Extensor_Logico IS
PORT(
    M  : IN  STD_LOGIC;
    S1 : IN  STD_LOGIC;
    S0 : IN  STD_LOGIC;
    A  : IN  STD_LOGIC_VECTOR(15 downto 0);
    B  : IN  STD_LOGIC_VECTOR(15 downto 0);
    EL : OUT STD_LOGIC_VECTOR(15 downto 0)
);
END Extensor_Logico;

ARCHITECTURE comportamental OF Extensor_Logico IS
    SIGNAL Sel : STD_LOGIC_VECTOR(2 downto 0);
BEGIN

    Sel <= M & S1 & S0;

    PROCESS(Sel, A, B)
    BEGIN
        CASE Sel IS
		  
            WHEN "000" =>
                EL <= A;
            
            WHEN "001" =>
                EL <= A;

            WHEN "100" =>
                EL <= A AND B;

            WHEN "101" =>
                EL <= A OR B;

            WHEN "110" =>
                EL <= A XOR B;

            WHEN "111" =>
                EL <= A XNOR B;

            WHEN OTHERS =>
                EL <= (OTHERS => '0');

        END CASE;
    END PROCESS;

END comportamental;