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
        LEDR     : OUT STD_LOGIC_VECTOR(17 DOWNTO 16)
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
    SIGNAL display_data  : STD_LOGIC_VECTOR(15 DOWNTO 0);

BEGIN

    ------------------------------------------------
    -- Controle Manual
    ------------------------------------------------
    CONTROL : PC
    PORT MAP(
        clk       => CLOCK_50,
        reset     => NOT KEY(3),
        btn_read  => NOT KEY(1),
        btn_write => NOT KEY(2),
        we        => pc_we,
        operation => operation_sig
    );

    ------------------------------------------------
    -- O Algoritmo de Divisão
    ------------------------------------------------
    ALGORITMO : ENTITY work.DivisaoSubSuc
    PORT MAP(
        clk            => CLOCK_50,
        reset          => NOT KEY(3),
        start          => NOT KEY(0),
        banco_leitura  => po_data_out,
        banco_escrita  => div_data_in,
        banco_endereco => div_endereco,
        banco_we       => div_we,
        divisor_ativo  => div_ativo,
        pronto         => LEDG(0),
        erro_b0        => LEDR(17),
        erro_ba        => LEDR(16)
    );

    ------------------------------------------------
    -- MULTIPLEXADORES (Roteamento do Banco)
    ------------------------------------------------
    po_we       <= div_we       WHEN div_ativo = '1' ELSE pc_we;
    po_endereco <= div_endereco WHEN div_ativo = '1' ELSE SW(17 DOWNTO 15);
	 po_data_in  <= div_data_in  WHEN div_ativo = '1' ELSE ('0' & SW(14 DOWNTO 0));

    ------------------------------------------------
    -- O Banco de Registradores
    ------------------------------------------------
    OPERATIVA : PO
    PORT MAP(
        clk       => CLOCK_50,
        we        => po_we,
        endereco  => po_endereco,
        data_in   => po_data_in,
        data_out  => po_data_out
    );

    ------------------------------------------------
    -- Displays de 7 Segmentos
    ------------------------------------------------
    WITH operation_sig SELECT
        display_data <=
            ('0' & SW(14 DOWNTO 0))      WHEN "10", -- WRITE: Mostra o dado sendo gravado
            po_data_out                  WHEN "01", -- READ: Mostra o conteúdo matemático do registrador!
            (x"000" & '0' & po_endereco) WHEN OTHERS; -- IDLE: Mostra apenas o ENDEREÇO (0 a 7) no visor

    HEX0_INST : hex7seg PORT MAP(display_data(3 DOWNTO 0), HEX0);
    HEX1_INST : hex7seg PORT MAP(display_data(7 DOWNTO 4), HEX1);
    HEX2_INST : hex7seg PORT MAP(display_data(11 DOWNTO 8), HEX2);
    HEX3_INST : hex7seg PORT MAP(display_data(15 DOWNTO 12), HEX3);
	 
END Structural;
