; Chapter6 Graphics
;CD,'H:\IDL_1091\class_IDL_781035\W8_IDL'
CD,'E:\IDL_1091\class_IDL_781035\W8_IDL'
window,xsize = 416,ysize = 262
!P.BACKGROUND = 255
!P.COLOR = 0
DEVICE,DECOMPOSED = 0
t = FINDGEN(10)+1
ft = exp(-0.3*t)*sin(3*t)
yt = sin(2*t)/t
print,t
plot,t,yt,title = 'W8_class_6-3',xtitle = 't',yrange = [-1,1],thick = 1
oplot,t,ft,linestyle = 2,thick = 3

write_png,'IDL_1091_Ch06-3.png',tvrd()
end