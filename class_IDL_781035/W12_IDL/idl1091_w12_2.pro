; Chapter 7
;CD,'H:\IDL_1091\class_IDL_781035\W12_IDL'
CD,'E:\IDL_1091\class_IDL_781035\W12_IDL'
subdir = ['examples','data']
;;
path1 = FILEPATH('moon_landing.png',SUBDIRECTORY=subdir)
info1 = QUERY_IMAGE(path1,CHANNELS = Chan_1,DIMENSIONS=dims_1,$
  TYPE=type_1,PIXEL_TYPE = ptype_1,NUM_IMAGES = num_1)
print,info1
print,'CHANNELS 1= ',Chan_1
print,'DIMENSIONS1=',dims_1
print,'TYPE1=',type_1
print,'PIXEL_TYPE 1= ',ptype_1
print,'NUM_IMAGES 1= ',num_1
image1 = READ_IMAGE(path1)
help,image1
TV,image1,0
;;
window,1
path2 = FILEPATH('Day.jpg',SUBDIRECTORY = subdir)
info2 = QUERY_IMAGE(path2,CHANNELS = Chan_2,DIMENSIONS=dims_2,$
  TYPE=type_2,PIXEL_TYPE = ptype_2,NUM_IMAGES = num_2)
print,info1
print,'CHANNELS 2= ',Chan_2
print,'DIMENSIONS2=',dims_2
print,'TYPE2=',type_2
print,'PIXEL_TYPE 2= ',ptype_2
print,'NUM_IMAGES 2= ',num_2
image2 = READ_IMAGE(path2)
help,image2
TV,image2,TRUE=1,0
;;
window,2,xsize = 1100,ysize = 600
path3 = FILEPATH('Night.jpg',SUBDIRECTORY = subdir)
info2 = QUERY_IMAGE(path2,CHANNELS = Chan_3,DIMENSIONS=dims_3,$
  TYPE=type_3,PIXEL_TYPE = ptype_3,NUM_IMAGES = num_3)
print,info1
print,'CHANNELS 3= ',Chan_3
print,'DIMENSIONS 3=',dims_3
print,'TYPE 3=',type_3
print,'PIXEL_TYPE 3= ',ptype_3
print,'NUM_IMAGES 3= ',num_3
image3 = READ_IMAGE(path3)
help,image3
TV,image3,TRUE=1,0
end