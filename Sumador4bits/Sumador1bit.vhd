library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity Sumador1bit is
 Port ( A : in STD_LOGIC;
 B : in STD_LOGIC;
 CarryIn : in STD_LOGIC;
 Sum : out STD_LOGIC;
 CarryOut : out STD_LOGIC);
end Sumador1bit;
 
architecture gate of Sumador1bit is
 
begin
 
 Sum <= A XOR B XOR CarryIn ;
 CarryOut <= (A AND B) OR (CarryIn AND A) OR (CarryIn AND B) ;
 
end gate;