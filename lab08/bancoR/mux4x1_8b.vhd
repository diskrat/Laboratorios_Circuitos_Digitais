library ieee;
use ieee.std_logic_1164.all;

ENTITY mux4x1_8b IS
    PORT(s0,s1: IN STD_LOGIC;
        in0,in1,in2,in3: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        Q: OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END;

ARCHITECTURE behav OF mux4x1_8b IS
    SIGNAL x : STD_LOGIC_VECTOR(1 DOWNTO 0);
BEGIN
    x <= s1 & s0 ; -- Usado para concatenar os sinais de entrada
    WITH x SELECT
        Q <= in0 WHEN "00",
             in1 WHEN "01",
             in2 WHEN "10",
             in3 WHEN "11";
    
END;
