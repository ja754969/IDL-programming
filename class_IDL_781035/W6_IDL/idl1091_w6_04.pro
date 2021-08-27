; Chapter4 : Matrix
CD,'E:\IDL_1091\class_IDL_781035\W6_IDL'
A = [[1,2,1],[2,-1,2]]
B = [[1,3],[0,1],[1,1]]
help,A,B & print,A,B

C1 = A#B ;表示數學上的矩陣相乘 : B*A
help,C1 & print,C1

C2 = A##B ;表示數學上的矩陣相乘 : B*A
help,C2 & print,C2
end