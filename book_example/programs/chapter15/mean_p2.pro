PRO mean_p2, array
  COMMON block1, ave
  sum = TOTAL(array)
  nn = N_ELEMENTS(array)
  ave = sum / nn
RETURN
END
