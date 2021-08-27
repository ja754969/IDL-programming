title='Figure 29.1.4'
xsize=216 & ysize=162

wBase = WIDGET_BASE(/COLUMN, TITLE=title, XSIZE=xsize, YSIZE=ysize)
wList = WIDGET_LIST(wBase, VALUE=['High', 'Low'])
wDropList = WIDGET_DROPLIST(wBase, VALUE=['Large', 'Small'])
wComboBox = WIDGET_COMBOBOX(wBase, VALUE=['Wide', 'Narrow'])

WIDGET_CONTROL, wBase, /REALIZE

END
