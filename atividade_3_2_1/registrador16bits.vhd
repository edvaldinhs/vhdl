LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY registrador16bits IS
	PORT(
		clk : IN STD_LOGIC;
		we  : IN STD_LOGIC;
		d	 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		q	 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END registrador16bits;

ARCHITECTURE Behavioral OF registrador16bits IS
BEGIN

	PROCESS(clk)
	BEGIN
		IF rising_edge(clk) THEN
			IF we = '1' THEN
				q <= d;
			END IF;
		END IF;
	END PROCESS;
	
END Behavioral;