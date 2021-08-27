; Chapter3 : Vector
CD, 'E:\IDL_1091\class_IDL_781035\W5_IDL'
x0 = bytarr(3)
help,x0 & print,x0
x1 = intarr(4)
help,x1 & print,x1
x2 = uintarr(5)
help,x2 & print,x2

x3 = fltarr(4) & y3 = fltarr(4)
help,x3,y3 & print,x3,y3
z3 = complex(x3,y3)
help,z3 & print,z3
t4 = strarr(3) ;內容為0的字元向量
help,t4 & print,t4
;;
print,'x2=',x2
x2(1)=3 ;將x2向量的第1個數改為3
print,'x2=',x2
end