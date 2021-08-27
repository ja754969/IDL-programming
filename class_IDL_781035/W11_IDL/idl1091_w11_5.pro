; Chapter 6
;CD,'H:\IDL_1091\class_IDL_781035\W11_IDL'
CD,'E:\IDL_1091\class_IDL_781035\W11_IDL'
window,xsize=600,ysize=500
subdir=  ['examples','data']
path = filepath('rose.jpg',subdirectory = subdir)
print,path
image1 = READ_IMAGE(path)
help,image1 ;格式 : Pixel Interleave
TV,image1,TRUE=1,0
TV,image1,TRUE=1,3,/ORDER
path2 = filepath('examples.tif',subdirectory = subdir)
print,path2
image2 = READ_IMAGE(path2)
help,image2 ;格式 : Pixel Interleave
TV,image2,1,/ORDER
end