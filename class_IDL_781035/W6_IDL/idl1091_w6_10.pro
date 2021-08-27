; Chapter6 Graphics
CD,'E:\IDL_1091\class_IDL_781035\W6_IDL'
window,xsize = 416,ysize = 262
!P.BACKGROUND = 255
!P.COLOR = 0
DEVICE,DECOMPOSED = 0
x = indgen(20) & y = x^2
help,y & print,'y = ',y
plot,x,y
erase
plot,x,y,max_value = 300,min_value = 100
plot,x,y
window,6
plot,x,y,/ylog
window,1
;window,xsize = 300,ysize = 200
;!P.BACKGROUND = 255
;!P.COLOR = 0
plot,x,y,/xlog,/ylog
end