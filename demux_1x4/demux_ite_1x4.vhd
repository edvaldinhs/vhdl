LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY demux_ite_1x4 IS
PORT (x : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	s1, s2 : IN STD_LOGIC;
	a, b, c, d : OUT STD_LOGIC_VECTOR(2 DOWNTO 0));
END;

ARCHITECTURE dem OF demux_1x4 IS
BEGIN
	 PROCESS(x, s1, s2)
	 BEGIN
		  a <= "000"; b <= "000"; c <= "000"; d <= "000";

		  IF (s1 = '0' AND s2 = '0') THEN
				a <= x;
		  ELSIF (s1 = '0' AND s2 = '1') THEN
				b <= x;
		  ELSIF (s1 = '1' AND s2 = '0') THEN
				c <= x;
		  ELSE
				d <= x;
		  END IF;
		END PROCESS;
END dem;

