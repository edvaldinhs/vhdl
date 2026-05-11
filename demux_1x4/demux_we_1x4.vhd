LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY demux_we_1x4 IS
PORT (x : IN STD_LOGIC;
	s1, s2 : IN STD_LOGIC;
	a, b, c, d : OUT STD_LOGIC);
END;

ARCHITECTURE dem OF demux_we_1x4 IS
BEGIN
	a <= x WHEN (s1 = '0' AND s2 = '0') ELSE '0';
   b <= x WHEN (s1 = '0' AND s2 = '1') ELSE '0';
   c <= x WHEN (s1 = '1' AND s2 = '0') ELSE '0';
   d <= x WHEN (s1 = '1' AND s2 = '1') ELSE '0';
END dem;
