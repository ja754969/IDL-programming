; Chapter6 Graphics
;CD,'H:\IDL_1091\class_IDL_781035\W7_IDL'
CD,'E:\IDL_1091\class_IDL_781035\W7_IDL'
window,xsize = 416,ysize = 262
!P.BACKGROUND = 255
!P.COLOR = 0
DEVICE,DECOMPOSED = 0
x = [0.2,0.8,0.8,0.2,0.2]
y = [0.2,0.2,0.6,0.6,0.2]
z = fltarr(2,5)
help,z
z[0,*] = x & z[1,*]=y
print,z
plot,y,yrange = [0,3]
plots,z
plots,[1.0,1.0]
plots,[1.0,2.0],/continue
plots,[2.0,2.0],/continue
plots,[2.0,1.0],/continue
plots,[1.0,1.0]
end