CLASS zcl_119005_exercise_0201 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_119005_exercise_0201 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  Data travel type Z119005_Travel.

  travel = CORRESPONDING #( ZCL_119000_Flight=>get_latest_travel( ) ).

  out->write( |Travelid: { travel-travel_id } Description { travel-description } Begin_date: {  travel-begin_date } End_date: { travel-end_date }| ).

  ENDMETHOD.
ENDCLASS.
