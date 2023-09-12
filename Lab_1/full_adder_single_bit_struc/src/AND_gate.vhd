-------------------------------------------------------------------------------
-- Matthew Cells
-- ALU AND 
-------------------------------------------------------------------------------
library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity and_gate is 

port (
   a: in std_logic;
   b: in std_logic;
   cout : out std_logic
   );
end and_gate;

architecture and_out of and_gate is 
begin
cout <= a AND b;

end and_out;
