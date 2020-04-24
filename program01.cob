      *****************************************************************
      * Program name:    PROGRAM01                               
      * Original author: SINISA ABRAMOVIC                                
      *
      * Maintenence Log                                              
      * Date      Author        Maintenance Requirement               
      * --------- ------------  --------------------------------------- 
      * 01/01/08 SINISA ABRAMOVIC  Created for COBOL class         
      *                                                               
      *****************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID.  PROGRAM01.
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
       01 UserName  PIC   X(30)    VALUE "SINISA".
       01 Number1   PIC   9  VALUE  ZEROES.
       01 Number2   PIC   9  VALUE  ZEROES.
       01 Total     PIC   99 VALUE  0.
       01 SocialSecurityNumber.
           02 SSArea      PIC   999.
           02 SSGroup     PIC   999.
           02 SSSerial    PIC   9999.
       
       01 JMBGNumber.
           02 JMBGBithDay          PIC   99.
           02 JMBGBirthMonth       PIC   99.
           02 JMBGBithYear         PIC   999.
           02 JMBGRegion           PIC   99.
           02 JMBGGender           PIC   999.
           02 JMBGControlNumber    PIC   9.

              
       PROCEDURE DIVISION.
           DISPLAY "SINISA ABRAMOVIC PROGRAM-ID: PROGRAM01"
           DISPLAY "HELLO " UserName
           
           MOVE ZERO to UserName 
           DISPLAY UserName 

           DISPLAY "Enter 2 values to sum "
           ACCEPT Number1 
           ACCEPT Number2 
           
           COMPUTE Total = Number1 + Number2 

           DISPLAY "Sum of " Number1 " and " Number2 " is " Total

           DISPLAY "Enter your social security number:"
           ACCEPT SocialSecurityNumber 
           DISPLAY "Area " SSArea " Group " SSGroup " Serial " SSSerial

           DISPLAY "Enter your JMBG number:"
           ACCEPT JMBGNumber
           DISPLAY "BIRTH DAY   - " JMBGBithDay
           DISPLAY "BIRTH MONTH - " JMBGBirthMonth 
           DISPLAY "BIRTH YEAR  - " JMBGBithYear 
           DISPLAY "REGION      - " JMBGRegion 
           DISPLAY "GENDER      - " JMBGGender 

           STOP RUN.


