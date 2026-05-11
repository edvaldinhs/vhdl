LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY sum_sub IS
PORT ( A, B : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		Seletor : IN STD_LOGIC;
		CoutX : OUT STD_LOGIC;
		S : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END;

ARCHITECTURE b OF sum_sub IS 
	COMPONENT SomaComp IS
	PORT ( a, b, c : IN STD_LOGIC;
			Cout, s : OUT STD_LOGIC);
	END COMPONENT;
	
	SIGNAL x: STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL carry: STD_LOGIC_VECTOR(8 DOWNTO 0);
BEGIN
	x(0) <= Seletor XOR B(0);
	x(1) <= Seletor XOR B(1);
	x(2) <= Seletor XOR B(2);
	x(3) <= Seletor XOR B(3);
	x(4) <= Seletor XOR B(4);
	x(5) <= Seletor XOR B(5);
	x(6) <= Seletor XOR B(6);
	x(7) <= Seletor XOR B(7);
	carry(0) <= Seletor;
	
	SC0: SomaComp PORT MAP(a=>A(0), b=>x(0), c=>carry(0), Cout=>carry(1), s=>S(0));
	SC1: SomaComp PORT MAP(a=>A(1), b=>x(1), c=>carry(1), Cout=>carry(2), s=>S(1));
	SC2: SomaComp PORT MAP(a=>A(2), b=>x(2), c=>carry(2), Cout=>carry(3), s=>S(2));
	SC3: SomaComp PORT MAP(a=>A(3), b=>x(3), c=>carry(3), Cout=>carry(4), s=>S(3));
	SC4: SomaComp PORT MAP(a=>A(4), b=>x(4), c=>carry(4), Cout=>carry(5), s=>S(4));
	SC5: SomaComp PORT MAP(a=>A(5), b=>x(5), c=>carry(5), Cout=>carry(6), s=>S(5));
	SC6: SomaComp PORT MAP(a=>A(6), b=>x(6), c=>carry(6), Cout=>carry(7), s=>S(6));
	SC7: SomaComp PORT MAP(a=>A(7), b=>x(7), c=>carry(7), Cout=>carry(8), s=>S(7));
	CoutX <= carry(7) XOR carry(8);
	
END b;
