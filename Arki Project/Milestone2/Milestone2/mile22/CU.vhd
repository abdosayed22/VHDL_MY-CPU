----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:01:17 05/01/2017 
-- Design Name: 
-- Module Name:    CU - Behavioral 
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

entity CU is
  Port (   input : in  STD_LOGIC_VECTOR (5 downto 0);
           RegDst : out  STD_LOGIC;
           Jump : out  STD_LOGIC;
           Branchbeq : out  STD_LOGIC;
			  Branchbne : out  STD_LOGIC;
           MemRead : out  STD_LOGIC;
           AluOp : out  STD_LOGIC_vector (1 downto 0);
           Memwrite : out  STD_LOGIC;
           AluSrc : out  STD_LOGIC;
			  MemToReg:out std_logic;
           RegWrite : out  STD_LOGIC);
end CU;

architecture Behavioral of CU is

signal R_format : std_logic;
signal LW : std_logic;
signal SW :std_logic;
signal beq :std_logic;
signal bne :std_logic;
signal J: std_logic;

begin

R_format <=(not input(5)) and (not input(4))and (not input(3))and (not input(2))and (not input(1))and (not input(0));
LW <= input(5) and (not input(4)) and (not input(3)) and (not input(2)) and input(1) and input(0);
SW <= input(5) and (not input(4)) and input(3) and (not input(2)) and input(1) and input(0);
beq <= (not input(5)) and (not input(4)) and (not input(3)) and input(2) and (not input(1)) and (not input(0));
bne <= (not input(5)) and (not input(4)) and (not input(3)) and input(2) and (not input(1)) and input(0);
J <= (not input(5)) and (not input(4)) and (not input(3)) and (not input(2)) and input(1) and (not input(0));

RegDst <=R_format;
AluSrc <= LW or SW;
MemToReg <= LW;
RegWrite <= R_format or LW;
MemRead <= LW;
Memwrite <= SW;
Branchbeq <= beq ;
Branchbne <= bne;
AluOp(0)<= beq or bne;
AluOp(1)<= R_Format;
Jump <= J;

end Behavioral;

