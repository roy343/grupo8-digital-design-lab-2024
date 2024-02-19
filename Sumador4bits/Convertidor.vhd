library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Convertidor is
    Port ( sumh : in  STD_LOGIC_VECTOR (4 downto 0);
          hex : out  STD_LOGIC_VECTOR (9 downto 0)
             );
end Convertidor;

architecture converter_arch of Convertidor is

begin

process (sumh)
BEGIN
    case sumh is
        when "00000"=> hex <="1111000000";  -- '0'
        when "00001"=> hex <="1111111001";  -- '1'
        when "00010"=> hex <="1110100100";  -- '2'
        when "00011"=> hex <="1110110000";  -- '3'
        when "00100"=> hex <="1110011001";  -- '4' 
        when "00101"=> hex <="1110010010";  -- '5'
        when "00110"=> hex <="1110000010";  -- '6'
        when "00111"=> hex <="1111111000";  -- '7'
        when "01000"=> hex <="1110000000";  -- '8'
        when "01001"=> hex <="1110010000";  -- '9'
        when "01010"=> hex <="1110001000";  -- 'A'
        when "01011"=> hex <="1110000011";  -- 'b'
        when "01100"=> hex <="1111000110";  -- 'C'
        when "01101"=> hex <="1110100001";  -- 'd'
        when "01110"=> hex <="1110000110";  -- 'E'
        when "01111"=> hex <="1110001110";  -- 'F'
		  when "10000"=> hex <="0011000000";  -- '10'
        when "10001"=> hex <="0011111001";  -- '11'
        when "10010"=> hex <="0010100100";  -- '12'
        when "10011"=> hex <="0010110000";  -- '13'
        when "10100"=> hex <="0010011001";  -- '14' 
        when "10101"=> hex <="0010010010";  -- '15'
        when "10110"=> hex <="0010000010";  -- '16'
        when "10111"=> hex <="0011111000";  -- '17'
        when "11000"=> hex <="0010000000";  -- '18'
        when "11001"=> hex <="0010010000";  -- '19'
        when "11010"=> hex <="0010001000";  -- '1A'
        when "11011"=> hex <="0010000011";  -- '1b'
        when "11100"=> hex <="0011000110";  -- '1C'
        when "11101"=> hex <="0010100001";  -- '1d'
        when "11110"=> hex <="0010000110";  -- '1E'
        when "11111"=> hex <="0010001110";  -- '1F'
        when others =>  NULL;
    end case;
end process;

end converter_arch;