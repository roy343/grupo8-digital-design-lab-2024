LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
ENTITY Sumador4bits_tb IS
END Sumador4bits_tb;
 
ARCHITECTURE behavior OF Sumador4bits_tb IS

 
--Inputs
signal A : std_logic_vector(3 downto 0);
signal B : std_logic_vector(3 downto 0);
signal CarryIn : std_logic;
 
--Outputs
signal Sum : std_logic_vector(4 downto 0);
signal SumHex : std_logic_vector(9 downto 0);
signal CarryOut : std_logic_vector(3 downto 0);

 
BEGIN
 

test: entity work.Sumador4bits PORT MAP (
A4 => A,
B4 => B,
CarryIn4 => CarryIn,
Sum4 => Sum,
SumHex4 => SumHex

);
 
stimulus_process: process
begin

        A <= "0010";
        B <= "1101";
        CarryIn <= '0';

        wait for 10 ns;

        A <= "1010";
        B <= "0101";
        CarryIn <= '0';

        wait for 10 ns;
		  
        A <= "0001";
        B <= "0111";
        CarryIn <= '1';

        wait for 10 ns;

        A <= "1111";
        B <= "0111";
        CarryIn <= '0';

        wait for 10 ns;

wait;
 
end process;
 
END;