library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Sumador1bit is
	--Inputs
 Port ( A : in STD_LOGIC;
 B : in STD_LOGIC;
 CarryIn : in STD_LOGIC;
 --Outputs
 Sum : out STD_LOGIC;
 CarryOut : out STD_LOGIC);
end Sumador1bit;
 
architecture Behavioral of Sumador1bit is

--Logica del sumador
begin
 
 Sum <= A XOR B XOR CarryIn ;
 CarryOut <= (A AND B) OR (CarryIn AND A) OR (CarryIn AND B) ;
 
end Behavioral;