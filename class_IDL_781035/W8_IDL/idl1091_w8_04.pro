; Chapter6 Graphics
;CD,'H:\IDL_1091\class_IDL_781035\W8_IDL'
CD,'E:\IDL_1091\class_IDL_781035\W8_IDL'
window,xsize = 416,ysize = 262
!P.BACKGROUND = 255
!P.COLOR = 0
DEVICE,DECOMPOSED = 0
z = DIST(256,168)
help,z
;print,z
print,min(z),max(z)
;contour,z
contour,z,xstyle = 1,ystyle = 1

window,1,xsize = 416,ysize = 262
x = findgen(256)*0.5 & y = findgen(168)*0.2
help,x,y
contour,z,x,y,xstyle = 1,ystyle = 1

write_png,'IDL_1091_W8class_04.png',tvrd()

;window,2
;contour,z,y,x
end