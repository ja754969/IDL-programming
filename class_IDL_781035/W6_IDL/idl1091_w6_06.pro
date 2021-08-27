; Chapter5 : Array
CD,'E:\IDL_1091\class_IDL_781035\W6_IDL'
A = randomn(seed,4,3)
help,A & print,A
max_A = max(A)
print,'max_A = ',max_A
min_A = min(A,ind_min)
print,'min_A = ',min_A,' , ind_min=',ind_min
min_A_pos = array_indices(A,ind_min)
print,'min_A_pos = ',min_A_pos
B = indgen(3,2)+1
help,B & print,B
T_B = total(B)
print,'T_B = ',T_B
P_B = product(B)
help,P_B & print,P_B
Y = factorial(6)
print,'Y = ',Y
end