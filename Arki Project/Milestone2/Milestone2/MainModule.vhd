----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:09:35 04/19/2017 
-- Design Name: 
-- Module Name:    MainModule - Behavioral 
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
use work.package_register.all;
use work.packageALU.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MainModule is
    Port (  START: IN STD_LOGIC;
				CLK: IN STD_LOGIC;
				RegFileOut1: OUT STD_LOGIC_VECTOR(31 downto 0);
				RegFileOut2: OUT STD_LOGIC_VECTOR(31 downto 0);
				ALUOut: OUT STD_LOGIC_VECTOR(31 downto 0);
				PCOut: OUT STD_LOGIC_VECTOR(31 downto 0);
				DataMemOut: OUT STD_LOGIC_VECTOR(31 downto 0));
end MainModule;

architecture Behavioral of MainModule is

signal not_start : std_logic;
signal MuxJump_output :std_logic_vector (31 downto 0);
signal pc_output : STD_LOGIC_VECTOR(31 downto 0);

signal pc_add: std_logic_vector (31 downto 0);
signal addRes1: std_logic;

signal data_inst_output: STD_LOGIC_VECTOR(31 downto 0);
signal funct : std_logic_vector(5 downto 0);
signal RT : std_logic_vector(4 downto 0);
signal RS : std_logic_vector(4 downto 0);
signal Rd : std_logic_vector(4 downto 0);
signal op_code: std_logic_vector(5 downto 0);

signal RegDst :  STD_LOGIC;
signal Jump : STD_LOGIC;
signal Branchbeq : STD_LOGIC;
signal Branchbne : STD_LOGIC;
signal MemRead :  STD_LOGIC;
signal AluOp :  STD_LOGIC_vector (1 downto 0);
signal Memwrite : STD_LOGIC;
signal AluSrc : STD_LOGIC;
signal MemToReg: std_logic;
signal RegWrite : STD_LOGIC;

signal writeRegister:std_logic_vector (4 downto 0);

signal ReadData1:std_logic_vector (31 downto 0);
signal ReadData2:std_logic_vector (31 downto 0);
signal Muxadd_Output: std_logic_vector (31 downto 0);

signal SignExt_out : STD_Logic_vector (31 downto 0);
signal SignExt_out_shift : std_logic_vector (31 downto 0);

signal adder_out_pc: std_logic_vector (31 downto 0);
signal addRes2: std_logic;

signal zflag : STD_LOGIC;
signal branch_selector: std_logic;
signal MuxBranch_Output: std_logic_vector (31 downto 0);

signal j_shift: std_logic_vector (27 downto 0);
signal j_address: std_logic_vector (31 downto 0);

signal muxalu_output: STD_logic_vector (31 downto 0);
signal opcode: STD_LOGIC_VECTOR (3 downto 0);
signal cflag : STD_LOGIC;
signal oflag : STD_LOGIC;
signal alu_output:std_logic_vector (31 downto 0);
signal DataMemoryOut: std_logic_vector (31 downto 0);
signal Mux_alu_datamem_output: std_logic_vector (31 downto 0);

begin

not_start <= not START;
PC_reg : reg  generic map (32) port map(MuxJump_output,CLK,START,'0',not_start,pc_output);

-- add 4 + pcout 
Add_4:fulladder_pc port map(pc_output,"00000000000000000000000000000100",pc_add,addRes1); --32

instruction_mem :INSTRMEMORY port map(not_start,data_inst_output,pc_output,CLK); -- instruction 31 to 0
op_code <= data_inst_output(31 downto 26);
RS <= data_inst_output(25 downto 21);
RT <= data_inst_output(20 downto 16);
Rd <= data_inst_output(15 downto 11);
funct <= data_inst_output(5 downto 0);

Control: CU port map(op_code,RegDst,Jump,Branchbeq,Branchbne,MemRead,Aluop,Memwrite,Alusrc,MemToReg,RegWrite);

Muxwritereg: multx2_bit generic map(5) port map(RT,Rd,RegDst,writeRegister);

registerfile_obj : RegisterFile port map(RS, RT,writeRegister,RegWrite,CLK,Mux_alu_datamem_output,ReadData1,ReadData2);


--sign_extend
SignExtension : sign_extent port map(data_inst_output(15 downto 0),SignExt_out);
--shift  signextention output
SignExt_out_shift <=SignExt_out(29 downto 0)&"00";

add_sign_pcout: fulladder_pc port map (pc_add,SignExt_out_shift,adder_out_pc,addRes2);

-- branch or pc+4 to get address to branch to
--choose from branches
branch_selector <= (Branchbeq and zflag) or (Branchbne and (not zflag));
Mux_Branch: multx2_bit port map(pc_add,adder_out_pc,branch_selector,MuxBranch_Output);

--Jump implementaion
j_shift <=data_inst_output(25 downto 0)&"00";
--Concatenate pc+4 with j_shift 
j_address <= pc_add(31 downto 28) & j_shift;

-- branch or pc or jump
Mux_jump : multx2_bit port map(MuxBranch_Output,j_address,Jump,MuxJump_Output);

--alu source 
Mux_alu_input : multx2_bit port map(ReadData2,SignExt_out,Alusrc,muxalu_output);

ALUControl_obj : ALUControl port map(funct,Aluop,opcode);

Alu_obj: ALU port map(ReadData1,muxalu_output,opcode,opcode(2),alu_output,cflag,zflag,oflag);

DATAMEMORY_obj : DATAMEMORY port map(not_start,ReadData2,DataMemoryOut,MemRead,MemWrite,alu_output,CLK);

 --alu out or data memory out
Mux_alu_datamem : multx2_bit port map(alu_output,DataMemoryOut,MemToReg,Mux_alu_datamem_output);


RegFileOut1 <= ReadData1;
RegFileOut2 <= ReadData2;
ALUout <= alu_output;
PCOUT <= pc_output;
DataMemOut <= DataMemoryOut;

end Behavioral;

