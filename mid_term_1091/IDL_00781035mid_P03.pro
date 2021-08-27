;3
CD,'E:\IDL_1091'
window,xsize=416,ysize = 416
!P.BACKGROUND=255 ;設定視窗上的背景顏色為白色
!P.COLOR=0 ;設定圖形是以黑色線條呈現
DEVICE, DECOMPOSED=0 ;設定顏色不分解,避免白色地方變成紅色

theta = [0:2*!pi:!pi/100]
R0 = 1
alpha = -45*!dtor
r = 2*R0*cos(theta+alpha)
x0 = R0*cos(-alpha) & y0 = R0*sin(-alpha)
;print,r
window,3,xsize = 416,ysize = 416
plot,r,theta,/polar,/isotropic,title = '00781035',xstyle=4,ystyle=4
axis,x0,y0,xaxis=1
axis,x0,y0,yaxis=0
write_png,'IDL_00781035mid_P03.png',tvrd()

END