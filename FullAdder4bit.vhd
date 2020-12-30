LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY FullAdder4bit IS
	PORT ( A0:IN STD_LOGIC ;
         B0:IN STD_LOGIC ; 
         A1:IN STD_LOGIC ; 
         B1:IN STD_LOGIC ; 
         A2:IN STD_LOGIC ; 
         B2:IN STD_LOGIC ; 
         A3:IN STD_LOGIC ; 
         B3:IN STD_LOGIC ; 
         carryINN:IN STD_LOGIC ;
		     sum0: OUT STD_LOGIC ;
		     sum1: OUT STD_LOGIC ;
		     sum2: OUT STD_LOGIC ;
		     sum3: OUT STD_LOGIC ;     
         carryOutt:OUT STD_LOGIC ) ;
END FullAdder4bit ;

ARCHITECTURE st_FullAdder4 OF FullAdder4bit IS	
 SIGNAL CARRYTMP0:STD_LOGIC;
 SIGNAL CARRYTMP1:STD_LOGIC;
 SIGNAL CARRYTMP2:STD_LOGIC;
BEGIN
   
    
    FL0:entity work.FullAdder(df_FullAdderObject)
            PORT MAP(
                    input1=>A0,
                    input2=>B0,
                    carryIN=>carryINN,
                    sum=>sum0,
                    carryOut=>CARRYTMP0
                      );
                      
     FL1:entity work.FullAdder(df_FullAdderObject)
            PORT MAP(
                    input1=>A1,
                    input2=>B1,
                    carryIN=>CARRYTMP0,
                    sum=>sum1,
                    carryOut=>CARRYTMP1
                      );
                      
      FL2:entity work.FullAdder(df_FullAdderObject)
            PORT MAP(
                    input1=>A2,
                    input2=>B2,
                    carryIN=>CARRYTMP1,
                    sum=>sum2,
                    carryOut=>CARRYTMP2
                      );
                      
      FL3:entity work.FullAdder(df_FullAdderObject)
            PORT MAP(
                    input1=>A3,
                    input2=>B3,
                    carryIN=>CARRYTMP2,
                    sum=>sum3,
                    carryOut=>carryOutt
                    );
              
END st_FullAdder4 ;

