library ieee;
use ieee.std_logic_1164.all;

entity contaUm is
    port( 
        a,b,c: in std_logic;
        s1,s2: out std_logic
    );
end;

architecture arch of contaUm is
    signal s1_1:std_logic;
    signal s1_2:std_logic;
    signal s1_3:std_logic;

    signal s2_1:std_logic;
    signal s2_2:std_logic;
    signal s2_3:std_logic;
    signal s2_4:std_logic;
    signal s2_5:std_logic;

    component portAnd3 is
        port( 
            a,b,c: in std_logic;
            s: out std_logic
        );
    end component;
    
    component portOr3 is
        port( 
            a,b,c: in std_logic;
            s: out std_logic
        );
    end component;

begin

    -- S1
    eq1: portAnd3 port map(a,b,'1',s1_1);
    eq2: portAnd3 port map(b,c,'1',s1_2);
    eq3: portAnd3 port map(a,c,'1',s1_3);
    
    eq4: portOr3 port map (s1_1,s1_2,s1_3,s1);

    -- s2
    eq5: portAnd3 port map(not(a),not(b),c,s2_1);
    eq6: portAnd3 port map(not(a),b,not(c),s2_2);
    eq7: portAnd3 port map(a,not(b),not(c),s2_3);
    eq8: portAnd3 port map(a,b,c,s2_4);

    eq9: portOr3 port map(s2_1,s2_2,s2_3,s2_5);
    eq10: portOr3 port map(s2_4,s2_5,'0',s2);
    
end ; -- contaUm