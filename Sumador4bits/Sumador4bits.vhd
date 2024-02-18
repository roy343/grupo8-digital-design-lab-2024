library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity Sumador4bits is
 Port (
 A : in STD_LOGIC_VECTOR (3 downto 0);
 B : in STD_LOGIC_VECTOR (3 downto 0);
 CarryIn : in STD_LOGIC;
 Sum : out STD_LOGIC_VECTOR (3 downto 0);
 CarryOut : out STD_LOGIC);
end Sumador4bits;
 
architecture Behavioral of Sumador4bits is

component Sumador1bit
Port ( 
A : in STD_LOGIC;
B : in STD_LOGIC;
CarryIn : in STD_LOGIC;
Sum : out STD_LOGIC;
CarryOut : out STD_LOGIC);
end component;
 
-- Intermediate Carry declaration
signal carry1,carry2,carry3: STD_LOGIC;
 
 
begin

SC1: Sumador1bit port map( A(0), B(0), CarryIn, Sum(0), Carry1);
SC2: Sumador1bit port map( A(1), B(1), Carry1, Sum(1), Carry2);
SC3: Sumador1bit port map( A(2), B(2), Carry2, Sum(2), Carry3);
SC4: Sumador1bit port map( A(3), B(3), Carry3, Sum(3), CarryOut);
 
 
end Behavioral;