FUNCTION mean_f, array
  sum = TOTAL(array)
  nn = N_ELEMENTS(array)
  ave = sum / nn
RETURN, ave
END
