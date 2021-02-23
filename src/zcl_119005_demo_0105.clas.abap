CLASS zcl_119005_demo_0105 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_119005_DEMO_0105 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  data text type string value 'Hallo'. "Compiler schmeißt alle Leerzeichen am Ende einer Zeichkette weg (aber nicht die vorne dran/mitten drin
  data text2 type string value 'Welt'.
  data text3 type string.

  "Verknüfung von Zeichenketten
  text3 = text && | | && text2 && '!'.
  out->write( text3 ).

  "Verwendung von Zeichenketten templates
  text3 = |{ text } { text2 }!|.
  out->write( text3 ).


  "Zeichenkettenfunktionen
  Split text3 At | | into text text2. "Aufteilen

  data number_of_characters type i.
  number_of_characters = strlen( text3 ). "Zeichenkettenlänge
  text3 = to_upper( text3 ). "Umsetzen

  out->write( |Länge von '   ': { strlen( |   | ) }| ).

  ENDMETHOD.
ENDCLASS.
