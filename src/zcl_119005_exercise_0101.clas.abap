CLASS zcl_119005_exercise_0101 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_119005_EXERCISE_0101 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.


  DATA travel_id TYPE /dmo/travel_id value '12345678'.
  Data travel_description type /dmo/description value 'VIEL SPASS'.
  Data begin_travel type /dmo/begin_date value '20000521'.
  Data end_travel type /dmo/end_date value '20000531'.

  out->write( |Travel ID: | && travel_id ).
  out->write( |Travel Description: | && travel_description ).
  out->write( |Begin Travel: | && begin_travel ).
  out->write( |End Travel: | && end_travel ).

  ENDMETHOD.
ENDCLASS.
