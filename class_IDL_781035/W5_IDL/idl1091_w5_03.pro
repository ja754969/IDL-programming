; Chapter3 : Vector 內容為亂數的向量
CD, 'E:\IDL_1091\class_IDL_781035\W5_IDL'
; 均勻分布 (0~1)
x0 = randomu(seed,5) 
help,x0 & print,x0
x1 = randomu(seed,4)
help,x1 & print,x1
; normal distribution
x2 = randomn(seed,4)
help,x2 & print,x2
end