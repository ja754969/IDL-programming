wBase = WIDGET_BASE(/COLUMN, TITLE=title)
wDraw = WIDGET_DRAW(wBase, XSIZE=xsize, YSIZE=ysize, GRAPHICS_LEVEL=2)
;        /EXPOSE_EVENTS, /BUTTON_EVENTS, /MOTION_EVENTS)
WIDGET_CONTROL, wBase, /REALIZE
WIDGET_CONTROL, wDraw, GET_VALUE=oWindow