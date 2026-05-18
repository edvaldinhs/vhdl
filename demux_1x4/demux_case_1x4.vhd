LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY demux_case_1x4 IS
PORT (x : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	s1, s2 : IN STD_LOGIC;
	a, b, c, d : OUT STD_LOGIC_VECTOR(2 DOWNTO 0));
END;

ARCHITECTURE dem OF demux_case_1x4 IS
SIGNAL sel : STD_LOGIC_VECTOR(1 DOWNTO 0);
BEGIN
    sel <= s1 & s2;

    PROCESS(x, sel)
    BEGIN
        a <= "000"; b <= "000"; c <= "000"; d <= "000";

        CASE sel IS
            WHEN "00" =>
                a <= x;
            WHEN "01" =>
                b <= x;
            WHEN "10" =>
                c <= x;
            WHEN "11" =>
                d <= x;
            WHEN OTHERS =>
                NULL; 
        END CASE;
    END PROCESS;
END dem;
