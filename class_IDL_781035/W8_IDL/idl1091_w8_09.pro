; Chapter6 Graphics
;CD,'H:\IDL_1091\class_IDL_781035\W8_IDL'
CD,'E:\IDL_1091\class_IDL_781035\W8_IDL'
window,xsize = 416,ysize = 262
!P.BACKGROUND = 255
!P.COLOR = 0
DEVICE,DECOMPOSED = 0

r = findgen(100)*0.1
theta = findgen(100)*0.2
plot,r,theta,/polar,xstyle = 4,ystyle = 4
axis,0,0,xaxis = 0
axis,0,0,yaxis = 0
end