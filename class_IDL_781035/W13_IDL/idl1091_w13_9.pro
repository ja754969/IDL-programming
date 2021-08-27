; Chapter 8
CD,'H:\IDL_1091\class_IDL_781035\W13_IDL'
;CD,'E:\IDL_1091\class_IDL_781035\W13_IDL'
!P.BACKGROUND=255
!P.COLOR=0
DEVICE,DECOMPOSED=0

window,1
PLOT,[0,1],[0,1],/NODATA,XSTYLE=4,ystyle = 4
scale3,xrange=[-2,2],yrange=[-2,2],zrange=[-2,2]
arr1 = replicate(2.0,360,360)
mesh_obj,4,V,P,arr1 
; 4代表球面
help,v,p
image1 = polyshade(v,p,/T3D)
TV,image1


window,2
mesh_obj,3,V2,P2,arr1,p4=-3
image2 = polyshade(v2,p2,/T3D)
TV,image2
 
end