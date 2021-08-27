PRO IDL_1091W15_while_1,i,j
print,'1, i=',i
while i LE 3 do i = i+1
print,'2, i=',i
print,'1, j=',j
while j LE 3 do begin
  j = j+1
  print,'2,j=',j
  
endwhile
print,'3,j=',j
end


;在控制台直接打 : IDL> IDL_1091W15_while_1,i,j (i,j 隨便指定一個數字)