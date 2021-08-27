; Chapter4
CD,'E:\IDL_1091\class_IDL_781035\W6_IDL'
x = [[!pi/6,!pi/3],[!pi/2,!pi]]
help,x & print,x
y1 = sin(x)
help,y1 & print,y1
z1 = asin(y1)
help,z1 & print,z1
z2 = z1*!radeg
help,z2 & print,z2
u = indgen(3,2)+1
help,u & print,u
v1 = exp(u)
help,v1 & print,v1
a_v1 = alog(v1)
help,a_v1 & print,a_v1

v2 = 10L^u ;長整數
help,v2 & print,v2 
a_v2 = alog10(v2)
help,a_v2 & print,a_v2
end