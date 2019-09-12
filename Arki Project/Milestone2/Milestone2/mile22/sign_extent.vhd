----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:00:24 05/01/2017 
-- Design Name: 
-- Module Name:    sign_extent - Behavioral 
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

entity sign_extent is
 Port ( I : in  STD_LOGIC_vector(15 downto 0);
        O : out  STD_LOGIC_Vector(31 downto 0));
end sign_extent;

architecture Behavioral of sign_extent is

begin


O <= "0000000000000000"&I when I(15) = '0' else
     "1111111111111111"&I when I(15) = '1';

end Behavioral;

