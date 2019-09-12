----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:11:53 04/06/2017 
-- Design Name: 
-- Module Name:    multx4 - Behavioral 
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

entity multx4 is
 Port ( selector : in  STD_LOGIC_VECTOR (1 downto 0);
	        I0 : in  STD_LOGIC ;
	        I1 : in  STD_LOGIC ;
	        I2 : in  STD_LOGIC ;
	        I3 : in  STD_LOGIC ;
	        output : out  STD_LOGIC
			  );
			  end multx4;
architecture Behavioral of multx4 is

begin
output<=	I0 WHEN selector="00" ELSE
			I1 WHEN selector="01" ELSE
			I2 WHEN selector="10" ELSE
			I3 WHEN selector="11" ;

end Behavioral;

