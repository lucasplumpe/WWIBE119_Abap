CLASS zcl_119005_demo_0104 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_119005_demo_0104 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  data carrier_id type /dmo/carrier_id value 'LH'.
  data flight_date type /dmo/flight_date value '20210209'.
  data is_fulfilled type c LENGTH 1.

  "Einfachverzweigung
  IF ( flight_date >= '20210101' AND flight_date <= '20211231')
    OR ( carrier_id <> 'LH' ).
    is_fulfilled = 'X'.
  ELSE.
     is_fulfilled = ''.
  ENDIF.

  clear is_fulfilled.

  if is_fulfilled is not INITIAL.
    out->write( |Bedigung: erfüllt| ).
  ENDIF.


  "Mehrfachverzweigung
  case carrier_id.
    when 'LH' OR 'lh' OR 'lH' OR 'Lh'.
    out->write( |Lufthansa| ).
    when 'BA'.
    out->write( |Britisch Airways| ).
    when others.
    out->write( |Sonstiges| ).
  endcase.


  ENDMETHOD.
ENDCLASS.
