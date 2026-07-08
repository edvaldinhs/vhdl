LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY PO IS
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
END PO;

ARCHITECTURE Structural OF PO IS

    COMPONENT registrador16bits
        PORT(
            clk : IN STD_LOGIC;
            we  : IN STD_LOGIC;
            d   : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
            q   : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
        );
    END COMPONENT;

    COMPONENT decoder3x8
        PORT(
            we       : IN STD_LOGIC;
            endereco : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
            enable   : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
        );
    END COMPONENT;

    SIGNAL enable : STD_LOGIC_VECTOR(7 DOWNTO 0);

    SIGNAL r0, r1, r2, r3,
           r4, r5, r6, r7 : STD_LOGIC_VECTOR(15 DOWNTO 0);

BEGIN

    dec : decoder3x8 PORT MAP(we => we, endereco => endereco_w, enable => enable);

    reg0 : registrador16bits PORT MAP(clk, enable(0), data_in, r0);
    reg1 : registrador16bits PORT MAP(clk, enable(1), data_in, r1);
    reg2 : registrador16bits PORT MAP(clk, enable(2), data_in, r2);
    reg3 : registrador16bits PORT MAP(clk, enable(3), data_in, r3);
    reg4 : registrador16bits PORT MAP(clk, enable(4), data_in, r4);
    reg5 : registrador16bits PORT MAP(clk, enable(5), data_in, r5);
    reg6 : registrador16bits PORT MAP(clk, enable(6), data_in, r6);
    reg7 : registrador16bits PORT MAP(clk, enable(7), data_in, r7);

    reg_0_out <= r0;
    reg_1_out <= r1;

    WITH endereco_r SELECT
        data_out <=
            r0 WHEN "000",
            r1 WHEN "001",
            r2 WHEN "010",
            r3 WHEN "011",
            r4 WHEN "100",
            r5 WHEN "101",
            r6 WHEN "110",
            r7 WHEN OTHERS;

END Structural;