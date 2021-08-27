; 曾鈺皓 00781035 IDL_作業1
CD,'H:\IDL_1091\HW_IDL'
;CD,'C:\Users\user\Google 雲端硬碟\海大1091\IDL程式語言_遙測資料處理_1091\HW_IDL'
;CD, 'E:\IDL_1091\class_IDL_781035\W6_IDL'
B=8.0 & C=6.0 & D=5.0 & E=4.0 & x=30*!DTOR & y=45*!DTOR
help,C
; (a)
A1 = 3*float(B)/float(C)+(D^2)*(E^1.5)
print,'A1 = ',A1
; (b)
A2 = D^3-3*D*(E^2)+3*(D^2)*E-E^3
print,'A2 = ',A2
; (c)
A3 = sqrt(2*(((B^2)/(2*E))^(1/3))*(D*sqrt(E)/2))
print,'A3 = ',A3
; (d)
A4=(exp(1)-exp(-1))/(exp(1)+exp(-1)) + tanh(B/(2*E))
print,'A4 = ',A4
; (e)
x1 = sin(x) & y1 = cos(y)
A5 = asin(x1) + acos(y1)
print,'A5 = ',A5,' (radius)'
print,'A5 = ',A5*!RADEG,' (degree)'

end