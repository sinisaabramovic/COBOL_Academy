      *****************************************************************
      * Program name:    PROGRAM03                               
      * Original author: SINISA ABRAMOVIC                                
      *
      * Maintenence Log                                              
      * Date      Author        Maintenance Requirement               
      * --------- ------------  --------------------------------------- 
      * 01/01/08 SINISA ABRAMOVIC  Created for COBOL class         
      *                                                               
      *****************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID.  PROGRAM03.
       AUTHOR. SINISA ABRAMOVIC. 
       INSTALLATION. COBOL DEVELOPMENT CENTER. 
       DATE-WRITTEN. 24/04/2020. 
       DATE-COMPILED. 24/04/2020. 
       SECURITY. NON-CONFIDENTIAL.
      *****************************************************************
       ENVIRONMENT DIVISION. 

       DATA DIVISION. 
       LINKAGE SECTION. 
       01 Arg1 PIC X(7).
       01 Arg2 PIC X(7).

       PROCEDURE DIVISION USING Arg1 Arg2.
           DISPLAY "RESULT: " Arg1 Arg2.
           EXIT PROGRAM. 