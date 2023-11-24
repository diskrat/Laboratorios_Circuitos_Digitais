library ieee;
use ieee.std_logic_1164.all;

ENTITY Decode_Comp IS
    PORT(A1,A0,E: IN STD_LOGIC;
        Y0,Y1,Y2,Y3 : OUT STD_LOGIC);
END;

ARCHITECTURE behav OF Decode_Comp IS
    SIGNAL out_aux: STD_LOGIC_VECTOR(3 DOWNTO 0);
    SIGNAL in_aux : STD_LOGIC_VECTOR(2 DOWNTO 0);
BEGIN
    in_aux <= E & A1 & A0 ; -- Usado para concatenar os sinais de entrada
    WITH in_aux SELECT
    out_aux <= "0001" WHEN "100",
        "0010" WHEN "101",
        "0100" WHEN "110",
        "1000" WHEN "111",
        "0000" WHEN OTHERS;
    Y0 <= out_aux(0);
    Y1 <= out_aux(1);
    Y2 <= out_aux(2);
    Y3 <= out_aux(3);
END;
