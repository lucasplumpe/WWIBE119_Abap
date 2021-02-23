CLASS zcl_119005_demo_0102 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_119005_DEMO_0102 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  "Wichtige ABAP-Standardtypen.
  DATA i1 TYPE i. "ganze Zahl (Bsp: 42)
  data string1 type string. "Zeichenkette dynamischer Länge (bsp: 'Hallo Welt')
  data c1 type c length 6. " Zeichenkette mit fester Länger
  data n1 type n length 7. "Zeichenkette mit fester Länge + nur Zahlen z.B. '878234'
  data d1 type d. "Datum (z.B. '20210202' -Format YYYYMMDD)
  data t1 type t. "Zeit z.B. '121344' -Format MMSSMM
  data p1 type p length 16 decimals 2. "gepackte Zahl (Bsp. '374.23
  data b1 type c length 1. "Boolscher Wahrheitswert( Bsp. leer = falsch, 'X' = true)

 "Deklaration variabler Datenobjekte per...
 DATA carrier_id type c LENGTH 3. "...ABAP-Standardtyp
 data carrier_id2 type /dmo/carrier_id. "...Datenelement

 "Wertzuweisung per...
  carrier_id = 'LH'.  "... Zuwesiungsoperator
  DATA connection_id TYPE /dmo/connection_id VALUE '0400'. "...statische Vorbelegung
  DATA(flight_data) = '20170101'. "... Inlinedeklaration

  CLEAR carrier_id. "Initialisierung


  "Deklaration fixer Datenobjekte
  Constants co_pi type p length 2 decimals 2 value '3.14'.

  ENDMETHOD.
ENDCLASS.
