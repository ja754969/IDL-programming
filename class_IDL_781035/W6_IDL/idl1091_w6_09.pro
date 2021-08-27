; Chapter6 Graphics
CD,'E:\IDL_1091\class_IDL_781035\W6_IDL'
window,xsize = 416,ysize = 262
!P.BACKGROUND = 255
!P.COLOR = 0
DEVICE,DECOMPOSED = 0
x = [2,4,6,8] & y = randomn(seed,4)
help,y & print,'y = ',y
plot,x,y,/ISOTROPIC
end