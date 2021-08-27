title = 'Figure 7.3.5'
xsize=227 & ysize=149
@ ../widget

path = FILEPATH('rose.jpg', SUBDIRECTORY=['examples', 'data'])
image = READ_IMAGE(path)

a = QUERY_IMAGE(path, DIMENSIONS=dims)
WINDOW, XSIZE=dims[0], YSIZE=dims[1]

WIDGET_CONTROL, wDraw, XSIZE=dims[0], YSIZE=dims[1]
WSET, winid

TV, image, TRUE=1, /ORDER

END
