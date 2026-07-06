LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY PC IS
    PORT(
        clk       : IN  STD_LOGIC;
        reset     : IN  STD_LOGIC;

        btn_read  : IN  STD_LOGIC;
        btn_write : IN  STD_LOGIC;

        we        : OUT STD_LOGIC;
        operation : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
    );
END PC;

ARCHITECTURE Behavioral OF PC IS

    TYPE estado IS (IDLE, READ, WRITE);

    SIGNAL EA, PE : estado;

BEGIN

    ------------------------------------------------------------------
    -- Registrador de Estado
    ------------------------------------------------------------------
    PROCESS(clk, reset)
    BEGIN
        IF reset = '1' THEN
            EA <= IDLE;

        ELSIF rising_edge(clk) THEN
            EA <= PE;
        END IF;
    END PROCESS;

    ------------------------------------------------------------------
    -- Próximo Estado
    ------------------------------------------------------------------
    PROCESS(EA, btn_read, btn_write)
    BEGIN

        CASE EA IS

            WHEN IDLE =>

                IF btn_write = '1' THEN
                    PE <= WRITE;

                ELSIF btn_read = '1' THEN
                    PE <= READ;

                ELSE
                    PE <= IDLE;

                END IF;

            WHEN WRITE =>
                PE <= IDLE;

            WHEN READ =>
                PE <= IDLE;

        END CASE;

    END PROCESS;

    ------------------------------------------------------------------
    -- Saídas
    ------------------------------------------------------------------
    PROCESS(EA)
    BEGIN

        -- Valores padrão
        we        <= '0';
        operation <= "00";   -- IDLE

        CASE EA IS

            WHEN IDLE =>
                we        <= '0';
                operation <= "00";

            WHEN READ =>
                we        <= '0';
                operation <= "01";

            WHEN WRITE =>
                we        <= '1';
                operation <= "10";

        END CASE;

    END PROCESS;

END Behavioral;
