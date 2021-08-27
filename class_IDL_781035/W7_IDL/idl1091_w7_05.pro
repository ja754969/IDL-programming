; Chapter6 Graphics
;CD,'H:\IDL_1091\class_IDL_781035\W7_IDL'
CD,'E:\IDL_1091\class_IDL_781035\W7_IDL'
window,xsize = 416,ysize = 262
!P.BACKGROUND = 255
!P.COLOR = 0
DEVICE,DECOMPOSED = 0
x = findgen(361)*!dtor
y1 = sin(x) & y2 = cos(x)
;print,x
plot,x,y1,xtitle='X-axis',ytitle = 'sin(x)',Charsize = 1.5,xstyle = 1$
  ,title = 'sin(x),cos(x)'
;plot,x,y2,/NOERASE,xstyle = 1
;oplot,x,y2,Linestyle = 2,thick = 2
oplot,x,y2,max_value = 0.5,min_value = -0.5,linestyle = 1,thick = 2
;max_value,min_value :　設定y值繪製的最大最小範圍
end