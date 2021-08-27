; Example 26.3.2

xsize=200 & ysize=200
img8 = BYTSCL(DIST(xsize, ysize))
dims = [xsize, ysize]
id = MPEG_OPEN(dims)

winid = 0
WINDOW, winid, XSIZE=xsize, YSIZE=ysize
DEVICE, DECOMPOSED=0

FOR i=0,9 DO BEGIN
 LOADCT, i
 TV, img8
 MPEG_PUT, id, WINDOW=winid, FRAME=i
ENDFOR

MPEG_SAVE, id, FILENAME='movie2.mpg'
MPEG_CLOSE, id

END
