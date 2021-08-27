; Chapter6 Graphics
;CD,'H:\IDL_1091\class_IDL_781035\W8_IDL'
CD,'E:\IDL_1091\class_IDL_781035\W8_IDL'
window,xsize = 416,ysize = 262
!P.BACKGROUND = 255
!P.COLOR = 0
DEVICE,DECOMPOSED = 0
x = findgen(361)
y = sin(x*!dtor)
z = 2*cos(x*!dtor)
plot,x,y,xtitle = 'x-axis',ytitle = 'y-axis',xstyle = 1,ystyle = 8,$
  xmargin = [9,9]
write_png,'IDL_1091_W8class_10.png',tvrd()

window,1
plot,x,y,xtitle = 'x-axis',ytitle = 'y-axis',xstyle = 1,ystyle = 8,$
  xmargin = [9,9]
xyouts,180,0,'y',charsize = 2
axis,360,0,yaxis = 1,/save,yrange = [-2,2],ytitle = 'z-axis'
oplot,x,z,linestyle = 1,thick = 2
xyouts,110,-0.5,'z',charsize = 2
write_png,'IDL_1091_W8class_10-2.png',tvrd()
end