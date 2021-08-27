; Chapter6 Graphics
;CD,'H:\IDL_1091\class_IDL_781035\W8_IDL'
CD,'E:\IDL_1091\class_IDL_781035\W8_IDL'
window,xsize = 416,ysize = 262
!P.BACKGROUND = 255
!P.COLOR = 0
DEVICE,DECOMPOSED = 0
a = replicate('',6)
plot,[0,1],/nodata,xtickname = a,ytickname = a
xyouts,0.5,0.5,'St.1',/normal
xyouts,0.5,0.6,'St.2',/normal,charsize = 2,alignment = 1.0
xyouts,0.5,0.4,'St.3',/normal,charsize = 2,alignment = 0.5,charthick = 1.5

write_png,'IDL_1091_W8class_08.png',tvrd()


end