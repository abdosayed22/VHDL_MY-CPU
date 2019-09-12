----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:07:47 04/20/2017 
-- Design Name: 
-- Module Name:    pc - Behavioral 
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
use IEEE.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity pc is
	PORT (
	CLK, INC, CLR: IN STD_LOGIC;
	O: OUT  STD_LOGIC_VECTOR (5 DOWNTO 0));
end pc;

architecture Behavioral of pc is
SIGNAL tmp: STD_LOGIC_VECTOR (5 DOWNTO 0) := (others => '0');
begin
PROCESS(clk)
	BEGIN
	IF(CLK'event AND CLK='1')THEN
		IF (INC='1')THEN
			tmp <= tmp +1;
		ELSIF(CLR='1') THEN
			tmp <=(others =>'0');
		END IF;
	END IF;
	END PROCESS;
	O <= tmp;
end Behavioral;

