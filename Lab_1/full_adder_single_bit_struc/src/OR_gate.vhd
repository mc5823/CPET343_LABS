-------------------------------------------------------------------------------
-- Matthew Cells
-- ALU OR
-------------------------------------------------------------------------------
library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity OR_gate is 

port (
   a: in std_logic;
   b: in std_logic;
   c: in std_logic;
   cout : out std_logic
   );
end OR_gate;

architecture OR_out of OR_gate is 
begin 

cout <= a OR b OR c;

end OR_out; 