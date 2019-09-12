--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package packageALU is

component ALU is
port (
         data1 : IN  std_logic_vector(31 downto 0);
         data2 : IN  std_logic_vector(31 downto 0);
         aluop : IN  std_logic_vector(3 downto 0);
         cin : IN  std_logic;
         dataout : OUT  std_logic_vector(31 downto 0);
         cflag : OUT  std_logic;
         zflag : OUT  std_logic;
         oflag : OUT  std_logic);
end component;

component onebitALU is
    Port (A : in  STD_LOGIC;
          B : in  STD_LOGIC;
			 operation : in  STD_LOGIC_VECTOR (3 downto 0);
          carryin : in  STD_LOGIC;
			 carryout : out  STD_LOGIC;
          result : out  STD_LOGIC;
			 less_in :in std_logic);
end component;

component lastonebitALU is
    Port (A : in  STD_LOGIC;
          B : in  STD_LOGIC;
			 operation : in  STD_LOGIC_VECTOR (3 downto 0);
          carryin : in  STD_LOGIC;
			 carryout : out  STD_LOGIC;
          result : out  STD_LOGIC;
			 less_in :in std_logic;
			 less_setout:out std_logic);
end component;

component multx4 is
  Port ( selector : in  STD_LOGIC_VECTOR (1 downto 0);
	        I0 : in  STD_LOGIC ;
	        I1 : in  STD_LOGIC ;
	        I2 : in  STD_LOGIC ;
	        I3 : in  STD_LOGIC ;
	        output : out  STD_LOGIC );
end component;

component fulladder is
	PORT (A : IN  STD_LOGIC;
			Bmultx : IN  STD_LOGIC;
			carryin : in std_logic;
			sum : OUT STD_LOGIC;
			Carryout: OUT  STD_LOGIC);
end component;

component multx2 is
PORT(	
      I1: IN STD_LOGIC;
		I0: IN STD_LOGIC;
		Selector:	IN STD_LOGIC;
		Output:	OUT STD_LOGIC
);
end component;

component multx2_bit is
 GENERIC(n:NATURAL :=32);
    Port ( I0 : in  STD_LOGIC_VECTOR(n-1 downto 0);
           I1 : in  STD_LOGIC_VECTOR(n-1 downto 0);
           sel : in  STD_LOGIC;
           output : out  STD_LOGIC_VECTOR(n-1 downto 0));
end component;

component pc is
	PORT (CLK, INC, CLR: IN STD_LOGIC;
	      O: OUT  STD_LOGIC_VECTOR (5 DOWNTO 0));
end component;

component MUL is
Port ( input_6bit: in  STD_LOGIC_vector(5 downto 0);
       output_32bit: out  STD_LOGIC_vector(31 downto 0));
end component;

component condition is
  Port ( op_code : in  STD_LOGIC_vector(5 downto 0);
         write_enable : out  STD_LOGIC);
end component;

component control_circuit is
 Port ( funct_6bit : in  STD_LOGIC_vector(5 downto 0);
        operation_4bit : out  STD_LOGIC_vector (3 downto 0));
end component;


component CU is
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
end component;


component ALUControl is
  Port ( F : in  STD_LOGIC_VECTOR (5 downto 0);
	     ALUOp : in  STD_LOGIC_VECTOR (1 downto 0);
	     Operation : out STD_LOGIC_VECTOR (3 downto 0));
end component;

component fulladder_pc is
 Port (    A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           res : out  STD_LOGIC_VECTOR (31 downto 0);
			  carryout: out std_logic);
end component;

component sign_extent is
 Port ( I : in  STD_LOGIC_vector(15 downto 0);
        O : out  STD_LOGIC_Vector(31 downto 0));
end component;

end packageALU;
