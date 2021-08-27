; Chapter6 Graphics
;CD,'H:\IDL_1091\class_IDL_781035\W8_IDL'
CD,'E:\IDL_1091\class_IDL_781035\W8_IDL'
window,xsize = 416,ysize = 262
!P.BACKGROUND = 255
!P.COLOR = 0
DEVICE,DECOMPOSED = 0
x = [0,2,2,0,0]
y = [0,0,1,1,0]
usersym,x,y,thick = 2,/fill
plot,x,y,xrange = [-1,3],yrange = [-1,2]
write_png,'IDL_1091_W8class_07.png',tvrd()
window,1
plot,findgen(10),psym = 8
write_png,'IDL_1091_W8class_07.png',tvrd()
window,2
x1 = [0,2,0,2]
y1 = [1,0,0,1]
usersym,x1,y1,thick = 1
plot,x1,y1,xrange = [-1,3],yrange = [-1,2]
write_png,'IDL_1091_W8class_07.png',tvrd()
window,3
plot,findgen(10),psym = 8
write_png,'IDL_1091_W8class_07.png',tvrd()

end