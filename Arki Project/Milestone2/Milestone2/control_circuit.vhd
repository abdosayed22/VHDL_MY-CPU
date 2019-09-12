----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:24:06 04/20/2017 
-- Design Name: 
-- Module Name:    control_circuit - Behavioral 
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

entity control_circuit is
 Port ( funct_6bit : in  STD_LOGIC_vector(5 downto 0);
        operation_4bit : out  STD_LOGIC_vector (3 downto 0));
end control_circuit;

architecture Behavioral of control_circuit is

begin
operation_4bit   <= "0000" when funct_6bit= "100100"  ELSE
						  "0001" when funct_6bit= "100101"  ELSE
						  "0010" when funct_6bit= "100000"  ELSE
						  "0110" when funct_6bit= "100010"  ELSE 
						  "0111" when funct_6bit= "101010"  ELSE
						  "1100" when funct_6bit="100111"   ELSE
						  "XXXX";

end Behavioral;

