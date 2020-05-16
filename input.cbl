      ******************************************************************
      * Author: Mr.3e70
      * Date: 16/Mayo/2020
      * Purpose: Education
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. READ-TXT.

       ENVIRONMENT DIVISION.
           INPUT-OUTPUT SECTION.
               FILE-CONTROL.
                   SELECT STUDENT ASSIGN TO 'D:\\input.txt'
                   ORGANIZATION IS LINE SEQUENTIAL.

       DATA DIVISION.
           FILE SECTION.
           FD STUDENT.
           01 STUDENT-FILE.
               05 STUDENT-ID PIC 9(5).
               05 NAME PIC A(25).
               05 DATEX PIC A(11).

           WORKING-STORAGE SECTION.
           01 WS-STUDENT.
               05 WS-STUDENT-ID PIC 9(5).
               05 WS-NAME PIC A(25).
               05 WS-DATE PIC A(11).
           01 WS-EOF PIC A(1).

       PROCEDURE DIVISION.
           OPEN INPUT STUDENT.
               PERFORM UNTIL WS-EOF='Y'
                   READ STUDENT INTO WS-STUDENT
                       AT END MOVE 'Y' TO WS-EOF
                       NOT AT END DISPLAY WS-STUDENT
                   END-READ
               END-PERFORM.
           CLOSE STUDENT.
           STOP RUN.
       END PROGRAM READ-TXT.
