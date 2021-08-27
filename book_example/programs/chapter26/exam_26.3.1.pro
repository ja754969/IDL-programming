; Example 26.3.1

xsize=200 & ysize=200
img8 = BYTSCL(DIST(xsize, ysize))
img24 = BYTARR(3, xsize, ysize)
dims = [xsize, ysize]
id = MPEG_OPEN(dims, FILENAME='movie.mpg')

FOR i=0,9 DO BEGIN
 LOADCT, i
 TVLCT, r, g, b, /GET
 img24[0, *, *] = r[img8]
 img24[1, *, *] = g[img8]
 img24[2, *, *] = b[img8]
 MPEG_PUT, id, IMAGE=img24, FRAME=i
ENDFOR

MPEG_SAVE, id
MPEG_CLOSE, id

END
