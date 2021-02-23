CLASS zcl_119005_exercise_0201 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_119005_EXERCISE_0201 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.


  Data travel type Z119005_Travel.

  travel = CORRESPONDING #( ZCL_119000_Flight=>get_latest_travel( ) ).

  out->write( |TravelId: { travel-travel_id }| ).
  out->write( |Beschreibung: { travel-description }| ).
  out->write( |Startdatum: { travel-begin_date }| ).
  out->write( |Enddatum: { travel-end_date }| ).

  ENDMETHOD.
ENDCLASS.
