; Chapter4 : Matrix
CD, 'E:\IDL_1091\class_IDL_781035\W5_IDL'
;(column,row)
x0 = [[1,2,3],[21,22,23]] ;stack vector in row direction
help,x0 & print,x0
a = [31,32,33]
y1 = [[x0],[a]] ;stack vector in row direction
help,y1 & print,y1

a1 = [[a],[a]]
help,a1 & print,a1
y2 = [x0,a1]
help,y2 & print,y2
;
print,'y1 = ',y1
print,'y1[1,1] = ',y1[1,1] ;以index取出元素
n_y1 = n_elements(y1)
print,'n_y1 = ',n_y1
; y1[1,1] = !values.f_nan & y1[2,0]=!values.f_infinity
y3 = float(y1)
print,!values.f_nan
y3[1,1] = !values.f_nan
y3[2,0] = !values.f_infinity
print,y3
print,finite(y3)
print,'y3[0:1,1]=',y3[0:1,1]
print,'y3[2,1:2]=',y3[2,1:2]
end