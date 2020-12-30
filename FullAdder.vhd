LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY FullAdder IS
	PORT ( input1:IN STD_LOGIC ;
         input2:IN STD_LOGIC ; 
         carryIN:IN STD_LOGIC ;
		     sum: OUT STD_LOGIC ;  
         carryOut:OUT STD_LOGIC ) ;
END FullAdder ;


ARCHITECTURE df_FullAdderObject OF FullAdder IS
BEGIN
	       sum <=   input1 XOR input2 XOR carryIN ;
	       carryOut <=(input1 AND input2) OR (carryIN AND input1) OR (carryIN AND input2) ;
END df_FullAdderObject ;