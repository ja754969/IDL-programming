FUNCTION mean_f2, array, DOUBLE=DOUBLE
  IF KEYWORD_SET(DOUBLE) THEN BEGIN
    PRINT, 'Double'
  ENDIF
  PRINT, N_PARAMS()
  IF ARG_PRESENT(array) EQ 0 THEN BEGIN
    RETURN, !VALUES.F_NAN
  ENDIF
  sum = TOTAL(array)
  nn = N_ELEMENTS(array)
  ave = sum / nn
RETURN, ave
END
