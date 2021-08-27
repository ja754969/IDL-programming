; Chapter6 Graphics
;CD,'H:\IDL_1091\class_IDL_781035\W8_IDL'
CD,'E:\IDL_1091\class_IDL_781035\W8_IDL'
window,xsize = 416,ysize = 262
!P.BACKGROUND = 255
!P.COLOR = 0
DEVICE,DECOMPOSED = 0
x = FINDGEN(5)+1
u = [5.3,8.2,2.4,3.6,7.8]
v = [3.8,9.2,5.3,4.6,1.4]
vel = SQRT(u^2+v^2)
d = v/u
theta = atan(d)*!RADEG
print,theta
plot,x,theta,title = 'W8_class_6-2'
oplot,x,vel,linestyle = 2


end