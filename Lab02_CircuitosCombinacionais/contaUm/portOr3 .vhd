library ieee;
use ieee.std_logic_1164.all;

entity portOr3 is
    port( 
        a,b,c: in std_logic;
        s: out std_logic
    );
end;

architecture arch of portOr3 is

begin
    s <= a or b or c;
end ; -- portOr3