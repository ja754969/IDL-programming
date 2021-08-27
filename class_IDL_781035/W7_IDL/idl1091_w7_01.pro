; Chapter6 Graphics
;CD,'H:\IDL_1091\class_IDL_781035\W7_IDL'
CD,'E:\IDL_1091\class_IDL_781035\W7_IDL'
window,xsize = 416,ysize = 262
!P.BACKGROUND = 255
!P.COLOR = 0
DEVICE,DECOMPOSED = 0
x = [0:2.*!pi:0.1]
y1 = sin(x)
y2 = cos(x)
help,x,y1,y2
plot,x,y1
erase
plot,x,y2
plot,x,y2,/polar
plot,x,y1,/polar
z = sqrt(y1*y1+y2*y2)
plot,x,z,/polar
plot,z,x,/polar
plot,z,x,/polar,/ISOTROPIC
end