LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY Sumador4bits_tb IS
END Sumador4bits_tb;
 
ARCHITECTURE behavior OF Sumador4bits_tb IS

 
COMPONENT Sumador4bits
PORT(
A : IN std_logic_vector(3 downto 0);
B : IN std_logic_vector(3 downto 0);
CarryIn : IN std_logic;
Sum : OUT std_logic_vector(3 downto 0);
CarryOut : OUT std_logic
);
END COMPONENT;
 
--Inputs
signal A : std_logic_vector(3 downto 0) := (others => '0');
signal B : std_logic_vector(3 downto 0) := (others => '0');
signal CarryIn : std_logic := '0';
 
--Outputs
signal Sum : std_logic_vector(3 downto 0);
signal CarryOut : std_logic;
 
BEGIN
 
-- Instantiate the Unit Under Test (UUT)
uut: Sumador4bits PORT MAP (
A => A,
B => B,
CarryIn => CarryIn,
Sum => Sum,
CarryOut => CarryOut
);
 
process
begin

A <= "0110";
B <= "1100";
 
wait for 100 ns;
A <= "1111";
B <= "1100";
 
wait for 100 ns;
A <= "0110";
B <= "0111";
 
wait for 100 ns;
A <= "0110";
B <= "1110";
 
wait for 100 ns;
A <= "1111";
B <= "1111";
 
wait;
 
end process;
 
END;