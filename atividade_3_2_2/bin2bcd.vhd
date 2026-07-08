LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY bin2bcd IS
    PORT(
        bin : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
        bcd : OUT STD_LOGIC_VECTOR(19 DOWNTO 0)
    );
END bin2bcd;

ARCHITECTURE behavior OF bin2bcd IS
BEGIN
    PROCESS(bin)
        VARIABLE temp    : STD_LOGIC_VECTOR(15 DOWNTO 0);
        VARIABLE bcd_var : UNSIGNED(19 DOWNTO 0);
    BEGIN
        temp := bin;
        bcd_var  := (OTHERS => '0');

        FOR i IN 0 TO 15 LOOP
            IF bcd_var(3 DOWNTO 0) > 4 THEN bcd_var(3 DOWNTO 0) := bcd_var(3 DOWNTO 0) + 3; END IF;
            IF bcd_var(7 DOWNTO 4) > 4 THEN bcd_var(7 DOWNTO 4) := bcd_var(7 DOWNTO 4) + 3; END IF;
            IF bcd_var(11 DOWNTO 8) > 4 THEN bcd_var(11 DOWNTO 8) := bcd_var(11 DOWNTO 8) + 3; END IF;
            IF bcd_var(15 DOWNTO 12) > 4 THEN bcd_var(15 DOWNTO 12) := bcd_var(15 DOWNTO 12) + 3; END IF;
            IF bcd_var(19 DOWNTO 16) > 4 THEN bcd_var(19 DOWNTO 16) := bcd_var(19 DOWNTO 16) + 3; END IF;

            bcd_var := bcd_var(18 DOWNTO 0) & temp(15);
            temp := temp(14 DOWNTO 0) & '0';
        END LOOP;

        bcd <= STD_LOGIC_VECTOR(bcd_var);
    END PROCESS;
END behavior;