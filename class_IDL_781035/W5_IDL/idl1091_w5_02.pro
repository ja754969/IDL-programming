; Chapter3 : Vector 內容為特定值的向量
CD, 'E:\IDL_1091\class_IDL_781035\W5_IDL'
x0 = replicate(1,5)
help,x0 & print,x0
x1 = replicate(2.0,3)
help,x1 & print,x1
x2 = make_array(4,value=3)
help,x2 & print,x2

x2(1) = 5
help,x2 & print,x2
x3 = replicate('ABC',3)
help,x3 & print,x3
x3(2) = 'xyz'
help,x3 & print,x3
x4 = make_array(2,value='UVW') ;
help,x4 & print,x4
end