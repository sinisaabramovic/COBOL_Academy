      *****************************************************************
      * Program name:    PROGRAM02                               
      * Original author: SINISA ABRAMOVIC                                
      *
      * Maintenence Log                                              
      * Date      Author        Maintenance Requirement               
      * --------- ------------  --------------------------------------- 
      * 01/01/08 SINISA ABRAMOVIC  Created for COBOL class         
      *                                                               
      *****************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID.  PROGRAM02.
       AUTHOR. SINISA ABRAMOVIC. 
       INSTALLATION. COBOL DEVELOPMENT CENTER. 
       DATE-WRITTEN. 24/04/2020. 
       DATE-COMPILED. 24/04/2020. 
       SECURITY. NON-CONFIDENTIAL.
      *****************************************************************
       ENVIRONMENT DIVISION. 

       DATA DIVISION. 
       FILE SECTION. 
       WORKING-STORAGE SECTION. 
       01 CMDLINE            PIC x(10).
       01 SampleData         PIC X(10)   VALUE "Stuff".
       01 JustLetter         PIC AAA     VALUE "ABC".
       01 JustNumbers        PIC 9(4)    VALUE 1234.
       01 SignedNumber       PIC S9(9)   VALUE -1234.
       01 PayCheck           PIC 9(4)V99 VALUE  ZEROES.

       01 Customer.
           02 CustomerID     PIC   9(3).
           02 CustomerName   PIC   X(20).
           02 BirthDate.
              03 BirthDay    PIC   99.
              03 BirthMonth  PIC   99.
              03 BirthYear   PIC   9(4).

       01 Number1            PIC   9 VALUE 5.
       01 Number2            PIC   9 VALUE 4.
       01 Number3            PIC   9 VALUE 3.
       01 Answer             PIC   S99V99 VALUE  0.

       PROCEDURE DIVISION.
      *--- This is how to handle with command line arguments
      *--- For example we display any input in range of 10 characters
           ACCEPT CMDLINE FROM COMMAND-LINE
      *---     DISPLAY CMDLINE 
      *--- We dsipaly what ever that comes into the program

      *---     DISPLAY "SINISA ABRAMOVIC PROGRAM-ID: PROGRAM02"

           MOVE "More Stuff" TO SampleData 
           MOVE "123" TO SampleData 
           MOVE 123 to SampleData 
      *---     DISPLAY SampleData 
      *---     DISPLAY PayCheck 

           MOVE "123Sinisa Abramovic    06041982" TO Customer 
      *---     DISPLAY "ID : " CustomerID
      *---     DISPLAY "Customer : " CustomerName 
      *---     DISPLAY "Birthdate : " BirthDay "/" BirthMonth "/" BirthYear

      *--- Lets display as JSON
           DISPLAY 'CMD PASS:' CMDLINE 
                   ' {bd:"' BirthDate
                   '" un:"' CustomerName '"}'       

           STOP RUN.