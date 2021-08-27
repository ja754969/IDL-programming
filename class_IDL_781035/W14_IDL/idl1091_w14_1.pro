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
mesh_obj,4,V,P,arr1
; 4代表建置一個球體
help,v,p

;呼叫polyshade函數著色，輸入變數v和p
image1 = polyshade(v,p,/T3D)
TV,image1

window,2
mesh_obj,3,v_2,p_2,arr1,p4=-3,p3=0
;p4如果比p3大，將圖畫在圓柱外側，反之，p4如果比p3小，將圖畫在圓柱內側
subdir= ['examples','data']
path = filepath('worldelv.dat', subdirectory=subdir)
file=read_binary(path,data_dims=[360,360])
image2=polyshade(v_2,p_2,shades = file,/t3d)
tv,image2

window,3
;建立一個2*3的矩陣，每一行代表三維空間中的一個點，共兩點
arr2 = [[2,2],[0,0],[0,3]]
;配合mesh_obj函數的輸入格式，將arr2轉置
arr2_t = transpose(arr2)
mesh_obj,6,va,pa,arr2_t,p1=180,p3=[0,0,1],p5 = !pi*3./2.,p4 = !pi*3./2.
;p1
;p3
;p5
;p4
image3 = polyshade(va,pa,/t3d)
tv,image3

window,4
arr3 = [[0.5,0.5],[0,0],[0,0.5]]
mesh_obj,0,va2,pa2,arr3
image4 = polyshade(va2,pa2,/t3d)
tv,image4

window,5
py = findgen(4)
arr4 = [[0.5,0.5],[0,0.5],[0.5,0]]
mesh_obj,1,va3,pa3,arr4,p1=py
image5 = polyshade(va3,pa3,/t3d)
tv,image5

window,6
arr6 = fltarr(3,5)
arr6[0,*]=randomu(seed,5) ;產生一個5*1數值大小在0到1之間的亂數矩陣
arr6[1,*]=randomu(seed,5)
arr6[2,*]=randomu(seed,5)
mesh_obj,0,va6,pa6,arr6
image6 = polyshade(va6,pa6,/t3d)
tv,image6

window,7
arr7 = randomu(seed,5,5)
mesh_obj,2,va7,pa7,arr7
image7 = polyshade(va7,pa7,/t3d)
tv,image7

window,8
arr8 = replicate(2.0,360,360)
mesh_obj,3,va8,pa8,arr8,p3=0,p4=3
image8 = polyshade(va8,pa8,/t3d)
tv,image8

window,9
arr9 = randomu(seed,3,4)
mesh_obj,7,va9,pa9,arr6,arr9
image9 = polyshade(va9,pa9,/t3d)
tv,image9

help
end