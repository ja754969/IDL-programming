CD,'E:\IDL_1091\class_IDL_781035\W17_IDL'

a = [5,8,7,3,6]
b1 = mean_W17_fun2(a)
print,'b1',b1

print,'====================='

b2 = mean_W17_fun2(a,/DOUBLE)
print,'b2',b2

print,'====================='

b3 = mean_W17_fun2(a)
print,'b3',b3

print,'====================='

b4 = mean_W17_fun2()
print,'b4',b4
end