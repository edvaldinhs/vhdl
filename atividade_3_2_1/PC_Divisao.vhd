LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY PC_Divisao IS
    PORT(
        clk           : IN  STD_LOGIC;
        reset         : IN  STD_LOGIC;
        start         : IN  STD_LOGIC;

        -- Status vindos do PO_Divisao
        flag_b_zero   : IN  STD_LOGIC;
        flag_b_maior_a: IN  STD_LOGIC;
        flag_r_ge_b   : IN  STD_LOGIC;

        -- Comandos para o PO_Divisao
        cmd_salvar_a  : OUT STD_LOGIC;
        cmd_salvar_b  : OUT STD_LOGIC;
        cmd_salvar_r  : OUT STD_LOGIC;
        cmd_salvar_q  : OUT STD_LOGIC;
        sel_escrita   : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);

        -- Comandos para o Banco de Registradores Externo
        banco_endereco: OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
        banco_we      : OUT STD_LOGIC;

        -- Sinais para o Top Level
        divisor_ativo : OUT STD_LOGIC;
        led_pronto    : OUT STD_LOGIC;
        led_erro_b0   : OUT STD_LOGIC;
        led_erro_ba   : OUT STD_LOGIC
    );
END PC_Divisao;

ARCHITECTURE FSM OF PC_Divisao IS
    TYPE t_estado IS (
        S_IDLE, 
        S_REQ_A, S_SAVE_A, 
        S_REQ_B, S_SAVE_B, 
        S_CHECK, 
        S_INIT_R, S_INIT_Q, 
        S_REQ_R, S_SAVE_R, S_COMPARE, S_WRITE_R, 
        S_REQ_Q, S_SAVE_Q, S_WRITE_Q, 
        S_DONE
    );
    SIGNAL estado_atual, proximo_estado : t_estado;
BEGIN

    PROCESS(clk, reset)
    BEGIN
        IF reset = '1' THEN
            estado_atual <= S_IDLE;
        ELSIF rising_edge(clk) THEN
            estado_atual <= proximo_estado;
        END IF;
    END PROCESS;

    PROCESS(estado_atual, start, flag_b_zero, flag_b_maior_a, flag_r_ge_b)
    BEGIN
        -- Valores Default
        proximo_estado <= estado_atual;
        cmd_salvar_a   <= '0'; cmd_salvar_b   <= '0'; 
        cmd_salvar_r   <= '0'; cmd_salvar_q   <= '0';
        sel_escrita    <= "00";
        banco_endereco <= "000";
        banco_we       <= '0';
        divisor_ativo  <= '1'; -- Por padrão, a FSM domina o banco durante a operação
        led_pronto     <= '0'; led_erro_b0    <= '0'; led_erro_ba    <= '0';

        CASE estado_atual IS
            WHEN S_IDLE =>
                divisor_ativo <= '0'; -- Devolve o controle para o PC manual
                IF start = '1' THEN
                    proximo_estado <= S_REQ_A;
                END IF;

            WHEN S_REQ_A =>
                banco_endereco <= "000"; -- Pede o Reg 0 (A)
                proximo_estado <= S_SAVE_A;

            WHEN S_SAVE_A =>
                cmd_salvar_a   <= '1';
                proximo_estado <= S_REQ_B;

            WHEN S_REQ_B =>
                banco_endereco <= "001"; -- Pede o Reg 1 (B)
                proximo_estado <= S_SAVE_B;

            WHEN S_SAVE_B =>
                cmd_salvar_b   <= '1';
                proximo_estado <= S_CHECK;

            WHEN S_CHECK =>
                IF flag_b_zero = '1' OR flag_b_maior_a = '1' THEN
                    proximo_estado <= S_DONE;
                ELSE
                    proximo_estado <= S_INIT_R;
                END IF;

            WHEN S_INIT_R =>
                banco_endereco <= "011"; -- Escreve no Reg 3 (Resto)
                sel_escrita    <= "00";  -- Seleciona valor A
                banco_we       <= '1';
                proximo_estado <= S_INIT_Q;

            WHEN S_INIT_Q =>
                banco_endereco <= "010"; -- Escreve no Reg 2 (Quociente)
                sel_escrita    <= "01";  -- Seleciona valor 0
                banco_we       <= '1';
                proximo_estado <= S_REQ_R;

            WHEN S_REQ_R =>
                banco_endereco <= "011"; -- Pede o Resto atual
                proximo_estado <= S_SAVE_R;

            WHEN S_SAVE_R =>
                cmd_salvar_r   <= '1';
                proximo_estado <= S_COMPARE;

            WHEN S_COMPARE =>
                IF flag_r_ge_b = '1' THEN
                    proximo_estado <= S_WRITE_R;
                ELSE
                    proximo_estado <= S_DONE;
                END IF;

            WHEN S_WRITE_R =>
                banco_endereco <= "011"; -- Atualiza o Resto
                sel_escrita    <= "10";  -- Seleciona R - B
                banco_we       <= '1';
                proximo_estado <= S_REQ_Q;

            WHEN S_REQ_Q =>
                banco_endereco <= "010"; -- Pede o Quociente atual
                proximo_estado <= S_SAVE_Q;

            WHEN S_SAVE_Q =>
                cmd_salvar_q   <= '1';
                proximo_estado <= S_WRITE_Q;

            WHEN S_WRITE_Q =>
                banco_endereco <= "010"; -- Atualiza o Quociente
                sel_escrita    <= "11";  -- Seleciona Q + 1
                banco_we       <= '1';
                proximo_estado <= S_REQ_R; -- Volta para o loop

            WHEN S_DONE =>
                led_pronto  <= '1';
                led_erro_b0 <= flag_b_zero;
                led_erro_ba <= flag_b_maior_a;
                proximo_estado <= S_IDLE;
        END CASE;
    END PROCESS;
END ARCHITECTURE;
