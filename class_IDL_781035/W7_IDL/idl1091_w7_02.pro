; Chapter6 Graphics
;CD,'H:\IDL_1091\class_IDL_781035\W7_IDL'
CD,'E:\IDL_1091\class_IDL_781035\W7_IDL'
window,xsize = 416,ysize = 262
!P.BACKGROUND = 255
!P.COLOR = 0
DEVICE,DECOMPOSED = 0
x = indgen(25)*15.0
;24*15 = 360
y = sin(x*!dtor)
help,x,y
print,x,y
print,'max_x = ',max(x),'(degree), x_min = ',min(x),'(degree)'
plot,x,y,xtitle = 'X-axis',ytitle = 'Y-axis',title = 'IDL CH06_W7' $
  ,CHARSIZE = 2
erase
window,1,xsize = 416,ysize = 262
plot,x,y,background = 0,color = 255
window,2,xsize = 416,ysize = 262
plot,x,y,XRANGE = [0,500],charthick = 2,PSYM = 6,LINESTYLE = 0,$
  SUBTITLE = 'ya',xstyle = 1,thick = 2,ystyle = 8
window,3,xsize = 416,ysize = 262
plot,x,y,position = [0.2,0.5,0.7,0.9] 
window,4,xsize = 416,ysize = 262
plot,x,y,/NODATA,title = 'IDL_CH06_W7'
plot,x,y,/NOERASE
window,5,xsize = 416,ysize = 262
plot,x,y,/DEVICE,CLIP = [0,0,250,220]
window,6,xsize = 416,ysize = 262
plot,x,y,/DEVICE,/NOCLIP,xrange = [0,200]
;圖形輸出範圍 : CLIP = [x0,y0,x1,y1] 單位為pixel

end