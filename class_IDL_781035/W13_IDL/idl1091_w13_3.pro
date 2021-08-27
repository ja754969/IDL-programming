; Chapter 8
CD,'H:\IDL_1091\class_IDL_781035\W13_IDL'
;CD,'E:\IDL_1091\class_IDL_781035\W13_IDL'
!P.BACKGROUND=255
!P.COLOR=0
DEVICE,DECOMPOSED=0

theta=findgen(360)*10
;print,theta
x = 1.5*cos(theta*!DTOR)
y = 1.5*sin(theta*!DTOR)
z = theta*0.001

window,0
SCALE3,XRANGE=[-2,2],YRANGE = [-2,2],ZRANGE = [0,4]
;PLOT,x,y
PLOT,x,y,/NODATA,XSTYLE=4,YSTYLE=4
PLOTS,x,y,z,/T3D

window,1
SCALE3,XRANGE=[-2,2],YRANGE = [-2,2],ZRANGE = [0,4],AX=60,AZ=60
;PLOT,x,y
PLOT,x,y,/NODATA,XSTYLE=4,YSTYLE=4
PLOTS,x,y,z,/T3D
Transport_Matrix = !P.T
XS = !X.S & YS = !Y.S & ZS = !Z.S
SAVE,/ALL,filename='SAVE_SCALE3_ALL.SAV'  
end