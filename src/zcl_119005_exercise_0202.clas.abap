CLASS zcl_119005_exercise_0202 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_119005_exercise_0202 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  data travels type z119005_travels.
  data travel type z119005_travel.


  travels = CORRESPONDING #( zcl_119000_flight=>get_all_travels( ) ).

  travels[ 3 ]-description = 'testing'.
  travels[ 3 ]-begin_date = '20200101'.
  travels[ 3 ]-end_date = '20200301'.
  travels[ 3 ]-travel_id = '0000112'.

  DELETE travels WHERE travel_id > '999'.

  loop at travels into travel.
        out->write(  | { sy-tabix } -  { travel-description } - { travel-begin_date } - { travel-end_date } - { travel-travel_id }| ).
  endloop.

  out->write( | Größe der Tabelle: { lines( travels ) } | ).
  ENDMETHOD.
ENDCLASS.
