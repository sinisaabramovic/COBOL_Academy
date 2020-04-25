      *****************************************************************
      * Program name:    PROGRSUBS01                               
      * Original author: SINISA ABRAMOVIC                                
      *
      * Maintenence Log                                              
      * Date      Author        Maintenance Requirement               
      * --------- ------------  --------------------------------------- 
      * 01/01/08 SINISA ABRAMOVIC  Created for COBOL class         
      *                                                               
      *****************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID.  PROGRSUBS01.
       AUTHOR. SINISA ABRAMOVIC. 
       INSTALLATION. COBOL DEVELOPMENT CENTER. 
       DATE-WRITTEN. 25/04/2020. 
       DATE-COMPILED. 25/04/2020. 
       SECURITY. NON-CONFIDENTIAL.
      *****************************************************************
       DATA DIVISION. 
       WORKING-STORAGE SECTION. 
       01 Num1 PIC 9 VALUE 5.
       01 Num2 PIC 9 VALUE 4.
       01 Sum1 PIC 99.  

       PROCEDURE DIVISION.
           CALL 'GETSUM' USING Num1, Num2, Sum1.
           DISPLAY Num1 " + " Num2 " = " Sum1.



           STOP RUN.