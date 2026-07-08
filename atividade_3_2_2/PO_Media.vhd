LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY PO_Media IS
    PORT(
        sw_y          : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
        reg_0_in      : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
        reg_1_in      : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
        sel_escrita   : IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
        
        banco_escrita : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
    );
END PO_Media;

ARCHITECTURE Operativa OF PO_Media IS
    CONSTANT CONST_X : UNSIGNED(15 DOWNTO 0) := x"0E97"; 
    
    SIGNAL soma  : UNSIGNED(16 DOWNTO 0);
    SIGNAL media : UNSIGNED(15 DOWNTO 0);
BEGIN

    soma <= ("0" & unsigned(reg_0_in)) + ("0" & unsigned(reg_1_in));
    media <= soma(16 DOWNTO 1); 

    WITH sel_escrita SELECT
        banco_escrita <=
            std_logic_vector(CONST_X) WHEN "00", 
            sw_y                      WHEN "01", 
            std_logic_vector(media)   WHEN OTHERS; 

END ARCHITECTURE;