; Example 14.2.2

a=indgen(3, 2)
FOR j=0,1 DO BEGIN
 FOR i=0,2 DO BEGIN
  a[i, j] = 2 * i + j
 ENDFOR
ENDFOR
PRINT, a
END
