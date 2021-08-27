; Chapter 7
;CD,'H:\IDL_1091\class_IDL_781035\W12_IDL'
CD,'E:\IDL_1091\class_IDL_781035\W12_IDL'
window,xsize=800,ysize=500
subdir=  ['examples','data']
;
path = filepath('rose.jpg',subdirectory = subdir)
;回傳IDL系統在子目錄subdir底下的rose.jpg路徑到變數path
print,path
image1 = READ_IMAGE(path) ; 讀取檔案
help,image1 ;格式 : Pixel Interleave
TV,image1,TRUE=1,0 ;顯示在第0個位置
TV,image1,TRUE=1,3,/ORDER ;顯示在第3個位置，順序顛倒
;
path2 = filepath('examples.tif',subdirectory = subdir)
print,path2
image2 = READ_IMAGE(path2) ; 讀取檔案
help,image2 ;格式 : Pixel Interleave
TV,image2,2,/ORDER
;
image3 = READ_IMAGE(path2,r,g,b)
help,image3,r,g,b
TV,image3,3
;
window,1
TV,image1,TRUE = 1,0
TV,image1,TRUE = 1,300,0
redCh = REFORM(image1(0,*,*))
greenCh = REFORM(image1(1,*,*))
blueCh = REFORM(image1(2,*,*))
help,image1,redCh
TV,redCh,1 ;顯示 red channel
TV,greenCh,2 ;顯示 green channel 
;
temp1=CONGRID(redCh,108,81)
help,temp1
TV,temp1,3
imagesize = size(redCh)
help,imagesize
print,imagesize
TV,greenCh,imagesize[1]/2,imagesize[2]/2
TV,blueCh,imagesize[1],imagesize[2]
end