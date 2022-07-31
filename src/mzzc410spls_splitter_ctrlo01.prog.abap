*----------------------------------------------------------------------*
***INCLUDE MBC410SPLS_SPLITTER_O01.
*----------------------------------------------------------------------*
*&---------------------------------------------------------------------*
*&      Module  SET_SASH  OUTPUT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
MODULE set_sash OUTPUT.
  go_splitter->set_sash( ).
ENDMODULE.                 " SET_SASH  OUTPUT
*&---------------------------------------------------------------------*
*&      Module  SET_STATUS  OUTPUT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
MODULE set_status OUTPUT.
  SET PF-STATUS 'SCREEN_100'.

  IF go_splitter IS NOT BOUND.
    CREATE OBJECT go_splitter
      EXPORTING
        splitter_name = 'SPLITTER_DEMO'.
  ENDIF.

ENDMODULE.                 " SET_STATUS  OUTPUT
*&---------------------------------------------------------------------*
*&      Module  OK_CODE_CLEAR  OUTPUT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
MODULE ok_code_clear OUTPUT.
  CLEAR ok_code.
ENDMODULE.                 " OK_CODE_CLEAR  OUTPUT