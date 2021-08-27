title='Figure 29.1.6'
xsize=216 & ysize=162

wBase = WIDGET_BASE(/COLUMN, TITLE=title, XSIZE=xsize, YSIZE=ysize)
wTab = WIDGET_TAB(wBase)
wTab1 = WIDGET_BASE(wTab, TITLE='Tab 1', YSIZE=100)
wLabel1 = WIDGET_LABEL(wTab1, VALUE='Colors')
wTab2 = WIDGET_BASE(wTab, TITLE='Tab 2', YSIZE=100)
wLabel2 = WIDGET_LABEL(wTab2, VALUE='Fonts')

WIDGET_CONTROL, wBase, /REALIZE

END
