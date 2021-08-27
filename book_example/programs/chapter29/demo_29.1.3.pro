title='Figure 29.1.3'
xsize=216 & ysize=162
DEVICE, DECOMPOSED=0
!P.BACKGROUND=255

wBase = WIDGET_BASE(/COLUMN, TITLE=title, XSIZE=xsize, YSIZE=ysize)
wDraw = WIDGET_DRAW(wBase, XSIZE=xsize, YSIZE=60)
wText = WIDGET_TEXT(wBase, VALUE='Enter the text here.')
wSlider = WIDGET_SLIDER(wBase, MAXIMUM=255)

WIDGET_CONTROL, wBase, /REALIZE

END
