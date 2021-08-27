; Chapter4
CD, 'E:\IDL_1091\class_IDL_781035\W6_IDL'
A = [[11,12,13],[21,22,23]]
B = indgen(3,2)
help,A,B & print,A,B
C1 = A+B
help,C1
print,C1

C2 = A*B
help,C2
print,C2

C3 = B/A ; 整數除整數得到整數
help,C3
print,C3

C3 = float(B)/float(A) ; 浮點數除整數得到浮點數
help,C3
print,C3

C4 = B^2
help,C4
print,C4

C5 = sqrt(B)
help,C5
print,C5

C6 = A mod B
help,C6
print,C6
end