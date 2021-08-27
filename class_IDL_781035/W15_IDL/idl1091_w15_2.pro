; Chapter 14
CD,'H:\IDL_1091\class_IDL_781035\W15_IDL'
;CD,'E:\IDL_1091\class_IDL_781035\W15_IDL'
for i = 1,3 do print,'i=',i

k=0
for j = 0,20,5 do begin
  k = k+j
  print,'j=',j,'k=',k,format='(a4,i3,a4,i3)'
  ;format='('j = ',j,'k = ',k)'
  
  b = string(j)
  print,'string(j) = ',b,'strlen(b) = ',strlen(b)
  
  c = strcompress(b,/remove_all)
  print,'c',c,'strlen(c)',strlen(c)
endfor

help
end