LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY PC_Media IS
    PORT(
        clk              : IN  STD_LOGIC;
        reset            : IN  STD_LOGIC;
        start            : IN  STD_LOGIC;

        banco_endereco_w : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
        banco_endereco_r : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
        banco_we         : OUT STD_LOGIC;
        sel_escrita      : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);

        show_E           : OUT STD_LOGIC;
        media_ativo      : OUT STD_LOGIC;
        led_pronto       : OUT STD_LOGIC
    );
END PC_Media;

ARCHITECTURE FSM OF PC_Media IS
    TYPE t_estado IS (
        S_IDLE, 
        S_WRITE_X, S_SHOW_X, S_WAIT_X, 
        S_WRITE_Y, S_SHOW_Y, S_WAIT_Y, 
        S_CALC, S_RESULT, S_WAIT_RES
    );
    SIGNAL estado_atual, proximo_estado : t_estado;
    SIGNAL start_reg, start_pulse : STD_LOGIC;
BEGIN

    PROCESS(clk, reset) 
    BEGIN
        IF reset = '1' THEN
            start_reg <= '0';
            estado_atual <= S_IDLE;
        ELSIF rising_edge(clk) THEN
            start_reg <= start;
            estado_atual <= proximo_estado;
        END IF;
    END PROCESS;

    start_pulse <= start AND NOT start_reg;

    PROCESS(estado_atual, start_pulse) 
    BEGIN
        banco_endereco_w <= "000";
        banco_endereco_r <= "000";
        banco_we         <= '0';
        sel_escrita      <= "00";
        show_E           <= '0';
        media_ativo      <= '1';
        led_pronto       <= '0';
        proximo_estado   <= estado_atual;

        CASE estado_atual IS
            WHEN S_IDLE =>
                media_ativo <= '0';
                IF start_pulse = '1' THEN proximo_estado <= S_WRITE_X; END IF;

            WHEN S_WRITE_X =>
                banco_endereco_w <= "000";
                sel_escrita      <= "00"; 
                banco_we         <= '1';
                proximo_estado   <= S_SHOW_X;

            WHEN S_SHOW_X =>
                banco_endereco_r <= "000";
                show_E           <= '1';
                proximo_estado   <= S_WAIT_X;

            WHEN S_WAIT_X =>
                banco_endereco_r <= "000";
                show_E           <= '1';
                IF start_pulse = '1' THEN proximo_estado <= S_WRITE_Y; END IF;

            WHEN S_WRITE_Y =>
                banco_endereco_w <= "001";
                sel_escrita      <= "01"; 
                banco_we         <= '1';
                proximo_estado   <= S_SHOW_Y;

            WHEN S_SHOW_Y =>
                banco_endereco_r <= "001";
                proximo_estado   <= S_WAIT_Y;

            WHEN S_WAIT_Y =>
                banco_endereco_r <= "001";
                IF start_pulse = '1' THEN proximo_estado <= S_CALC; END IF;

            WHEN S_CALC =>
                banco_endereco_w <= "010";
                sel_escrita      <= "10"; 
                banco_we         <= '1';
                proximo_estado   <= S_RESULT;

            WHEN S_RESULT =>
                banco_endereco_r <= "010";
                led_pronto       <= '1';
                proximo_estado   <= S_WAIT_RES;

            WHEN S_WAIT_RES =>
                banco_endereco_r <= "010";
                led_pronto       <= '1'; 
                IF start_pulse = '1' THEN proximo_estado <= S_IDLE; END IF;

        END CASE;
    END PROCESS;
END ARCHITECTURE;
