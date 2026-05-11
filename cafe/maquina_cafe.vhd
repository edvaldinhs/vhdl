LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY maquina_cafe IS
    PORT (
        botao : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
        A, B, C, D, E, F, G, H  : OUT STD_LOGIC
    );
END maquina_cafe;

ARCHITECTURE logica OF maquina_cafe IS
BEGIN
        A <= '1' WHEN botao = "001" ELSE '0';
        B <= '1' WHEN botao = "010" ELSE '0';
        C <= '1' WHEN botao = "011" ELSE '0';
        D <= '1' WHEN botao = "100" ELSE '0';
        E <= '1' WHEN botao = "101" ELSE '0';
        F <= '1' WHEN botao = "110" ELSE '0';
        G <= '1' WHEN botao = "111" ELSE '0';
        H <= '1' WHEN botao = "000" ELSE '0';
END logica;
