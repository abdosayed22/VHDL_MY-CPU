----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:08:04 04/06/2017 
-- Design Name: 
-- Module Name:    multx2 - Behavioral 
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

entity multx2 is
PORT(	
      I1: IN STD_LOGIC;
		I0: IN STD_LOGIC;
		Selector:IN STD_LOGIC;
		Output:	OUT STD_LOGIC
);
end multx2;

architecture Behavioral of multx2 is

begin

 Output<= I1 when (Selector <= '0') else I0;

end Behavioral;

