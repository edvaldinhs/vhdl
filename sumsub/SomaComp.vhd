LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY SomaComp IS
PORT ( a, b, c : IN STD_LOGIC;
		Cout, s : OUT STD_LOGIC);
END;

ARCHITECTURE s OF SomaComp IS 
BEGIN
	s <= a XOR b XOR c;
	Cout <= ((a XOR b) AND c) OR (a AND b);
END s;

