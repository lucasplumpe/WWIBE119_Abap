CLASS zcl_119005_exercise_0102 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_119005_exercise_0102 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  Data result type p length 16 decimals 2 value '23.24'.

  "Mathematische Operatoren
  result = 5 + 3. out->write(  |Addition: | && result ).
   result = 5 - 3. out->write(  |Substraktion: | && result ).
   result = 5 * 3. out->write(  |Multiplikation: | && result ).
   result = 5 / 3. out->write(  |Division: | && result ).




  ENDMETHOD.
ENDCLASS.
