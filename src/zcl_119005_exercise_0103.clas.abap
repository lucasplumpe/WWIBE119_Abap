CLASS zcl_119005_exercise_0103 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_119005_exercise_0103 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    data string1 type string value 'Haallo Welt'.
    out->write( |Original: | && string1 ). "Hallo Lucky
    string1 = replace( val = string1 sub = 'a' with = '1' ).
    string1 = replace( val = string1 sub = 'e' with = '2' ).
    string1 = replace( val = string1 sub = 'i' with = '3' ).
    string1 = replace( val = string1 sub = 'o' with = '4' ).
    string1 = replace( val = string1 sub = 'u' with = '5' ).
    out->write( |Änderung: | && string1 ).

  ENDMETHOD.
ENDCLASS.
