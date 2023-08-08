library ieee;
use ieee.std_logic_1164.all;

entity and_or_postulados is
    port( 
        a,b,c : in std_logic;
        gate_and,gate_or,
        Identidade_or,Identidade_and,Identidade_not,
        adicao_1,adicao_2,multiplicacao_1,multiplicacao_2,
        distributiva_and_1,distributiva_and_2,
        distributiva_or_1,distributiva_or_2,
        primeira_morgan_1,primeira_morgan_2,
        segunda_morgan_1,segunda_morgan_2: out std_logic
    );
end;

architecture arch of and_or_postulados is
begin
    gate_and <= a and b and c;
    gate_or <= a or b or c;
    Identidade_or <= a or '0';
    Identidade_and <= a and '1';
    Identidade_not <= not (not a);
    adicao_1 <= a or (b or c);
    adicao_2 <= (a or b) or c;
    multiplicacao_1 <= a and (b and c);
    multiplicacao_2 <= (a and b) and c;
    distributiva_and_1 <= a and (b or c);
    distributiva_and_2 <= (a and b) or (a and c);
    distributiva_or_1 <= a or (b and c);
    distributiva_or_2 <= (a or b) and (a or c);
    primeira_morgan_1 <= not (a and b);
    primeira_morgan_2 <= not a or not b;
    segunda_morgan_1 <= not (a or b);
    segunda_morgan_2 <= not a and not b;
    
end ; -- and_or_postulados