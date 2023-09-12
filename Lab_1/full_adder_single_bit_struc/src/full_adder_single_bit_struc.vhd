-------------------------------------------------------------------------------
-- Matthew Cells
-- single bit full adder test bench
-------------------------------------------------------------------------------
library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity full_adder_single_bit_struc is 
port ( 
   a: in std_logic;
   b: in std_logic;
   cin : in std_logic;
   sum : out std_logic;
   cout: out std_logic
   );
end full_adder_single_bit_struc;

architecture struc of full_adder_single_bit_struc is 
signal and1 : std_logic;
signal and2 : std_logic;
signal and3 : std_logic;
signal XOR1 : std_logic;

begin 
and_inst1 : entity work.and_gate
port map
(
 a => a,
b => b,
cout => and1
);
and_inst2 : entity work.and_gate
port map
(
 a => a,
 b => cin,
 cout => and2
);
and_inst3 : entity work.and_gate
port map
(
 a => cin,
 b => b,
 cout => and3
);
xor_inst1 : entity work.XOR_gate
port map
(
 a => a,
 b => b,
 cout => XOR1
);
xor2 : entity work.XOR_gate
port map
(
 a => XOR1,
 b => cin,
 cout => sum
);
OR1 : entity work.OR_gate
port map
(
 a => and1,
 b => and2,
 c => and3,
 cout => cout
);

 end struc;