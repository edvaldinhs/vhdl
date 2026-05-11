LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY demux_ws_1x4 IS
PORT (x : IN STD_LOGIC;
	s1, s2 : IN STD_LOGIC;
	a, b, c, d : OUT STD_LOGIC);
END;

ARCHITECTURE dem OF demux_ws_1x4 IS
SIGNAL sel : STD_LOGIC_VECTOR(1 DOWNTO 0);
BEGIN
    sel <= s1 & s2;
    a <= x WHEN sel = "00" ELSE '0';
    b <= x WHEN sel = "01" ELSE '0';
    c <= x WHEN sel = "10" ELSE '0';
    d <= x WHEN sel = "11" ELSE '0';
END dem;
