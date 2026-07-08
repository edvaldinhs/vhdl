LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY bin2bcd IS
    PORT (
        bin_in  : IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
        bcd_out : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
    );
END bin2bcd;

ARCHITECTURE Behavioral OF bin2bcd IS
BEGIN
    PROCESS(bin_in)
        VARIABLE temp : UNSIGNED(7 DOWNTO 0);
        VARIABLE bcd  : UNSIGNED(11 DOWNTO 0);
    BEGIN
        temp := UNSIGNED(bin_in);
        bcd  := (OTHERS => '0');

        FOR i IN 0 TO 7 LOOP
            IF bcd(3 DOWNTO 0) > 4 THEN 
                bcd(3 DOWNTO 0) := bcd(3 DOWNTO 0) + 3; 
            END IF;
            IF bcd(7 DOWNTO 4) > 4 THEN 
                bcd(7 DOWNTO 4) := bcd(7 DOWNTO 4) + 3; 
            END IF;
            IF bcd(11 DOWNTO 8) > 4 THEN 
                bcd(11 DOWNTO 8) := bcd(11 DOWNTO 8) + 3; 
            END IF;

            bcd := bcd(10 DOWNTO 0) & temp(7);
            temp := temp(6 DOWNTO 0) & '0';
        END LOOP;

        bcd_out <= STD_LOGIC_VECTOR(bcd);
    END PROCESS;
END Behavioral;