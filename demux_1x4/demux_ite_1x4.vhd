LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Demux IS
PORT (x : IN STD_LOGIC;
	s1, s2 : IN STD_LOGIC;
	a, b, c, d : OUT STD_LOGIC);
END;

ARCHITECTURE dem OF Demux IS
BEGIN
	 PROCESS(x, s1, s2)
	 BEGIN
		  a <= '0';
		  b <= '0';
		  c <= '0';
		  d <= '0';

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
