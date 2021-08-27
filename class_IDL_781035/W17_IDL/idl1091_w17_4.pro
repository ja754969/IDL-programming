CD,'E:\IDL_1091\class_IDL_781035\W17_IDL'
CD,'E:\IDL_1091\class_IDL_781035\W17_IDL\Ch16'
; 下載tronclass資料夾:Ch16
; https://tronclass.ntou.edu.tw/course/77606/learning-activity#/252496

OPENR,1,'ascii.txt'
;檔案打開後指標位於檔案開頭

b1 = EOF(1) ; END of FILE (回傳:指標是否在檔案末端)
print,'b1=',b1
CLOSE,1

b2 = FILE_SEARCH('ascii.txt') ;回傳:檔案是否存在
print,'b2 = ',b2

b3 = FILE_SEARCH('no_this_file.txt') ;回傳:檔案是否存在
print,'b3 = ',b3

b4 = FILE_TEST('no_this_file.txt') ;回傳:檔案是否存在
print,'b4 = ',b4

OPENW,2,'write_ascii.txt'
;檔案打開後指標位於檔案開頭

CLOSE,2
b5 = FILE_TEST('write_ascii.txt') ;回傳:檔案是否存在
print,'b5 = ',b5

OPENR,unit1,'ascii.txt',/GET_LUN
;檔案打開後指標位於檔案開頭
;/GET_LUN 讓系統自動指定識別碼(從100開始)
print,'unit1=',unit1

OPENR,3,'write_ascii.txt'
;檔案打開後指標位於檔案開頭

b6 = EOF(3) ; END of FILE (回傳:指標是否在檔案末端)
print,'b6=',b6
CLOSE,3
end