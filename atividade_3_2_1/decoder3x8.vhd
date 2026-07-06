LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;

ENTITY decoder3x8 IS
	PORT (
		we	: IN STD_LOGIC;
		endereco : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		enable: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END decoder3x8;

ARCHITECTURE Behavioral OF decoder3x8 IS
BEGIN

	PROCESS(we, endereco)
	BEGIN
		enable <= (others => '0');
		
		IF we = '1' THEN
			CASE endereco IS
				WHEN "000" => enable(0) <= '1';
				WHEN "001" => enable(1) <= '1';
				WHEN "010" => enable(2) <= '1';
				WHEN "011" => enable(3) <= '1';
				WHEN "100" => enable(4) <= '1';
				WHEN "101" => enable(5) <= '1';
				WHEN "110" => enable(6) <= '1';
				WHEN others => enable(7) <= '1';
			END CASE;
		END IF;
	END PROCESS;

END Behavioral;
				
		
		