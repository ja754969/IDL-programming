; Chapter 14
CD,'H:\IDL_1091\class_IDL_781035\W15_IDL'
;CD,'E:\IDL_1091\class_IDL_781035\W15_IDL'

a = indgen(3,2)
print,'1, a=',a
for j = 0,2 do begin
  for k = 0,1 do begin
    a[j,k]=2*j+k
    
  endfor
endfor


print,'2,a=',a
help
end