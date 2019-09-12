----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:02:14 04/01/2017 
-- Design Name: 
-- Module Name:    multx - Behavioral 
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

entity multx is
             Port ( selector : in  STD_LOGIC_VECTOR (4 downto 0);
						  I0 : in  STD_LOGIC_VECTOR (31 downto 0);
						  I1 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I2 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I3 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I4 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I5 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I6 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I7 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I8 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I9 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I10 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I11 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I12 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I13 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I14 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I15 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I16 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I17 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I18 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I19 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I20 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I21 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I22 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I23 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I24 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I25 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I26 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I27 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I28 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I29 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I30 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I31 : in  STD_LOGIC_VECTOR (31 downto 0);
						  Output: out  STD_LOGIC_VECTOR (31 downto 0)
	        	        );
end multx;

architecture Behavioral of multx is

begin

     Output <=I0 WHEN (selector="00000") ELSE
			I1  WHEN (selector="00001") ELSE
			I2  WHEN (selector="00010") ELSE
			I3  WHEN (selector="00011") ELSE
			I4  WHEN (selector="00100") ELSE
			I5  WHEN (selector="00101") ELSE
			I6  WHEN (selector="00110") else
			I7  WHEN (selector="00111") ELSE
			I8  WHEN (selector="01000") else
			I9  WHEN (selector="01001") else	
			I10 WHEN (selector="01010") else
			I11 WHEN (selector="01011") else	
			I12 WHEN (selector="01100") ELSE
			I13 WHEN (selector="01101") else	
			I14 WHEN (selector="01110") ELSE	
			I15 WHEN (selector="01111") else	
			I16 WHEN (selector="10000") else	
			I17 WHEN (selector="10001") ELSE
			I18 WHEN (selector="10010") ELSE
			I19 WHEN (selector="10011") ELSE
			I20 WHEN (selector="10100") ELSE
			I21 WHEN (selector="10101") ELSE
			I22 WHEN (selector="10110") ELSE
			I23 WHEN (selector="10111") ELSE
			I24 WHEN (selector="11000") ELSE
			I25 WHEN (selector="11001") ELSE
			I26 WHEN (selector="11010") ELSE
			I27 WHEN (selector="11011") ELSE
			I28 WHEN (selector="11100") ELSE
			I29 WHEN (selector="11101") ELSE
			I30 WHEN (selector="11110") ELSE
			I31 WHEN (selector="11111") ELSE
			(others=>'Z');
end Behavioral;

