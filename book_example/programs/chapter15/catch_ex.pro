PRO catch_ex
  CATCH, variable
  IF variable NE 0 THEN BEGIN
    PRINT, !ERROR_STATE.MSG
    a = 1
    CATCH, /CANCEL
  ENDIF
  PRINT, a
RETURN
END
