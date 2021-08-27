; Example 16.2.3
OPENW, 4, 'file4.dat'
a = BINDGEN(4)
PRINTF, 4, a, FORMAT='(4F5.1)'
CLOSE, 4
END
