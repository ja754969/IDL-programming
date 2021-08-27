; Chapter 8
CD,'H:\IDL_1091\class_IDL_781035\W13_IDL'
;CD,'E:\IDL_1091\class_IDL_781035\W13_IDL'
!P.BACKGROUND=255
!P.COLOR=0
DEVICE,DECOMPOSED=0
z = DIST(26,26) ;distance
window,1
contour,z
help,z

window,2
surface,z,xtitle='x-axis',ytitle='y-axis'

window,3
surface,z,AX=-60,xtitle='x-axis',ytitle='y-axis'
;內定的旋轉角度為30度

window,4
surface,z,AX=60,AZ=60,xtitle='x-axis',ytitle='y-axis',/save
;內定的旋轉角度為30度
;/svae 把座標系統存起來
contour,z,zvalue=1,/T3D,/NOERASE
;zvalue=1 contour畫在頂部 , zvalue=0 contour畫在底部
;/T3D 立體座標參數
;/NOERASE 保留原來的圖

window,5
surface,z,/horizontal
surface,z,/skirt

print,'max(z)=',max(z)
window,6
grid=dist(26,26)*10
surface,z,shades=grid

window,7
surface,z,bottom=200,ax = -30

window,8
print,'min(z)=',min(z)
surface,z,min_value = 6,max_value=14
end