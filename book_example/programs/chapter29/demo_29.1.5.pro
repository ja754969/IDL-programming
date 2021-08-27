title='Figure 29.1.5'
xsize=216 & ysize=162

wBase = WIDGET_BASE(/COLUMN, TITLE=title, XSIZE=xsize, YSIZE=ysize)
wTree = WIDGET_TREE(wBase)
wTree0 = WIDGET_TREE(wTree, VALUE='Level0', /FOLDER, /EXPANDED)
wTree01 = WIDGET_TREE(wTree0, VALUE='Data1')
wTree02 = WIDGET_TREE(wTree0, VALUE='Data2')
wTree1 = WIDGET_TREE(wTree, VALUE='Level1', /FOLDER)
wTree11 = WIDGET_TREE(wTree1, VALUE='Data3')
wTree12 = WIDGET_TREE(wTree1, VALUE='Data4')
wTree2 = WIDGET_TREE(wTree, VALUE='Level2', /FOLDER, /EXPANDED)
wTree21 = WIDGET_TREE(wTree2, VALUE='Data5')

WIDGET_CONTROL, wBase, /REALIZE

END
