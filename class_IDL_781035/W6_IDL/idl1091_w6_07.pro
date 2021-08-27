; Chapter5 : Array
CD,'E:\IDL_1091\class_IDL_781035\W6_IDL'
A = indgen(4,3,2)
help,A & print,A
y1 = size(A)
print,'y1 = ',y1
;(維度數量,第1維度大小,第2維度大小,第3維度大小,資料型態,元素數量)
B = randomn(seed,4,3,2)
print,'B = ',B
y2 = size(B)
print,'y2 = ',y2

y2_d = size(B,/Dimensions)
print,'y2_d = ',y2_d
y2_nd = size(B,/N_Dimensions)
print,'y2_nd = ',y2_nd
y2_Type = size(B,/Type)
print,'y2_Type = ',y2_Type
y2_Tname = size(B,/TNAME)
print,'y2_Tname = ',y2_Tname

end