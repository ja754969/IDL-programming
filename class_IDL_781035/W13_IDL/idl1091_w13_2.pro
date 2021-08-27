; Chapter 8
CD,'H:\IDL_1091\class_IDL_781035\W13_IDL'
;CD,'E:\IDL_1091\class_IDL_781035\W13_IDL'
!P.BACKGROUND=255
!P.COLOR=0
DEVICE,DECOMPOSED=0
z = DIST(26,26) ;distance
window,1
surface,z
shade_surf,z
shade_surf,z,min_value=6,/save
contour,z,zvalue=1,/T3D,/NOERASE
print,!X.S,!Y.S,!Z.S
;顯示x,y,z的坐標軸位置
print,!P.T
;座標轉換矩陣
end