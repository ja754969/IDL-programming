; Chapter 14
CD,'H:\IDL_1091\class_IDL_781035\W15_IDL'
;CD,'E:\IDL_1091\class_IDL_781035\W15_IDL'


window,1
a = intarr(256,256)
help,a
print,'a(0:5,0:5)='
print,a(0:5,0:5)
a1 = []
for i = 0,255 do begin
  b = replicate(i,256)
  a1 = [[a1],[b]]
  
endfor
help,a1
print,'a1(0:5,0:5)='
print,a1(0:5,0:5)

tv,a1

window,2
for j = 0,255 do begin
  for k = 0,255 do begin
    a[j,k] = k
  endfor
endfor
help,a
print,'a(0:5,0:5)='
print,a(0:5,0:5)
tv,a
loadct,13
tv,a,260,0
help
end