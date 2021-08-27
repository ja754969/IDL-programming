; Chapter5 : Array
CD,'E:\IDL_1091\class_IDL_781035\W6_IDL'
x1 = indgen(4,3,2) & x2 = x1*2
; (row,column,page)
help,x1,x2 & print,'x1=',x1,'x2=',x2
c1= [x1,x2] ; 沿著第一維度(colmun)排列
help,c1 & print,c1
c2 = [[x1],[x2]] ; 沿著第二維度(row)排列
help,c2 & print,c2

c3 = [[[x1]],[[x2]]] ; 沿著第三維度(page)排列
help,c3 & print,c3

x1_R1 = reform(x1,6,4) ; 重新排列x1為6*4的矩陣
help,x1_R1 & print,x1_R1

x1_T = transpose(x1)
help,x1_T & print,x1_T

n_x1 = n_elements(x1)
print,'n_x1 = ',n_x1
end