LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY Sumador1bit_tb IS
END Sumador1bit_tb;
 
ARCHITECTURE behavioral OF Sumador1bit_tb IS
 

 
 COMPONENT Sumador1bit
 PORT(
 A : IN std_logic;
 B : IN std_logic;
 CarryIn : IN std_logic;
 Sum : OUT std_logic;
 CarryOut : OUT std_logic
 );
 END COMPONENT;
 
 --Inputs
 signal A : std_logic := '0';
 signal B : std_logic := '0';
 signal CarryIn : std_logic := '0';
 
 --Outputs
 signal Sum : std_logic;
 signal CarryOut : std_logic;
 
BEGIN

 uut: Sumador1bit PORT MAP (
 A => A,
 B => B,
 CarryIn => CarryIn,
 Sum => Sum,
 CarryOut => CarryOut
 );
 

 process
 begin

 A <= '1';
 B <= '0';
 CarryIn <= '0';
 wait for 10 ns;
 
 A <= '0';
 B <= '1';
 CarryIn <= '0';
 wait for 10 ns;
 
 A <= '1';
 B <= '1';
 CarryIn <= '0';
 wait for 10 ns;
 
 A <= '0';
 B <= '0';
 CarryIn <= '1';
 wait for 10 ns;
 
 A <= '1';
 B <= '0';
 CarryIn <= '1';
 wait for 10 ns;
 
 A <= '0';
 B <= '1';
 CarryIn <= '1';
 wait for 10 ns;
 
 A <= '1';
 B <= '1';
 CarryIn <= '1';
 wait for 10 ns;
 
 end process;
 
END behavioral;