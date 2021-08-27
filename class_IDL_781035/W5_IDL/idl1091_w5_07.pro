; Chapter3 : Vector
CD, 'E:\IDL_1091\class_IDL_781035\W5_IDL'
a = [1,2] & b = [3,4]
c = [a,b] ;stack vector in column direction
help,a,b,c & print,a,b,c
c1 = [b,a,b]
help,c1 & print,c1,format='(6I3)'
print,'c =',c
d = shift(c,1)
print,'d =',d
d2 = shift(c,-1)
print,'d2=',d2
end