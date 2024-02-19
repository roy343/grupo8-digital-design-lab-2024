library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity Sumador4bits is
 Port (
 A4 : in STD_LOGIC_VECTOR (3 downto 0);
 B4 : in STD_LOGIC_VECTOR (3 downto 0);
 CarryIn4 : in STD_LOGIC;
 Sum4 : buffer STD_LOGIC_VECTOR (4 downto 0);
 SumHex4: out STD_LOGIC_VECTOR (9 downto 0));
 
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



	 component Convertidor is
	     port (
				sumh : in std_logic_vector (4 downto 0);
				hex : out std_logic_vector (9 downto 0)
		  );
	 end component;
 

signal CarryAux : STD_LOGIC_VECTOR (4 downto 0);

 
begin

CarryAux(0) <=CarryIn4;

SC1: Sumador1bit port map( A4(0), B4(0), CarryAux(0), Sum4(0), CarryAux(1));
SC2: Sumador1bit port map( A4(1), B4(1), CarryAux(1), Sum4(1), CarryAux(2));
SC3: Sumador1bit port map( A4(2), B4(2), CarryAux(2), Sum4(2), CarryAux(3));
SC4: Sumador1bit port map( A4(3), B4(3), CarryAux(3), Sum4(3), CarryAux(4));

Sum4(4) <= CarryAux(4);
	 conv: Convertidor port map(
		 hex => SumHex4,
		 sumh => Sum4
	 );
 
 
end Behavioral;