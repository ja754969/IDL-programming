; Chapter 8 mesh_obj
;CD,'H:\IDL_1091\class_IDL_781035\W14_IDL'
CD,'E:\IDL_1091\class_IDL_781035\W14_IDL'
!P.BACKGROUND=255
!P.COLOR=0
DEVICE,DECOMPOSED=0

window,1
PLOT,[0,1],[0,1],/NODATA,XSTYLE=4,ystyle = 4
scale3,xrange=[-2,2],yrange=[-2,2],zrange=[-2,2]
 
arr1 = replicate(2.0,360,360)
mesh_obj,3,va1,pa1,arr1,p3=0,p4=3
subdir=['examples','data']
path = filepath('worldelv.dat',subdirectory=subdir)
file=read_binary(path,data_dims=[360,360])
image1=polyshade(va1,pa1,shade=file,/t3d)

;以39號色系著色
loadct,39
tv,image1

window,2
mesh_obj,4,va2,pa2,arr1,p1=!pi,p2=-!pi,p3=-!pi,p4=!pi
;mesh_obj,4,va2,pa2,arr1,p1=0,p2=2*!pi,p3=-!pi,p4=!pi
;mesh_obj,4,va2,pa2,arr1,p1=-!pi,p2=!pi,p3=!pi,p4=-!pi
image2=polyshade(va2,pa2,shade=file,/t3d)
;以39號色系著色
loadct,39
tv,image2
help
end