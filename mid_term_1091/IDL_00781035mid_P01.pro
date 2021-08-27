;1
CD,'E:\IDL_1091'
window,xsize=416,ysize = 300
!P.BACKGROUND=255 ;設定視窗上的背景顏色為白色
!P.COLOR=0 ;設定圖形是以黑色線條呈現
DEVICE, DECOMPOSED=0 ;設定顏色不分解,避免白色地方變成紅色

x = randomn(seed,2000)
y = randomn(seed,2000)
z = SQRT(x^2+y^2)
window,1,xsize=450,ysize = 450
contour,z,x,y,/irregular,NLEVEL = 5,/fill,title='00781035',ytitle='y-axis',$
  xtitle='x-axis',xcharsize = 1.5,ycharsize = 1.5,ymargin = [7,7]
contour,z,x,y,/irregular,NLEVELS = 5,/OVERPLOT,C_LABELS = replicate(1,5),C_CHARSIZE = 2
write_png,'IDL_00781035mid_P01.png',tvrd()
;axis,0,0

END