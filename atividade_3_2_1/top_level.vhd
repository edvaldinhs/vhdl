LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY top_level IS
    PORT(
        CLOCK_50 : IN STD_LOGIC;

        SW       : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
        KEY      : IN STD_LOGIC_VECTOR(3 DOWNTO 0);

        HEX0     : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
        HEX1     : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
        HEX2     : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
        HEX3     : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);

        LEDG     : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
        LEDR     : OUT STD_LOGIC_VECTOR(17 DOWNTO 16);

        var_quociente : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
        var_resto     : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
    );
END top_level;

ARCHITECTURE Structural OF top_level IS

    COMPONENT PC
        PORT(
            clk       : IN STD_LOGIC;
            reset     : IN STD_LOGIC;
            btn_read  : IN STD_LOGIC;
            btn_write : IN STD_LOGIC;
            we        : OUT STD_LOGIC;
            operation : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
        );
    END COMPONENT;

    COMPONENT PO
        PORT(
            clk       : IN STD_LOGIC;
            we        : IN STD_LOGIC;
            endereco  : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
            data_in   : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
            data_out  : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
        );
    END COMPONENT;

    COMPONENT hex7seg
        PORT(
            hex : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
            seg : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
        );
    END COMPONENT;

    COMPONENT bin2bcd
        PORT (
            bin_in  : IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
            bcd_out : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
        );
    END COMPONENT;

    SIGNAL s_reset     : STD_LOGIC;
    SIGNAL s_btn_read  : STD_LOGIC;
    SIGNAL s_btn_write : STD_LOGIC;
    SIGNAL s_start     : STD_LOGIC;

    -- Sinais de interface com o Banco Externo
    SIGNAL po_we         : STD_LOGIC;
    SIGNAL po_endereco   : STD_LOGIC_VECTOR(2 DOWNTO 0);
    SIGNAL po_data_in    : STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL po_data_out   : STD_LOGIC_VECTOR(15 DOWNTO 0);

    -- Sinais do Divisor
    SIGNAL div_we        : STD_LOGIC;
    SIGNAL div_endereco  : STD_LOGIC_VECTOR(2 DOWNTO 0);
    SIGNAL div_data_in   : STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL div_ativo     : STD_LOGIC;

    -- Sinais do PC Original
    SIGNAL pc_we         : STD_LOGIC;
    SIGNAL operation_sig : STD_LOGIC_VECTOR(1 DOWNTO 0);
    
    -- Sinais para os barramentos internos de exibição dos resultados fixos
    SIGNAL s_pronto      : STD_LOGIC;
    SIGNAL display_data  : STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL reg2_quociente: STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0');
    SIGNAL reg3_resto    : STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0');

    SIGNAL bcd_quociente : STD_LOGIC_VECTOR(11 DOWNTO 0);
    SIGNAL bcd_resto     : STD_LOGIC_VECTOR(11 DOWNTO 0);

BEGIN

    s_reset     <= NOT KEY(3);
    s_btn_read  <= NOT KEY(1);
    s_btn_write <= NOT KEY(2);
    s_start     <= NOT KEY(0);

    LEDG(0) <= s_pronto;

    ------------------------------------------------
    -- Controle Manual
    ------------------------------------------------
    CONTROL : PC PORT MAP(CLOCK_50, s_reset, s_btn_read, s_btn_write, pc_we, operation_sig);

    ------------------------------------------------
    -- O Algoritmo de Divisão
    ------------------------------------------------
    ALGORITMO : ENTITY work.DivisaoSubSuc
    PORT MAP(
        clk            => CLOCK_50,
        reset          => s_reset,
        start          => s_start,
        banco_leitura  => po_data_out,
        banco_escrita  => div_data_in,
        banco_endereco => div_endereco,
        banco_we       => div_we,
        divisor_ativo  => div_ativo,
        pronto         => s_pronto,
        erro_b0        => LEDR(17),
        erro_ba        => LEDR(16)
    );

    ------------------------------------------------
    -- MULTIPLEXADORES do Banco de Registradores
    ------------------------------------------------
    po_we       <= div_we       WHEN div_ativo = '1' ELSE pc_we;
    po_endereco <= div_endereco WHEN div_ativo = '1' ELSE SW(17 DOWNTO 15);
    po_data_in  <= div_data_in  WHEN div_ativo = '1' ELSE ('0' & SW(14 DOWNTO 0));

    ------------------------------------------------
    -- O Banco de Registradores
    ------------------------------------------------
    OPERATIVA : PO PORT MAP(CLOCK_50, po_we, po_endereco, po_data_in, po_data_out);

    ------------------------------------------------
    -- Escuta estática dos Registradores de Saída 
    ------------------------------------------------
    PROCESS(CLOCK_50)
    BEGIN
        IF rising_edge(CLOCK_50) THEN
            IF po_we = '1' AND po_endereco = "010" THEN
                reg2_quociente <= po_data_in;
            END IF;
            IF po_we = '1' AND po_endereco = "011" THEN
                reg3_resto <= po_data_in;
            END IF;
        END IF;
    END PROCESS;

    ------------------------------------------------
    -- INSTANCIAÇÃO DOS CONVERSORES BCD
    ------------------------------------------------
    CONV_Q: bin2bcd PORT MAP(reg2_quociente(7 DOWNTO 0), bcd_quociente);
    CONV_R: bin2bcd PORT MAP(reg3_resto(7 DOWNTO 0), bcd_resto);

    ------------------------------------------------
    -- LÓGICA DE SELEÇÃO DO DISPLAY
    ------------------------------------------------
    PROCESS(s_pronto, div_ativo, operation_sig, SW, po_data_out, bcd_quociente, bcd_resto)
    BEGIN
        IF s_pronto = '1' THEN
            display_data(15 DOWNTO 8) <= bcd_quociente(7 DOWNTO 0); 

            display_data(7 DOWNTO 0)  <= bcd_resto(7 DOWNTO 0);

        ELSIF div_ativo = '1' THEN
            display_data <= x"CACA";

        ELSE
            CASE operation_sig IS
                WHEN "10" => display_data <= ('0' & SW(14 DOWNTO 0));
                WHEN "01" => display_data <= po_data_out;
                WHEN OTHERS => display_data <= (x"000" & '0' & SW(17 DOWNTO 15));
            END CASE;
        END IF;
    END PROCESS;

    ------------------------------------------------
    -- Instanciação dos Displays de 7 Segmentos
    ------------------------------------------------
    HEX0_INST : hex7seg PORT MAP(display_data(3 DOWNTO 0), HEX0);
    HEX1_INST : hex7seg PORT MAP(display_data(7 DOWNTO 4), HEX1);
    HEX2_INST : hex7seg PORT MAP(display_data(11 DOWNTO 8), HEX2);
    HEX3_INST : hex7seg PORT MAP(display_data(15 DOWNTO 12), HEX3);
    var_quociente <= reg2_quociente;
    var_resto     <= reg3_resto;
END Structural;
