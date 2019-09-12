----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:38:12 04/01/2017 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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
use work.packageALU.all;
use work.package_register.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values

--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
port (
         data1 : IN  std_logic_vector(31 downto 0);
         data2 : IN  std_logic_vector(31 downto 0);
         aluop : IN  std_logic_vector(3 downto 0);
         cin : IN  std_logic;
         dataout : OUT  std_logic_vector(31 downto 0);
         cflag : OUT  std_logic;
         zflag : OUT  std_logic;
         oflag : OUT  std_logic
);
end ALU;

architecture Behavioral of ALU is
signal carrout0 : std_logic ;
signal carrout1 : std_logic ;
signal carrout2 : std_logic;
signal carrout3 : std_logic;
signal carrout4 : std_logic;
signal carrout5 : std_logic;
signal carrout6 : std_logic;
signal carrout7 : std_logic;
signal carrout8 : std_logic;
signal carrout9 : std_logic;
signal carrout10 : std_logic;
signal carrout11 : std_logic;
signal carrout12 : std_logic;
signal carrout13 : std_logic;
signal carrout14 : std_logic;
signal carrout15 : std_logic;
signal carrout16 : std_logic;
signal carrout17 : std_logic;
signal carrout18 : std_logic;
signal carrout19 : std_logic;
signal carrout20 : std_logic;
signal carrout21 : std_logic;
signal carrout22 : std_logic;
signal carrout23 : std_logic;
signal carrout24 : std_logic;
signal carrout25 : std_logic;
signal carrout26 : std_logic;
signal carrout27 : std_logic;
signal carrout28 : std_logic;
signal carrout29 : std_logic;
signal carrout30 : std_logic;
signal carrout31 : std_logic;

signal res : std_logic_vector(31 downto 0);
signal less_out : std_logic ;

begin
alu1: onebitALU port map (data1(0),data2(0),aluop,cin,carrout0,res(0),less_out);
alu2: onebitALU port map (data1(1),data2(1),aluop,carrout0,carrout1,res(1),'0');
alu3: onebitALU port map (data1(2),data2(2),aluop,carrout1,carrout2,res(2),'0');
alu4: onebitALU port map (data1(3),data2(3),aluop,carrout2,carrout3,res(3),'0');
alu5: onebitALU port map (data1(4),data2(4),aluop,carrout3,carrout4,res(4),'0');
alu6: onebitALU port map (data1(5),data2(5),aluop,carrout4,carrout5,res(5),'0');
alu7: onebitALU port map (data1(6),data2(6),aluop,carrout5,carrout6,res(6),'0');
alu8: onebitALU port map (data1(7),data2(7),aluop,carrout6,carrout7,res(7),'0');
alu9: onebitALU port map (data1(8),data2(8),aluop,carrout7,carrout8,res(8),'0');
alu10:onebitALU port map (data1(9),data2(9),aluop,carrout8,carrout9,res(9),'0');
alu11:onebitALU port map (data1(10),data2(10),aluop,carrout9,carrout10,res(10),'0');
alu12:onebitALU port map (data1(11),data2(11),aluop,carrout10,carrout11,res(11),'0');
alu13:onebitALU port map (data1(12),data2(12),aluop,carrout11,carrout12,res(12),'0');
alu14:onebitALU port map (data1(13),data2(13),aluop,carrout12,carrout13,res(13),'0');
alu15:onebitALU port map (data1(14),data2(14),aluop,carrout13,carrout14,res(14),'0');
alu16:onebitALU port map (data1(15),data2(15),aluop,carrout14,carrout15,res(15),'0');
alu17:onebitALU port map (data1(16),data2(16),aluop,carrout15,carrout16,res(16),'0');
alu18:onebitALU port map (data1(17),data2(17),aluop,carrout16,carrout17,res(17),'0');
alu19:onebitALU port map (data1(18),data2(18),aluop,carrout17,carrout18,res(18),'0');
alu20:onebitALU port map (data1(19),data2(19),aluop,carrout18,carrout19,res(19),'0');
alu21:onebitALU port map (data1(20),data2(20),aluop,carrout19,carrout20,res(20),'0');
alu22:onebitALU port map (data1(21),data2(21),aluop,carrout20,carrout21,res(21),'0');
alu23:onebitALU port map (data1(22),data2(22),aluop,carrout21,carrout22,res(22),'0');
alu24:onebitALU port map (data1(23),data2(23),aluop,carrout22,carrout23,res(23),'0');
alu25:onebitALU port map (data1(24),data2(24),aluop,carrout23,carrout24,res(24),'0');
alu26:onebitALU port map (data1(25),data2(25),aluop,carrout24,carrout25,res(25),'0');
alu27:onebitALU port map (data1(26),data2(26),aluop,carrout25,carrout26,res(26),'0');
alu28:onebitALU port map (data1(27),data2(27),aluop,carrout26,carrout27,res(27),'0');
alu29:onebitALU port map (data1(28),data2(28),aluop,carrout27,carrout28,res(28),'0');
alu30:onebitALU port map (data1(29),data2(29),aluop,carrout28,carrout29,res(29),'0');
alu31:onebitALU port map (data1(30),data2(30),aluop,carrout29,carrout30,res(30),'0');
alu32:lastonebitALU port map (data1(31),data2(31),aluop,carrout30,carrout31,res(31),'0',less_out);

cflag <= carrout31;
oflag <= (carrout30 xor carrout31);
zflag <=not(res(0) or res(1) or res(2) or res(3) or res(4) or res(5) or res(6) or res(7) or res(8) or 
  res(9) or res(10) or res(11) or res(12) or res(13) or res(14) or res(15) or res(16) or res(17)
 or res(18) or res(19) or res(20) or res(21) or res(22) or res(23) or res(24) or res(25) or res(26) 
 or res(27) or res(28) or res(29) or res(30) or res(31));
dataout <= res;
end Behavioral;

