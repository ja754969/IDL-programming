CD,'E:\IDL_1091\class_IDL_781035\W17_IDL'
subdir = ['examples','data']
file_1 = FILEPATH('worldelv.dat',SUBDIRECTOR = subdir)
OPENR,2,file_1
readu,2,image_1
CLOSE,2

help,image_1 ; 可以看到格式會錯誤

; 需要預先知道資料格式(360*360)
image_2 = bytarr(360,360)
print,'max(image_2) = ',max(image_2)

OPENR,3,file_1
READU,3,image_2
close,3
help,image_2

!P.background = 255
!P.color = 0
device,decomposed = 0

tv,image_2

loadct,0
tv,image_2

loadct,13
tv,image_2

CD,'E:\IDL_1091\class_IDL_781035\W17_IDL\Ch16'
openw,5,'worldelev_2.dat'
writeu,5,image_2
close,5

CD,'E:\IDL_1091\class_IDL_781035\W17_IDL'
end 