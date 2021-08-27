; Chapter6 Graphics
;CD,'H:\IDL_1091\class_IDL_781035\W8_IDL'
CD,'E:\IDL_1091\class_IDL_781035\W8_IDL'
window,xsize = 416,ysize = 262
!P.BACKGROUND = 255
!P.COLOR = 0
DEVICE,DECOMPOSED = 0
x = FINDGEN(21)-10
help,x & print,x
S = 2*(x^2)+3*x-2
help,S & print,S
plot,x,S,title = 'W8class_6-1'
end