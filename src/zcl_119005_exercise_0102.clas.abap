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

   result = 5 ** 3. out->write(  |Potenz: | && result ).
   result = 5 DIV 3. out->write(  |ganzzahlige Division: | && result ).
   result = 5 MOD 3. out->write(  |Divisionsrest: | && result ).

   result += 1. out->write(  |ZWO Addition: | && result ).
   result -= 1. out->write(  |ZWO Substraktion: | && result ).
   result *= 1. out->write(  |ZWO Multiplikation: | && result ).
   result /= 1. out->write(  |ZWO Division: | && result ).

   ADD 1 TO result. "Inkrementieren
   ADD -1 TO result. "Dekrementieren


   "nummerische Funktionen
   result = abs( -3 ). out->write(  |Betrag: | && result ).
   result = ipow( base = 5 exp = 3 ). out->write(  |Potenz: | && result ).


   result = nmin( val1 = 3 val2 = 6 ). out->write(  |Minimum: | && result ).

  ENDMETHOD.
ENDCLASS.
