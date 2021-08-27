title='Figure 29.1.2'
xsize=216 & ysize=162

wBase = WIDGET_BASE(/COLUMN, TITLE=title, XSIZE=xsize, YSIZE=ysize)
wLabel = WIDGET_LABEL(wBase, VALUE='If finished, press OK.')
wButton = WIDGET_BUTTON(wBase, VALUE='OK')
data = FINDGEN(2, 3)
wTable = WIDGET_TABLE(wBase, VALUE=data)

WIDGET_CONTROL, wBase, /REALIZE

END
