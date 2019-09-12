----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:17:39 04/20/2017 
-- Design Name: 
-- Module Name:    condition - Behavioral 
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

entity condition is
  Port ( op_code : in  STD_LOGIC_vector(5 downto 0);
         write_enable : out  STD_LOGIC);
end condition;

architecture Behavioral of condition is

begin
write_enable <= '1' when op_code ="000000"
 ELSE '0';

end Behavioral;

