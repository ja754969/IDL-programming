; Chapter4 : Matrix
CD, 'E:\IDL_1091\class_IDL_781035\W5_IDL'
;(column,row)
x0 = randomn(seed,2,3)
print,x0
r1 = max(x0,sub1)
print,r1,sub1
r1_sub1 = array_indices(x0,sub1)
print,'r1_sub1 = ',r1_sub1
print,'x0[sub1] = ',x0[sub1]
print,'x0[r1_sub1] = ',x0[r1_sub1[0],r1_sub1[1]]
end