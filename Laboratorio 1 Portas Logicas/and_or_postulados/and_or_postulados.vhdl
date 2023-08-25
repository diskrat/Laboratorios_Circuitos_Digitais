library ieee;
use ieee.std_logic_1164.all;

entity and_or_postulados is
    port( 
        a,b,c : in std_logic;
        gate_and,gate_or,
        Comutativa_or_1,Comutativa_or_2, Comutativa_and_1,Comutativa_and_2,
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

    -- And gate
    gate_and <= a and b and c;
    
    -- Or gate
    gate_or <= a or b or c;
    
    -- Comutatividade
    Comutativa_or_1 <= a or b;
    Comutativa_or_2 <= b or a; 
    Comutativa_and_1 <= a and b;
    Comutativa_and_2 <= b and a;
    
    -- Identidades
    Identidade_or <= a or '0';
    Identidade_and <= a and '1';
    Identidade_not <= not (not a);
    
    -- Adição
    adicao_1 <= a or (b or c);
    adicao_2 <= (a or b) or c;
    
    -- Multiplicacao
    multiplicacao_1 <= a and (b and c);
    multiplicacao_2 <= (a and b) and c;
    
    -- Distributividade
    distributiva_and_1 <= a and (b or c);
    distributiva_and_2 <= (a and b) or (a and c);
    distributiva_or_1 <= a or (b and c);
    distributiva_or_2 <= (a or b) and (a or c);
    
    -- Primeira lei de Morgan
    primeira_morgan_1 <= not (a and b);
    primeira_morgan_2 <= not a or not b;
    
    -- Segunda lei de Morgan
    segunda_morgan_1 <= not (a or b);
    segunda_morgan_2 <= not a and not b;
    
end ; -- and_or_postulados