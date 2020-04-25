      *****************************************************************
      * Program name:    PROGRAM05                               
      * Original author: SINISA ABRAMOVIC                                
      *
      * Maintenence Log                                              
      * Date      Author        Maintenance Requirement               
      * --------- ------------  --------------------------------------- 
      * 25/04/02020 SINISA ABRAMOVIC  Created for COBOL class         
      *                                                               
      *****************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID.  PROGRAM05.
       AUTHOR. SINISA ABRAMOVIC. 
       INSTALLATION. COBOL DEVELOPMENT CENTER. 
       DATE-WRITTEN. 01/01/08. 
       DATE-COMPILED. 01/01/08. 
       SECURITY. NON-CONFIDENTIAL.
      *****************************************************************
       ENVIRONMENT DIVISION. 
       CONFIGURATION SECTION. 
       DATA DIVISION. 
       FILE SECTION. 
       WORKING-STORAGE SECTION. 

       PROCEDURE DIVISION.
       SubOne.
           DISPLAY "In Paragraph 1"
           PERFORM SubTwo
              DISPLAY "Returned to Paragraph 1"
           PERFORM 2 TIMES 
              DISPLAY "Repeat"
           END-PERFORM 
           STOP RUN.

       SubThree.
           DISPLAY "In Paragraph 3".

       SubTwo.
           DISPLAY "In Paragraph 2"
           PERFORM SubThree
           DISPLAY "Returned to Paragraph 2".
