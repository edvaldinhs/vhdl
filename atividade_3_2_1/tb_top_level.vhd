LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY tb_top_level IS
END tb_top_level;

ARCHITECTURE sim OF tb_top_level IS
    SIGNAL clk      : STD_LOGIC := '0';
    SIGNAL rst_n    : STD_LOGIC := '1'; -- KEY(3)
    SIGNAL btn_write: STD_LOGIC := '1'; -- KEY(2)
    SIGNAL btn_read : STD_LOGIC := '1'; -- KEY(1)
    SIGNAL btn_start: STD_LOGIC := '1'; -- KEY(0)
    SIGNAL switches : STD_LOGIC_VECTOR(17 DOWNTO 0) := (OTHERS => '0');

    SIGNAL sim_quociente : STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL sim_resto     : STD_LOGIC_VECTOR(15 DOWNTO 0);

    SIGNAL s_keys   : STD_LOGIC_VECTOR(3 DOWNTO 0);

    -- Saídas
    SIGNAL hex0, hex1, hex2, hex3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
    SIGNAL led_pronto : STD_LOGIC_VECTOR(0 DOWNTO 0);
    SIGNAL leds_erro  : STD_LOGIC_VECTOR(17 DOWNTO 16);

    CONSTANT CLK_PERIOD : TIME := 20 ns; -- 50 MHz
BEGIN
    s_keys <= (rst_n & btn_write & btn_read & btn_start);

    -- Instanciação do circuito completo (UUT)
    uut: ENTITY work.top_level
        PORT MAP (
            CLOCK_50 => clk,
            SW       => switches,
            KEY      => s_keys,
            HEX0     => hex0, 
            HEX1     => hex1, 
            HEX2     => hex2, 
            HEX3     => hex3,
            LEDG     => led_pronto,
            LEDR     => leds_erro,
				var_quociente => sim_quociente,
				var_resto     => sim_resto
        );


    -- Gerador do clock
    clk_process : PROCESS
    BEGIN
        clk <= '0'; WAIT FOR CLK_PERIOD/2;
        clk <= '1'; WAIT FOR CLK_PERIOD/2;
    END PROCESS;

    stim_proc: PROCESS
    BEGIN
        -- Passo 1: Reset do sistema (Equivalente a pressionar KEY(3))
        rst_n <= '0';
        WAIT FOR CLK_PERIOD * 2;
        rst_n <= '1';
        WAIT FOR CLK_PERIOD * 2;

        ------------------------------------------------------------
        -- TESTE 1: Divisão normal (A = 15, B = 4) -> Q=3, R=3
        ------------------------------------------------------------

        -- Passo 2: Gravar A=15 no Reg 000
        switches(17 DOWNTO 15) <= "000";                                 -- Endereço 0
        switches(14 DOWNTO 0)  <= STD_LOGIC_VECTOR(to_unsigned(15, 15)); -- Dado A = 15
        WAIT FOR CLK_PERIOD * 2;
        btn_write <= '0'; WAIT FOR CLK_PERIOD * 2; btn_write <= '1';     -- botão de Gravar
        WAIT FOR CLK_PERIOD * 2;

        -- Passo 3: Gravar B=4 no Reg 001
        switches(17 DOWNTO 15) <= "001";                                 -- Endereço 1
        switches(14 DOWNTO 0)  <= STD_LOGIC_VECTOR(to_unsigned(4, 15));  -- Dado B = 4
        WAIT FOR CLK_PERIOD * 2;
        btn_write <= '0'; WAIT FOR CLK_PERIOD * 2; btn_write <= '1';     -- botão de Gravar
        WAIT FOR CLK_PERIOD * 5;

        -- Passo 4: Disparar a Divisão
        btn_start <= '0'; WAIT FOR CLK_PERIOD * 2; btn_start <= '1';

        -- Passo 5: Aguardar a FSM terminar
        WAIT UNTIL led_pronto(0) = '1';
        WAIT FOR CLK_PERIOD * 10;

        ------------------------------------------------------------
        -- TESTE 2: Condição de Erro (B > A) -> A = 5, B = 10
        ------------------------------------------------------------
        -- Grava A=5 no Reg 0
        switches(17 DOWNTO 15) <= "000"; switches(14 DOWNTO 0) <= STD_LOGIC_VECTOR(to_unsigned(5, 15));
        WAIT FOR CLK_PERIOD; btn_write <= '0'; WAIT FOR CLK_PERIOD * 2; btn_write <= '1';
        WAIT FOR CLK_PERIOD * 2;

        -- Grava B=10 no Reg 1
        switches(17 DOWNTO 15) <= "001"; switches(14 DOWNTO 0) <= STD_LOGIC_VECTOR(to_unsigned(10, 15));
        WAIT FOR CLK_PERIOD; btn_write <= '0'; WAIT FOR CLK_PERIOD * 2; btn_write <= '1';
        WAIT FOR CLK_PERIOD * 2;

        -- Disparar
        btn_start <= '0'; WAIT FOR CLK_PERIOD * 2; btn_start <= '1';

        -- Aguardar sinalização de erro
        WAIT UNTIL led_pronto(0) = '1';
        ASSERT leds_erro(16) = '1' REPORT "Erro: Sinalização de B > A falhou!" SEVERITY ERROR;

        WAIT FOR CLK_PERIOD * 20;
        ASSERT FALSE REPORT "Fim da simulação com sucesso!" SEVERITY FAILURE;
    END PROCESS;
END sim;
