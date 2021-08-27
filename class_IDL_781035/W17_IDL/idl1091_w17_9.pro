CD,'E:\IDL_1091\class_IDL_781035\W17_IDL'
CD,'E:\IDL_1091\class_IDL_781035\W17_IDL\Ch16'

OPENR,5,'ascii_array_1.dat' ;(指標位於檔案最左上角)

readf,5,b1,b2,b3
fmt = '(I3,I3,I3)'
print,b1,b2,b3,FORMAT = fmt

readf,5,c1,c2,c3,c4
fmt2 = '(4I3)'
print,c1,c2,c3,c4,FORMAT=fmt2

d1 = intarr(4)
readf,5,d1 ; 一次讀取4四個資料
print,d1,FORMAT=fmt2

CLOSE,5

openr,6,'ascii_array_1.dat' ;(指標位於檔案最左上角)
e1 = intarr(4,3)
e2 = intarr(4)
fmt3 = '("i = ",I2,", ",4I3)'
for i = 0,2 do begin
  readf,6,e2 ; 一次讀取4個資料
  e1(*,i) = e2
  print,i,e1(*,i),FORMAT=fmt3
endfor
CLOSE,6
end 