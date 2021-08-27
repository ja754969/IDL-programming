; Chapter 8 set_shading
;CD,'H:\IDL_1091\class_IDL_781035\W14_IDL'
CD,'E:\IDL_1091\class_IDL_781035\W14_IDL'
!P.BACKGROUND=255
!P.COLOR=0
DEVICE,DECOMPOSED=0

window,1
PLOT,[0,1],[0,1],/NODATA,XSTYLE=4,ystyle = 4
scale3,xrange=[-2,2],yrange=[-2,2],zrange=[-2,2]
arr1 = replicate(2.0,360,360)
mesh_obj,4,va1,pa1,arr1
set_shading,light = [0,0,1] ; 從z坐標軸打光
;set_shading,light = [1,0,0] ; 從x坐標軸打光
;set_shading,light = [0,1,0] ; 從y坐標軸打光
;set_shading,light = [0,0,1],value=[150,250] ; 從z坐標軸打光，並定義光線的明暗[darkest,brightest]
image1 = polyshade(va1,pa1,/t3d)
tv,image1

 
end