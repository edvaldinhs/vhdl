LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY top_level IS
    PORT(
        CLOCK_50 : IN STD_LOGIC;

        SW       : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        KEY      : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        ADDR     : IN STD_LOGIC_VECTOR(1 DOWNTO 0);

        SAIDA    : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
        OP_S     : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);

        HEX0     : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
        HEX1     : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
        HEX2     : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
        HEX3     : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
        HEX4     : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);

        LEDG     : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
    );
END top_level;

ARCHITECTURE Structural OF top_level IS
    COMPONENT PC
        PORT(
            clk, reset, btn_read, btn_write : IN STD_LOGIC;
            we                              : OUT STD_LOGIC;
            operation                       : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
        );
    END COMPONENT;

    COMPONENT PO
        PORT(
            clk        : IN STD_LOGIC;
            we         : IN STD_LOGIC;
            endereco_w : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
            endereco_r : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
            data_in    : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
            data_out   : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
            reg_0_out  : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
            reg_1_out  : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
        );
    END COMPONENT;

    COMPONENT hex7seg
        PORT(
            hex : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
            seg : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
        );
    END COMPONENT;

    SIGNAL pc_we, media_ativo, media_banco_we, show_E : STD_LOGIC;
    SIGNAL pc_operation, media_sel_escrita : STD_LOGIC_VECTOR(1 DOWNTO 0);
    SIGNAL po_data_out, media_banco_in, reg_0_sig, reg_1_sig : STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL media_banco_endereco_w, media_banco_endereco_r : STD_LOGIC_VECTOR(2 DOWNTO 0);
    SIGNAL addr_sig_w, addr_sig_r, endereco_reg : STD_LOGIC_VECTOR(2 DOWNTO 0) := (OTHERS => '0');
    SIGNAL we_sig : STD_LOGIC;
    SIGNAL data_in_sig : STD_LOGIC_VECTOR(15 DOWNTO 0);

    SIGNAL valor_binario : STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL valor_bcd     : STD_LOGIC_VECTOR(19 DOWNTO 0);
    SIGNAL display_final : STD_LOGIC_VECTOR(19 DOWNTO 0);

    SIGNAL key_reset, key_btn_read, key_btn_write, key_btn_start : STD_LOGIC;

BEGIN

    key_reset     <= NOT KEY(3);
    key_btn_write <= NOT KEY(2);
    key_btn_read  <= NOT KEY(1);
    key_btn_start <= NOT KEY(0);

    endereco_reg <= ADDR & SW(15);

    CONVERSOR_DECIMAL : ENTITY work.bin2bcd
    PORT MAP(bin => valor_binario, bcd => valor_bcd);

    CONTROL : PC PORT MAP(CLOCK_50, key_reset, key_btn_read, key_btn_write, pc_we, pc_operation);

    CTRL_MEDIA : ENTITY work.PC_Media
    PORT MAP(CLOCK_50, key_reset, key_btn_start, media_banco_endereco_w, media_banco_endereco_r, media_banco_we, media_sel_escrita, show_E, media_ativo, LEDG(0));

    DATA_MEDIA : ENTITY work.PO_Media
    PORT MAP(SW(15 DOWNTO 0), reg_0_sig, reg_1_sig, media_sel_escrita, media_banco_in);

    we_sig      <= media_banco_we         WHEN media_ativo = '1' ELSE pc_we;
    addr_sig_w  <= media_banco_endereco_w WHEN media_ativo = '1' ELSE endereco_reg;
    addr_sig_r  <= media_banco_endereco_r WHEN media_ativo = '1' ELSE endereco_reg;
    data_in_sig <= media_banco_in         WHEN media_ativo = '1' ELSE SW(15 DOWNTO 0);

    OPERATIVA : PO PORT MAP(CLOCK_50, we_sig, addr_sig_w, addr_sig_r, data_in_sig, po_data_out, reg_0_sig, reg_1_sig);

    PROCESS(media_ativo, pc_operation, po_data_out, SW)
    BEGIN
        IF media_ativo = '1' THEN
            valor_binario <= po_data_out;
        ELSE
            CASE pc_operation IS
                WHEN "10"   => valor_binario <= SW(15 DOWNTO 0);
                WHEN "01"   => valor_binario <= po_data_out;
                WHEN OTHERS => valor_binario <= (OTHERS => '0');
            END CASE;
        END IF;
    END PROCESS;

    PROCESS(show_E, valor_bcd)
    BEGIN
        IF show_E = '1' THEN
            display_final <= x"E" & valor_bcd(15 DOWNTO 0);
        ELSE
            IF valor_bcd(19 DOWNTO 16) = "0000" THEN
                display_final <= x"F" & valor_bcd(15 DOWNTO 0);
            ELSE
                display_final <= valor_bcd;
            END IF;
        END IF;
    END PROCESS;

    SAIDA <= po_data_out;
    OP_S  <= pc_operation;

    HEX0_INST : hex7seg PORT MAP(display_final(3 DOWNTO 0), HEX0);
    HEX1_INST : hex7seg PORT MAP(display_final(7 DOWNTO 4), HEX1);
    HEX2_INST : hex7seg PORT MAP(display_final(11 DOWNTO 8), HEX2);
    HEX3_INST : hex7seg PORT MAP(display_final(15 DOWNTO 12), HEX3);
    HEX4_INST : hex7seg PORT MAP(display_final(19 DOWNTO 16), HEX4);

END Structural;
