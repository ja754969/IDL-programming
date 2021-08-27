CD,'E:\IDL_1091\class_IDL_781035\W17_IDL'
CD,'E:\IDL_1091\class_IDL_781035\W17_IDL\Ch16'
a = [1,3,5,7]
b = [2.2,4.4,6.6,9.9]
OPENW,3,'ascii_data_1.dat'

;printf : 寫入格式化的資料到檔案'ascii_data_1.dat'內
printf,3,a,FORMAT = '(I3,I3,I3,I3)'
printf,3,b,FORMAT = '(F5.1,F5.1,F5.1,F5.1)'
CLOSE,3
end 