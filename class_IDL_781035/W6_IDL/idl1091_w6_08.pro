; Chapter6 Graphics
CD,'E:\IDL_1091\class_IDL_781035\W6_IDL'
x = indgen(20) & y = 2.*x+3.0
help,x,y & print,x,y
plot,y
x1 = [2,4,6,8] & y1 = [5,3,9,7]
plot,y1
plot,x1,y1
end