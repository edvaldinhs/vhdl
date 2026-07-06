LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY DivisaoSubSuc IS
    PORT(
        clk            : IN  STD_LOGIC;
        reset          : IN  STD_LOGIC;
        start          : IN  STD_LOGIC;

        -- Interface com o Banco Externo
        banco_leitura  : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
        banco_escrita  : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
        banco_endereco : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
        banco_we       : OUT STD_LOGIC;

        -- Controle de Acesso
        divisor_ativo  : OUT STD_LOGIC;

        -- Sinalizações Visuais
        pronto         : OUT STD_LOGIC;
        erro_b0        : OUT STD_LOGIC;
        erro_ba        : OUT STD_LOGIC
    );
END DivisaoSubSuc;

ARCHITECTURE Estrutural OF DivisaoSubSuc IS
    SIGNAL s_flag_b0, s_flag_ba, s_flag_rgeb : STD_LOGIC;
    SIGNAL s_cmd_a, s_cmd_b, s_cmd_r, s_cmd_q : STD_LOGIC;
    SIGNAL s_sel_escrita : STD_LOGIC_VECTOR(1 DOWNTO 0);
BEGIN

    U_PO: ENTITY work.PO_Divisao
        PORT MAP(
            clk            => clk,
            reset          => reset,
            banco_leitura  => banco_leitura,
            banco_escrita  => banco_escrita,
            cmd_salvar_a   => s_cmd_a,
            cmd_salvar_b   => s_cmd_b,
            cmd_salvar_r   => s_cmd_r,
            cmd_salvar_q   => s_cmd_q,
            sel_escrita    => s_sel_escrita,
            flag_b_zero    => s_flag_b0,
            flag_b_maior_a => s_flag_ba,
            flag_r_ge_b    => s_flag_rgeb
        );

    U_PC: ENTITY work.PC_Divisao
        PORT MAP(
            clk            => clk,
            reset          => reset,
            start          => start,
            flag_b_zero    => s_flag_b0,
            flag_b_maior_a => s_flag_ba,
            flag_r_ge_b    => s_flag_rgeb,
            cmd_salvar_a   => s_cmd_a,
            cmd_salvar_b   => s_cmd_b,
            cmd_salvar_r   => s_cmd_r,
            cmd_salvar_q   => s_cmd_q,
            sel_escrita    => s_sel_escrita,
            banco_endereco => banco_endereco,
            banco_we       => banco_we,
            divisor_ativo  => divisor_ativo,
            led_pronto     => pronto,
            led_erro_b0    => erro_b0,
            led_erro_ba    => erro_ba
        );

END ARCHITECTURE;
