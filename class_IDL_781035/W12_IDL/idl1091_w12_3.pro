; Chapter 7
;CD,'H:\IDL_1091\class_IDL_781035\W10_IDL'
CD,'E:\IDL_1091\class_IDL_781035\W12_IDL'
subdir = ['examples','data']
;;
path1 = FILEPATH('examples.tif',SUBDIRECTORY=subdir)
info1 = QUERY_IMAGE(path1,CHANNELS = Chan_1,DIMENSIONS = dims_1,$
  TYPE=type_1,PIXEL_TYPE=ptype_1,NUM_IMAGES=num_1)
print,'Chan_1 = ',Chan_1
print,'dims_1 = ',dims_1
print,'type_1 = ',type_1,' ptype_1 = ',ptype_1,' num_1 = ',num_1

image1 = READ_IMAGE(path1)
help,image1
TV,image1
print,max(image1),min(image1)
;;
image2 = BYTSCL(image1) ; 轉換image1的像素數值至[0,255]
print,max(image2),min(image2)
window,1,xsize = 800,ysize = 500
TV,image2
image3 = REVERSE(image2,2) ;從第二個維度倒轉(上下顛倒)
TV,image3,0,160
image4 = REVERSE(image2,1) ;從第一個維度倒轉(左右顛倒)
TV,image4,380,150
;;
window,2,xsize = 375,ysize = 150
image5 = image1[125:364,0:149] ; 擷取部分影像
help,image5
image6 = BYTSCL(image5)
TV,image6
image7 = BYTSCL(image5,TOP=150,MAX = 30,MIN = 10)
;轉換image5的像素數值至[0,TOP]
;轉換的最大最小像素數值為 10,30
print,max(image7),min(image7)
window,3,xsize = 375,ysize = 150
TV,image7
;;
window,4,xsize = 375,ysize = 150
TVSCL,image1
window,5,xsize = 600,ysize = 500
TVSCL,image1,200,100
;;
SET_PLOT,'PS' ;存圖檔為 Plot Script
DEVICE,FILENAME = 'IDL_ps1.ps'
TVSCL,image1,xsize = 6,ysize = 4,/INCHES
DEVICE,/CLOSE_FILE

SET_PLOT,'win' ;window
TVSCL,image1

end