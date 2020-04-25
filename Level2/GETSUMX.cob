      *****************************************************************
      * Program name:    GETSUMX                               
      * Original author: SINISA ABRAMOVIC                                
      *
      * Maintenence Log                                              
      * Date      Author        Maintenance Requirement               
      * --------- ------------  --------------------------------------- 
      * 01/01/08 MYNAME  Created for COBOL class         
      *                                                               
      *****************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID.  GETSUMX.
       AUTHOR. SINISA ABRAMOVIC.
       INSTALLATION. COBOL DEVELOPMENT CENTER. 
       DATE-WRITTEN. 25/04/2020. 
       DATE-COMPILED. 25/04/2020. 
       SECURITY. NON-CONFIDENTIAL.
      *****************************************************************
       DATA DIVISION. 
       LINKAGE SECTION.
       01 LNum1 PIC 9 VALUE 5.
       01 LNum2 PIC 9 VALUE 4.
       01 LSum1 PIC 99.   

       PROCEDURE DIVISION USING LNum1, LNum2, LSum1.
           DISPLAY "ENTER 1: " LNum1 " 2:" LNum2 " 3:" LSum1
           COMPUTE LSum1 = LNum1 + LNum2.
           EXIT PROGRAM.