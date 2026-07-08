LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY tb_top_level_media IS
END tb_top_level_media;

ARCHITECTURE sim OF tb_top_level_media IS
    SIGNAL clk        : STD_LOGIC := '0';
    SIGNAL rst_n      : STD_LOGIC := '1'; 
    SIGNAL btn_start  : STD_LOGIC := '1'; 
    SIGNAL btn_read   : STD_LOGIC := '1'; 
    SIGNAL switches   : STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0');
    SIGNAL addr_sig   : STD_LOGIC_VECTOR(1 DOWNTO 0) := "00"; 

    SIGNAL s_keys     : STD_LOGIC_VECTOR(3 DOWNTO 0);

    SIGNAL hex0, hex1, hex2, hex3, hex4 : STD_LOGIC_VECTOR(6 DOWNTO 0);
    SIGNAL led_pronto : STD_LOGIC_VECTOR(0 DOWNTO 0);
    SIGNAL saida_reg  : STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL op_state   : STD_LOGIC_VECTOR(1 DOWNTO 0);

    CONSTANT CLK_PERIOD : TIME := 20 ns;
BEGIN
    s_keys <= (rst_n & '1' & btn_read & btn_start);

    uut: ENTITY work.top_level
        PORT MAP (
            CLOCK_50 => clk, SW => switches, KEY => s_keys, ADDR => addr_sig,
            SAIDA => saida_reg, OP_S => op_state,
            HEX0 => hex0, HEX1 => hex1, HEX2 => hex2, HEX3 => hex3, HEX4 => hex4,
            LEDG => led_pronto
        );

    clk_process : PROCESS
    BEGIN
        clk <= '0'; WAIT FOR CLK_PERIOD/2;
        clk <= '1'; WAIT FOR CLK_PERIOD/2;
    END PROCESS;

    stim_proc: PROCESS
    BEGIN
        rst_n <= '0';
        addr_sig <= "00"; 
        WAIT FOR CLK_PERIOD * 2;
        rst_n <= '1';
        WAIT FOR CLK_PERIOD * 5;

        btn_start <= '0'; WAIT FOR CLK_PERIOD * 2; btn_start <= '1';
        WAIT FOR CLK_PERIOD * 10; 

        switches <= STD_LOGIC_VECTOR(to_unsigned(1000, 16));
        WAIT FOR CLK_PERIOD * 2;

        btn_start <= '0'; WAIT FOR CLK_PERIOD * 2; btn_start <= '1';
        WAIT FOR CLK_PERIOD * 10;

        btn_start <= '0'; WAIT FOR CLK_PERIOD * 2; btn_start <= '1';

        WAIT UNTIL led_pronto(0) = '1';
        WAIT FOR CLK_PERIOD * 5;

        addr_sig <= "10"; 
        WAIT FOR CLK_PERIOD * 2;
        btn_read <= '0'; WAIT FOR CLK_PERIOD * 2; btn_read <= '1';
        WAIT FOR CLK_PERIOD * 5;

        ASSERT FALSE REPORT "Fim da simulacao da Media com sucesso!" SEVERITY FAILURE;
    END PROCESS;
END sim;
