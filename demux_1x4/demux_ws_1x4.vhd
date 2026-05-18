LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY demux_ws_1x4 IS
PORT (x : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	s1, s2 : IN STD_LOGIC;
	a, b, c, d : OUT STD_LOGIC_VECTOR(2 DOWNTO 0));
END;

ARCHITECTURE dem OF demux_ws_1x4 IS
SIGNAL sel : STD_LOGIC_VECTOR(1 DOWNTO 0);
BEGIN
    sel <= s1 & s2;
    a <= x WHEN sel = "00" ELSE "000";
    b <= x WHEN sel = "01" ELSE "000";
    c <= x WHEN sel = "10" ELSE "000";
    d <= x WHEN sel = "11" ELSE "000";
END dem;
