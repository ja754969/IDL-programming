; Chapter3 : Vector
CD, 'E:\IDL_1091\class_IDL_781035\W5_IDL'
x = [!pi/6,!pi/3]
print,'x=',x
y1 = sin(x)
print,'y1=',y1
x2 = [30,60]
print,'x2=',x2
y2 = cos(x2*!dtor)
print,'y2=',y2

x3 = [1,2,3]
y3 = exp(x3)
print,'y3 = ',y3

ay3 = alog(y3) ; natrual log
print,'ay3=',ay3
y4 = sqrt(x3)
print,'y4=',y4
end