; Chapter 4 Matrix
CD, 'E:\IDL_1091\class_IDL_781035\W6_IDL'
A = [1,2,3] & B = [11,12,13]
C1 = [A,B]
help,A,B,C1
print,'C1 = ',C1
C2 = [[A],[B]]
help,C2
print,'C2 = ',C2

A_R1 = reverse(A,1) ;(倒轉的矩陣,倒轉維度)
help,A_R1
print,'A_R1=',A_R1


C2_R1 = reverse(C2,1) ;(倒轉的矩陣,倒轉維度)
help,C2_R1
print,'C2_R1=',C2_R1

C2_R2 = reverse(C2,2) ;(倒轉的矩陣,倒轉維度)
help,C2_R2
print,'C2_R2=',C2_R2

C3 = [[C2],[A]]
help,C3
print,'C3 = ',C3

C2_RF1 = reform(C2,2,3)
help,C2_RF1
print,C2_RF1

A_S1 = shift(A,1)
help,A_S1
print,A_S1

;平移
C2_S1 = shift(C2,1)
help,C2_S1
print,C2_S1
;轉置
A_T = transpose(A)
help,A_T
print,A_T
;轉置
B_T = transpose(B)
help,B_T
print,B_T

C4 = [A_T,B_T]
help,C4
print,C4
end