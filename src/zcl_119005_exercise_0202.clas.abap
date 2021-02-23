CLASS zcl_119005_exercise_0202 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_119005_EXERCISE_0202 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  data travels type z119017_travels.

  travels = VALUE #( Base travels
  ( travel_id = '12345678' description = 'Italien 2020' begin_date = '20200202' end_date = '20200205')
  ( travel_id = '23456789' description = 'Italien 2021' begin_date = '20210202' end_date = '20210205')
  ( travel_id = '56754356' description = 'Italien 2022' begin_date = '20220202')
   ).

  TRY.
  travels[ 2 ]-description = 'testing'.
  travels[ travel_id = '56754356' ]-begin_date = '20220203'.
  catch cx_sy_itab_line_not_found.
  endtry.

  DELETE travels WHERE begin_date is INITIAL or end_date is initial.

  "loop at travels into data(travel).
  "      out->write(  | { sy-tabix } - { travel-travel_id } - { travel-description } - { travel-begin_date } - { travel-end_date } | ).
  "endloop.
  out->write( travels ).

  out->write( | Größe der Tabelle: { lines( travels ) } | ).
  ENDMETHOD.
ENDCLASS.
