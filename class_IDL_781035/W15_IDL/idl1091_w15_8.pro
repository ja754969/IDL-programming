; Chapter 14
CD,'H:\IDL_1091\class_IDL_781035\W15_IDL'
;CD,'E:\IDL_1091\class_IDL_781035\W15_IDL'

MONTH = 1

case 1 of
  MONTH EQ 12 or (MONTH GE 1 and MONTH LE 2): season='Winter'
  (MONTH GE 3 and MONTH LE 5): season='Spring'
  (MONTH GE 6 and MONTH LE 8): season='Summer'
  (MONTH GE 9 and MONTH LE 11): season='Autumn' 
  ELSE:season='Not a month'
endcase 
  
print,month,' is ',season
  
  
  
help
end