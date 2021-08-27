title = 'Figure 30.3.3'
xsize=216 & ysize=192

oModel = OBJ_NEW('IDLgrModel')

datax = FINDGEN(8)
datay = [4,3,7,2,8,0,6,3]
oPlot = OBJ_NEW('IDLgrPlot', datax, datay)
oModel -> Add, oPlot

ofont = OBJ_NEW('IDLgrFont', 'Helvetica', SIZE=10)
oTextTitle = OBJ_NEW('IDLgrText', 'X vs. Y', LOCATION=[3, 9], FONT=oFont)
oModel -> Add, oTextTitle

oTextX = OBJ_NEW('IDLgrText','X', FONT=oFont)
oAxisX = OBJ_NEW('IDLgrAxis',0, TITLE=oTextX)
oTextY = OBJ_NEW('IDLgrText','Y', FONT=oFont)
oAxisY = Obj_NEW('IDLgrAxis',1, TITLE=oTextY)
oModel -> Add, oAxisX
oModel -> Add, oAxisY

oPlot -> GetProperty, XRANGE=xr, YRANGE=yr
oAxisX -> SetProperty, RANGE=xr
oAxisY -> SetProperty, RANGE=yr

oSymbol = OBJ_NEW('IDLgrSymbol', 1)
oPlot -> SetProperty, SYMBOL=oSymbol
oSymbol -> SetProperty, SIZE=[0.1,0.1]

;OBJ_DESTROY, oFont, oSymbol
;OBJ_DESTROY, oTextX, oTextY
XOBJVIEW, oModel, XSIZE=xsize, YSIZE=ysize, TITLE=title
END
