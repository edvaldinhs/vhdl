LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY PO_Divisao IS
    PORT(
        clk           : IN  STD_LOGIC;
        reset         : IN  STD_LOGIC;

        -- Barramento vindo do Banco Externo (data_out do seu PO)
        banco_leitura : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);

        -- Barramento indo para o Banco Externo (data_in do seu PO)
        banco_escrita : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);

        -- Comandos vindos do PC_Divisao (FSM do Divisor)
        cmd_salvar_a  : IN  STD_LOGIC;
        cmd_salvar_b  : IN  STD_LOGIC;
        cmd_salvar_r  : IN  STD_LOGIC;
        cmd_salvar_q  : IN  STD_LOGIC;

        -- Multiplexador interno para decidir o que enviar para o banco externo
        sel_escrita   : IN  STD_LOGIC_VECTOR(1 DOWNTO 0); 

        -- Sinais de Status para o PC_Divisao (FSM do Divisor)
        flag_b_zero   : OUT STD_LOGIC;
        flag_b_maior_a: OUT STD_LOGIC;
        flag_r_ge_b   : OUT STD_LOGIC
    );
END PO_Divisao;

ARCHITECTURE Operativa OF PO_Divisao IS
    -- Registradores de rascunho do Divisor
    SIGNAL reg_A, reg_B, reg_R, reg_Q : UNSIGNED(15 DOWNTO 0);
BEGIN

    -- Processo de armazenamento temporário (Buffers de Leitura)
    PROCESS(clk, reset)
    BEGIN
        IF reset = '1' THEN
            reg_A <= (OTHERS => '0');
            reg_B <= (OTHERS => '0');
            reg_R <= (OTHERS => '0');
            reg_Q <= (OTHERS => '0');
        ELSIF rising_edge(clk) THEN
            IF cmd_salvar_a = '1' THEN reg_A <= UNSIGNED(banco_leitura); END IF;
            IF cmd_salvar_b = '1' THEN reg_B <= UNSIGNED(banco_leitura); END IF;
            IF cmd_salvar_r = '1' THEN reg_R <= UNSIGNED(banco_leitura); END IF;
            IF cmd_salvar_q = '1' THEN reg_Q <= UNSIGNED(banco_leitura); END IF;
        END IF;
    END PROCESS;

    -- Lógica Combinacional de Comparação (Status)
    flag_b_zero    <= '1' WHEN reg_B = 0 ELSE '0';
    flag_b_maior_a <= '1' WHEN reg_B > reg_A ELSE '0';
    flag_r_ge_b    <= '1' WHEN reg_R >= reg_B ELSE '0';

    -- Multiplexador de Escrita (Define qual dado matemático vai ser jogado no barramento externo)
    WITH sel_escrita SELECT
        banco_escrita <=
            STD_LOGIC_VECTOR(reg_A)              WHEN "00", -- Prepara A para virar Resto inicial
            STD_LOGIC_VECTOR(to_unsigned(0, 16)) WHEN "01", -- Prepara o 0 para virar Quociente inicial
            STD_LOGIC_VECTOR(reg_R - reg_B)      WHEN "10", -- Realiza a Subtração do Resto
            STD_LOGIC_VECTOR(reg_Q + 1)          WHEN "11", -- Realiza o Incremento do Quociente
            (OTHERS => '0')                      WHEN OTHERS;

END ARCHITECTURE;
