; Chapter 6
;CD,'H:\IDL_1091\class_IDL_781035\W11_IDL'
CD,'E:\IDL_1091\class_IDL_781035\W11_IDL'
subdir=  ['examples','data']
path = filepath('rose.jpg',subdirectory = subdir)
print,path
image1 = READ_IMAGE(path)
help,image1 ;格式 : Pixel Interleave
info1 = QUERY_IMAGE('rose.jpg')
print,info1
info2 = QUERY_IMAGE('Red_rose.jpg')
print,info2
info3 = QUERY_IMAGE(path)
print,info3
info4 = QUERY_IMAGE(path,CHANNELS=ch_1,DIMENSIONS = dim1,$
  TYPE = type_1,pixel_type = p_type,NUM_IMAGES = num_img)
print,'CHANNELS=',ch_1
print,'Dimensions = ',dim1
print,'TYPE=',type_1
print,'Pixel_type=',p_type
print,'Num_images=',num_img

info5 = QUERY_IMAGE('Red_rose.jpg',CHANNELS=ch_2,DIMENSIONS = dim2,$
  TYPE = type_2,pixel_type = p_type2,NUM_IMAGES = num_img2)
print,'2 CHANNELS=',ch_2
print,'2 Dimensions = ',dim2
print,'2 TYPE=',type_2
print,'2 Pixel_type=',p_type2
print,'2 Num_images=',num_img2

;google : black image
info6 = QUERY_IMAGE('Red_rose.jpg',CHANNELS=ch_3,DIMENSIONS = dim3,$
  TYPE = type_3,pixel_type = p_type3,NUM_IMAGES = num_img3)
print,'3 CHANNELS=',ch_3
print,'3 Dimensions = ',dim3
print,'3 TYPE=',type_3
print,'3 Pixel_type=',p_type3
print,'3 Num_images=',num_img3
end