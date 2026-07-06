LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY top_level IS
    PORT(
        CLOCK_50 : IN STD_LOGIC;

        SW  : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        KEY : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		  ADDR : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		  
		  SAIDA: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		  OP_S: OUT STD_LOGIC_VECTOR(1 DOWNTO 0);

        HEX0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
        HEX1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
        HEX2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
        HEX3 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
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
	 
		SIGNAL we_sig         : STD_LOGIC;
		SIGNAL operation_sig  : STD_LOGIC_VECTOR(1 DOWNTO 0);
		SIGNAL data_out_sig   : STD_LOGIC_VECTOR(15 DOWNTO 0);
		SIGNAL display_data   : STD_LOGIC_VECTOR(15 DOWNTO 0);

		SIGNAL endereco_reg   : STD_LOGIC_VECTOR(2 DOWNTO 0) := (OTHERS => '0');

BEGIN

	PROCESS(CLOCK_50)
	BEGIN
		 IF rising_edge(CLOCK_50) THEN	
				IF KEY(0) = '0' THEN
						 endereco_reg <= ADDR & SW(15);
				END IF;
		 END IF;
	END PROCESS;

    ------------------------------------------------
    -- PC
    ------------------------------------------------

    CONTROL : PC
    PORT MAP(
        clk       => CLOCK_50,
        reset     => NOT KEY(3),
        btn_read  => NOT KEY(1),
        btn_write => NOT KEY(2),

        we        => we_sig,
        operation => operation_sig
    );

    ------------------------------------------------
    -- PO
    ------------------------------------------------

    OPERATIVA : PO
    PORT MAP(
        clk       => CLOCK_50,
        we        => we_sig,
        endereco  => endereco_reg,
        data_in   => SW(15 DOWNTO 0),
        data_out  => data_out_sig
    );

    ------------------------------------------------
    -- Seleção do que mostrar
    ------------------------------------------------

    WITH operation_sig SELECT

        display_data <=
            SW(15 DOWNTO 0) WHEN "10", -- WRITE
            data_out_sig    WHEN "01", -- READ
            (OTHERS => '0') WHEN OTHERS;

    ------------------------------------------------
    -- Displays
    ------------------------------------------------
	 
	 SAIDA <= data_out_sig;
	 OP_S <= operation_sig;

    HEX0_INST : hex7seg
        PORT MAP(display_data(3 DOWNTO 0), HEX0);

    HEX1_INST : hex7seg
        PORT MAP(display_data(7 DOWNTO 4), HEX1);

    HEX2_INST : hex7seg
        PORT MAP(display_data(11 DOWNTO 8), HEX2);

    HEX3_INST : hex7seg
        PORT MAP(display_data(15 DOWNTO 12), HEX3);

END Structural;
