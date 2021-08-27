; Chapter3 : Vector 內容為不規則數字或字串的向量
CD, 'E:\IDL_1091\class_IDL_781035\W5_IDL'
x0 = [5,2,7,4]
help,x0 & print,x0
x1 = [1.0,2.0,5.0,3.0]
help,x1 & print,x1
print,'x1[1:2]=',x1[1:2]
print,'x1[0:2]=',x1[0:2]
print,'x1[0:3:2]=',x1[0:3:2]
x2 = [1:10]
help,x2 & print,x2
x3 = [1.0:10.0:2.0]
help,x3 & print,x3
y = x3(1:3)
help,y & print,y
y2 = findgen(10)
help,y2 & print,y2
y2[4] = y ;從第4個index放入y
help,y2 & print,y2
;the data type transformation
z2 = fix(y2) ;transfer the all element in y2 to integer
help,z2 & print,z2
z3 = fix(x0) ;transfer the all element in x0 to float
help,z3 & print,z3
t0 = string(x0) ;transfer the all element in x0 to string
help,t0 & print,t0
t2 = string(y2) ;transfer the all element in y2 to string
help,t2 & print,t2
;Search the information of vector.
print,'y2=',y2
L1 = n_elements(y2)
print,'L1=',L1
F1 = finite(y2)
print,'F1=',F1
Ft2 = finite(t2)
print,'Ft2=',Ft2
y2[1]=!values.f_nan & y2[4]=!values.f_infinity
help,y2 & print,y2
print,finite(y2)
;向量下標的操作符號
print,'y[1:3]=',y2[1:3]
print,'y[5:*]=',y2[5:*]
end