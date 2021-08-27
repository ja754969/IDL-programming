title = 'Figure 30.3.1'
xsize=216 & ysize=192
@ ../object

oView = OBJ_NEW('IDLgrView')
oModel = OBJ_NEW('IDLgrModel')

oText = OBJ_NEW('IDLgrText', 'Hello!')
oText -> SetProperty, LOCATIONS=[-0.5, -0.5, 0]
oModel -> Add, oText

oView -> Add, oModel
oWindow -> Draw, oView

;OBJ_DESTROY, oView
;OBJ_DESTROY, oWindow
END
