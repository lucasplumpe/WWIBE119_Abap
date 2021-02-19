CLASS zcl_119005_exercise_0203 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_119005_exercise_0203 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  DATA travels TYPE TABLE OF /dmo/travel.


  travels = CORRESPONDING #( zcl_119000_flight=>get_all_travels( ) ).

  "DELETE travels WHERE status <> 'B'.

  SORT travels By begin_date ASCENDING.

  loop at travels into DATA(travel).
        out->write(  | { sy-tabix } -  { travel-travel_id } - { travel-description } - { travel-status } | ).
  endloop.

  out->write( | Größe der Tabelle: { lines( travels ) } | ).


  ENDMETHOD.
ENDCLASS.
