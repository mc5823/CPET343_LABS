-------------------------------------------------------------------------------
-- Matthew Cells
-- ALU XOR
-------------------------------------------------------------------------------

library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity XOR_gate is 

port (
   a: in std_logic;
   b: in std_logic;
   cout : out std_logic
   );
end XOR_gate;

architecture XOR_out of XOR_gate is 
begin
cout <= a XOR b;

end XOR_out;