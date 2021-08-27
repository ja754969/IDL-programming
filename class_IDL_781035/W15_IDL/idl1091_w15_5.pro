; Chapter 14
CD,'H:\IDL_1091\class_IDL_781035\W15_IDL'
;CD,'E:\IDL_1091\class_IDL_781035\W15_IDL'
if 3 le 2 then print,'yes' else print,'No'
if 2 le 3 then print,'yes' else print,'No'

score = 70.0
if score ge 60.0 then begin
  print,'score=',score,'pass',format='(a8,f5.1,a5)'
endif else begin
  print,'score=',score,'Down',format='(a8,f5.1,a5)'
endelse


b1 = (score GE 60.0) ? 'Pass_1':'Down_1'
print,'Score=',score,' b1=',b1

help
end