CD,'E:\IDL_1091\class_IDL_781035\W17_IDL'
CD,'E:\IDL_1091\class_IDL_781035\W17_IDL\Ch16'
a = indgen(4,3)
help,a

OPENW,3,'ascii_array_1.dat' ;(指標位於檔案最左上角)
fmt = '(I3,I3,I3,I3)'
for i = 0,2 do begin
  printf,3,a(*,i),FORMAT=fmt ;(指標跳到下一列)
endfor

CLOSE,3
print,a
end 