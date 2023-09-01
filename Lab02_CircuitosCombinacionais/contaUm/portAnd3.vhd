library ieee;
use ieee.std_logic_1164.all;

entity portAnd3 is
    port( 
        a,b,c: in std_logic;
        s: out std_logic
    );
end;

architecture arch of portAnd3 is

begin
    s <= a and b and c;
end ; -- portAnd3