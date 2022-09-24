      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           CLASS PassingScore IS "A" THRU "C","D".
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 Age PIC 99 VALUE 0.
       01 Grade PIC 99 Value 0.
       01 Score PIC X(1) VALUE "B".
       01 CanVoteFlag PIC 9 VALUE 0.
       *> 88 signifies BOOLEAN
           88 CanVote VALUE 1.
           88 CantVote VALUE 0.
       01 TestNumber PIC X.
           88 IsPrime VALUE "1","3","5","7".
           88 IsOdd VALUE "1","3","5","7","9".
           88 IsEven VALUE "2", "4","6","8".
           88 LessThan5 VALUE "1" THRU "4".
           88 ANumber VALUE "0" THRU "9".



       PROCEDURE DIVISION.
       DISPLAY "Enter Age:" WITH NO ADVANCING.
       ACCEPT Age
       IF Age >= 18 THEN
           DISPLAY "you can vote "
       ELSE
           DISPLAY "you can't vote"
       END-IF.

       IF Age LESS THAN 5 THEN
           DISPLAY "Stay Home"
       END-IF.

       IF Age = 5 THEN
           DISPLAY "go to kindegarten"
       END-IF.

       IF Age > 5 AND Age< 18 THEN
           COMPUTE Grade = Age - 5
           DISPLAY "go to grade " Grade
       END-IF.

       IF Age GREATER THAN OR EQUAL TO 18
           DISPLAY "Go to college"
       END-IF.

       IF SCORE IS NOT NUMERIC THEN
           DISPLAY "Not a number"
       END-IF.

       IF Age > 18 THEN
           SET CanVote TO TRUE
       ELSE
           SET CantVote TO TRUE
       END-IF.

       DISPLAY "VOTE" CanVoteFlag.

       ACCEPT TestNumber.
       PERFORM UNTIL NOT ANumber
           EVALUATE TRUE
           WHEN IsPrime DISPLAY "Prime"
           WHEN IsOdd DISPLAY "Odd"
           WHEN IsEven DISPLAY "Even"
           WHEN LessThan5 DISPLAY "Less 5"
               WHEN OTHER DISPLAY "defult"
           END-EVALUATE
           ACCEPT TestNumber

       END-PERFORM.


       MAIN-PROCEDURE.
           *> DISPLAY "Hello world"
            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
