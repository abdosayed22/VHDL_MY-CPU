----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:16:06 05/01/2017 
-- Design Name: 
-- Module Name:    ALUControl - Behavioral 
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

entity ALUControl is
  Port ( F : in  STD_LOGIC_VECTOR (5 downto 0);
	     ALUOp : in  STD_LOGIC_VECTOR (1 downto 0);
	     Operation : out STD_LOGIC_VECTOR (3 downto 0));
end ALUControl;

architecture Behavioral of ALUControl is

signal Operation0 : std_logic;
signal Operation1 : std_logic;
signal Operation2 : std_logic;
signal Operation3 : std_logic;

begin


Operation1 <= (not F(2)) or (not ALUOp(1));
Operation2 <=(F(1) and ALUOp(1)) or ALUOp(0);
Operation3 <= (F(0) and F(1)) and ALUOp(1);
Operation0 <= ((F(0) or F(3)) and ALUOp(1)) and (not Operation3);
Operation  <= Operation3 & Operation2 & Operation1 & Operation0 ;

end Behavioral;

