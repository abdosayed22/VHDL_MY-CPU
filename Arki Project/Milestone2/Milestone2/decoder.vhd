----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:18:37 04/06/2017 
-- Design Name: 
-- Module Name:    decoder - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity decoder is
  Port ( input : in  STD_LOGIC_VECTOR (4 downto 0);
           ena : in  STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (31 downto 0));
end decoder;

architecture Behavioral of decoder is

begin
output<="ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ"WHEN ena= '0' ELSE
		"00000000000000000000000000000001"	WHEN input = "00000" ELSE
		"00000000000000000000000000000010"	WHEN input = "00001" ELSE
		"00000000000000000000000000000100"	WHEN input = "00010" ELSE
		"00000000000000000000000000001000"	WHEN input = "00011" ELSE
		"00000000000000000000000000010000"	WHEN input = "00100" ELSE
		"00000000000000000000000000100000"	WHEN input = "00101" ELSE
		"00000000000000000000000001000000"	WHEN input = "00110" ELSE
	   "00000000000000000000000010000000"	WHEN input = "00111" ELSE
		"00000000000000000000000100000000"	WHEN input = "01000" ELSE
		"00000000000000000000001000000000"	WHEN input = "01001" ELSE
		"00000000000000000000010000000000"	WHEN input = "01010" ELSE
		"00000000000000000000100000000000"	WHEN input = "01011" ELSE
	   "00000000000000000001000000000000"	WHEN input = "01100" ELSE
      "00000000000000000010000000000000"	WHEN input = "01101" ELSE
      "00000000000000000100000000000000"	WHEN input = "01110" ELSE
      "00000000000000001000000000000000"	WHEN input = "01111" ELSE
      "00000000000000010000000000000000"	WHEN input = "10000" ELSE
		"00000000000000100000000000000000"	WHEN input = "10001" ELSE
		"00000000000001000000000000000000"	WHEN input = "10010" ELSE
		"00000000000010000000000000000000"	WHEN input = "10011" ELSE
		"00000000000100000000000000000000"	WHEN input = "10100" ELSE
		"00000000001000000000000000000000"	WHEN input = "10101" ELSE
		"00000000010000000000000000000000"	WHEN input = "10110" ELSE
		"00000000100000000000000000000000"	WHEN input = "10111" ELSE
		"00000001000000000000000000000000"	WHEN input = "11000" ELSE
		"00000010000000000000000000000000"	WHEN input = "11001" ELSE
		"00000100000000000000000000000000"	WHEN input = "11010" ELSE
		"00001000000000000000000000000000"	WHEN input = "11011" ELSE
		"00010000000000000000000000000000"	WHEN input = "11100" ELSE
		"00100000000000000000000000000000"	WHEN input = "11101" ELSE
		"01000000000000000000000000000000"	WHEN input = "11110" ELSE
		"10000000000000000000000000000000"	WHEN input = "11111" ELSE
		"XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";

end Behavioral;

