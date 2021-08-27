; Chapter6 Graphics
;CD,'H:\IDL_1091\class_IDL_781035\W8_IDL'
CD,'E:\IDL_1091\class_IDL_781035\W8_IDL'
window,xsize = 416,ysize = 262
!P.BACKGROUND = 255
!P.COLOR = 0
DEVICE,DECOMPOSED = 0

x = randomu(seed,2000)
y = randomu(seed,2000)
z = exp(x^2+y^2)
contour,z,x,y,/irregular,NLEVEL = 5,C_labels = replicate(1,5)
contour,z,x,y,/irregular,/downhill,C_thick = 2 
end