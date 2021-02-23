CLASS zcl_119005_demo_0201 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_119005_DEMO_0201 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  data connection type z119017_connection.

  "Zugriff auf Strukturkomponenten
  connection-carrier_id = 'LH'.
  connection-connection_id = '0400'.
  connection-airport_from_id = 'FRA'.
  connection-airport_to_id = 'JFK'.

  out->write( |Kürzel der Fluggesellschaft: { connection-carrier_id }| ).
  out->write( |Verbindungsnummer: { connection-connection_id }| ).

 "Kopieren
 data flight type z119017_flight.
 flight-carrier_id = 'LH'.
 flight-connection_id = '0400'.
 flight-flight_date = cl_abap_context_info=>get_system_date( ).
 flight-price = 500.
 flight-currency_code = 'EUR'.
 flight-plane_type_id = 'A340-400'.

 data flight_xt type z119017_flight_extended.
 flight_xt = CORRESPONDING #( connection ).
 flight_xt = CORRESPONDING #( BASE ( flight_xt ) flight ).




  ENDMETHOD.
ENDCLASS.
