; Chapter 
CD,'H:\IDL_1091\class_IDL_781035\W15_IDL'
;CD,'E:\IDL_1091\class_IDL_781035\W15_IDL'

x = -3
case 1 of
  x GE 2:print,'x=',x,' x>=2'
  (x GE -2) and (X LT 2):print,'x=',x,'  2>x>=-2'
  x LT -2:print,'x=',x,' x<-2'
endcase


help
end