; Chapter 12 color_quan
;CD,'H:\IDL_1091\class_IDL_781035\W14_IDL'
CD,'E:\IDL_1091\class_IDL_781035\W14_IDL'
!P.BACKGROUND=255
!P.COLOR=0
DEVICE,DECOMPOSED=0

subdir = ['examples','data']
path1 = filepath('rose.jpg',subdirectory=subdir)
read_jpeg,path1,image1
image1_r = reform(image1[0,*])
image1_g = reform(image1[1,*])
image1_b = reform(image1[2,*])

tv,image1,true=1,0

image2 = color_quan(image1_r,image1_g,image1_b,r2,g2,b2)
tvlct,r2,g2,b2
tv,image2,1

image3 = color_quan(image1,1,r3,g3,b3) ;採用第一個維度
tv,image3,2


image4 = color_quan(image1,1,r4,g4,b4,color=64) ;採用第一個維度
tvlct,r4,g4,b4
tv,image4,3

help
end