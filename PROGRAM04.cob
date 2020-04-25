      *****************************************************************
      * Program name:    PROGRAM04                               
      * Original author: SINISA ABRAMOVIC                                
      *
      * Maintenence Log                                              
      * Date      Author        Maintenance Requirement               
      * --------- ------------  --------------------------------------- 
      * 25/04/2020 SINISA ABRAMOVIC  Created for COBOL class         
      *                                                               
      *****************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID.  PROGRAM04.
       AUTHOR. SINISA ABRAMOVIC. 
       INSTALLATION. COBOL DEVELOPMENT CENTER. 
       DATE-WRITTEN. 25/04/2020. 
       DATE-COMPILED. 25/04/2020. 
       SECURITY. NON-CONFIDENTIAL.
      *****************************************************************
       ENVIRONMENT DIVISION. 
       CONFIGURATION SECTION. 
       SPECIAL-NAMES. 
           CLASS PassingScore IS  "A" THRU "C", "D".

       DATA DIVISION. 
       
       FILE SECTION. 

       WORKING-STORAGE SECTION. 
       01 Age PIC 99 VALUE 0.
       01 Grade pic 99 VALUE 0.
       01 Score PIC X(1) VALUE "B".
       01 CanVoteFlag PIC 9 VALUE 0.
           88 CanVote VALUE 1.
           88 CantVote VALUE 0.
       01 TestNumber PIC X.
           88 IsPrime VALUE "1", "3", "5", "7".
           88 isOdd VALUE  "1", "3", "5", "7", "9".
           88 isEven VALUE  "2", "4", "6", "8".
           88 LessTahn5 VALUE  "1" THRU "4".
           88 ANumber VALUE "0" THRU "9".


       PROCEDURE DIVISION. 
           
           DISPLAY "Enter Age " WITH NO ADVANCING 
           ACCEPT Age 

           IF Age > 18 THEN 
              DISPLAY "You can vote"
           ELSE 
              DISPLAY "You can't vote"
           END-IF.

           STOP RUN. 




      