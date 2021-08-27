pro IDL_1091W15_CH14_repeat_1,i,j
print,'1, i=',i
REPEAT i = i+1 until i GE 2
; 重複執行i = i+1 直到 i 大於等於2
print,'2, i=',i
print,'1, j=',j
REPEAT BEGIN
  j = j+1
  print,'2, j=',j
ENDREP UNTIL j GE 4
print,'3, j=',j
end


;在控制台直接打 : IDL> IDL_1091W15_CH14_repeat_1,i,j (i,j 隨便指定一個數字)