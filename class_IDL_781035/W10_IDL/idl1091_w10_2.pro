; Chapter 6
; 上標下標
;CD,'H:\IDL_1091\class_IDL_781035\W10_IDL'
CD,'E:\IDL_1091\class_IDL_781035\W10_IDL'
window,xsize = 416,ysize = 416
!P.BACKGROUND = 255
!P.COLOR = 0
DEVICE,DECOMPOSED = 0
!p.multi = [0,0,0,0,0]
x = [1:5:0.01]
y = [1:5:0.01]
f1 = x^3*exp(-y)
print,!x.margin
plot,x,f1,xtitle='x-axis',ytitle = 'f!D1!N=x!U3!N*e!U-y!N',xmargin = [10,10]
print,!x.margin
xyouts,3,1.4,'f!D1!N',charsize = 2
xyouts,3.5,1.2,'f!I1!N=e!Ux!E2!U+y!E2!N',charsize=2
axis,5,0,yaxis=1,/save,yrange = [-2,2],$
  ytitle='f!I2!N=cos(x!E2!N+3y!E2!N)',ycharsize=2
f2 = cos(x^2+3*y^2)
oplot,x,f2,linestyle=1,thick=2
xyouts,4,-1.4,'f!D2!n(x)',charsize=2
write_png,'IDL_W10-2.png',tvrd()
end