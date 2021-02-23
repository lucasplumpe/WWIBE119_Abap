CLASS zcl_119005_demo_0202 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_119005_DEMO_0202 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    "WICHTIG: Shift + Fn + F1 --> Pretty
    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

    "Deklaration internen Tabellen

    DATA connections TYPE z119005_connections. "Type <Tabellentyp>
    DATA connections2 TYPE TABLE OF z119005_connection. "Type Table of <Struktur>

    "Einfügen von Datensätzen
    connections = VALUE #(
    ( carrier_id = 'LH' connection_id = '0400' airport_from_id = 'JFK' airport_to_id = 'FRA' )
    ( carrier_id = 'LH' connection_id = '0401' airport_from_id = 'JFK')
    ( carrier_id = 'UA' connection_id = '3517' )  ).


    DATA connection TYPE z119005_connection.
    connection-carrier_id = 'LH'.
    connection-connection_id = '0400'.
    connection-airport_from_id = 'FRA'.
    connection-airport_to_id = 'JFK'.

    connections = VALUE #( BASE connections
    ( carrier_id = 'LH' connection_id = '0402' airport_from_id = 'FRA' )
    ( connection ) ).



    TRY.
        connection = connections[ 10 ].
      CATCH cx_sy_itab_line_not_found INTO DATA(x).
        out->write( x->get_text(  ) ).
    ENDTRY.

    IF line_exists( connections[ carrier_id = 'XX' connection_id = '0400' ] ).
      connection = connections[ carrier_id = 'XX' connection_id = '0400' ].
    ELSE.
      out->write( 'Fehler: zeile existiert nicht.' ).
    ENDIF.


    "Ändern eines Einzelsatzes ...per
    connections[ 1 ]-airport_from_id = 'BER'. "... Index
    connections[ carrier_id = 'LH' connection_id = '0402' ]-airport_to_id = 'BER'. "... Schlüssel


    "Ändern mehrerer Datensätze
    DATA connection2 TYPE REF TO z119005_connection. "Type Ref TO <Strukturtyp>: Referenzvariable
    DATA connection3 TYPE z119005_connection.   "Type <Strukturtyp>: Strukturvariable

    LOOP AT connections REFERENCE INTO connection2 WHERE carrier_id = 'LH' .
      connection2->airport_to_id = 'JFK'.
    ENDLOOP.

    "Sortieren von interenen Tabellen
    SORT connections BY carrier_id DESCENDING connection_id ASCENDING airport_from_id DESCENDING.

    "Löschen von Datensätzen
    DELETE connections WHERE airport_to_id IS INITIAL OR airport_from_id < 'FRA'.

    "Größe von internen tabellen
    DATA(numer_of_connections) = lines( connections ).

    "Lesen eines Einzelsatzes per ...
    connection = connections[ 1 ]. "... Index
    connection = connections[ carrier_id = 'LH' connection_id = '0400' ]. "... Schlüssel

    "Lesen mehrerer Datensätze
    "loop at connections into data(connection2).
    "endloop.
    LOOP AT connections INTO connection WHERE carrier_id = 'LH' .
      out->write(  | { sy-tabix } - { connection-carrier_id } - { connection-connection_id } - { connection-airport_from_id } - { connection-airport_to_id } | ).
    ENDLOOP.




  ENDMETHOD.
ENDCLASS.
