library ieee;
use ieee.std_logic_1164.all;

ENTITY reg_8b IS
    PORT(ld,clk: IN STD_LOGIC;
        I: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        S: OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END;

ARCHITECTURE behav OF reg_8b IS
    
BEGIN
    process (clk)
    begin
        if (rising_edge(clk) and ld ='1') then
            S<=I;
        end if;
    end process;
END;
