; Example 26.2.1

data = BYTSCL(DIST(216))
FOR i=0,9 DO BEGIN
 LOADCT, i
 TVLCT, r, g, b, /GET
 WRITE_GIF, 'movie.gif', data, r, g, b, /MULTIPLE
ENDFOR 
END
