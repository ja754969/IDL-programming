; Chapter 14 
;CD,'H:\IDL_1091\class_IDL_781035\W14_IDL'
CD,'E:\IDL_1091\class_IDL_781035\W14_IDL'


print,3 lt 5 ;3<5
print,3 gt 5 ;3>5

print,3,format='(B8)' ; 以8個位置的binary呈現數值3 (2^0+2^1)
print,7,format='(B8)' ; 以8個位置的binary呈現數值7 (2^0+2^1+2^2)

print,'2 <= 3=',2 le 3 ,format='(A7,I2)' ; (A7,I2)=(用7個文字呈現，用2個數字呈現)
print,'2 > 3=',2 gt 3 ,format='(A7,I2)' ; (A7,I2)=(用7個文字呈現，用2個數字呈現)
print,2 le 3 and 5 gt 3,format='(I2)' ; (I2)=(用2個數字呈現)
print,2 gt 3 or 5 gt 3,format='(I2)' ; (I2)=(用2個數字呈現)
print,~(2 gt 3),format='(I2)' ; (I2)=(用2個數字呈現)

a=3
print,'a=',a
print,'a +1 =',a+1
print,'2 a =',a
print,'a++ =',a++ ;將a加上1再放回a
print,'3 a =',a
print,'++a =',++a ;將a加上1再放回a
print,'4 a =',a

b=6
print,'b=',b
print,'b-1 =',b-1
print,'b-- =',b-- ;將b減掉1再放回b
print,'2 b =',b
print,'--b =',--b ;將b減掉1再放回b
print,'3 b =',b

help
end